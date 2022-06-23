package com.carstore.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.Properties;

/**
 * 读取属性配置文件
 */
public class PropertiesUtil {
    /**
     *
     * @param propertiesName 属性文件名称
     * @param key  属性名称
     * @return
     */
    public static String getProperty(String propertiesName,String key)
    {
        Properties properties=new Properties();

        try {
            InputStream is=PropertiesUtil.class.getClassLoader().getResourceAsStream(propertiesName);
            properties.load(is);
            return properties.getProperty(key);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return  null;
    }

}

