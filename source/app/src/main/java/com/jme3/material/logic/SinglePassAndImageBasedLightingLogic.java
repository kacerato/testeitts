package com.jme3.material.logic;

import com.jme3.asset.AssetManager;
import com.jme3.light.AmbientLight;
import com.jme3.light.DirectionalLight;
import com.jme3.light.Light;
import com.jme3.light.LightList;
import com.jme3.light.LightProbe;
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
import com.jme3.renderer.TextureUnitException;
import com.jme3.scene.Geometry;
import com.jme3.shader.DefineList;
import com.jme3.shader.Shader;
import com.jme3.shader.Uniform;
import com.jme3.shader.VarType;
import com.jme3.util.TempVars;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;

public final class SinglePassAndImageBasedLightingLogic extends DefaultTechniqueDefLogic {
    private static final RenderState ADDITIVE_LIGHT;
    private static final String DEFINE_NB_LIGHTS = "NB_LIGHTS";
    private static final String DEFINE_NB_PROBES = "NB_PROBES";
    private static final String DEFINE_SINGLE_PASS_LIGHTING = "SINGLE_PASS_LIGHTING";
    private static final String DEFINE_USE_AMBIENT_LIGHT = "USE_AMBIENT_LIGHT";
    private final ColorRGBA ambientLightColor;
    private final List<LightProbe> lightProbes;
    private final int nbLightsDefineId;
    private final int nbProbesDefineId;
    private final int singlePassLightingDefineId;
    private boolean useAmbientLight;
    private final int useAmbientLightDefineId;

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

    public SinglePassAndImageBasedLightingLogic(TechniqueDef techniqueDef) {
        super(techniqueDef);
        this.ambientLightColor = new ColorRGBA(0.0f, 0.0f, 0.0f, 1.0f);
        this.lightProbes = new ArrayList(3);
        VarType varType = VarType.Boolean;
        this.singlePassLightingDefineId = techniqueDef.addShaderUnmappedDefine(DEFINE_SINGLE_PASS_LIGHTING, varType);
        VarType varType2 = VarType.Int;
        this.nbLightsDefineId = techniqueDef.addShaderUnmappedDefine(DEFINE_NB_LIGHTS, varType2);
        this.nbProbesDefineId = techniqueDef.addShaderUnmappedDefine(DEFINE_NB_PROBES, varType2);
        this.useAmbientLightDefineId = techniqueDef.addShaderUnmappedDefine(DEFINE_USE_AMBIENT_LIGHT, varType);
    }

    private int setProbeData(RenderManager renderManager, int i10, Uniform uniform, Uniform uniform2, Uniform uniform3, LightProbe lightProbe) {
        uniform.setValue(VarType.Matrix4, lightProbe.getUniformMatrix());
        uniform2.setValue(VarType.Vector3Array, lightProbe.getShCoeffs());
        int i11 = i10 + 1;
        try {
            renderManager.getRenderer().setTexture(i10, lightProbe.getPrefilteredEnvMap());
            uniform3.setValue(VarType.Int, Integer.valueOf(i10));
            return i11;
        } catch (TextureUnitException unused) {
            throw new IllegalArgumentException("Can't assign texture unit for LightProbe. lastTexUnit=" + i11);
        }
    }

    public void extractIndirectLights(LightList lightList, boolean z10) {
        this.ambientLightColor.set(0.0f, 0.0f, 0.0f, 1.0f);
        int i10 = 0;
        this.useAmbientLight = false;
        while (i10 < lightList.size()) {
            Light light = lightList.get(i10);
            if (light instanceof AmbientLight) {
                this.useAmbientLight = true;
                this.ambientLightColor.addLocal(light.getColor());
                if (z10) {
                    lightList.remove(light);
                    i10--;
                }
            }
            if (light instanceof LightProbe) {
                this.lightProbes.add((LightProbe) light);
                if (z10) {
                    lightList.remove(light);
                    i10--;
                }
            }
            i10++;
        }
        this.ambientLightColor.f81595a = 1.0f;
    }

    @Override
    public Shader makeCurrent(AssetManager assetManager, RenderManager renderManager, EnumSet<Caps> enumSet, LightList lightList, DefineList defineList) {
        defineList.set(this.nbLightsDefineId, renderManager.getSinglePassLightBatchSize() * 3);
        defineList.set(this.singlePassLightingDefineId, true);
        if (lightList != null) {
            this.lightProbes.clear();
            extractIndirectLights(lightList, false);
            defineList.set(this.nbProbesDefineId, this.lightProbes.size());
            defineList.set(this.useAmbientLightDefineId, this.useAmbientLight);
        }
        return super.makeCurrent(assetManager, renderManager, enumSet, lightList, defineList);
    }

    @Override
    public void render(RenderManager renderManager, Shader shader, Geometry geometry, LightList lightList, Material.BindUnits bindUnits) {
        Renderer renderer = renderManager.getRenderer();
        int singlePassLightBatchSize = renderManager.getSinglePassLightBatchSize();
        if (lightList.size() == 0) {
            updateLightListUniforms(shader, geometry, lightList, singlePassLightBatchSize, renderManager, 0, bindUnits.textureUnit);
            renderer.setShader(shader);
            DefaultTechniqueDefLogic.renderMeshFromGeometry(renderer, geometry);
        } else {
            int i10 = 0;
            while (i10 < lightList.size()) {
                i10 = updateLightListUniforms(shader, geometry, lightList, singlePassLightBatchSize, renderManager, i10, bindUnits.textureUnit);
                renderer.setShader(shader);
                DefaultTechniqueDefLogic.renderMeshFromGeometry(renderer, geometry);
            }
        }
    }

