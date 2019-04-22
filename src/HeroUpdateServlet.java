import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class HeroUpdateServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        int id = Integer.parseInt(req.getParameter("id"));
        int damage = Integer.parseInt(req.getParameter("damage"));
        float hp = Float.parseFloat(req.getParameter("hp"));
        Hero hero = new Hero();
        hero.setName(name);
        hero.setDamage(damage);
        hero.setId(id);
        hero.setHp(hp);
        new HeroDAO().update(hero);

        resp.sendRedirect("/Servlet/listHero");
    }
}
