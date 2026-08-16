package com.jme3.material;

import com.jme3.asset.AssetKey;
import com.jme3.asset.AssetManager;
import com.jme3.asset.CloneableSmartAsset;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.light.LightList;
import com.jme3.material.RenderState;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Matrix4f;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.math.Vector4f;
import com.jme3.renderer.Caps;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.Renderer;
import com.jme3.renderer.TextureUnitException;
import com.jme3.scene.Geometry;
import com.jme3.shader.Shader;
import com.jme3.shader.ShaderBufferBlock;
import com.jme3.shader.Uniform;
import com.jme3.shader.VarType;
import com.jme3.shader.bufferobject.BufferObject;
import com.jme3.texture.Image;
import com.jme3.texture.Texture;
import com.jme3.texture.TextureImage;
import com.jme3.texture.image.ColorSpace;
import com.jme3.util.ListMap;
import com.jme3.util.SafeArrayList;
import java.io.IOException;
import java.util.Collection;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Material implements CloneableSmartAsset, Cloneable, Savable {
    static final boolean $assertionsDisabled = false;
    public static final int SAVABLE_VERSION = 2;
    private static final Logger logger = Logger.getLogger(Material.class.getName());
    private RenderState additionalState;
    private BindUnits bindUnits;
    private MaterialDef def;
    private AssetKey<?> key;
    private final RenderState mergedRenderState;
    private String name;
    private ListMap<String, MatParam> paramValues;
    private boolean receivesShadows;
    private int sortingId;
    private Technique technique;
    private HashMap<String, Technique> techniques;
    private boolean transparent;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$texture$Texture$Type;

        static {
            int[] iArr = new int[Texture.Type.values().length];
            $SwitchMap$com$jme3$texture$Texture$Type = iArr;
            try {
                iArr[Texture.Type.TwoDimensional.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$texture$Texture$Type[Texture.Type.TwoDimensionalArray.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$texture$Texture$Type[Texture.Type.ThreeDimensional.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$jme3$texture$Texture$Type[Texture.Type.CubeMap.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static class BindUnits {
        public int textureUnit = 0;
        public int bufferUnit = 0;
    }

    public Material(MaterialDef materialDef) {
        this.paramValues = new ListMap<>();
        this.techniques = new HashMap<>();
        this.additionalState = null;
        this.mergedRenderState = new RenderState();
        this.transparent = false;
        this.receivesShadows = false;
        this.sortingId = -1;
        this.bindUnits = new BindUnits();
        if (materialDef != null) {
            this.def = materialDef;
            for (MatParam matParam : materialDef.getMaterialParams()) {
                if (matParam.getValue() != null) {
                    setParam(matParam.getName(), matParam.getVarType(), matParam.getValue());
                }
            }
            return;
        }
        throw new IllegalArgumentException("Material definition cannot be null");
    }

    private void applyOverrides(Renderer renderer, Shader shader, SafeArrayList<MatParamOverride> safeArrayList, BindUnits bindUnits) {
        for (MatParamOverride matParamOverride : safeArrayList.getArray()) {
            VarType varType = matParamOverride.getVarType();
            MatParam materialParam = this.def.getMaterialParam(matParamOverride.getName());
            if (materialParam != null && materialParam.getVarType() == varType && matParamOverride.isEnabled()) {
                Uniform uniform = shader.getUniform(matParamOverride.getPrefixedName());
                if (matParamOverride.getValue() != null) {
                    updateShaderMaterialParameter(renderer, varType, shader, matParamOverride, bindUnits, true);
                } else {
                    uniform.clearValue();
                }
            }
        }
    }

    private void checkSetParam(VarType varType, String str) {
        MatParam materialParam = this.def.getMaterialParam(str);
        if (materialParam == null) {
            throw new IllegalArgumentException("Material parameter is not defined: " + str);
        }
        if (varType == null || materialParam.getVarType() == varType) {
            return;
        }
        logger.log(Level.WARNING, "Material parameter being set: {0} with type {1} doesn''t match definition types {2}", new Object[]{str, varType.name(), materialParam.getVarType()});
    }

    private void checkTextureParamColorSpace(String str, Texture texture) {
        MatParamTexture matParamTexture = (MatParamTexture) this.def.getMaterialParam(str);
        if (matParamTexture.getColorSpace() == null || matParamTexture.getColorSpace() == texture.getImage().getColorSpace()) {
            if (matParamTexture.getColorSpace() == null && texture.getName() != null && texture.getImage().getColorSpace() == ColorSpace.Linear) {
                logger.log(Level.WARNING, "The texture {0} has linear color space, but the material parameter {2} specifies no color space requirement, this may lead to unexpected behavior.\nCheck if the image was not set to another material parameter with a linear color space, or that you did not set the ColorSpace to Linear using texture.getImage.setColorSpace().", new Object[]{texture.getName(), texture.getImage().getColorSpace().name(), str});
                return;
            }
            return;
        }
        texture.getImage().setColorSpace(matParamTexture.getColorSpace());
        Logger logger2 = logger;
        Level level = Level.FINE;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "Material parameter {0} needs a {1} texture, texture {2} was switched to {3} color space.", new Object[]{str, matParamTexture.getColorSpace().toString(), texture.getName(), texture.getImage().getColorSpace().name()});
        }
    }

    private void clearUniformsSetByCurrent(Shader shader) {
        ListMap<String, Uniform> uniformMap = shader.getUniformMap();
        int size = uniformMap.size();
        for (int i10 = 0; i10 < size; i10++) {
            uniformMap.getValue(i10).clearSetByCurrentMaterial();
        }
    }

    private boolean isNormalsBackward(Vector3f vector3f) {
        int i10 = vector3f.f81611x < 0.0f ? 1 : 0;
        if (vector3f.f81612y < 0.0f) {
            i10++;
        }
        if (vector3f.f81613z < 0.0f) {
            i10++;
        }
        return i10 == 1 || i10 == 3;
    }

    private void resetUniformsNotSetByCurrent(Shader shader) {
        ListMap<String, Uniform> uniformMap = shader.getUniformMap();
        int size = uniformMap.size();
        for (int i10 = 0; i10 < size; i10++) {
            Uniform value = uniformMap.getValue(i10);
            if (!value.isSetByCurrentMaterial() && value.getName().charAt(0) != 'g') {
                value.clearValue();
            }
        }
    }

    private void updateRenderState(Geometry geometry, RenderManager renderManager, Renderer renderer, TechniqueDef techniqueDef) {
        RenderState copyMergedTo;
        if (renderManager.getForcedRenderState() != null) {
            copyMergedTo = this.mergedRenderState.copyFrom(renderManager.getForcedRenderState());
        } else if (techniqueDef.getRenderState() != null) {
            copyMergedTo = techniqueDef.getRenderState().copyMergedTo(this.additionalState, this.mergedRenderState.copyFrom(RenderState.DEFAULT));
        } else {
            RenderState renderState = this.mergedRenderState;
            RenderState renderState2 = RenderState.DEFAULT;
            copyMergedTo = renderState2.copyMergedTo(this.additionalState, renderState.copyFrom(renderState2));
        }
        if (copyMergedTo.isFaceCullFlippable() && isNormalsBackward(geometry.getWorldScale())) {
            copyMergedTo.flipFaceCull();
        }
        renderer.applyRenderState(copyMergedTo);
    }

    private void updateShaderMaterialParameter(Renderer renderer, VarType varType, Shader shader, MatParam matParam, BindUnits bindUnits, boolean z10) {
        if (varType == VarType.UniformBufferObject || varType == VarType.ShaderStorageBufferObject) {
            ShaderBufferBlock bufferBlock = shader.getBufferBlock(matParam.getPrefixedName());
            BufferObject bufferObject = (BufferObject) matParam.getValue();
            if (varType == VarType.ShaderStorageBufferObject) {
                bufferBlock.setBufferObject(ShaderBufferBlock.BufferType.ShaderStorageBufferObject, bufferObject);
                renderer.setShaderStorageBufferObject(bindUnits.bufferUnit, bufferObject);
            } else {
                bufferBlock.setBufferObject(ShaderBufferBlock.BufferType.UniformBufferObject, bufferObject);
                renderer.setUniformBufferObject(bindUnits.bufferUnit, bufferObject);
            }
            bindUnits.bufferUnit++;
            return;
        }
        Uniform uniform = shader.getUniform(matParam.getPrefixedName());
        if (z10 || !uniform.isSetByCurrentMaterial()) {
            if (!varType.isTextureType() && !varType.isImageType()) {
                uniform.setValue(varType, matParam.getValue());
                return;
            }
            try {
                if (varType.isTextureType()) {
                    renderer.setTexture(bindUnits.textureUnit, (Texture) matParam.getValue());
                } else {
                    renderer.setTextureImage(bindUnits.textureUnit, (TextureImage) matParam.getValue());
                }
                uniform.setValue(VarType.Int, Integer.valueOf(bindUnits.textureUnit));
                bindUnits.textureUnit++;
            } catch (TextureUnitException unused) {
                throw new IllegalStateException("Too many texture parameters (" + (bindUnits.textureUnit + 1) + ") assigned\n to " + toString());
            }
        }
    }

    private BindUnits updateShaderMaterialParameters(Renderer renderer, Shader shader, SafeArrayList<MatParamOverride> safeArrayList, SafeArrayList<MatParamOverride> safeArrayList2) {
        BindUnits bindUnits = this.bindUnits;
        bindUnits.textureUnit = 0;
        bindUnits.bufferUnit = 0;
        if (safeArrayList != null) {
            applyOverrides(renderer, shader, safeArrayList, bindUnits);
        }
        if (safeArrayList2 != null) {
            applyOverrides(renderer, shader, safeArrayList2, this.bindUnits);
        }
        for (int i10 = 0; i10 < this.paramValues.size(); i10++) {
            MatParam value = this.paramValues.getValue(i10);
            updateShaderMaterialParameter(renderer, value.getVarType(), shader, value, this.bindUnits, false);
        }
        return this.bindUnits;
    }

    public void clearParam(String str) {
        checkSetParam(null, str);
        MatParam param = getParam(str);
        if (param == null) {
            return;
        }
        this.paramValues.remove(str);
        if (param instanceof MatParamTexture) {
            this.sortingId = -1;
        }
        Technique technique = this.technique;
        if (technique != null) {
            technique.notifyParamChanged(str, null, null);
        }
    }

    public boolean contentEquals(Object obj) {
        if (!(obj instanceof Material)) {
            return false;
        }
        Material material = (Material) obj;
        if (this == material) {
            return true;
        }
        if (getMaterialDef() != material.getMaterialDef() || this.paramValues.size() != material.paramValues.size()) {
            return false;
        }
        Technique technique = this.technique;
        if (technique != null || material.technique != null) {
            String name = technique != null ? technique.getDef().getName() : "Default";
            Technique technique2 = material.technique;
            if (!name.equals(technique2 != null ? technique2.getDef().getName() : "Default")) {
                return false;
            }
        }
        for (String str : this.paramValues.o()) {
            MatParam param = getParam(str);
            MatParam param2 = material.getParam(str);
            if (param2 == null || !param2.equals(param)) {
                return false;
            }
        }
        RenderState renderState = this.additionalState;
        if (renderState == null) {
            if (material.additionalState != null) {
                return false;
            }
        } else if (!renderState.equals(material.additionalState)) {
            return false;
        }
        return true;
    }

    public int contentHashCode() {
        MaterialDef materialDef = this.def;
        int hashCode = (203 + (materialDef != null ? materialDef.hashCode() : 0)) * 29;
        ListMap<String, MatParam> listMap = this.paramValues;
        int hashCode2 = (hashCode + (listMap != null ? listMap.hashCode() : 0)) * 29;
        Technique technique = this.technique;
        int hashCode3 = (hashCode2 + (technique != null ? technique.getDef().getName().hashCode() : 0)) * 29;
        RenderState renderState = this.additionalState;
        return hashCode3 + (renderState != null ? renderState.contentHashCode() : 0);
    }

    public Technique getActiveTechnique() {
        return this.technique;
    }

    public RenderState getAdditionalRenderState() {
        if (this.additionalState == null) {
            this.additionalState = RenderState.ADDITIONAL.m1276clone();
        }
        return this.additionalState;
    }

    public String getAssetName() {
        AssetKey<?> assetKey = this.key;
        if (assetKey != null) {
            return assetKey.getName();
        }
        return null;
    }

    @Override
    public AssetKey getKey() {
        return this.key;
    }

    public MaterialDef getMaterialDef() {
        return this.def;
    }

    public String getName() {
        return this.name;
    }

    public MatParam getParam(String str) {
        return this.paramValues.get(str);
    }

    public <T> T getParamValue(String str) {
        MatParam matParam = this.paramValues.get(str);
        if (matParam == null) {
            return null;
        }
        return (T) matParam.getValue();
    }

    public Collection<MatParam> getParams() {
        return this.paramValues.values();
    }

    public ListMap<String, MatParam> getParamsMap() {
        return this.paramValues;
    }

    public int getSortId() {
        Technique technique;
        Texture texture;
        Image image;
        if (this.sortingId == -1 && (technique = this.technique) != null) {
            this.sortingId = technique.getSortId() << 16;
            int i10 = 17;
            for (int i11 = 0; i11 < this.paramValues.size(); i11++) {
                MatParam value = this.paramValues.getValue(i11);
                if (value.getVarType().isTextureType() && (texture = (Texture) value.getValue()) != null && (image = texture.getImage()) != null) {
                    int id2 = image.getId();
                    if (id2 == -1) {
                        id2 = 0;
                    }
                    i10 = (i10 * 23) + id2;
                }
            }
            this.sortingId |= 65535 & i10;
        }
        return this.sortingId;
    }

    public MatParamTexture getTextureParam(String str) {
        MatParam matParam = this.paramValues.get(str);
        if (matParam instanceof MatParamTexture) {
            return (MatParamTexture) matParam;
        }
        return null;
    }

    public boolean isReceivesShadows() {
        return this.receivesShadows;
    }

    public boolean isTransparent() {
        return this.transparent;
    }

    public void preload(RenderManager renderManager, Geometry geometry) {
        if (this.technique == null) {
            selectTechnique("Default", renderManager);
        }
        TechniqueDef def = this.technique.getDef();
        Renderer renderer = renderManager.getRenderer();
        EnumSet<Caps> caps = renderer.getCaps();
        if (def.isNoRender()) {
            return;
        }
        SafeArrayList<MatParamOverride> worldMatParamOverrides = geometry.getWorldMatParamOverrides();
        Shader makeCurrent = this.technique.makeCurrent(renderManager, worldMatParamOverrides, null, null, caps);
        updateShaderMaterialParameters(renderer, makeCurrent, worldMatParamOverrides, null);
        renderManager.getRenderer().setShader(makeCurrent);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:75:? A[RETURN, SYNTHETIC] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void read(JmeImporter jmeImporter) throws IOException {
        boolean z10;
        boolean z11;
        Iterator it;
        RenderState renderState;
        MatParam matParam;
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.name = capsule.readString("name", null);
        this.additionalState = (RenderState) capsule.readSavable("render_state", null);
        this.transparent = capsule.readBoolean("is_transparent", false);
        this.receivesShadows = capsule.readBoolean("receives_shadows", false);
        String readString = capsule.readString("material_def", null);
        HashMap hashMap = (HashMap) capsule.readStringSavableMap("parameters", null);
        int savableVersion = capsule.getSavableVersion(Material.class);
        boolean z12 = savableVersion < 1;
        boolean z13 = savableVersion < 2;
        if (jmeImporter.getFormatVersion() == 0) {
            if (readString.equalsIgnoreCase("Common/MatDefs/Misc/VertexColor.j3md")) {
                z10 = true;
                readString = "Common/MatDefs/Misc/Unshaded.j3md";
                z11 = false;
            } else {
                if (!readString.equalsIgnoreCase("Common/MatDefs/Misc/SimpleTextured.j3md") && !readString.equalsIgnoreCase("Common/MatDefs/Misc/SolidColor.j3md")) {
                    if (readString.equalsIgnoreCase("Common/MatDefs/Misc/WireColor.j3md")) {
                        getAdditionalRenderState().setWireframe(true);
                    } else if (readString.equalsIgnoreCase("Common/MatDefs/Misc/Unshaded.j3md") && (matParam = (MatParam) hashMap.get("SeperateTexCoord")) != null && ((Boolean) matParam.getValue()).booleanValue()) {
                        hashMap.remove("SeperateTexCoord");
                        z10 = false;
                        z11 = true;
                    }
                }
                z10 = false;
                readString = "Common/MatDefs/Misc/Unshaded.j3md";
                z11 = z10;
            }
            this.def = (MaterialDef) jmeImporter.getAssetManager().loadAsset(new AssetKey(readString));
            this.paramValues = new ListMap<>();
            it = hashMap.entrySet().iterator();
            while (it.hasNext()) {
                MatParam matParam2 = (MatParam) ((Map.Entry) it.next()).getValue();
                if (matParam2 instanceof MatParamTexture) {
                    MatParamTexture matParamTexture = (MatParamTexture) matParam2;
                    if (matParamTexture.getTextureValue() != null && matParamTexture.getTextureValue().getImage() != null) {
                        checkTextureParamColorSpace(matParamTexture.getName(), matParamTexture.getTextureValue());
                    }
                }
                if (jmeImporter.getFormatVersion() == 0 && matParam2.getName().startsWith("m_")) {
                    matParam2.setName(matParam2.getName().substring(2));
                }
                if (this.def.getMaterialParam(matParam2.getName()) == null) {
                    logger.log(Level.WARNING, "The material parameter is not defined: {0}. Ignoring..", matParam2.getName());
                } else {
                    checkSetParam(matParam2.getVarType(), matParam2.getName());
                    this.paramValues.put(matParam2.getName(), matParam2);
                }
            }
            if (z12) {
                for (MatParam matParam3 : this.def.getMaterialParams()) {
                    if (matParam3.getValue() != null && this.paramValues.get(matParam3.getName()) == null) {
                        setParam(matParam3.getName(), matParam3.getVarType(), matParam3.getValue());
                    }
                }
            }
            if (z13 && (renderState = this.additionalState) != null) {
                renderState.applyPolyOffset = renderState.offsetEnabled;
                renderState.applyBlendMode = renderState.blendMode == RenderState.BlendMode.Off;
                renderState.applyColorWrite = !renderState.colorWrite;
                renderState.applyCullMode = renderState.cullMode != RenderState.FaceCullMode.Back;
                renderState.applyDepthTest = !renderState.depthTest;
                renderState.applyDepthWrite = !renderState.depthWrite;
                renderState.applyStencilTest = renderState.stencilTest;
                renderState.applyWireFrame = renderState.wireframe;
            }
            if (z10) {
                setBoolean("VertexColor", true);
            }
            if (z11) {
                return;
            }
            setBoolean("SeparateTexCoord", true);
            return;
        }
        z10 = false;
        z11 = z10;
        this.def = (MaterialDef) jmeImporter.getAssetManager().loadAsset(new AssetKey(readString));
        this.paramValues = new ListMap<>();
        it = hashMap.entrySet().iterator();
        while (it.hasNext()) {
        }
        if (z12) {
        }
        if (z13) {
            renderState.applyPolyOffset = renderState.offsetEnabled;
            renderState.applyBlendMode = renderState.blendMode == RenderState.BlendMode.Off;
            renderState.applyColorWrite = !renderState.colorWrite;
            renderState.applyCullMode = renderState.cullMode != RenderState.FaceCullMode.Back;
            renderState.applyDepthTest = !renderState.depthTest;
            renderState.applyDepthWrite = !renderState.depthWrite;
            renderState.applyStencilTest = renderState.stencilTest;
            renderState.applyWireFrame = renderState.wireframe;
        }
        if (z10) {
        }
        if (z11) {
        }
    }

    public void render(Geometry geometry, LightList lightList, RenderManager renderManager) {
        if (this.technique == null) {
            selectTechnique("Default", renderManager);
        }
        TechniqueDef def = this.technique.getDef();
        Renderer renderer = renderManager.getRenderer();
        EnumSet<Caps> caps = renderer.getCaps();
        if (def.isNoRender()) {
            return;
        }
        updateRenderState(geometry, renderManager, renderer, def);
        SafeArrayList<MatParamOverride> worldMatParamOverrides = geometry.getWorldMatParamOverrides();
        Shader makeCurrent = this.technique.makeCurrent(renderManager, worldMatParamOverrides, renderManager.getForcedMatParams(), lightList, caps);
        clearUniformsSetByCurrent(makeCurrent);
        renderManager.updateUniformBindings(makeCurrent);
        BindUnits updateShaderMaterialParameters = updateShaderMaterialParameters(renderer, makeCurrent, worldMatParamOverrides, renderManager.getForcedMatParams());
        resetUniformsNotSetByCurrent(makeCurrent);
        this.technique.render(renderManager, makeCurrent, geometry, lightList, updateShaderMaterialParameters);
    }

    public void selectTechnique(String str, RenderManager renderManager) {
        Technique technique = this.techniques.get(str);
        if (technique == null) {
            EnumSet<Caps> caps = renderManager.getRenderer().getCaps();
            List<TechniqueDef> techniqueDefs = this.def.getTechniqueDefs(str);
            if (techniqueDefs == null || techniqueDefs.isEmpty()) {
                throw new IllegalArgumentException(String.format("The requested technique %s is not available on material %s", str, this.def.getName()));
            }
            Iterator<TechniqueDef> it = techniqueDefs.iterator();
            TechniqueDef techniqueDef = null;
            float f10 = 0.0f;
            while (it.hasNext()) {
                techniqueDef = it.next();
                if (caps.containsAll(techniqueDef.getRequiredCaps())) {
                    float weight = techniqueDef.getWeight() + (techniqueDef.getLightMode() == renderManager.getPreferredLightMode() ? 10.0f : 0.0f);
                    if (weight > f10) {
                        technique = new Technique(this, techniqueDef);
                        this.techniques.put(str, technique);
                        f10 = weight;
                    }
                }
            }
            if (technique == null) {
                throw new UnsupportedOperationException(String.format("No technique '%s' on material '%s' is supported by the video hardware. The capabilities %s are required.", str, this.def.getName(), techniqueDef.getRequiredCaps()));
            }
            Logger logger2 = logger;
            Level level = Level.FINE;
            if (logger2.isLoggable(level)) {
                logger2.log(level, getMaterialDef().getName() + " selected technique def " + ((Object) technique.getDef()));
            }
        } else if (this.technique == technique) {
            return;
        }
        this.technique = technique;
        technique.notifyTechniqueSwitched();
        this.sortingId = -1;
    }

    public void setBoolean(String str, boolean z10) {
        setParam(str, VarType.Boolean, Boolean.valueOf(z10));
    }

    public void setColor(String str, ColorRGBA colorRGBA) {
        setParam(str, VarType.Vector4, colorRGBA);
    }

    public void setFloat(String str, float f10) {
        setParam(str, VarType.Float, Float.valueOf(f10));
    }

    public void setInt(String str, int i10) {
        setParam(str, VarType.Int, Integer.valueOf(i10));
    }

    @Override
    public void setKey(AssetKey assetKey) {
        this.key = assetKey;
    }

    public void setMatrix4(String str, Matrix4f matrix4f) {
        setParam(str, VarType.Matrix4, matrix4f);
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setParam(String str, VarType varType, Object obj) {
        checkSetParam(varType, str);
        if (varType.isTextureType()) {
            setTextureParam(str, varType, (Texture) obj);
            return;
        }
        MatParam param = getParam(str);
        if (param == null) {
            this.paramValues.put(str, new MatParam(varType, str, obj));
        } else {
            param.setValue(obj);
        }
        Technique technique = this.technique;
        if (technique != null) {
            technique.notifyParamChanged(str, varType, obj);
        }
        if (varType.isImageType()) {
            this.sortingId = -1;
        }
    }

    public void setReceivesShadows(boolean z10) {
        this.receivesShadows = z10;
    }

    public void setShaderStorageBufferObject(String str, BufferObject bufferObject) {
        setParam(str, VarType.ShaderStorageBufferObject, bufferObject);
    }

    public void setTexture(String str, Texture texture) {
        VarType varType;
        if (texture == null) {
            clearParam(str);
            return;
        }
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$texture$Texture$Type[texture.getType().ordinal()];
        if (i10 == 1) {
            varType = VarType.Texture2D;
        } else if (i10 == 2) {
            varType = VarType.TextureArray;
        } else if (i10 == 3) {
            varType = VarType.Texture3D;
        } else {
            if (i10 != 4) {
                throw new UnsupportedOperationException("Unknown texture type: " + ((Object) texture.getType()));
            }
            varType = VarType.TextureCubeMap;
        }
        setTextureParam(str, varType, texture);
    }

    public void setTextureParam(String str, VarType varType, Texture texture) {
        if (texture == null) {
            throw new IllegalArgumentException();
        }
        checkSetParam(varType, str);
        MatParamTexture textureParam = getTextureParam(str);
        checkTextureParamColorSpace(str, texture);
        ColorSpace colorSpace = texture.getImage() != null ? texture.getImage().getColorSpace() : null;
        if (textureParam == null) {
            this.paramValues.put(str, new MatParamTexture(varType, str, texture, colorSpace));
        } else {
            textureParam.setTextureValue(texture);
            textureParam.setColorSpace(colorSpace);
        }
        Technique technique = this.technique;
        if (technique != null) {
            technique.notifyParamChanged(str, varType, texture);
        }
        this.sortingId = -1;
    }

    public void setTransparent(boolean z10) {
        this.transparent = z10;
    }

    public void setUniformBufferObject(String str, BufferObject bufferObject) {
        setParam(str, VarType.UniformBufferObject, bufferObject);
    }

    public void setVector2(String str, Vector2f vector2f) {
        setParam(str, VarType.Vector2, vector2f);
    }

    public void setVector3(String str, Vector3f vector3f) {
        setParam(str, VarType.Vector3, vector3f);
    }

    public void setVector4(String str, Vector4f vector4f) {
        setParam(str, VarType.Vector4, vector4f);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Material[name=");
        sb2.append(this.name);
        sb2.append(", def=");
        MaterialDef materialDef = this.def;
        String str = null;
        sb2.append(materialDef != null ? materialDef.getName() : null);
        sb2.append(", tech=");
        Technique technique = this.technique;
        if (technique != null && technique.getDef() != null) {
            str = this.technique.getDef().getName();
        }
        sb2.append(str);
        sb2.append("]");
        return sb2.toString();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.def.getAssetName(), "material_def", (String) null);
        capsule.write(this.additionalState, "render_state", (Savable) null);
        capsule.write(this.transparent, "is_transparent", false);
        capsule.write(this.receivesShadows, "receives_shadows", false);
        capsule.write(this.name, "name", (String) null);
        capsule.writeStringSavableMap(this.paramValues, "parameters", null);
    }

    public void setFloat(String str, Float f10) {
        setParam(str, VarType.Float, f10);
    }

    @Override
    public Material m1275clone() {
        try {
            Material material = (Material) super.clone();
            RenderState renderState = this.additionalState;
            if (renderState != null) {
                material.additionalState = renderState.m1276clone();
            }
            material.technique = null;
            material.techniques = new HashMap<>();
            material.paramValues = new ListMap<>();
            for (int i10 = 0; i10 < this.paramValues.size(); i10++) {
                Map.Entry<String, MatParam> entry = this.paramValues.getEntry(i10);
                material.paramValues.put(entry.getKey(), entry.getValue().m1274clone());
            }
            material.sortingId = -1;
            return material;
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    public void setParam(String str, Object obj) {
        setParam(str, getMaterialDef().getMaterialParam(str).getVarType(), obj);
    }

    public Material(AssetManager assetManager, String str) {
        this((MaterialDef) assetManager.loadAsset(new AssetKey(str)));
    }

    public void render(Geometry geometry, RenderManager renderManager) {
        render(geometry, geometry.getWorldLightList(), renderManager);
    }

    public Material() {
        this.paramValues = new ListMap<>();
        this.techniques = new HashMap<>();
        this.additionalState = null;
        this.mergedRenderState = new RenderState();
        this.transparent = false;
        this.receivesShadows = false;
        this.sortingId = -1;
        this.bindUnits = new BindUnits();
    }
}
