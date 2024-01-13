package com.DAO;

import java.util.Comparator;

public class IdSort  implements  Comparator<EmpEntity>
	{

		@Override
		public int compare(EmpEntity o1, EmpEntity o2) {
			Integer n1=o1.getId();
			Integer n2=o2.getId();
			
			return n1.compareTo(n2);
		}
		
	}


