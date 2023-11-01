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
import edu.human.prj.service.MaterialService;
import edu.human.prj.vo.MaterialVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/material")
public class MaterialController  {

	@Autowired
	private MaterialService materialService;
	
	
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
	@GetMapping("/material_stock_list")
	public String list2(Criteria cri, Model model) {
		log.info("list2() ..");
		log.info("list2() Criteria " + cri);		
		
		model.addAttribute("materials",materialService.getListWithPaging(cri));
		
		int total = materialService.getTotal();
		log.info("total" + total);			
		
		model.addAttribute("pageMaker", new PageVO(cri, total));	
		
		System.out.println();
		return "material/material_stock_list";
	}
	@GetMapping("/material_receive_list")
	public String listR(Criteria cri, Model model) {
		log.info("listR() ..");
		log.info("listR() Criteria " + cri);		
		
		model.addAttribute("materials",materialService.getListWithPaging2(cri));
		
		int total = materialService.getTotal2();
		log.info("total" + total);			
		
		model.addAttribute("pageMaker", new PageVO(cri, total));	
		
		System.out.println();
		return "material/material_receive_list";
	}
	@GetMapping("/material_delivery_list")
	public String listD(Criteria cri, Model model) {
		log.info("listD() ..");
		log.info("listD() Criteria " + cri);		
		
		model.addAttribute("materials",materialService.getListWithPaging3(cri));
		
		int total = materialService.getTotal3();
		log.info("total" + total);			
		
		model.addAttribute("pageMaker", new PageVO(cri, total));	
		
		System.out.println();
		return "material/material_delivery_list";
	}
	@GetMapping("/supply_company_list")
	public String listS(Criteria cri, Model model) {
		log.info("listS() ..");
		log.info("listS() Criteria " + cri);		
		
		model.addAttribute("materials",materialService.getListWithPaging4(cri));
		
		int total = materialService.getTotal4();
		log.info("total" + total);			
		
		model.addAttribute("pageMaker", new PageVO(cri, total));	
		
		System.out.println();
		return "material/supply_company_list";
	}
	
	
	
	
	
	
	
	
	
	@PostMapping("/write")
	public String write(MaterialVO material) {
		log.info("write() .." + material);		
		
		materialService.writeMaterial(material);
		
		return "redirect:/material/Material_list";
	}
	
	@GetMapping("/delete/{ms_num}")
	public String delete(MaterialVO material) {
		log.info("delete() .." + material);		
		
		materialService.remove(material.getMs_num());
		
		return "redirect:/material/material_list";
	}
	
	@GetMapping("/content/{ms_num}")
	public String content(MaterialVO material,Model model) {
		log.info("content() .." + material);		
		
		model.addAttribute("material",materialService.get(material.getMs_num()));		
		
		return "/material/material_update";
	}
	
	@PostMapping("/update")
	public String update(MaterialVO material) {
		log.info("update() .." + material);
		
		materialService.modify(material);				
		
		return "redirect:/material/material_list";
	}
	
	@GetMapping("/reply_view/{ms_num}")
	public String reply_view(MaterialVO material,Model model) {
		log.info("reply_view() .." + material);
		
		model.addAttribute("material",materialService.get(material.getMs_num()));	
				
		
		return "/material/material_reply";
	}
	
	@PostMapping("/reply")
	public String reply(MaterialVO materialVO) {
		System.out.println("reply() ..");
	    
		materialService.writeReply(materialVO);
	    
	    return "redirect:/material/material_list";
	}
	
	
	
	
	
	
	
	
	
	
	
	

}
