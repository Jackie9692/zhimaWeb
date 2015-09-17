package com.zhima.base.util;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.Map;

public class JsonFileRead {
	public static Map<String, Object> readJsonFile(String path) {
		BufferedReader reader = null;
		
		
		FileInputStream fileInputStream = null;
		try {
			fileInputStream = new FileInputStream(path);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			InputStreamReader inputStreamReader = new InputStreamReader(fileInputStream, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		return null;
	}
}
