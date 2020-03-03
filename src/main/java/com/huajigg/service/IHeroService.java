package com.huajigg.service;

import com.huajigg.domain.Hero;

import java.util.List;

public interface IHeroService {
    List<Hero> getAllHero();
    Hero getOneHero(int hid);
}
