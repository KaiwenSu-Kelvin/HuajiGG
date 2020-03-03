package com.huajigg.mapper;

import com.huajigg.domain.HeroSkill;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface IHeroSkillMapper {
    List<HeroSkill> selectHeroSkillById(int hid);
}
