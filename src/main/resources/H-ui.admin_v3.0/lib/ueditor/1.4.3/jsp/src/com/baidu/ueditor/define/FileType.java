package com.baidu.ueditor.define;

import java.util.HashMap;
import java.util.Map;

public class FileType {

	public templates.static final String JPG = "JPG";
	
	private templates.static final Map<String, String> types = new HashMap<String, String>(){{
		
		put( FileType.JPG, ".jpg" );
		
	}};
	
	public templates.static String getSuffix ( String key ) {
		return FileType.types.get( key );
	}
	
	/**
	 * 根据给定的文件名,获取其后缀信息
	 * @param filename
	 * @return
	 */
	public templates.static String getSuffixByFilename ( String filename ) {
		
		return filename.substring( filename.lastIndexOf( "." ) ).toLowerCase();
		
	}
	
}
