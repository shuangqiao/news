package com.md1k.api.util;

import java.io.File;
import java.io.IOException;

/**
 * Created by shuangqiao on 2016/6/30.
 */
public class FileRenameUtil {
    public static String fileRename(String path) throws IOException {
        File file = new File(path);
        //先判断是否是正确格式以及是否存在
        if (file.exists()) {
            //如果已经是带括号的，就在原来基础上在括号里加1
            if (path.contains(").") && path.contains("(")) {
                String endName = path.substring(path.indexOf(")."));
                //取到括号里面的内容
                String fileNo = path.substring(path.indexOf("(") + 1, path.indexOf(")"));
                //判断如果是数字
                fileNo = fileNo.replaceAll("[^0-9]", "");
                if (fileNo.length() > 0) {
                    int newNo = Integer.parseInt(fileNo) + 1;
                    String headName = path.split("\\(")[0];
                    path = headName + "(" + newNo + endName;
                } else {
                    //不是 数字就另外加上(1)
                    String end = path.substring(path.lastIndexOf("."));
                    String end1 = "(1)" + end;
                    path = path.replace(end, end1);
                }

            } else {
                String end = path.substring(path.lastIndexOf("."));
                String end1 = "(1)" + end;
                path = path.replace(end, end1);

            }
            //回调当前方法，回去再判断新名称是否存在
            fileRename(path);
            //名称处理完后,确定再没有重复的再创建文件
            File file1 = new File(path);
            file1.createNewFile();
        } else if (!file.exists()) {
            file.createNewFile();
        }
        return path;
    }


    public static void main(String[] args) throws IOException {
        FileRenameUtil.fileRename("D:\\contract\\QQ截图2016.jpg");
    }
}
