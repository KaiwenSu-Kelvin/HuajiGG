package com.huajigg.controller;

import com.huajigg.domain.*;
import com.huajigg.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/heroDetail")
public class HeroDetailController {

    @Autowired
    private IHeroSkillService heroSkillService;
    @Autowired
    private IHeroRecommendedSummonerSpellService heroRecommendedSummonerSpellService;
    @Autowired
    private IHeroRecommendRuneService heroRecommendRuneService;
    @Autowired
    private IHeroRecommendedItemService heroRecommendedItemService;
    @Autowired
    private IHeroService heroService;
    @RequestMapping("/overview")
    public ModelAndView getHeroOverview(int hid){
        Hero hero = heroService.getOneHero(hid);
        List<HeroSkill> heroSkills = heroSkillService.getHeroSkillById(hid);
        List<RecommendedSummonerSpell> recommendedSummonerSpells = heroRecommendedSummonerSpellService.getRecommendedSummonerSpell(hid);
        List<RecommendedRuneBuild> heroRecommendRunes = heroRecommendRuneService.getHeroRecommendRune(hid);
        List<RecommendedItemBuild> heroRecommendedItems = heroRecommendedItemService.getHeroRecommendedItem(hid);
        ModelAndView mv = new ModelAndView();
        mv.addObject("hero",hero);
        mv.addObject("recommendedSummonerSpells",recommendedSummonerSpells);
        mv.addObject("heroSkills",heroSkills);
        mv.addObject("heroRecommendRunes",heroRecommendRunes);
        mv.addObject("heroRecommendedItems",heroRecommendedItems);
        System.out.println(hero);
        /*mv.setViewName("heroDetail");*/
        mv.setViewName("heroDetail");
        return mv;
    }


}
