package com.cswiki.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.cswiki.dao.docDAO;
import com.cswiki.model.DochistoryVO;
import com.cswiki.model.DocVO;

@Service
public class docServiceImpl implements docService {
	@Inject
	private docDAO dao;
	
	// 문서 역사 목록
	
	public List<DochistoryVO> list() {
		return dao.list();
	}
	
	// 새문서 작성
	@Override
	public void doc_write(DocVO vo) {
		dao.doc_write(vo);		
	}
}
