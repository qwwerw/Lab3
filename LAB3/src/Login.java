import model.UserEntity;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Login", urlPatterns = "/Login")
public class Login extends HttpServlet {
    private static final SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String pass = request.getParameter("pass");

        try (Session session = sessionFactory.openSession()) {
            session.beginTransaction();

            // Проверяем, существует ли пользователь
            UserEntity user = (UserEntity) session.createQuery("FROM UserEntity WHERE name = :name")
                    .setParameter("name", name)
                    .uniqueResult();

            if (user == null) {
                // Пользователь не найден
                response.sendRedirect("index.jsp?error=User not found");
                return;
            }

            // Проверяем пароль
            if (user.getPassword().equals(pass)) {
                response.sendRedirect("welcome.jsp");
            } else {
                response.sendRedirect("index.jsp?error=Invalid password");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("index.jsp?error=Server error");
        }
    }

    @Override
    public void destroy() {
        try {
            sessionFactory.close(); // Закрытие SessionFactory при завершении сервлета
            // Останавливаем поток очистки MySQL
            com.mysql.cj.jdbc.AbandonedConnectionCleanupThread.checkedShutdown();

        }catch (Exception e) {
            e.printStackTrace();
        }
    }
}
