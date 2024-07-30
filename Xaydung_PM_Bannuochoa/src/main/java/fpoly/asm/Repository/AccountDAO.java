package fpoly.asm.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import fpoly.asm.entity.Account;

public interface AccountDAO extends JpaRepository<Account, String>{

}
