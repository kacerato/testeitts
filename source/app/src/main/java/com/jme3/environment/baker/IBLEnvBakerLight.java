package com.jme3.environment.baker;

import com.jme3.math.Vector3f;
import com.jme3.texture.TextureCubeMap;

public interface IBLEnvBakerLight extends EnvBaker {
    void bakeSpecularIBL();

    void bakeSphericalHarmonicsCoefficients();

    TextureCubeMap getSpecularIBL();

    Vector3f[] getSphericalHarmonicsCoefficients();
}
