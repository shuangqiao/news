package com.md1k.api.config;


import com.md1k.api.dao.IArticleDao;
import com.md1k.api.dao.IKeyWordsDao;
import com.md1k.api.pojo.Article;
import com.md1k.api.pojo.KeyWord;
import com.md1k.api.util.Constants;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.Scheduled;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Configuration
public class LoadListTask {
    public static String uuid = "";
    public static String uuid_bak = "";
    public static List<Article> WOMAN_LIST = new ArrayList<>();
    public static List<Article> MAN_LIST = new ArrayList<>();
    public static List<Article> SEX_LIST = new ArrayList<>();
    public static List<Article> HEALTH_LIST = new ArrayList<>();
    public static List<Article> COLD_LIST = new ArrayList<>();
    public static Article DAILY_RECOMMEND = new Article();
    public static List<Article> YOUNG_LIST = new ArrayList<>();
    public static List<Article> HISTORY_LIST = new ArrayList<>();

    public static List<Article> RANGE_LIST = new ArrayList<>();
    public static List<Article> RAND_LIST = new ArrayList<>();
    public static List<KeyWord> KEY_WORDS = new ArrayList<>();

    @Resource
    private IArticleDao articleDao;
    @Resource
    private IKeyWordsDao keyWordsDao;

    @PostConstruct
    public void initList(){
        uuid = UUID.randomUUID().toString().replaceAll("-","");
        uuid_bak = uuid;
        try {
            Runtime.getRuntime().exec("mv /www/server/apache-tomcat-default/webapps/video"+" " +
                    "/www/server/apache-tomcat-default/webapps/video"+uuid);
        }catch (Exception e){

        }
        try {
          /*  WOMAN_LIST = articleDao.findByCategoryId(Constants.WOMAN);
            for (Article article : WOMAN_LIST){
                if (article.getWords().length()>41){
                    article.setWords(article.getWords().substring(0,80)+"...");
                }
            }
            Thread.sleep(50);

            SEX_LIST = articleDao.findByCategoryId(Constants.SEX);
            for (Article article : SEX_LIST){
                if (article.getWords().length()>41){
                    article.setWords(article.getWords().substring(0,80)+"...");
                }
            }
            Thread.sleep(50);

            MAN_LIST = articleDao.findByCategoryId(Constants.MAN);
            for (Article article : MAN_LIST){
                if (article.getWords().length()>41){
                    article.setWords(article.getWords().substring(0,80)+"...");
                }
            }
            Thread.sleep(50);

            HEALTH_LIST = articleDao.findByCategoryId(Constants.HEALTH);
            for (Article article : HEALTH_LIST){
                if (article.getWords().length()>41){
                    article.setWords(article.getWords().substring(0,80)+"...");
                }
            }
            Thread.sleep(50);

            COLD_LIST = articleDao.findByCategoryId(Constants.COLD);
            for (Article article : COLD_LIST){
                if (article.getWords().length()>41){
                    article.setWords(article.getWords().substring(0,80)+"...");
                }
            }
            Thread.sleep(50);

            YOUNG_LIST = articleDao.findByCategoryId(Constants.YOUNG);
            for (Article article : YOUNG_LIST){
                if (article.getWords().length()>41){
                    article.setWords(article.getWords().substring(0,80)+"...");
                }
            }
            Thread.sleep(50);

            HISTORY_LIST = articleDao.findByCategoryId(Constants.HISTORY);
            for (Article article : HISTORY_LIST){
                if (article.getWords().length()>41){
                    article.setWords(article.getWords().substring(0,80)+"...");
                }
            }
*/
            RANGE_LIST = articleDao.getNewArticle();
            for (Article article : RANGE_LIST){
                if (article.getWords().length()>81){
                    article.setWords(article.getWords().substring(0,80)+"...");
                }
                if (article.getCategoryId().equals(Constants.STORY)){
                    article.setClass_name(Constants.STORY_CLASS);
                }else  if (article.getCategoryId().equals(Constants.RELATION)){
                    article.setClass_name(Constants.RELATION_CLASS);
                } else  if (article.getCategoryId().equals(Constants.YOUNG)){
                    article.setClass_name(Constants.YOUNG_CLASS);
                }else  if (article.getCategoryId().equals(Constants.HEALTH)){
                    article.setClass_name(Constants.HEALTH_CLASS);
                }else  if (article.getCategoryId().equals(Constants.COLD)){
                    article.setClass_name(Constants.COLD_CLASS);
                }else  if (article.getCategoryId().equals(Constants.HISTORY)){
                    article.setClass_name(Constants.HISTORY_CLASS);
                }
            }
            RAND_LIST = articleDao.getArticleByRand();
            KEY_WORDS = keyWordsDao.getList();
            DAILY_RECOMMEND = articleDao.dailyRecommend();
            DAILY_RECOMMEND.setWords(DAILY_RECOMMEND.getWords().substring(0,80)+"...");
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    //每20分钟更新一次
    @Scheduled(cron = "0 */20 * * * ?")
    public void updateList(){
        RANGE_LIST.clear();
        RANGE_LIST = articleDao.getNewArticle();
        for (Article article : RANGE_LIST){
            if (article.getWords().length()>41){
                article.setWords(article.getWords().substring(0,80)+"...");
            }
        }
        RAND_LIST.clear();
        RAND_LIST = articleDao.getArticleByRand();
        KEY_WORDS.clear();
        KEY_WORDS = keyWordsDao.getList();
    }

    //每天早上6点更新一次
    @Scheduled(cron = "0 0 6 * * ?")
    public void dailyRecommend(){
        DAILY_RECOMMEND = articleDao.dailyRecommend();
        DAILY_RECOMMEND.setWords(DAILY_RECOMMEND.getWords().substring(0,80)+"...");
    }

    //每3分钟轮询,检查闹钟信息，更新过期闹钟
    @Scheduled(cron = "0 */3 * * * ? ")
    public void updateUUID(){
        Date now = new Date();
        int hour = now.getHours();
        if ((hour & 1) == 1 && now.getMinutes() >= 55) {
            uuid_bak = uuid;
            uuid = UUID.randomUUID().toString().replaceAll("-", "");
            try {
                Runtime.getRuntime().exec("mv /www/server/apache-tomcat-default/webapps/video" + uuid_bak + " " +
                        "/www/server/apache-tomcat-default/webapps/video" + uuid);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
