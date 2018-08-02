package com.sy.platform.moudles.cms.web;

import com.sy.platform.moudles.cms.service.ArticleService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author Lenovo
 * @create 2018/7/27
 */
@Controller
@RequestMapping(value = "/test/")
public class ArticleCrtl {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private ArticleService articleService;

    @RequestMapping(value = "index")
    private String index(ModelAndView model){
//        List<Article> articleList = new ArrayList<>();
//        Article article = articleService.get("1");
//        articleList.add(article);
//        model.addObject("articleList",articleList);
//        logger.debug(articleList.get(0).toString());
        return "moudles/cms/index";
    }

    @RequestMapping(value = "blank")
    private String blank(){

        return "moudles/cms/blank";
    }

    @RequestMapping(value = "cards")
    private String cards(){

        return "moudles/cms/cards";
    }

    @RequestMapping(value = "charts")
    private String charts(){

        return "moudles/cms/charts";
    }

    @RequestMapping(value = "login")
    private String login(){

        return "moudles/cms/login";
    }

    @RequestMapping(value = "navbar")
    private String navbar(){

        return "moudles/cms/navbar";
    }

    @RequestMapping(value = "register")
    private String register(){

        return "moudles/cms/register";
    }

    @RequestMapping(value = "tables")
    private String tables(){

        return "moudles/cms/tables";
    }

    @RequestMapping(value = "forgotpassword")
    private String forgotpassword(){

        return "moudles/cms/forgotpassword";
    }

    @RequestMapping(value = "default")
    private String testdefault(){

        return "template/default";
    }

}
