package com.jme3.material.logic;

import com.jme3.asset.AssetManager;
import com.jme3.light.LightList;
import com.jme3.material.Material;
import com.jme3.renderer.Caps;
import com.jme3.renderer.RenderManager;
import com.jme3.scene.Geometry;
import com.jme3.shader.DefineList;
import com.jme3.shader.Shader;
import java.util.EnumSet;

public interface TechniqueDefLogic {
    Shader makeCurrent(AssetManager assetManager, RenderManager renderManager, EnumSet<Caps> enumSet, LightList lightList, DefineList defineList);

    void render(RenderManager renderManager, Shader shader, Geometry geometry, LightList lightList, Material.BindUnits bindUnits);
}