    public int updateLightListUniforms(Shader shader, Geometry geometry, LightList lightList, int i10, RenderManager renderManager, int i11, int i12) {
        int i13;
        Uniform uniform;
        int i14;
        Uniform uniform2;
        if (i10 == 0) {
            return 0;
        }
        Uniform uniform3 = shader.getUniform("g_LightData");
        int i15 = i10 * 3;
        uniform3.setVector4Length(i15);
        Uniform uniform4 = shader.getUniform("g_LightCount");
        Uniform uniform5 = shader.getUniform("g_AmbientLightColor");
        Uniform uniform6 = shader.getUniform("g_LightProbeData");
        Uniform uniform7 = shader.getUniform("g_LightProbeData2");
        Uniform uniform8 = shader.getUniform("g_LightProbeData3");
        Uniform uniform9 = shader.getUniform("g_ShCoeffs");
        Uniform uniform10 = shader.getUniform("g_PrefEnvMap");
        Uniform uniform11 = shader.getUniform("g_ShCoeffs2");
        Uniform uniform12 = shader.getUniform("g_PrefEnvMap2");
        Uniform uniform13 = shader.getUniform("g_ShCoeffs3");
        Uniform uniform14 = shader.getUniform("g_PrefEnvMap3");
        this.lightProbes.clear();
        if (i11 != 0) {
            renderManager.getRenderer().applyRenderState(ADDITIVE_LIGHT);
            uniform5.setValue(VarType.Vector4, ColorRGBA.Black);
        } else {
            extractIndirectLights(lightList, true);
            uniform5.setValue(VarType.Vector4, this.ambientLightColor);
        }
        if (this.lightProbes.isEmpty()) {
            i13 = 1;
            uniform6.setValue(VarType.Matrix4, LightProbe.FALLBACK_MATRIX);
        } else {
            i13 = 1;
            int probeData = setProbeData(renderManager, i12, uniform6, uniform9, uniform10, this.lightProbes.get(0));
            if (this.lightProbes.size() > 1) {
                probeData = setProbeData(renderManager, probeData, uniform7, uniform11, uniform12, this.lightProbes.get(1));
            }
            if (this.lightProbes.size() > 2) {
                setProbeData(renderManager, probeData, uniform8, uniform13, uniform14, this.lightProbes.get(2));
            }
        }
        TempVars tempVars = TempVars.get();
        Vector4f vector4f = tempVars.vect4f1;
        int i16 = i10 + i11;
        int i17 = 0;
        int i18 = i11;
        while (i18 < i16 && i18 < lightList.size()) {
            Light light = lightList.get(i18);
            if (light.getType() == Light.Type.Ambient) {
                i16++;
                uniform = uniform4;
                i14 = i15;
                uniform2 = uniform3;
            } else {
                ColorRGBA color = light.getColor();
                if (light.getType() != Light.Type.Probe) {
                    uniform = uniform4;
                    i14 = i15;
                    uniform2 = uniform3;
                    uniform3.setVector4InArray(color.getRed(), color.getGreen(), color.getBlue(), light.getType().getId(), i17);
                    i17++;
                } else {
                    uniform = uniform4;
                    i14 = i15;
                    uniform2 = uniform3;
                }
                int i19 = AnonymousClass1.$SwitchMap$com$jme3$light$Light$Type[light.getType().ordinal()];
                if (i19 == i13) {
                    Vector3f direction = ((DirectionalLight) light).getDirection();
                    vector4f.set(direction.getX(), direction.getY(), direction.getZ(), 0.0f);
                    Uniform uniform15 = uniform2;
                    uniform15.setVector4InArray(vector4f.getX(), vector4f.getY(), vector4f.getZ(), -1.0f, i17);
                    uniform15.setVector4InArray(0.0f, 0.0f, 0.0f, 0.0f, i17 + 1);
                } else if (i19 == 2) {
                    PointLight pointLight = (PointLight) light;
                    Vector3f position = pointLight.getPosition();
                    float invRadius = pointLight.getInvRadius();
                    vector4f.set(position.getX(), position.getY(), position.getZ(), 1.0f);
                    Uniform uniform16 = uniform2;
                    uniform16.setVector4InArray(vector4f.getX(), vector4f.getY(), vector4f.getZ(), invRadius, i17);
                    uniform16.setVector4InArray(0.0f, 0.0f, 0.0f, 0.0f, i17 + 1);
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
                    uniform2.setVector4InArray(vector4f.getX(), vector4f.getY(), vector4f.getZ(), invSpotRange, i17);
                    vector4f.set(direction2.getX(), direction2.getY(), direction2.getZ(), 0.0f);
                    uniform2.setVector4InArray(vector4f.getX(), vector4f.getY(), vector4f.getZ(), packedAngleCos, i17 + 1);
                }
                i17 += 2;
            }
            i18++;
            i15 = i14;
            uniform3 = uniform2;
            uniform4 = uniform;
            i13 = 1;
        }
        int i20 = i15;
        Uniform uniform17 = uniform3;
        tempVars.release();
        uniform4.setValue(VarType.Int, Integer.valueOf(i17 / 3));
        while (i17 < i20) {
            uniform17.setVector4InArray(0.0f, 0.0f, 0.0f, 0.0f, i17);
            i17++;
        }
        return i18;
    }
}
