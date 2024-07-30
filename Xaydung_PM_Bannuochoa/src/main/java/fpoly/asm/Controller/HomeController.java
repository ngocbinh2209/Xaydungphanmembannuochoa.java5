package fpoly.asm.Controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Optional;

import org.springframework.util.StringUtils;
import org.eclipse.tags.shaded.org.apache.bcel.generic.NEW;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.server.ErrorPageRegistry;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import fpoly.asm.Service.AccountService;
import fpoly.asm.Service.ParamService;
import fpoly.asm.entity.Account;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("perfume")
public class HomeController {
	@Autowired
	private AccountService accountService;

	@Autowired
	private ParamService paramService;

	@RequestMapping("/home")
	public String homePerfume() {
		return "index";
	}

	@GetMapping("/gioHang")
	public String gioHangPerfume() {
		return "/gioHang";
	}

	@GetMapping("/SpYeuThich")
	public String SpYeuThich() {
		return "/SpYeuThich";
	}

//=================================================================================================================
//Chức năng Login
	@GetMapping("/login")
	public String loginPerfume(Model model) {
		model.addAttribute("account", new Account());
		return "/login_Register";
	}

	@PostMapping("/checkLogin")
	public String check(Model model, @ModelAttribute("account") Account account, HttpSession session) {
		String username = account.getUsername();
		String password = account.getPassword();
		Optional<Account> acc = accountService.accountLogin(username, password);

		if (acc.isPresent()) {
			Account accountok = acc.get();
			session.setAttribute("fullname", accountok.getFullname());
			if (accountok.getAdmin()) {
				model.addAttribute("message", "Đăng nhập thành công!");
				return "admin/adminThongKe";
			} else {
				model.addAttribute("message", "Đăng nhập thành công!");
				return "index";
			}
		} else {
			model.addAttribute("message", "Sai Tên Người Dùng hoặc Mật Khẩu");
			return "/login_Register";
		}
	}
//=================================================================================================================
//Chức năng Register

	@PostMapping("/checkRegister")
	public String saveOrUpdate(@Validated @ModelAttribute("account") Account account, BindingResult result, Model model,
			@RequestParam("photo") MultipartFile multipartFile) throws IOException {
		Optional<Account> UserAccount = accountService.findByUsername(account.getUsername());
		if (UserAccount.isPresent()) {
			model.addAttribute("ERROR_USERNAME", "Tên đăng nhập đã tồn tại. Hãy nhập tên đăng nhập khác.");
			return "/login_Register";
		}
		if (!account.getPassword().equals(account.getConfirmPassword())) {
			model.addAttribute("messRegister", "Mật khẩu và Xác nhận mật khẩu không khớp.");
			return "/login_Register";
		}
		if (multipartFile.isEmpty()) {
			if (account.getUsername() == null || account.getUsername().isEmpty()) {
				model.addAttribute("ERROR_USERNAME", "Hãy nhập vào Tên Đăng Nhập");
			}
			if (account.getPassword() == null || account.getPassword().isEmpty()) {
				model.addAttribute("ERROR_PASSWORD", "Hãy nhập vào Mật Khẩu");
			}
			if (account.getConfirmPassword() == null || account.getConfirmPassword().isEmpty()) {
				model.addAttribute("ERROR_CONFIRM_PASSWORD", "Hãy nhập vào Nhập lại Mật Khẩu");
			}
			if (account.getFullname() == null || account.getFullname().isEmpty()) {
				model.addAttribute("ERROR_FULL_NAME", "Hãy nhập vào Họ Và Tên");
			}
			if (account.getEmail() == null || account.getEmail().isEmpty()) {
				model.addAttribute("ERROR_EMAIL", "Hãy nhập vào Email");
			}
			if (account.getAdmin() == null) {
				model.addAttribute("ERROR_ADMIN", "Hãy chọn vai trò");
			}
			if (account.getActivated() == null) {
				model.addAttribute("ERROR_ACTIVATED", "Hãy chọn trạng thái kích hoạt");
			}
			if (multipartFile.isEmpty()) {
				model.addAttribute("ERROR_PHOTO", "Vui lòng chọn một bức ảnh");
			}
			return "/login_Register";
		}

		String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
		String uploadDir = "/src/main/resources/static/assets/img/";
		account.setPhoto(fileName);
		accountService.save(account);
		paramService.save(multipartFile, uploadDir);
		model.addAttribute("account", new Account());
		model.addAttribute("RegisterMessage", "Đăng ký thành công!");
		return "/login_Register";
	}

//=================================================================================================================
//Chức năng Logout	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/perfume/home";
	}

//=================================================================================================================
//Chức năng Xóa UserName
	@PostMapping("/xoaUsername")
	public String xoaUserName(@ModelAttribute("account") Account account, Model model) {
		Optional<Account> xoaUser = accountService.accountLogin(account.getUsername(), account.getPassword());
		if (xoaUser.isPresent() && xoaUser.get().getEmail().equals(account.getEmail())) {
			accountService.delete(account.getUsername());
			model.addAttribute("DELETE_MESSAGE", "Tài khoản đã được xóa thành công.");
			return "/doiMK";
		} else {
			model.addAttribute("DELETE_MESSAGE", "Không xóa được tài khoản. Hãy kiểm tra lại thông tin.");
			return "/doiMK";
		}
	}

//=================================================================================================================	
//Chức năng Láy lại MK	

	@GetMapping("/quenMK")
	public String quenMKPerfume(Model model) {
		model.addAttribute("account", new Account());
		return "/quenMK";
	}

	@PostMapping("/layLaiMK")
	public String layMK(@ModelAttribute("account") Account account, Model model) {
		Optional<Account> layLaiMKAccount = accountService.findByUsername(account.getUsername());

		if (layLaiMKAccount.isPresent() && layLaiMKAccount.get().getEmail().equals(account.getEmail())) {
			if (!account.getPassword().equals(account.getConfirmPassword())) {
				model.addAttribute("message", "Mật khẩu và Xác nhận mật khẩu không khớp.");
				return "/quenMK";
			}
			Account editMKAccount = layLaiMKAccount.get();
			editMKAccount.setPassword(account.getPassword());
			editMKAccount.setConfirmPassword(account.getConfirmPassword());
			accountService.save(editMKAccount);
			
			model.addAttribute("message", "Mật khẩu đã được cập nhật thành công.");
			return "/quenMK";
		}
			model.addAttribute("message", "Tên người dùng hoặc Email không chính xác.");
			return "/quenMK";
	}

//=================================================================================================================
//Chức năng Đổi MK	
	@GetMapping("/doiMK")
	public String doiMKPerfume(Model model) {
		model.addAttribute("account", new Account());
		return "/doiMK";
	}
	
//=================================================================================================================
	@GetMapping("/nam")
	public String nuocHoaNam() {
		return "/nam";
	}

	@GetMapping("/nu")
	public String nuocHoaNu() {
		return "/nu";
	}
}
