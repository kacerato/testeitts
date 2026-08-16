package com.jme3.environment.baker;

import com.jme3.texture.Texture2D;
import com.jme3.texture.TextureCubeMap;

public interface IBLEnvBaker extends EnvBaker {
    void bakeIrradiance();

    void bakeSpecularIBL();

    Texture2D genBRTF();

    TextureCubeMap getIrradiance();

    TextureCubeMap getSpecularIBL();
}
