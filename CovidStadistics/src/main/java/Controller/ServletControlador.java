/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Data.AmericaDAO;
import Data.InfectedDAO;
import Data.YearDAO;
import Model.America;
import Model.Infected;
import Model.YearMonthCovid;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ing. Luis Llanos / BNT SAS
 */
@WebServlet("/ServletControlador")
public class ServletControlador extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String accion = request.getParameter("accion");
        String path = "/pages/dashboard.jsp";
        List<YearMonthCovid> y = null;
        List<YearMonthCovid> c = null;
        List<Infected> maxinfected = null;
        List<Infected> lessinfected = null;
        List<America> americas = null;

        try {
            //Graph one
            y = new YearDAO().listWorld();
            c = new YearDAO().listColombia();
            maxinfected = new InfectedDAO().maxinfected();
            lessinfected = new InfectedDAO().lessinfected();
            americas = new AmericaDAO().listAmerica();

            //Graph Two
        } catch (IllegalAccessException | ClassNotFoundException | InstantiationException ex) {
            Logger.getLogger(ServletControlador.class.getName()).log(Level.SEVERE, null, ex);
        }

        request.setAttribute("maxinfected", maxinfected);
        request.setAttribute("lessinfected", lessinfected);
        request.setAttribute("a", americas);
        request.setAttribute("b", americas);
        request.setAttribute("y", y);
        request.setAttribute("c", c);
        request.setAttribute("d", c);
        request.getRequestDispatcher(path).forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String accion = request.getParameter("accion");

    }

    private void graphone() throws IllegalAccessException, ClassNotFoundException, InstantiationException {

    }

}
