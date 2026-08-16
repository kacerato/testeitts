package com.jme3.material.logic;

import com.jme3.asset.AssetManager;
import com.jme3.light.DirectionalLight;
import com.jme3.light.Light;
import com.jme3.light.LightList;
import com.jme3.light.PointLight;
import com.jme3.light.SpotLight;
import com.jme3.material.Material;
import com.jme3.material.RenderState;
import com.jme3.material.TechniqueDef;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Vector3f;
import com.jme3.math.Vector4f;
import com.jme3.renderer.Caps;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.Renderer;
import com.jme3.scene.Geometry;
import com.jme3.shader.DefineList;
import com.jme3.shader.Shader;
import com.jme3.shader.Uniform;
import com.jme3.shader.VarType;
import com.jme3.util.TempVars;
import java.util.EnumSet;

public final class SinglePassLightingLogic extends DefaultTechniqueDefLogic {
    private static final RenderState ADDITIVE_LIGHT;
    private static final String DEFINE_NB_LIGHTS = "NB_LIGHTS";
    private static final String DEFINE_SINGLE_PASS_LIGHTING = "SINGLE_PASS_LIGHTING";
    private final ColorRGBA ambientLightColor;
    private final int nbLightsDefineId;
    private final int singlePassLightingDefineId;

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

    static {
        RenderState renderState = new RenderState();
        ADDITIVE_LIGHT = renderState;
        renderState.setBlendMode(RenderState.BlendMode.AlphaAdditive);
        renderState.setDepthWrite(false);
    }

    public SinglePassLightingLogic(TechniqueDef techniqueDef) {
        super(techniqueDef);
        this.ambientLightColor = new ColorRGBA(0.0f, 0.0f, 0.0f, 1.0f);
        this.singlePassLightingDefineId = techniqueDef.addShaderUnmappedDefine(DEFINE_SINGLE_PASS_LIGHTING, VarType.Boolean);
        this.nbLightsDefineId = techniqueDef.addShaderUnmappedDefine(DEFINE_NB_LIGHTS, VarType.Int);
    }

    @Override
    public Shader makeCurrent(AssetManager assetManager, RenderManager renderManager, EnumSet<Caps> enumSet, LightList lightList, DefineList defineList) {
        defineList.set(this.nbLightsDefineId, renderManager.getSinglePassLightBatchSize() * 3);
        defineList.set(this.singlePassLightingDefineId, true);
        return super.makeCurrent(assetManager, renderManager, enumSet, lightList, defineList);
    }

    @Override
    public void render(RenderManager renderManager, Shader shader, Geometry geometry, LightList lightList, Material.BindUnits bindUnits) {
        Renderer renderer = renderManager.getRenderer();
        int singlePassLightBatchSize = renderManager.getSinglePassLightBatchSize();
        if (lightList.size() == 0) {
            updateLightListUniforms(shader, geometry, lightList, singlePassLightBatchSize, renderManager, 0);
            renderer.setShader(shader);
            DefaultTechniqueDefLogic.renderMeshFromGeometry(renderer, geometry);
        } else {
            int i10 = 0;
            while (i10 < lightList.size()) {
                i10 = updateLightListUniforms(shader, geometry, lightList, singlePassLightBatchSize, renderManager, i10);
                renderer.setShader(shader);
                DefaultTechniqueDefLogic.renderMeshFromGeometry(renderer, geometry);
            }
        }
    }

    public int updateLightListUniforms(Shader shader, Geometry geometry, LightList lightList, int i10, RenderManager renderManager, int i11) {
        if (i10 == 0) {
            return 0;
        }
        Uniform uniform = shader.getUniform("g_LightData");
        int i12 = i10 * 3;
        uniform.setVector4Length(i12);
        Uniform uniform2 = shader.getUniform("g_LightCount");
        Uniform uniform3 = shader.getUniform("g_AmbientLightColor");
        int i13 = 1;
        if (i11 != 0) {
            renderManager.getRenderer().applyRenderState(ADDITIVE_LIGHT);
            uniform3.setValue(VarType.Vector4, ColorRGBA.Black);
        } else {
            uniform3.setValue(VarType.Vector4, DefaultTechniqueDefLogic.getAmbientColor(lightList, true, this.ambientLightColor));
        }
        TempVars tempVars = TempVars.get();
        Vector4f vector4f = tempVars.vect4f1;
        int i14 = 0;
        int i15 = i10 + i11;
        int i16 = i11;
        while (i16 < i15 && i16 < lightList.size()) {
            Light light = lightList.get(i16);
            if (light.getType() == Light.Type.Ambient || light.getType() == Light.Type.Probe) {
                i15++;
            } else {
                ColorRGBA color = light.getColor();
                int i17 = i15;
                uniform.setVector4InArray(color.getRed(), color.getGreen(), color.getBlue(), light.getType().getId(), i14);
                int i18 = i14 + 1;
                int i19 = AnonymousClass1.$SwitchMap$com$jme3$light$Light$Type[light.getType().ordinal()];
                if (i19 == i13) {
                    Vector3f direction = ((DirectionalLight) light).getDirection();
                    vector4f.set(direction.getX(), direction.getY(), direction.getZ(), 0.0f);
                    renderManager.getCurrentCamera().getViewMatrix().mult(vector4f, vector4f);
                    uniform.setVector4InArray(vector4f.getX(), vector4f.getY(), vector4f.getZ(), -1.0f, i18);
                    uniform.setVector4InArray(0.0f, 0.0f, 0.0f, 0.0f, i14 + 2);
                } else if (i19 == 2) {
                    PointLight pointLight = (PointLight) light;
                    Vector3f position = pointLight.getPosition();
                    float invRadius = pointLight.getInvRadius();
                    vector4f.set(position.getX(), position.getY(), position.getZ(), 1.0f);
                    renderManager.getCurrentCamera().getViewMatrix().mult(vector4f, vector4f);
                    uniform.setVector4InArray(vector4f.getX(), vector4f.getY(), vector4f.getZ(), invRadius, i18);
                    uniform.setVector4InArray(0.0f, 0.0f, 0.0f, 0.0f, i14 + 2);
                } else {
                    if (i19 != 3) {
                        throw new UnsupportedOperationException("Unknown type of light: " + ((Object) light.getType()));
                    }
                    SpotLight spotLight = (SpotLight) light;
                    Vector3f position2 = spotLight.getPosition();
                    Vector3f direction2 = spotLight.getDirection();
                    float invSpotRange = spotLight.getInvSpotRange();
                    float packedAngleCos = spotLight.getPackedAngleCos();
                    vector4f.set(position2.getX(), position2.getY(), position2.getZ(), 1.0f);
                    renderManager.getCurrentCamera().getViewMatrix().mult(vector4f, vector4f);
                    uniform.setVector4InArray(vector4f.getX(), vector4f.getY(), vector4f.getZ(), invSpotRange, i18);
                    vector4f.set(direction2.getX(), direction2.getY(), direction2.getZ(), 0.0f);
                    renderManager.getCurrentCamera().getViewMatrix().mult(vector4f, vector4f);
                    vector4f.normalizeLocal();
                    uniform.setVector4InArray(vector4f.getX(), vector4f.getY(), vector4f.getZ(), packedAngleCos, i14 + 2);
                }
                i14 += 3;
                i15 = i17;
            }
            i16++;
            i13 = 1;
        }
        tempVars.release();
        uniform2.setValue(VarType.Int, Integer.valueOf(i14 / 3));
        while (i14 < i12) {
            uniform.setVector4InArray(0.0f, 0.0f, 0.0f, 0.0f, i14);
            i14++;
        }
        return i16;
    }
}
