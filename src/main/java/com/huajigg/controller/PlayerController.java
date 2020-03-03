package com.huajigg.controller;

import com.huajigg.domain.Player;
import com.huajigg.service.IPlayerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/player")
public class PlayerController {

    @Autowired
    private IPlayerService iPlayerService;

    @RequestMapping("/all")
    public ModelAndView selectAllPlayer(){
        List<Player> players = iPlayerService.selectAllPlayer();
        ModelAndView mv = new ModelAndView();
        mv.addObject("players",players);
        System.out.println(players);
        /*mv.setViewName("playRank");*/
        mv.setViewName("playerRank");
        return mv;
    }
}
