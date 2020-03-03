package com.huajigg.service;

import com.huajigg.domain.HeroSkill;

import java.util.List;

public interface IHeroSkillService {
    List<HeroSkill> getHeroSkillById(int hid);
}
