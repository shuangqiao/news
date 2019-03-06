package com.md1k.api.config;

import com.alibaba.fastjson.JSONObject;
import com.md1k.api.dao.IPRecordDao;
import com.md1k.api.pojo.IPRecord;
import com.md1k.api.util.ApplicationInitListener;
import com.md1k.api.util.HttpGetPost;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.task.TaskExecutor;
import org.springframework.scheduling.annotation.Scheduled;

import javax.annotation.Resource;
import java.util.*;
import java.util.concurrent.LinkedBlockingQueue;

@Configuration
public class IPTask {
    public static Map<String,Integer> IPS = new HashMap<>();
    public static LinkedBlockingQueue<String> IPLIST = new LinkedBlockingQueue<>();

    @Resource(name = "taskExecutor")
    private TaskExecutor taskExecutor;

    @Resource
    private IPRecordDao ipRecordDao;

    //每分钟清空一次IP
    @Scheduled(cron="0 */1 * * * ? ")
    public void clearIP(){
        if (IPS.size()>0) {
            IPS.clear();
        }
    }

    public void commissionService(String ip){
        IPLIST.add(ip);
        startSaveTask();
    }
    private synchronized boolean startSaveTask() {
        try {
            ipManage();
            return true;
        }catch (Exception e){
            return false;
        }
    }

    /**
     * IP信息
     * {"code":0,"data":{"ip":"45.77.126.182","country":"美国","area":"","region":"加利福尼亚","city":"XX",
     * "county":"XX","isp":"XX","country_id":"US","area_id":"","region_id":"US_104","city_id":"xx","county_id":"xx","isp_id":"xx"}}
     */
    private void ipManage() {
        taskExecutor.execute(new Runnable() {
            @Override
            public void run() {
                while (IPLIST.size()>0) {
                    try {
                        String ip = IPLIST.poll();
                        String json = HttpGetPost.Get(ApplicationInitListener.getProperty("ip_post") + ip, "");
                        JSONObject jsonObject = JSONObject.parseObject(json);
                        IPRecord record = new IPRecord();
                        record.setId(UUID.randomUUID().toString().replaceAll("-", ""));
                        record.setCountry(jsonObject.getString("country"));
                        record.setArea(jsonObject.getString("area"));
                        record.setCity(jsonObject.getString("city"));
                        record.setRegion(jsonObject.getString("region"));
                        record.setCountryId(jsonObject.getString("country_id"));
                        record.setCreatedTime(new Date());
                        record.setUpdatedTime(new Date());
                        ipRecordDao.insert(record);
                    } catch (Exception e) {
                        System.out.println(e.getMessage());
                    }
                }
            }
        });
    }
}
