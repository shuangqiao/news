package com.md1k.api.config;

import com.md1k.api.dao.IArticleDao;
import com.md1k.api.pojo.Article;
import org.springframework.core.task.TaskExecutor;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.concurrent.LinkedBlockingQueue;

/**
 * Created by IntelliJ IDEA.
 * Author: shuangqiao
 * Date: 2019/4/2  14:39
 * Descript:
 */
@Component
public class AsyncTask {
    public static LinkedBlockingQueue<Article> List = new LinkedBlockingQueue<>();

    @Resource
    private IArticleDao articleDao;

    @Resource(name = "taskExecutor")
    private TaskExecutor taskExecutor;

    public void taskService(){
        startSaveTask();
    }

    private synchronized boolean startSaveTask() {
        try {
            updateArticle();
            return true;
        }catch (Exception e){
            return false;
        }
    }

    private void updateArticle(){
        try {
            taskExecutor.execute(new Runnable() {
                @Override
                public void run() {
                    if (List.size() < 1) {
                        return;
                    }
                    while (List.size() > 0) {
                        Article article = List.poll();
                        int add = article.getHits();
                        add = add + 1;
                        article.setHits(add);
                        articleDao.updateHitsById(article.getId(), add);
                    }
                }
            });
        }catch (Exception e){
            System.out.println("浏览量更新异常");
        }
    }
}
