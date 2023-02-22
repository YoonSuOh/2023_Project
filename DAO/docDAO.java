package com.cswiki.dao;

import java.util.List;

import com.cswiki.model.DocVO;
import com.cswiki.model.DochistoryVO;

public interface docDAO {
	public List<DochistoryVO> list(); // 역사별 조회
	public void doc_write(DocVO vo); // 새문서 생성
}