package com.mandarin.util;

import com.mandarin.basic.*;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;

import net.sf.json.JSONObject;

/**
 * 获取并处理书籍信息
 * @author ChenJing
 * @version 1.0
 *
 */
public class JsonSolve {
	/**
	 * 使用isbn码从豆瓣查询书籍信息
	 *
	 * 
	 * @param param
	 *            书籍的isbn13编码
	 * 
	 * @return 返回豆瓣发来的json字符串
	 */
	public static String sendGet(String param) {
		String result = "";
		BufferedReader in = null;
		try {

			String urlNameString = "https://api.douban.com/v2/book/isbn/" + param
					+ "?apikey=0df993c66c0c636e29ecbb5344252a4a";
			URL realUrl = new URL(urlNameString);
			// 打开和URL之间的连接
			URLConnection connection = realUrl.openConnection();
			// 设置通用的请求属性
			connection.setRequestProperty("accept", "*/*");
			connection.setRequestProperty("connection", "Keep-Alive");
			connection.setRequestProperty("user-agent", "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
			connection.setRequestProperty("accept-language", "zh-CN,zh;q=0.8");
			// 建立实际的连接
			connection.connect();

			in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
			String line;
			while ((line = in.readLine()) != null) {
				result += line;
			}
		} catch (Exception e) {
			System.out.println("发送GET请求出现异常！" + e);
			e.printStackTrace();
		}
		// 使用finally块来关闭输入流
		finally {
			try {
				if (in != null) {
					in.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

		return result;
	}

	/**
	 * 将豆瓣的返回的json数据封装成Book对象
	 * 
	 * @return
	 */
	public static Book toBook(String jsonStr) {
		JSONObject jsonObject = JSONObject.fromObject(jsonStr);
		// 提取所需要的字段
		String name = jsonObject.getString("title");
		String ISBN = jsonObject.getString("isbn13");
		String publisher = jsonObject.getString("publisher");
		List<String> authors = (List<String>) jsonObject.get("author");
		String author = JsonSolve.listToString(authors);
		String introduction = JsonSolve.getFormat(jsonObject.getString("summary"));
		double price = JsonSolve.getPrice(jsonObject.getString("price"));

		Book book = new Book();
		book.setAuthor(author);
		book.setName(name);
		book.setISBN(ISBN);
		book.setPublisher(publisher);
		book.setIntroduction(introduction);
		book.setPrice(price);
		return book;
	}

	/**
	 * 将List集合返回成字符串形式
	 * 
	 * @return
	 */
	private static String listToString(List<String> list) {
		String str = list.toString();
		str = str.replace("\"", "");
		str = str.replace("[", "");
		str = str.replace("]", "");
		return str;
	}

	/**
	 * 获取价格
	 * 
	 * @param str
	 * @return
	 */
	private static double getPrice(String str) {
		int start=-1;
		int end=-1;
		boolean flag=false;
		for(int i=0;i<str.length();i++) {
			char c= str.charAt(i);
			if((c>='0'&&c<='9')||c=='.') {
				if(!flag) {
					flag=true;
					start=i;
				}
				end=i;
			}
			
		}
		String price=str.substring(start, end);
		return Double.parseDouble(price);
	}
	/**
	 * 去掉多余的换行和空格
	 * @param str
	 * @return
	 */
	public static String getFormat(String str) {
		str=str.replaceAll("\n","");
		str=str.replaceAll("  ","");
		return str;
	}
}
