package com.huajigg.mapper;

import com.huajigg.domain.Hero;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IHeroMapper {
    List<Hero> selectAllHero();
    Hero selectOneHero(int hid);
}
