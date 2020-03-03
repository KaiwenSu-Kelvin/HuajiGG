package com.huajigg.controller;

import com.huajigg.domain.Hero;
import com.huajigg.domain.HeroPosition;
import com.huajigg.service.IHeroPositionService;
import com.huajigg.service.IHeroService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/heroPosition")
public class HeroStatisticsFrontPageController {

    @Autowired
    private IHeroPositionService iHeroPositionService;
    @Autowired
    private IHeroService iHeroService;


    @RequestMapping("/all")
    public ModelAndView getHeroPosition(){
        List<HeroPosition> heroPositions = iHeroPositionService.getHeroPosition();
        List<Hero> heroes = iHeroService.getAllHero();
        ModelAndView mv = new ModelAndView();
        mv.addObject("heroPositions",heroPositions);
        mv.addObject("heroes",heroes);
        mv.setViewName("statisticFrontPage");
        return mv;
    }
}
