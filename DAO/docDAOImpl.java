package com.cswiki.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cswiki.model.DochistoryVO;
import com.cswiki.model.DocVO;

@Repository
public class docDAOImpl implements docDAO {
	@Inject
	private SqlSession sql;
	private static String namespace = "com.cswiki.mappers.doc";
	
	// 문서 역사 보기
	@Override
	public List<DochistoryVO> list() {
		return sql.selectList(namespace + ".doc_history");
	}
	
	// 새문서 등록
	@Override
	public void doc_write(DocVO vo) {
		sql.insert(namespace + ".doc_wirte", vo);
		
	}

}
