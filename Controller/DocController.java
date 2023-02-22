package com.cswiki.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cswiki.model.DocVO;
import com.cswiki.model.DochistoryVO;
import com.cswiki.service.docService;

@Controller
@RequestMapping("/doc/*")

public class DocController {
	@Inject
	private docService service;
	
    @RequestMapping(value="/doc_history", method=RequestMethod.GET) //url mapping
    public String getList(Model model) throws Exception{
        List<DochistoryVO> list = service.list();
        model.addAttribute("doc_history", list);
        //doc/doc_history.jsp로 포워딩
        return "doc/doc_history";
    }
    
    @RequestMapping(value = "/doc_write", method = RequestMethod.GET)
    public String Create() throws Exception {
       return "doc/doc_write";
    }
    
    @RequestMapping(value = "/doc_write", method = RequestMethod.POST)
    public String postcreate(DocVO vo) throws Exception {
    	service.doc_write(vo);
       return "redirect:doc_history";
    }
}
