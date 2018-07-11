package com.tyut.familymanage.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.tyut.familymanage.dao.TestDao;
import com.tyut.familymanage.model.TestModel;

public class TestAction extends ActionSupport {

	private List<TestModel> list;

	public List<TestModel> getList() {
		return list;
	}

	public void setList(List<TestModel> list) {
		this.list = list;
	}

	public String toList()throws Exception{
		TestDao dao  = new TestDao();
		list = dao.getAll();
		return "toList";
	}
	
	private TestModel test;

	public TestModel getTest() {
		return test;
	}

	public void setTest(TestModel test) {
		this.test = test;
	}
	
}
