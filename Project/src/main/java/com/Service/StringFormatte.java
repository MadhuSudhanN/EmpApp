package com.Service;

public class StringFormatte {
	public static String mS(String s)
	{
		String t=s.substring(0,1).toUpperCase();
		System.out.println(t);
		String x1=s.substring(1).toLowerCase();
		return t+x1;
	}
	public static void main(String[] args) {
      System.out.println(mS("madhfsf"));
	}
}
