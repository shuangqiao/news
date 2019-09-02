package com.md1k.api.util;

import java.io.InputStream;
import java.util.Properties;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * @author liushuangqiao
 * @version V1.0
 * @Title
 * @Package com.md1k.api.util
 * @date 07/10/2017 1:57 PM
 * @Description TODO
 */
public class ApplicationInitListener implements ServletContextListener {

    private static ServletContext context = null;
    private static Properties properties = new Properties();

    @Override
    public void contextInitialized(ServletContextEvent event) {
        context = event.getServletContext();

        try {
            String[] files = {"appconfig.properties", "payconfig.properties"};
            for (String file : files) {
                InputStream is = ApplicationInitListener.class.getClassLoader().getResourceAsStream(file);
                properties.load(is);
                if (null != is) {
                    is.close();
                }
            }

            context.setAttribute("appName",
                    getProperty("application_name"));
        } catch (Exception e) {
            System.out.println("============" + e.getMessage());
            //logger.error("Init Properties error!" + e.getMessage(), e);
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent event) {

    }

    /**
     * Get property value by property name.
     *
     * @param name The property name
     * @return The property value.
     */
    public static String getProperty(String name) {
        return properties.getProperty(name);
    }

}

