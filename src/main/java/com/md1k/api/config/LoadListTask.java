package com.md1k.api.config;


import com.md1k.api.dao.IArticleDao;
import com.md1k.api.pojo.Article;
import com.md1k.api.util.Constants;
import org.springframework.context.annotation.Configuration;
import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Configuration
public class LoadListTask {

    public static List<Article> WOMAN_LIST = new ArrayList<>();
    public static List<Article> MAN_LIST = new ArrayList<>();
    public static List<Article> SEX_LIST = new ArrayList<>();
    public static List<Article> HEALTH_LIST = new ArrayList<>();
    public static List<Article> COLD_LIST = new ArrayList<>();
    public static List<Article> Physiology_LIST = new ArrayList<>();
    public static List<Article> WEEK_LIST = new ArrayList<>();
    public static List<Article> YOUNG_LIST = new ArrayList<>();
    public static List<Article> HISTORY_LIST = new ArrayList<>();

    public static List<Article> RANGE_LIST = new ArrayList<>();

    @Resource
    private IArticleDao articleDao;

    @PostConstruct
    public void initList(){
        try {
            WOMAN_LIST = articleDao.findByCategoryId(Constants.WOMAN);
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

            RANGE_LIST = articleDao.getArticleByHits();
            for (Article article : RANGE_LIST){
                if (article.getWords().length()>41){
                    article.setWords(article.getWords().substring(0,80)+"...");
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
