package com.jme3.material;

import com.jme3.asset.AssetManager;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.material.logic.TechniqueDefLogic;
import com.jme3.renderer.Caps;
import com.jme3.shader.DefineList;
import com.jme3.shader.Shader;
import com.jme3.shader.ShaderGenerator;
import com.jme3.shader.ShaderNode;
import com.jme3.shader.UniformBinding;
import com.jme3.shader.VarType;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class TechniqueDef implements Savable, Cloneable {
    public static final String DEFAULT_TECHNIQUE_NAME = "Default";
    public static final int SAVABLE_VERSION = 1;
    private ArrayList<String> defineNames;
    private ArrayList<VarType> defineTypes;
    private final HashMap<DefineList, Shader> definesToShaderMap;
    private RenderState forcedRenderState;
    private LightMode lightMode;
    private LightSpace lightSpace;
    private TechniqueDefLogic logic;
    private String name;
    private boolean noRender;
    private HashMap<String, Integer> paramToDefineId;
    private RenderState renderState;
    private final EnumSet<Caps> requiredCaps;
    private ShaderGenerationInfo shaderGenerationInfo;
    private EnumMap<Shader.ShaderType, String> shaderLanguages;
    private EnumMap<Shader.ShaderType, String> shaderNames;
    private List<ShaderNode> shaderNodes;
    private String shaderPrologue;
    private ShadowMode shadowMode;
    private int sortId;
    private boolean usesNodes;
    private float weight;
    private ArrayList<UniformBinding> worldBinds;

    public enum LightMode {
        Disable,
        SinglePass,
        MultiPass,
        SinglePassAndImageBased,
        FixedPipeline,
        StaticPass
    }

    public enum LightSpace {
        World,
        View,
        Legacy
    }

    public enum ShadowMode {
        Disable,
        InPass,
        PostPass
    }

    public TechniqueDef(String str, int i10) {
        this();
        this.sortId = i10;
        this.name = str;
    }

    private Shader loadShader(AssetManager assetManager, EnumSet<Caps> enumSet, DefineList defineList) {
        Shader shader;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.shaderPrologue);
        defineList.generateSource(sb2, this.defineNames, this.defineTypes);
        String sb3 = sb2.toString();
        if (isUsingShaderNodes()) {
            ShaderGenerator shaderGenerator = assetManager.getShaderGenerator(enumSet);
            if (shaderGenerator == null) {
                throw new UnsupportedOperationException("ShaderGenerator was not initialized, make sure assetManager.getGenerator(caps) has been called");
            }
            shaderGenerator.initialize(this);
            shader = shaderGenerator.generateShader(sb3);
        } else {
            Shader shader2 = new Shader();
            for (Shader.ShaderType shaderType : Shader.ShaderType.values()) {
                String str = this.shaderLanguages.get(shaderType);
                String str2 = this.shaderNames.get(shaderType);
                if (str != null && str2 != null) {
                    shader2.addSource(shaderType, str2, (String) assetManager.loadAsset(str2), sb3, str);
                }
            }
            shader = shader2;
        }
        Iterator<UniformBinding> it = getWorldBindings().iterator();
        while (it.hasNext()) {
            shader.addUniformBinding(it.next());
        }
        return shader;
    }

    public void addShaderParamDefine(String str, VarType varType, String str2) {
        this.paramToDefineId.put(str, Integer.valueOf(this.defineNames.size()));
        this.defineNames.add(str2);
        this.defineTypes.add(varType);
    }

    public int addShaderUnmappedDefine(String str, VarType varType) {
        int size = this.defineNames.size();
        this.defineNames.add(str);
        this.defineTypes.add(varType);
        return size;
    }

    public boolean addWorldParam(String str) {
        try {
            this.worldBinds.add(UniformBinding.valueOf(str));
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    public DefineList createDefineList() {
        return new DefineList(this.defineNames.size());
    }

    public VarType getDefineIdType(int i10) {
        if (i10 < this.defineTypes.size()) {
            return this.defineTypes.get(i10);
        }
        return null;
    }

    public String[] getDefineNames() {
        return (String[]) this.defineNames.toArray(new String[0]);
    }

    public VarType[] getDefineTypes() {
        return (VarType[]) this.defineTypes.toArray(new VarType[0]);
    }

    public RenderState getForcedRenderState() {
        return this.forcedRenderState;
    }

    public String getFragmentShaderLanguage() {
        return this.shaderLanguages.get(Shader.ShaderType.Fragment);
    }

    public String getFragmentShaderName() {
        return this.shaderNames.get(Shader.ShaderType.Fragment);
    }

    public LightMode getLightMode() {
        return this.lightMode;
    }

    public LightSpace getLightSpace() {
        return this.lightSpace;
    }

    public TechniqueDefLogic getLogic() {
        return this.logic;
    }

    public String getName() {
        return this.name;
    }

    public RenderState getRenderState() {
        return this.renderState;
    }

    public EnumSet<Caps> getRequiredCaps() {
        return this.requiredCaps;
    }

    public Shader getShader(AssetManager assetManager, EnumSet<Caps> enumSet, DefineList defineList) {
        Shader shader = this.definesToShaderMap.get(defineList);
        if (shader != null) {
            return shader;
        }
        Shader loadShader = loadShader(assetManager, enumSet, defineList);
        this.definesToShaderMap.put(defineList.deepClone(), loadShader);
        return loadShader;
    }

    public ShaderGenerationInfo getShaderGenerationInfo() {
        return this.shaderGenerationInfo;
    }

    public List<ShaderNode> getShaderNodes() {
        return this.shaderNodes;
    }

    public String getShaderParamDefine(String str) {
        Integer num = this.paramToDefineId.get(str);
        if (num != null) {
            return this.defineNames.get(num.intValue());
        }
        return null;
    }

    public Integer getShaderParamDefineId(String str) {
        return this.paramToDefineId.get(str);
    }

    public String getShaderProgramLanguage(Shader.ShaderType shaderType) {
        return this.shaderLanguages.get(shaderType);
    }

    public EnumMap<Shader.ShaderType, String> getShaderProgramLanguages() {
        return this.shaderLanguages;
    }

    public String getShaderProgramName(Shader.ShaderType shaderType) {
        return this.shaderNames.get(shaderType);
    }

    public EnumMap<Shader.ShaderType, String> getShaderProgramNames() {
        return this.shaderNames;
    }

    public String getShaderPrologue() {
        return this.shaderPrologue;
    }

    public ShadowMode getShadowMode() {
        return this.shadowMode;
    }

    public int getSortId() {
        return this.sortId;
    }

    public String getVertexShaderLanguage() {
        return this.shaderLanguages.get(Shader.ShaderType.Vertex);
    }

    public String getVertexShaderName() {
        return this.shaderNames.get(Shader.ShaderType.Vertex);
    }

    public float getWeight() {
        return this.weight;
    }

    public List<UniformBinding> getWorldBindings() {
        return this.worldBinds;
    }

    public boolean isNoRender() {
        return this.noRender;
    }

    public boolean isUsingShaderNodes() {
        return this.usesNodes;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.name = capsule.readString("name", null);
        EnumMap<Shader.ShaderType, String> enumMap = this.shaderNames;
        Shader.ShaderType shaderType = Shader.ShaderType.Vertex;
        enumMap.put((EnumMap<Shader.ShaderType, String>) shaderType, (Shader.ShaderType) capsule.readString("vertName", null));
        EnumMap<Shader.ShaderType, String> enumMap2 = this.shaderNames;
        Shader.ShaderType shaderType2 = Shader.ShaderType.Fragment;
        enumMap2.put((EnumMap<Shader.ShaderType, String>) shaderType2, (Shader.ShaderType) capsule.readString("fragName", null));
        EnumMap<Shader.ShaderType, String> enumMap3 = this.shaderNames;
        Shader.ShaderType shaderType3 = Shader.ShaderType.Geometry;
        enumMap3.put((EnumMap<Shader.ShaderType, String>) shaderType3, (Shader.ShaderType) capsule.readString("geomName", null));
        EnumMap<Shader.ShaderType, String> enumMap4 = this.shaderNames;
        Shader.ShaderType shaderType4 = Shader.ShaderType.TessellationControl;
        enumMap4.put((EnumMap<Shader.ShaderType, String>) shaderType4, (Shader.ShaderType) capsule.readString("tsctrlName", null));
        EnumMap<Shader.ShaderType, String> enumMap5 = this.shaderNames;
        Shader.ShaderType shaderType5 = Shader.ShaderType.TessellationEvaluation;
        enumMap5.put((EnumMap<Shader.ShaderType, String>) shaderType5, (Shader.ShaderType) capsule.readString("tsevalName", null));
        this.shaderPrologue = capsule.readString("shaderPrologue", null);
        this.lightMode = (LightMode) capsule.readEnum("lightMode", LightMode.class, LightMode.Disable);
        this.shadowMode = (ShadowMode) capsule.readEnum("shadowMode", ShadowMode.class, ShadowMode.Disable);
        this.renderState = (RenderState) capsule.readSavable("renderState", null);
        this.noRender = capsule.readBoolean("noRender", false);
        if (capsule.getSavableVersion(TechniqueDef.class) == 0) {
            this.shaderLanguages.put((EnumMap<Shader.ShaderType, String>) shaderType, (Shader.ShaderType) capsule.readString("shaderLang", null));
            EnumMap<Shader.ShaderType, String> enumMap6 = this.shaderLanguages;
            enumMap6.put((EnumMap<Shader.ShaderType, String>) shaderType2, (Shader.ShaderType) enumMap6.get(shaderType));
        } else {
            this.shaderLanguages.put((EnumMap<Shader.ShaderType, String>) shaderType, (Shader.ShaderType) capsule.readString("vertLanguage", null));
            this.shaderLanguages.put((EnumMap<Shader.ShaderType, String>) shaderType2, (Shader.ShaderType) capsule.readString("fragLanguage", null));
            this.shaderLanguages.put((EnumMap<Shader.ShaderType, String>) shaderType3, (Shader.ShaderType) capsule.readString("geomLanguage", null));
            this.shaderLanguages.put((EnumMap<Shader.ShaderType, String>) shaderType4, (Shader.ShaderType) capsule.readString("tsctrlLanguage", null));
            this.shaderLanguages.put((EnumMap<Shader.ShaderType, String>) shaderType5, (Shader.ShaderType) capsule.readString("tsevalLanguage", null));
        }
        this.usesNodes = capsule.readBoolean("usesNodes", false);
        this.shaderNodes = capsule.readSavableArrayList("shaderNodes", null);
        this.shaderGenerationInfo = (ShaderGenerationInfo) capsule.readSavable("shaderGenerationInfo", null);
    }

    public void setForcedRenderState(RenderState renderState) {
        this.forcedRenderState = renderState;
    }

    public void setLightMode(LightMode lightMode) {
        this.lightMode = lightMode;
        if (this.lightSpace == null) {
            if (lightMode == LightMode.MultiPass) {
                this.lightSpace = LightSpace.Legacy;
            } else {
                this.lightSpace = LightSpace.World;
            }
        }
    }

    public void setLightSpace(LightSpace lightSpace) {
        this.lightSpace = lightSpace;
    }

    public void setLogic(TechniqueDefLogic techniqueDefLogic) {
        this.logic = techniqueDefLogic;
    }

    public void setNoRender(boolean z10) {
        this.noRender = z10;
    }

    public void setRenderState(RenderState renderState) {
        this.renderState = renderState;
    }

    public void setShaderFile(String str, String str2, String str3, String str4) {
        EnumMap<Shader.ShaderType, String> enumMap = this.shaderLanguages;
        Shader.ShaderType shaderType = Shader.ShaderType.Vertex;
        enumMap.put((EnumMap<Shader.ShaderType, String>) shaderType, (Shader.ShaderType) str3);
        this.shaderNames.put((EnumMap<Shader.ShaderType, String>) shaderType, (Shader.ShaderType) str);
        EnumMap<Shader.ShaderType, String> enumMap2 = this.shaderLanguages;
        Shader.ShaderType shaderType2 = Shader.ShaderType.Fragment;
        enumMap2.put((EnumMap<Shader.ShaderType, String>) shaderType2, (Shader.ShaderType) str4);
        this.shaderNames.put((EnumMap<Shader.ShaderType, String>) shaderType2, (Shader.ShaderType) str2);
        this.requiredCaps.clear();
        this.requiredCaps.add(Caps.valueOf(str3));
        this.requiredCaps.add(Caps.valueOf(str4));
        this.weight = Math.max(r3.ordinal(), r4.ordinal());
    }

    public void setShaderGenerationInfo(ShaderGenerationInfo shaderGenerationInfo) {
        this.shaderGenerationInfo = shaderGenerationInfo;
    }

    public void setShaderNodes(List<ShaderNode> list) {
        this.shaderNodes = list;
        this.usesNodes = true;
    }

    public void setShaderPrologue(String str) {
        this.shaderPrologue = str;
    }

    public void setShadowMode(ShadowMode shadowMode) {
        this.shadowMode = shadowMode;
    }

    public String toString() {
        return "TechniqueDef[name=" + this.name + ", requiredCaps=" + ((Object) this.requiredCaps) + ", noRender=" + this.noRender + ", lightMode=" + ((Object) this.lightMode) + ", usesNodes=" + this.usesNodes + ", renderState=" + ((Object) this.renderState) + ", forcedRenderState=" + ((Object) this.forcedRenderState) + "]";
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.name, "name", (String) null);
        EnumMap<Shader.ShaderType, String> enumMap = this.shaderNames;
        Shader.ShaderType shaderType = Shader.ShaderType.Vertex;
        capsule.write(enumMap.get(shaderType), "vertName", (String) null);
        EnumMap<Shader.ShaderType, String> enumMap2 = this.shaderNames;
        Shader.ShaderType shaderType2 = Shader.ShaderType.Fragment;
        capsule.write(enumMap2.get(shaderType2), "fragName", (String) null);
        EnumMap<Shader.ShaderType, String> enumMap3 = this.shaderNames;
        Shader.ShaderType shaderType3 = Shader.ShaderType.Geometry;
        capsule.write(enumMap3.get(shaderType3), "geomName", (String) null);
        EnumMap<Shader.ShaderType, String> enumMap4 = this.shaderNames;
        Shader.ShaderType shaderType4 = Shader.ShaderType.TessellationControl;
        capsule.write(enumMap4.get(shaderType4), "tsctrlName", (String) null);
        EnumMap<Shader.ShaderType, String> enumMap5 = this.shaderNames;
        Shader.ShaderType shaderType5 = Shader.ShaderType.TessellationEvaluation;
        capsule.write(enumMap5.get(shaderType5), "tsevalName", (String) null);
        capsule.write(this.shaderLanguages.get(shaderType), "vertLanguage", (String) null);
        capsule.write(this.shaderLanguages.get(shaderType2), "fragLanguage", (String) null);
        capsule.write(this.shaderLanguages.get(shaderType3), "geomLanguage", (String) null);
        capsule.write(this.shaderLanguages.get(shaderType4), "tsctrlLanguage", (String) null);
        capsule.write(this.shaderLanguages.get(shaderType5), "tsevalLanguage", (String) null);
        capsule.write(this.shaderPrologue, "shaderPrologue", (String) null);
        capsule.write(this.lightMode, "lightMode", LightMode.Disable);
        capsule.write(this.shadowMode, "shadowMode", ShadowMode.Disable);
        capsule.write(this.renderState, "renderState", (Savable) null);
        capsule.write(this.noRender, "noRender", false);
        capsule.write(this.usesNodes, "usesNodes", false);
        capsule.writeSavableArrayList((ArrayList) this.shaderNodes, "shaderNodes", null);
        capsule.write(this.shaderGenerationInfo, "shaderGenerationInfo", (Savable) null);
    }

    public TechniqueDef m1278clone() throws CloneNotSupportedException {
        TechniqueDef techniqueDef = new TechniqueDef(this.name, this.sortId);
        techniqueDef.noRender = this.noRender;
        techniqueDef.lightMode = this.lightMode;
        techniqueDef.shadowMode = this.shadowMode;
        techniqueDef.lightSpace = this.lightSpace;
        techniqueDef.usesNodes = this.usesNodes;
        techniqueDef.shaderPrologue = this.shaderPrologue;
        techniqueDef.setShaderFile(this.shaderNames, this.shaderLanguages);
        ArrayList<String> arrayList = new ArrayList<>(this.defineNames.size());
        techniqueDef.defineNames = arrayList;
        arrayList.addAll(this.defineNames);
        ArrayList<VarType> arrayList2 = new ArrayList<>(this.defineTypes.size());
        techniqueDef.defineTypes = arrayList2;
        arrayList2.addAll(this.defineTypes);
        HashMap<String, Integer> hashMap = new HashMap<>(this.paramToDefineId.size());
        techniqueDef.paramToDefineId = hashMap;
        hashMap.putAll(this.paramToDefineId);
        if (this.shaderNodes != null) {
            techniqueDef.shaderNodes = new ArrayList();
            Iterator<ShaderNode> it = this.shaderNodes.iterator();
            while (it.hasNext()) {
                techniqueDef.shaderNodes.add(it.next().m1298clone());
            }
            techniqueDef.shaderGenerationInfo = this.shaderGenerationInfo.m1277clone();
        }
        RenderState renderState = this.renderState;
        if (renderState != null) {
            techniqueDef.setRenderState(renderState.m1276clone());
        }
        RenderState renderState2 = this.forcedRenderState;
        if (renderState2 != null) {
            techniqueDef.setForcedRenderState(renderState2.m1276clone());
        }
        try {
            techniqueDef.logic = (TechniqueDefLogic) this.logic.getClass().getConstructor(TechniqueDef.class).newInstance(techniqueDef);
        } catch (IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e10) {
            e10.printStackTrace();
        }
        ArrayList<UniformBinding> arrayList3 = new ArrayList<>(this.worldBinds.size());
        techniqueDef.worldBinds = arrayList3;
        arrayList3.addAll(this.worldBinds);
        return techniqueDef;
    }

    public TechniqueDef() {
        this.requiredCaps = EnumSet.noneOf(Caps.class);
        this.usesNodes = false;
        this.noRender = false;
        this.lightMode = LightMode.Disable;
        this.shadowMode = ShadowMode.Disable;
        this.weight = 0.0f;
        this.shaderLanguages = new EnumMap<>(Shader.ShaderType.class);
        this.shaderNames = new EnumMap<>(Shader.ShaderType.class);
        this.defineNames = new ArrayList<>();
        this.defineTypes = new ArrayList<>();
        this.paramToDefineId = new HashMap<>();
        this.definesToShaderMap = new HashMap<>();
        this.worldBinds = new ArrayList<>();
    }

    public void setShaderFile(EnumMap<Shader.ShaderType, String> enumMap, EnumMap<Shader.ShaderType, String> enumMap2) {
        this.requiredCaps.clear();
        this.weight = 0.0f;
        for (Shader.ShaderType shaderType : enumMap.o()) {
            String str = enumMap2.get(shaderType);
            String str2 = enumMap.get(shaderType);
            this.shaderLanguages.put((EnumMap<Shader.ShaderType, String>) shaderType, (Shader.ShaderType) str);
            this.shaderNames.put((EnumMap<Shader.ShaderType, String>) shaderType, (Shader.ShaderType) str2);
            this.requiredCaps.add(Caps.valueOf(str));
            this.weight = Math.max(this.weight, r2.ordinal());
            if (shaderType.equals(Shader.ShaderType.Geometry)) {
                this.requiredCaps.add(Caps.GeometryShader);
            } else if (shaderType.equals(Shader.ShaderType.TessellationControl)) {
                this.requiredCaps.add(Caps.TesselationShader);
            }
        }
    }
}
