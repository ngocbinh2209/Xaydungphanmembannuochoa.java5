package fpoly.asm.entity;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "Accounts")
public class Account implements Serializable {
		@Id
		String username;
		String password;
		String confirmPassword;
		String email;
		String fullname;
		String photo;
		Boolean activated;
		Boolean admin;

//		Quan hệ 1 nhiều với bảng orders
		@OneToMany(mappedBy = "account")
		List<Order> orders;

//		public String getFullname() {
//			return fullname;
//		}
	//
//		public void setFullname(String fullname) {
//			this.fullname = fullname;
//		}

		
}
