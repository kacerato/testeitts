package com.jme3.material;

import com.jme3.asset.AssetManager;
import com.jme3.shader.VarType;
import com.jme3.texture.Texture;
import com.jme3.texture.image.ColorSpace;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MaterialDef {
    private static final Logger logger = Logger.getLogger(MaterialDef.class.getName());
    private AssetManager assetManager;
    private String assetName;
    private Map<String, MatParam> matParams;
    private String name;
    private Map<String, List<TechniqueDef>> techniques;

    public MaterialDef() {
    }

    public void addMaterialParam(VarType varType, String str, Object obj) {
        this.matParams.put(str, new MatParam(varType, str, obj));
    }

    public void addMaterialParamTexture(VarType varType, String str, ColorSpace colorSpace, Texture texture) {
        this.matParams.put(str, new MatParamTexture(varType, str, texture, colorSpace));
    }

    public void addTechniqueDef(TechniqueDef techniqueDef) {
        List<TechniqueDef> list = this.techniques.get(techniqueDef.getName());
        if (list == null) {
            list = new ArrayList<>();
            this.techniques.put(techniqueDef.getName(), list);
        }
        list.add(techniqueDef);
    }

    public AssetManager getAssetManager() {
        return this.assetManager;
    }

    public String getAssetName() {
        return this.assetName;
    }

    public MatParam getMaterialParam(String str) {
        return this.matParams.get(str);
    }

    public Collection<MatParam> getMaterialParams() {
        return this.matParams.values();
    }

    public String getName() {
        return this.name;
    }

    public List<TechniqueDef> getTechniqueDefs(String str) {
        return this.techniques.get(str);
    }

    public Collection<String> getTechniqueDefsNames() {
        return this.techniques.o();
    }

    public void setAssetName(String str) {
        this.assetName = str;
    }

    public MaterialDef(AssetManager assetManager, String str) {
        this.assetManager = assetManager;
        this.name = str;
        this.techniques = new HashMap();
        this.matParams = new HashMap();
        logger.log(Level.FINE, "Loaded material definition: {0}", str);
    }
}
