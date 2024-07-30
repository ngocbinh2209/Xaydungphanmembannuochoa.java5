package fpoly.asm.Controller;

import java.util.Optional;

import org.eclipse.tags.shaded.org.apache.bcel.generic.NEW;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fpoly.asm.Service.AccountService;
import fpoly.asm.entity.Account;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	@Autowired
	AccountService accountService;
	
	@RequestMapping("/thongke")
	public String adminThongKe() {
		return "/admin/adminThongKe";
	}
	
	@GetMapping("/hoadon")
	public String adminHoaDon() {
		return "/admin/adminHoaDon";
	}
//=================================================================================================================
//Chức năng Hiện Thông tin Người Dùng	
	
	@GetMapping("/nguoiDung")
	public String adminNguoiDung(Model model) {
		model.addAttribute("account", new Account());
		model.addAttribute("accounts", accountService.findAllAccount());
		return "/admin/adminNguoiDung";
	}
	
	@PostMapping("/CheckNguoiDung")
	public String ShowNguoiDung(Model model, @ModelAttribute("account") Account account) {
		model.addAttribute("accounts", accountService.findAllAccount());
		return "/admin/adminNguoiDung";
	}
	
	@GetMapping("/delete/{username}")
	public String deleteNguoiDung(@PathVariable String username) {
		accountService.delete(username);
		return "redirect:/admin/nguoiDung";
	}
	
	@GetMapping("/update/{username}")
	public String updateNguoiDung(@PathVariable String username,
			@ModelAttribute("account")Account account, Model model ) {
		Optional<Account> accountUpdate = accountService.findByUsername(username);
		if (accountUpdate.isPresent()) {
			model.addAttribute("account", accountUpdate.get());
		}accountService.save(account);
		return "redirect:/admin/nguoiDung";
	}
	
	@GetMapping("/views/page")
	public String paginate(Model model, @RequestParam("p") Optional<Integer> p) {
	    Pageable pageable = PageRequest.of(p.orElse(0), 1);
	    Page<Account> page = accountService.findAllAccount(pageable);
	    model.addAttribute("LIST_ACCOUNT", page);
	    return "/admin/adminNguoiDung";
	}

//	@PostMapping("/update")
//    public String updateAccount(@ModelAttribute("account") Account account, Model model) {
//        accountService.save(account);
//        return "redirect:/admin/nguoiDung";
//    }
	
//=================================================================================================================
}
