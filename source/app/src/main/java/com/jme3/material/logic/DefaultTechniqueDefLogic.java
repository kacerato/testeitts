package com.jme3.material.logic;

import com.jme3.asset.AssetManager;
import com.jme3.light.AmbientLight;
import com.jme3.light.Light;
import com.jme3.light.LightList;
import com.jme3.material.Material;
import com.jme3.material.TechniqueDef;
import com.jme3.math.ColorRGBA;
import com.jme3.renderer.Caps;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.Renderer;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.instancing.InstancedGeometry;
import com.jme3.shader.DefineList;
import com.jme3.shader.Shader;
import java.util.EnumSet;

public class DefaultTechniqueDefLogic implements TechniqueDefLogic {
    protected final TechniqueDef techniqueDef;

    public DefaultTechniqueDefLogic(TechniqueDef techniqueDef) {
        this.techniqueDef = techniqueDef;
    }

    public static ColorRGBA getAmbientColor(LightList lightList, boolean z10, ColorRGBA colorRGBA) {
        colorRGBA.set(0.0f, 0.0f, 0.0f, 1.0f);
        for (int i10 = 0; i10 < lightList.size(); i10++) {
            Light light = lightList.get(i10);
            if (light instanceof AmbientLight) {
                colorRGBA.addLocal(light.getColor());
                if (z10) {
                    lightList.remove(light);
                }
            }
        }
        colorRGBA.f81595a = 1.0f;
        return colorRGBA;
    }

    public static void renderMeshFromGeometry(Renderer renderer, Geometry geometry) {
        Mesh mesh = geometry.getMesh();
        int lodLevel = geometry.getLodLevel();
        if (!(geometry instanceof InstancedGeometry)) {
            renderer.renderMesh(mesh, lodLevel, 1, null);
            return;
        }
        InstancedGeometry instancedGeometry = (InstancedGeometry) geometry;
        int numVisibleInstances = instancedGeometry.getNumVisibleInstances();
        if (numVisibleInstances > 0) {
            renderer.renderMesh(mesh, lodLevel, numVisibleInstances, instancedGeometry.getAllInstanceData());
        }
    }

    @Override
    public Shader makeCurrent(AssetManager assetManager, RenderManager renderManager, EnumSet<Caps> enumSet, LightList lightList, DefineList defineList) {
        return this.techniqueDef.getShader(assetManager, enumSet, defineList);
    }

    @Override
    public void render(RenderManager renderManager, Shader shader, Geometry geometry, LightList lightList, Material.BindUnits bindUnits) {
        Renderer renderer = renderManager.getRenderer();
        renderer.setShader(shader);
        renderMeshFromGeometry(renderer, geometry);
    }
}
