package com.huajigg.service.impl;

import com.huajigg.domain.Hero;
import com.huajigg.domain.Player;
import com.huajigg.mapper.IHeroMapper;
import com.huajigg.mapper.IPlayerMapper;
import com.huajigg.service.IHeroService;
import com.huajigg.service.IPlayerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class PlayerServiceImpl implements IPlayerService {

    @Autowired
    private IPlayerMapper iPlayerMapper;

    @Override
    public List<Player> selectAllPlayer() {
        List<Player> players = iPlayerMapper.selectAllPlayer();
        return players;
    }

}
