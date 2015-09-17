package com.zhima.dev.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhima.dev.bo.ContentType;
import com.zhima.dev.dao.ContentTypeDao;
import com.zhima.dev.service.ContentTypeService;

@Service
public class ContentTypeServiceImpl implements ContentTypeService{
	
	@Autowired(required=false)
	private ContentTypeDao ContentTypeDao;
	public void setContentTypeDao(ContentTypeDao contentTypeDao) {
		ContentTypeDao = contentTypeDao;
	}
	@Override
	public List<ContentType> findList() {
		return ContentTypeDao.findList();
	}
	
	



/*	@Override
	public void setApplicationContext(ApplicationContext arg0)
			throws BeansException {
		// TODO Auto-generated method stub
		
	}*/

/*	@Override
	public Person getPerson(int id) {
		Person person = new Person("Jackie", 23, "Shanghai");
		return person;
	}

	@Override
	public void setApplicationContext(ApplicationContext applicationContext)
			throws BeansException {
		this.applicationContext = applicationContext;
	}

	@Override
	public void save() {
		System.out.println(applicationContext.getBean("studentDao").hashCode());
		System.out.println(applicationContext.getBean("sessionFactory").hashCode());
		System.out.println("haha");
	}

	@Override
	public List<Student> findList() {
		return studentDao.findList();
	}*/

}
