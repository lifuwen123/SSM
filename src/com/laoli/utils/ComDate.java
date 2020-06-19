package com.laoli.utils;
import java.text.SimpleDateFormat;
import java.util.Date;
public class ComDate {
	public static Date stampToDate(String str) throws Exception {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date date = simpleDateFormat.parse(str);
        return date;
    }
}
