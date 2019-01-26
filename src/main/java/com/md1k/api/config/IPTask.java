package com.md1k.api.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.Scheduled;

import java.util.HashMap;
import java.util.Map;

@Configuration
public class IPTask {
    public static Map<String,Integer> IPS = new HashMap<>();

    //每分钟清空一次IP
    @Scheduled(cron="0 */1 * * * ? ")
    public void clearIP(){
        if (IPS.size()>0) {
            IPS.clear();
        }
    }
}
