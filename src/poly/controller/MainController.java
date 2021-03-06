package poly.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import poly.dto.ViewDTO;
import poly.util.CmmUtil;

import javax.servlet.http.HttpServletRequest;

@Controller
public class MainController {

    private Logger log = Logger.getLogger(this.getClass());

    @RequestMapping(value = "index")
    public String Index() {
        log.info(this.getClass());

        return "/user/login";
    }

    // 로그인 jsp
    @RequestMapping(value = "/user/login")
    public String login(HttpServletRequest request) {
        return "/user/login";
    }

    // 회원가입 jsp
    @RequestMapping(value = "/user/signup")
    public String signUp() {
        return "/user/signup";
    }

    // 회원 찾기 jsp
    @RequestMapping(value = "/user/finduser")
    public String findUser() {
        return "/user/finduser";
    }

    // 인증번호 입력 jsp
    @RequestMapping(value = "/user/pwcheck")
    public String pwCheck() {
        return "/user/pwcheck";
    }

    // 비밀번호 변경 jsp
    @RequestMapping(value = "/user/chgpw")
    public String chgPw() {
        return "/user/chgpw";
    }

    //메인페이지
    @RequestMapping(value = "/main")
    public String main() {
        return "/main";
    }

    @RequestMapping(value = "/book/bookSearch")
    public String bookSearch() {
        return "/book/bookSearch";
    }

    @RequestMapping(value = "/admin/adminhome")
    public String adminHome() {
        return "/admin/adminhome";
    }

    @RequestMapping(value = "/admin/edituser")
    public String editUser(HttpServletRequest request, ModelMap model) {
        log.info(this.getClass().getName() + "editUser. Start!");

        String uid = CmmUtil.nvl(request.getParameter("uid"));

        log.info("uid : " + uid);

        ViewDTO rDTO = new ViewDTO();

        rDTO.setUid(uid);

        model.addAttribute("rDTO", rDTO);

        log.info(this.getClass().getName() + "editUser. END!");
        return "/admin/edituser";
    }

}
