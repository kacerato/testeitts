package com.jme3.environment.baker;

import com.jme3.math.Vector3f;
import com.jme3.scene.Geometry;
import com.jme3.scene.Spatial;
import com.jme3.texture.TextureCubeMap;
import java.util.function.Predicate;

public interface EnvBaker {
    void bakeEnvironment(Spatial spatial, Vector3f vector3f, float f10, float f11, Predicate<Geometry> predicate);

    void clean();

    TextureCubeMap getEnvMap();

    boolean isTexturePulling();

    void setTexturePulling(boolean z10);
}
