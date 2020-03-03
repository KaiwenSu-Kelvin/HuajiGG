package com.huajigg.service.impl;

import com.huajigg.domain.Hero;
import com.huajigg.mapper.IHeroMapper;
import com.huajigg.service.IHeroService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class HeroServiceImpl implements IHeroService {

    @Autowired
    private IHeroMapper iHeroMapper;

    @Override
    public List<Hero> getAllHero() {
        List<Hero> heroes = iHeroMapper.selectAllHero();
        return heroes;
    }

    @Override
    public Hero getOneHero(int hid) {
        Hero hero = iHeroMapper.selectOneHero(hid);
        return hero;
    }
}
