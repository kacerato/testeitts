package com.jme3.material;

import com.jme3.asset.AssetManager;
import com.jme3.light.LightList;
import com.jme3.material.Material;
import com.jme3.material.logic.TechniqueDefLogic;
import com.jme3.renderer.Caps;
import com.jme3.renderer.RenderManager;
import com.jme3.scene.Geometry;
import com.jme3.shader.DefineList;
import com.jme3.shader.Shader;
import com.jme3.shader.VarType;
import com.jme3.util.ListMap;
import com.jme3.util.SafeArrayList;
import java.util.EnumSet;
import org.eclipse.jdt.internal.core.search.matching.JavaSearchPattern;

public final class Technique {
    private final TechniqueDef def;
    private final DefineList dynamicDefines;
    private final Material owner;
    private final DefineList paramDefines;

    public Technique(Material material, TechniqueDef techniqueDef) {
        this.owner = material;
        this.def = techniqueDef;
        this.paramDefines = techniqueDef.createDefineList();
        this.dynamicDefines = techniqueDef.createDefineList();
    }

    private void applyOverrides(DefineList defineList, SafeArrayList<MatParamOverride> safeArrayList) {
        Integer shaderParamDefineId;
        for (MatParamOverride matParamOverride : safeArrayList.getArray()) {
            if (matParamOverride.isEnabled() && (shaderParamDefineId = this.def.getShaderParamDefineId(matParamOverride.name)) != null && this.def.getDefineIdType(shaderParamDefineId.intValue()) == matParamOverride.type) {
                defineList.set(shaderParamDefineId.intValue(), matParamOverride.type, matParamOverride.value);
            }
        }
    }

    @Deprecated
    public DefineList getAllDefines() {
        throw new UnsupportedOperationException();
    }

    public TechniqueDef getDef() {
        return this.def;
    }

    public DefineList getDynamicDefines() {
        return this.dynamicDefines;
    }

    public int getSortId() {
        return ((JavaSearchPattern.MATCH_MODE_MASK + this.def.getSortId()) * 23) + this.paramDefines.hashCode();
    }

    public Shader makeCurrent(RenderManager renderManager, SafeArrayList<MatParamOverride> safeArrayList, SafeArrayList<MatParamOverride> safeArrayList2, LightList lightList, EnumSet<Caps> enumSet) {
        TechniqueDefLogic logic = this.def.getLogic();
        AssetManager assetManager = this.owner.getMaterialDef().getAssetManager();
        this.dynamicDefines.clear();
        this.dynamicDefines.setAll(this.paramDefines);
        if (safeArrayList != null) {
            applyOverrides(this.dynamicDefines, safeArrayList);
        }
        if (safeArrayList2 != null) {
            applyOverrides(this.dynamicDefines, safeArrayList2);
        }
        return logic.makeCurrent(assetManager, renderManager, enumSet, lightList, this.dynamicDefines);
    }

    public final void notifyParamChanged(String str, VarType varType, Object obj) {
        Integer shaderParamDefineId = this.def.getShaderParamDefineId(str);
        if (shaderParamDefineId == null) {
            return;
        }
        this.paramDefines.set(shaderParamDefineId.intValue(), varType, obj);
    }

    public final void notifyTechniqueSwitched() {
        ListMap<String, MatParam> paramsMap = this.owner.getParamsMap();
        this.paramDefines.clear();
        for (int i10 = 0; i10 < paramsMap.size(); i10++) {
            MatParam value = paramsMap.getValue(i10);
            notifyParamChanged(value.getName(), value.getVarType(), value.getValue());
        }
    }

    public void render(RenderManager renderManager, Shader shader, Geometry geometry, LightList lightList, Material.BindUnits bindUnits) {
        this.def.getLogic().render(renderManager, shader, geometry, lightList, bindUnits);
    }
}
