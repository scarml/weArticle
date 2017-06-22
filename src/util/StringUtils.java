package util;

public class StringUtils {

	public static boolean isEmpty(String str){
		// TODO Auto-generated method stub
		return null == str || str.equals("")|| str.matches("\\s*");

	}
	public static String defaultValue(String content,String defaultValue){
		if(isEmpty(content)){
			return defaultValue;
		}
		return content;
		
	}

}
