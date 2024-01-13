package com.DAO;

import java.util.Comparator;

public class DeptSort implements  Comparator<EmpEntity>
{

	@Override
	public int compare(EmpEntity o1, EmpEntity o2) {
		String n1=o1.getDeptName();
		String n2=o2.getDeptName();
		
		return n1.compareTo(n2);
	}
	
}
