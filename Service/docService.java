package com.cswiki.service;

import java.util.List;

import com.cswiki.model.DochistoryVO;
import com.cswiki.model.DocVO;

public interface docService {
	public List<DochistoryVO> list();
	public void doc_write(DocVO vo);
}
