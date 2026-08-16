package com.jme3.scene;

import com.jme3.asset.AssetManager;
import com.jme3.asset.ModelKey;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.util.SafeArrayList;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

public class AssetLinkNode extends Node {
    protected Map<ModelKey, Spatial> assetChildren;
    protected ArrayList<ModelKey> assetLoaderKeys;

    public AssetLinkNode() {
        this.assetLoaderKeys = new ArrayList<>();
        this.assetChildren = new HashMap();
    }

    public void addLinkedChild(ModelKey modelKey) {
        if (this.assetLoaderKeys.contains(modelKey)) {
            return;
        }
        this.assetLoaderKeys.add(modelKey);
    }

    public void attachLinkedChild(AssetManager assetManager, ModelKey modelKey) {
        addLinkedChild(modelKey);
        Spatial spatial = (Spatial) assetManager.loadAsset(modelKey);
        this.assetChildren.put(modelKey, spatial);
        attachChild(spatial);
    }

    public void attachLinkedChildren(AssetManager assetManager) {
        detachLinkedChildren();
        Iterator<ModelKey> it = this.assetLoaderKeys.iterator();
        while (it.hasNext()) {
            ModelKey next = it.next();
            Spatial spatial = this.assetChildren.get(next);
            if (spatial != null) {
                spatial.removeFromParent();
            }
            Spatial spatial2 = (Spatial) assetManager.loadAsset(next);
            attachChild(spatial2);
            this.assetChildren.put(next, spatial2);
        }
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.assetLoaderKeys = (ArrayList) cloner.clone(this.assetLoaderKeys);
        this.assetChildren = new HashMap();
    }

    public void detachLinkedChild(ModelKey modelKey) {
        Spatial spatial = this.assetChildren.get(modelKey);
        if (spatial != null) {
            detachChild(spatial);
        }
        removeLinkedChild(modelKey);
        this.assetChildren.remove(modelKey);
    }

    public void detachLinkedChildren() {
        Iterator<Map.Entry<ModelKey, Spatial>> it = this.assetChildren.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().removeFromParent();
            it.remove();
        }
    }

    public ArrayList<ModelKey> getAssetLoaderKeys() {
        return this.assetLoaderKeys;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        AssetManager assetManager = jmeImporter.getAssetManager();
        ArrayList<ModelKey> readSavableArrayList = capsule.readSavableArrayList("assetLoaderKeyList", new ArrayList());
        this.assetLoaderKeys = readSavableArrayList;
        Iterator<ModelKey> it = readSavableArrayList.iterator();
        while (it.hasNext()) {
            ModelKey next = it.next();
            Spatial spatial = (Spatial) assetManager.loadAsset(next);
            if (spatial != null) {
                spatial.parent = this;
                this.children.add(spatial);
                this.assetChildren.put(next, spatial);
            } else {
                Logger.getLogger(getClass().getName()).log(Level.WARNING, "Cannot locate {0} for asset link node {1}", new Object[]{next, this.key});
            }
        }
    }

    public void removeLinkedChild(ModelKey modelKey) {
        this.assetLoaderKeys.remove(modelKey);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        SafeArrayList<Spatial> safeArrayList = this.children;
        this.children = new SafeArrayList<>(Spatial.class);
        super.write(jmeExporter);
        jmeExporter.getCapsule(this).writeSavableArrayList(this.assetLoaderKeys, "assetLoaderKeyList", null);
        this.children = safeArrayList;
    }

    public AssetLinkNode(ModelKey modelKey) {
        this(modelKey.getName(), modelKey);
    }

    public AssetLinkNode(String str, ModelKey modelKey) {
        super(str);
        this.assetLoaderKeys = new ArrayList<>();
        this.assetChildren = new HashMap();
        this.assetLoaderKeys.add(modelKey);
    }

    public void attachLinkedChild(Spatial spatial, ModelKey modelKey) {
        addLinkedChild(modelKey);
        this.assetChildren.put(modelKey, spatial);
        attachChild(spatial);
    }

    public void detachLinkedChild(Spatial spatial, ModelKey modelKey) {
        removeLinkedChild(modelKey);
        this.assetChildren.remove(modelKey);
        detachChild(spatial);
    }
}
