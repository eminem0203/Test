
import com.eminem.bean.User;
import com.eminem.dao.UserDao;
import com.eminem.dao.impl.UserDaoImpl;

public class Demo {
	public String sayHello(String name) {
		UserDao userDao = new UserDaoImpl();
		User user = userDao.getUserById(name);
		return "Hello, " + user.getName();
	}
}
