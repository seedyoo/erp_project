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
import edu.human.prj.vo.LottoVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/lotto")
public class LottoController  {


	@GetMapping()
	public String lotto(Model model) {
		log.info("lotto() ..");

		LottoVO lotto = new LottoVO();
		
		System.out.println("================"+ lotto.getArrLotto());
		model.addAttribute("arrLotto", lotto.getArrLotto());
		model.addAttribute("bounsNum", lotto.getBonusNum());
		
		return "/lotto/lotto";
	}
	
	
	


}
