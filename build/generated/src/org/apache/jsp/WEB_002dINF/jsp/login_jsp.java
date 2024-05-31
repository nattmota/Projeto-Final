package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("    <head>\r\n");
      out.write("         <!-- Font Awesome -->\r\n");
      out.write("         <link href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css\" rel=\"stylesheet\" />\r\n");
      out.write("         <!-- Google Fonts -->\r\n");
      out.write("         <link href=\"https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap\" rel=\"stylesheet\" />\r\n");
      out.write("         <!-- MDB -->\r\n");
      out.write("         <link href=\"https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.2.0/mdb.min.css\" rel=\"stylesheet\" />\r\n");
      out.write("         <script src=\"https://kit.fontawesome.com/6f0f753ce6.js\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("         <link href=\"./style/footer.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("         <link href=\"./style/header.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("         <link href=\"./style/login.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("         <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\"\r\n");
      out.write("               integrity=\"sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH\"\r\n");
      out.write("               crossorigin=\"anonymous\">\r\n");
      out.write("         <script src=\"https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js\"></script>\r\n");
      out.write("         <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Login Usuário</title>\r\n");
      out.write("    </head>\r\n");
      out.write("\r\n");
      out.write("    <body>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("        <main>\r\n");
      out.write("            <section class=\"vh-100 bg-image\" <div class=\"mask d-flex align-items-center h-100 gradient-custom-3\">\r\n");
      out.write("                    <div class=\"container h-100\">\r\n");
      out.write("                        <div class=\"row d-flex justify-content-center align-items-center h-100\">\r\n");
      out.write("                            <div class=\"col-12 col-md-9 col-lg-7 col-xl-6\">\r\n");
      out.write("                                <div class=\"card\" style=\"border-radius: 15px;\">\r\n");
      out.write("                                    <div class=\"card-body p-5\">\r\n");
      out.write("                                        <h2 class=\"text-uppercase text-center mb-5\">Iniciar Sessão</h2>\r\n");
      out.write("                                        <button type=\"submit\" onclick=\"showAlert8(event)\" class=\"add-to-cart-btn\"><i class=\"fa fa-shopping-cart\"></i>Botao Alerta</button>\r\n");
      out.write("                                        <form action=\"logar\" method=\"post\" id=\"form-login\">\r\n");
      out.write("\r\n");
      out.write("                                            <div data-mdb-input-init class=\"form-outline mb-4\">\r\n");
      out.write("                                                <input type=\"email\" id=\"email\" name=\"email\"\r\n");
      out.write("                                                       class=\"form-control form-control-lg\" />\r\n");
      out.write("                                                <label class=\"form-label\" for=\"form3Example3cg\">Seu Email</label>\r\n");
      out.write("                                            </div>                                                     \r\n");
      out.write("                                            <div data-mdb-input-init class=\"form-outline mb-4\">\r\n");
      out.write("                                                <input type=\"password\" id=\"senha\" name=\"senha\"\r\n");
      out.write("                                                       class=\"form-control form-control-lg\" />\r\n");
      out.write("                                                <label class=\"form-label\" for=\"form3Example4cg\">Senha</label>\r\n");
      out.write("                                            </div>\r\n");
      out.write("\r\n");
      out.write("                                            <div class=\"d-flex justify-content-center\">\r\n");
      out.write("                                                <button type=\"submit\"\r\n");
      out.write("                                                        class=\"btn btn-success btn-block btn-lg gradient-custom-4 text-body\">Iniciar\r\n");
      out.write("                                                    sessão</button>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <p class=\"text-center text-muted mt-5 mb-0\">Não possui uma conta ainda? <a\r\n");
      out.write("                                                    href=\"./cadastro-usuario\" class=\"fw-bold text-body\"><u>Cadastre-se\r\n");
      out.write("                                                        aqui</u></a></p>\r\n");
      out.write("                                        </form>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </section>\r\n");
      out.write("        </main>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js\"\r\n");
      out.write("                integrity=\"sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz\"\r\n");
      out.write("        crossorigin=\"anonymous\"></script>\r\n");
      out.write("    </body>\r\n");
      out.write("    <script type=\"text/javascript\"\r\n");
      out.write("    src=\"https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.2.0/mdb.umd.min.js\"></script>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
