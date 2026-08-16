package com.jme3.material.logic;

import com.jme3.light.DirectionalLight;
import com.jme3.light.Light;
import com.jme3.light.LightList;
import com.jme3.light.PointLight;
import com.jme3.light.SpotLight;
import com.jme3.material.Material;
import com.jme3.material.RenderState;
import com.jme3.material.TechniqueDef;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.math.Vector4f;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.Renderer;
import com.jme3.scene.Geometry;
import com.jme3.shader.Shader;
import com.jme3.shader.Uniform;
import com.jme3.shader.VarType;
import com.jme3.util.TempVars;

public final class MultiPassLightingLogic extends DefaultTechniqueDefLogic {
    private static final RenderState ADDITIVE_LIGHT;
    private static final Quaternion NULL_DIR_LIGHT;
    private final ColorRGBA ambientLightColor;

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
        NULL_DIR_LIGHT = new Quaternion(0.0f, -1.0f, 0.0f, -1.0f);
        renderState.setBlendMode(RenderState.BlendMode.AlphaAdditive);
        renderState.setDepthWrite(false);
    }

    public MultiPassLightingLogic(TechniqueDef techniqueDef) {
        super(techniqueDef);
        this.ambientLightColor = new ColorRGBA(0.0f, 0.0f, 0.0f, 1.0f);
    }

    @Override
    public void render(RenderManager renderManager, Shader shader, Geometry geometry, LightList lightList, Material.BindUnits bindUnits) {
        Uniform uniform;
        Uniform uniform2;
        int i10;
        MultiPassLightingLogic multiPassLightingLogic = this;
        LightList lightList2 = lightList;
        Renderer renderer = renderManager.getRenderer();
        Uniform uniform3 = shader.getUniform("g_LightDirection");
        Uniform uniform4 = shader.getUniform("g_LightColor");
        Uniform uniform5 = shader.getUniform("g_LightPosition");
        Uniform uniform6 = shader.getUniform("g_AmbientLightColor");
        DefaultTechniqueDefLogic.getAmbientColor(lightList2, false, multiPassLightingLogic.ambientLightColor);
        int i11 = 0;
        boolean z10 = false;
        boolean z11 = true;
        while (i11 < lightList.size()) {
            Light light = lightList2.get(i11);
            if (light.getType() == Light.Type.Ambient || light.getType() == Light.Type.Probe) {
                uniform = uniform4;
                uniform2 = uniform6;
                i10 = i11;
            } else {
                if (z11) {
                    uniform6.setValue(VarType.Vector4, multiPassLightingLogic.ambientLightColor);
                    z11 = false;
                    z10 = true;
                } else if (z10) {
                    uniform6.setValue(VarType.Vector4, ColorRGBA.Black);
                    renderer.applyRenderState(ADDITIVE_LIGHT);
                    z10 = false;
                }
                TempVars tempVars = TempVars.get();
                Quaternion quaternion = tempVars.quat1;
                Quaternion quaternion2 = tempVars.quat2;
                boolean z12 = z11;
                ColorRGBA colorRGBA = tempVars.color;
                boolean z13 = z10;
                Vector4f vector4f = tempVars.vect4f1;
                uniform2 = uniform6;
                colorRGBA.set(light.getColor());
                colorRGBA.f81595a = light.getType().getId();
                VarType varType = VarType.Vector4;
                uniform4.setValue(varType, colorRGBA);
                int i12 = AnonymousClass1.$SwitchMap$com$jme3$light$Light$Type[light.getType().ordinal()];
                uniform = uniform4;
                if (i12 == 1) {
                    i10 = i11;
                    Vector3f direction = ((DirectionalLight) light).getDirection();
                    quaternion2.set(direction.getX(), direction.getY(), direction.getZ(), -1.0f);
                    uniform5.setValue(varType, quaternion2);
                    quaternion.set(0.0f, 0.0f, 0.0f, 0.0f);
                    uniform3.setValue(varType, quaternion);
                } else if (i12 == 2) {
                    i10 = i11;
                    PointLight pointLight = (PointLight) light;
                    Vector3f position = pointLight.getPosition();
                    quaternion2.set(position.getX(), position.getY(), position.getZ(), pointLight.getInvRadius());
                    uniform5.setValue(varType, quaternion2);
                    quaternion.set(0.0f, 0.0f, 0.0f, 0.0f);
                    uniform3.setValue(varType, quaternion);
                } else {
                    if (i12 != 3) {
                        throw new UnsupportedOperationException("Unknown type of light: " + ((Object) light.getType()));
                    }
                    SpotLight spotLight = (SpotLight) light;
                    Vector3f position2 = spotLight.getPosition();
                    Vector3f direction2 = spotLight.getDirection();
                    float invSpotRange = spotLight.getInvSpotRange();
                    float packedAngleCos = spotLight.getPackedAngleCos();
                    i10 = i11;
                    quaternion2.set(position2.getX(), position2.getY(), position2.getZ(), invSpotRange);
                    uniform5.setValue(varType, quaternion2);
                    vector4f.set(direction2.getX(), direction2.getY(), direction2.getZ(), 0.0f);
                    renderManager.getCurrentCamera().getViewMatrix().mult(vector4f, vector4f);
                    quaternion.set(vector4f.getX(), vector4f.getY(), vector4f.getZ(), packedAngleCos);
                    uniform3.setValue(varType, quaternion);
                }
                tempVars.release();
                renderer.setShader(shader);
                DefaultTechniqueDefLogic.renderMeshFromGeometry(renderer, geometry);
                z11 = z12;
                z10 = z13;
            }
            i11 = i10 + 1;
            multiPassLightingLogic = this;
            lightList2 = lightList;
            uniform6 = uniform2;
            uniform4 = uniform;
        }
        Uniform uniform7 = uniform4;
        Uniform uniform8 = uniform6;
        if (z11) {
            VarType varType2 = VarType.Vector4;
            uniform8.setValue(varType2, DefaultTechniqueDefLogic.getAmbientColor(lightList, false, this.ambientLightColor));
            uniform7.setValue(varType2, ColorRGBA.BlackNoAlpha);
            uniform5.setValue(varType2, NULL_DIR_LIGHT);
            renderer.setShader(shader);
            DefaultTechniqueDefLogic.renderMeshFromGeometry(renderer, geometry);
        }
    }
}
