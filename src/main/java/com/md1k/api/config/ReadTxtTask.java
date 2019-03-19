package com.md1k.api.config;

import com.md1k.api.dao.IArticleDao;
import com.md1k.api.pojo.Article;
import com.md1k.api.util.ApplicationInitListener;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.task.TaskExecutor;
import org.springframework.scheduling.annotation.Scheduled;

import javax.annotation.Resource;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by IntelliJ IDEA.
 * Author: shuangqiao
 * Date: 2019/3/19  18:03
 * Descript:文本内容读取任务
 */
@Configuration
public class ReadTxtTask {
    @Resource(name = "taskExecutor")
    private TaskExecutor taskExecutor;
    @Resource
    private IArticleDao articleDao;


    //每日6点1分轮询更新
    @Scheduled(cron = "6 1 0 * * ?")
    public void insertTxt(){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
        Date now = new Date();
        String dateStr = sdf.format(now);
        String root_path = ApplicationInitListener.getProperty("txt_path");

        File files = new File(root_path);
        File[] list = files.listFiles();
        for (File file : list) {
            if (file.getName().endsWith(".txt") && file.getName().contains(dateStr)) {
                StringBuffer result = new StringBuffer();
                try {
                    BufferedReader br = new BufferedReader(new FileReader(file));//构造一个BufferedReader类来读取文件
                    String s = null;
                    while ((s = br.readLine()) != null) {//使用readLine方法，一次读一行
                        result.append(System.lineSeparator() + s);
                    }
                    br.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                Article article = new Article();
            }
        }
    }
}
