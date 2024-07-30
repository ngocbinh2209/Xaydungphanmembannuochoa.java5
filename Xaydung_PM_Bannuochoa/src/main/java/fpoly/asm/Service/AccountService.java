package fpoly.asm.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import fpoly.asm.Repository.AccountDAO;
import fpoly.asm.entity.Account;

@Service
public class AccountService {

	@Autowired
	private AccountDAO accountDAO;

	public List<Account> findAllAccount() {
		return accountDAO.findAll();
	}
	
	 public Page<Account> findAllAccount(Pageable pageable) {
	        return accountDAO.findAll(pageable);
	    }

	public Optional<Account> findByUsername(String username) {
		return accountDAO.findById(username);
	}

	public Optional<Account> accountLogin(String username, String password) {
		Optional<Account> account = accountDAO.findById(username);
		if (account.isPresent() && account.get().getPassword().equals(password)) {
			return account;
		}
		return Optional.empty();
	}

	public void save(Account account) {
		accountDAO.save(account);
	}

	public void delete(String username) {
		accountDAO.deleteById(username);
		
	}

}
