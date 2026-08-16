package com.jme3.material.logic;

import com.jme3.asset.AssetManager;
import com.jme3.light.DirectionalLight;
import com.jme3.light.Light;
import com.jme3.light.LightList;
import com.jme3.light.PointLight;
import com.jme3.light.SpotLight;
import com.jme3.material.Material;
import com.jme3.material.TechniqueDef;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Matrix4f;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Caps;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.Renderer;
import com.jme3.scene.Geometry;
import com.jme3.shader.DefineList;
import com.jme3.shader.Shader;
import com.jme3.shader.Uniform;
import com.jme3.shader.VarType;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;

public final class StaticPassLightingLogic extends DefaultTechniqueDefLogic {
    private static final String DEFINE_NUM_DIR_LIGHTS = "NUM_DIR_LIGHTS";
    private static final String DEFINE_NUM_POINT_LIGHTS = "NUM_POINT_LIGHTS";
    private static final String DEFINE_NUM_SPOT_LIGHTS = "NUM_SPOT_LIGHTS";
    private final ColorRGBA ambientLightColor;
    private final int numDirLightsDefineId;
    private final int numPointLightsDefineId;
    private final int numSpotLightsDefineId;
    private final ArrayList<DirectionalLight> tempDirLights;
    private final Vector3f tempDirection;
    private final ArrayList<PointLight> tempPointLights;
    private final Vector3f tempPosition;
    private final ArrayList<SpotLight> tempSpotLights;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$light$Light$Type;

        static {
            int[] iArr = new int[Light.Type.values().length];
            $SwitchMap$com$jme3$light$Light$Type = iArr;
            try {
                iArr[Light.Type.Directional.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$light$Light$Type[Light.Type.Point.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$light$Light$Type[Light.Type.Spot.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public StaticPassLightingLogic(TechniqueDef techniqueDef) {
        super(techniqueDef);
        this.tempDirLights = new ArrayList<>();
        this.tempPointLights = new ArrayList<>();
        this.tempSpotLights = new ArrayList<>();
        this.ambientLightColor = new ColorRGBA(0.0f, 0.0f, 0.0f, 1.0f);
        this.tempPosition = new Vector3f();
        this.tempDirection = new Vector3f();
        VarType varType = VarType.Int;
        this.numDirLightsDefineId = techniqueDef.addShaderUnmappedDefine(DEFINE_NUM_DIR_LIGHTS, varType);
        this.numPointLightsDefineId = techniqueDef.addShaderUnmappedDefine(DEFINE_NUM_POINT_LIGHTS, varType);
        this.numSpotLightsDefineId = techniqueDef.addShaderUnmappedDefine(DEFINE_NUM_SPOT_LIGHTS, varType);
    }

    private void transformDirection(Matrix4f matrix4f, Vector3f vector3f) {
        matrix4f.multNormal(vector3f, vector3f);
    }

    private void transformPosition(Matrix4f matrix4f, Vector3f vector3f) {
        matrix4f.mult(vector3f, vector3f);
    }

    private void updateLightListUniforms(Matrix4f matrix4f, Shader shader, LightList lightList) {
        shader.getUniform("g_AmbientLightColor").setValue(VarType.Vector4, DefaultTechniqueDefLogic.getAmbientColor(lightList, true, this.ambientLightColor));
        Uniform uniform = shader.getUniform("g_LightData");
        uniform.setVector4Length((this.tempDirLights.size() * 2) + (this.tempPointLights.size() * 2) + (this.tempSpotLights.size() * 3));
        Iterator<DirectionalLight> it = this.tempDirLights.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            DirectionalLight next = it.next();
            ColorRGBA color = next.getColor();
            this.tempDirection.set(next.getDirection());
            transformDirection(matrix4f, this.tempDirection);
            int i11 = i10 + 1;
            uniform.setVector4InArray(color.f81598r, color.f81597g, color.f81596b, 1.0f, i10);
            Vector3f vector3f = this.tempDirection;
            i10 += 2;
            uniform.setVector4InArray(vector3f.f81611x, vector3f.f81612y, vector3f.f81613z, 1.0f, i11);
        }
        Iterator<PointLight> it2 = this.tempPointLights.iterator();
        while (it2.hasNext()) {
            PointLight next2 = it2.next();
            ColorRGBA color2 = next2.getColor();
            this.tempPosition.set(next2.getPosition());
            float invRadius = next2.getInvRadius();
            transformPosition(matrix4f, this.tempPosition);
            int i12 = i10 + 1;
            uniform.setVector4InArray(color2.f81598r, color2.f81597g, color2.f81596b, 1.0f, i10);
            Vector3f vector3f2 = this.tempPosition;
            i10 += 2;
            uniform.setVector4InArray(vector3f2.f81611x, vector3f2.f81612y, vector3f2.f81613z, invRadius, i12);
        }
        Iterator<SpotLight> it3 = this.tempSpotLights.iterator();
        while (it3.hasNext()) {
            SpotLight next3 = it3.next();
            ColorRGBA color3 = next3.getColor();
            next3.getPosition();
            next3.getDirection();
            this.tempPosition.set(next3.getPosition());
            this.tempDirection.set(next3.getDirection());
            transformPosition(matrix4f, this.tempPosition);
            transformDirection(matrix4f, this.tempDirection);
            float invSpotRange = next3.getInvSpotRange();
            float packedAngleCos = next3.getPackedAngleCos();
            uniform.setVector4InArray(color3.f81598r, color3.f81597g, color3.f81596b, 1.0f, i10);
            Vector3f vector3f3 = this.tempPosition;
            int i13 = i10 + 2;
            uniform.setVector4InArray(vector3f3.f81611x, vector3f3.f81612y, vector3f3.f81613z, invSpotRange, i10 + 1);
            Vector3f vector3f4 = this.tempDirection;
            i10 += 3;
            uniform.setVector4InArray(vector3f4.f81611x, vector3f4.f81612y, vector3f4.f81613z, packedAngleCos, i13);
        }
    }

    @Override
    public Shader makeCurrent(AssetManager assetManager, RenderManager renderManager, EnumSet<Caps> enumSet, LightList lightList, DefineList defineList) {
        this.tempDirLights.clear();
        this.tempPointLights.clear();
        this.tempSpotLights.clear();
        Iterator<Light> it = lightList.iterator();
        while (it.hasNext()) {
            Light next = it.next();
            int i10 = AnonymousClass1.$SwitchMap$com$jme3$light$Light$Type[next.getType().ordinal()];
            if (i10 == 1) {
                this.tempDirLights.add((DirectionalLight) next);
            } else if (i10 == 2) {
                this.tempPointLights.add((PointLight) next);
            } else if (i10 == 3) {
                this.tempSpotLights.add((SpotLight) next);
            }
        }
        defineList.set(this.numDirLightsDefineId, this.tempDirLights.size());
        defineList.set(this.numPointLightsDefineId, this.tempPointLights.size());
        defineList.set(this.numSpotLightsDefineId, this.tempSpotLights.size());
        return this.techniqueDef.getShader(assetManager, enumSet, defineList);
    }

    @Override
    public void render(RenderManager renderManager, Shader shader, Geometry geometry, LightList lightList, Material.BindUnits bindUnits) {
        Renderer renderer = renderManager.getRenderer();
        updateLightListUniforms(renderManager.getCurrentCamera().getViewMatrix(), shader, lightList);
        renderer.setShader(shader);
        DefaultTechniqueDefLogic.renderMeshFromGeometry(renderer, geometry);
    }
}
