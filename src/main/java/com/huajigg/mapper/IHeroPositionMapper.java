package com.huajigg.mapper;

import com.huajigg.domain.HeroPosition;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IHeroPositionMapper {
    List<HeroPosition> selectHeroPosition();
}
