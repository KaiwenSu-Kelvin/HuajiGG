package com.huajigg.service.impl;

import com.huajigg.domain.HeroSkill;
import com.huajigg.mapper.IHeroSkillMapper;
import com.huajigg.service.IHeroSkillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HeroSkillServiceImpl implements IHeroSkillService{
    @Autowired
    private IHeroSkillMapper heroSkillMapper;


    @Override
    public List<HeroSkill> getHeroSkillById(int hid) {
        List<HeroSkill> heroSkill = heroSkillMapper.selectHeroSkillById(hid);
        return heroSkill;
    }
}
