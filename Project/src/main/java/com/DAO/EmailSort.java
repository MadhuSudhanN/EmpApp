package com.DAO;

import java.util.Comparator;

public class EmailSort implements  Comparator<EmpEntity>
{

	@Override
	public int compare(EmpEntity o1, EmpEntity o2) {
		String n1=o1.getEmail();
		String n2=o2.getEmail();
		
		return n1.compareTo(n2);
	}
	
}
