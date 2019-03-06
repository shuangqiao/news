package com.md1k.api.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

/**
 * @author w.b.l
 * @version V1.0
 * @Title
 * @Package com.md1k.api.util
 * @date 2018/4/27 1:37 PM
 * @Description TODO 以后进一步封装更完善一些
 */
public class HttpGetPost {

//  private static final String targetURL = "http://localhost:8080/JerseyJSONExample/rest/jsonServices/send";

  public static String Post(String targetURL, String params) {
    StringBuilder output = new StringBuilder();

    try {
      URL targetUrl = new URL(targetURL);

      HttpURLConnection httpConnection = (HttpURLConnection) targetUrl.openConnection();
      httpConnection.setDoOutput(true);
      httpConnection.setRequestMethod("POST");
      //      xmlhttp.setRequestHeader("contentType", "text/html;charset=uft-8") //指定发送的编码

      httpConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
      //      String input = "{\"id\":1,\"firstName\":\"Liam\",\"age\":22,\"lastName\":\"Marco\"}";

      OutputStream outputStream = httpConnection.getOutputStream();
      outputStream.write(params.getBytes());
      outputStream.flush();

      if (httpConnection.getResponseCode() != 200) {
        throw new RuntimeException("Failed : HTTP error code : "
            + httpConnection.getResponseCode());
      }
      BufferedReader responseBuffer = new BufferedReader(new InputStreamReader(
          (httpConnection.getInputStream()),"utf-8"));

      System.out.println("Output from Server:\n");
      String tempRead;
      while ((tempRead = responseBuffer.readLine()) != null) {
        System.out.println(tempRead);
        output.append(tempRead);
      }
      httpConnection.disconnect();

    } catch (MalformedURLException e) {
      e.printStackTrace();
    } catch (IOException e) {
      e.printStackTrace();
    }
    return output.toString();
  }

  public static String Get(String targetURL, String params) {
    StringBuilder output = new StringBuilder();

    try {

      URL restServiceURL = new URL(targetURL + "?" + params);

      HttpURLConnection httpConnection = (HttpURLConnection) restServiceURL.openConnection();
      httpConnection.setRequestMethod("GET");
      httpConnection.setRequestProperty("Accept", "application/x-www-form-urlencoded");

      if (httpConnection.getResponseCode() != 200) {
        throw new RuntimeException("HTTP GET Request Failed with Error code : "
            + httpConnection.getResponseCode());
      }

      BufferedReader responseBuffer = new BufferedReader(new InputStreamReader(
          (httpConnection.getInputStream())));

      System.out.println("Output from Server:  \n");

      String tempRead;
      while ((tempRead = responseBuffer.readLine()) != null) {
        System.out.println(tempRead);
        output.append(tempRead);
      }

      httpConnection.disconnect();
    } catch (MalformedURLException e) {
      e.printStackTrace();
    } catch (IOException e) {
      e.printStackTrace();
    }
    return output.toString();
  }

}
