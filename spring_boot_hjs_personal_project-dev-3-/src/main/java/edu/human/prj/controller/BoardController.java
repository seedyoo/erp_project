package edu.human.prj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import edu.human.prj.page.Criteria;
import edu.human.prj.page.PageVO;
import edu.human.prj.service.BoardService;
import edu.human.prj.vo.BoardVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/board")
public class BoardController  {

	@Autowired
	private BoardService boardService;
	
	
//	@GetMapping("/list")
//	public String list(Model model) {
//
//		log.info("list()...");
//		model.addAttribute("boards", boardService.getList());
//		
//		return "board/list";
//	}
	
	//http://localhost:8282/list
	//list?pageNum=5&amount=10">1</a>
	@GetMapping("/list")
	public String list2(Criteria cri, Model model) {
		log.info("list2() ..");
		log.info("list2() Criteria " + cri);		
		
		model.addAttribute("boards",boardService.getListWithPaging(cri));
		
		int total = boardService.getTotal();
		log.info("total" + total);			
		
		model.addAttribute("pageMaker", new PageVO(cri, total));	
		
		System.out.println();
		return "board/list";
	}
	
	@PostMapping("/write")
	public String write(BoardVO board) {
		log.info("write() .." + board);		
		
		boardService.writeBoard(board);
		
		return "redirect:/board/list";
	}
	
	@GetMapping("/delete/{bid}")
	public String delete(BoardVO board) {
		log.info("delete() .." + board);		
		
		boardService.remove(board.getBid());
		
		return "redirect:/board/list";
	}
	
	@GetMapping("/content/{bid}")
	public String content(BoardVO board,Model model) {
		log.info("content() .." + board);		
		
		model.addAttribute("board",boardService.get(board.getBid()));		
		
		return "/board/update";
	}
	
	@PostMapping("/update")
	public String update(BoardVO board) {
		log.info("update() .." + board);
		
		boardService.modify(board);				
		
		return "redirect:/board/list";
	}
	
	@GetMapping("/reply_view/{bid}")
	public String reply_view(BoardVO board,Model model) {
		log.info("reply_view() .." + board);
		
		model.addAttribute("board",boardService.get(board.getBid()));	
				
		
		return "/board/reply";
	}
	
	@PostMapping("/reply")
	public String reply(BoardVO boardVO) {
		System.out.println("reply() ..");
	    
		boardService.writeReply(boardVO);
	    
	    return "redirect:/board/list";
	}

}
