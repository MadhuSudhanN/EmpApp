package com.DAO;

import java.util.Comparator;

public class NameSort implements  Comparator<EmpEntity>
{

	@Override
	public int compare(EmpEntity o1, EmpEntity o2) {
		String n1=o1.getName();
		String n2=o2.getName();
		
		return n1.compareTo(n2);
	}
	
}
