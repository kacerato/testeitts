package com.jme3.anim;

import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import java.io.IOException;

public class SingleLayerInfluenceMask extends ArmatureMask {
    private AnimComposer animComposer;
    private String targetLayer;

    public SingleLayerInfluenceMask() {
    }

    private boolean isAffectedByUpperLayers(Object obj) {
        boolean z10 = false;
        for (String str : this.animComposer.getLayerNames()) {
            if (str.equals(this.targetLayer)) {
                z10 = true;
            } else if (z10) {
                AnimLayer layer = this.animComposer.getLayer(str);
                if (layer.getCurrentAction() != null) {
                    AnimationMask mask = layer.getMask();
                    if (mask instanceof SingleLayerInfluenceMask) {
                        if (((SingleLayerInfluenceMask) mask).simpleContains(obj)) {
                            return true;
                        }
                    } else if (mask != null && mask.contains(obj)) {
                        return true;
                    }
                } else {
                    continue;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    private boolean simpleContains(Object obj) {
        return super.contains(obj);
    }

    @Override
    public boolean contains(Object obj) {
        return simpleContains(obj) && (this.animComposer == null || !isAffectedByUpperLayers(obj));
    }

    public String getTargetLayer() {
        return this.targetLayer;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        this.targetLayer = jmeImporter.getCapsule(this).readString("targetLayer", null);
    }

    public void setAnimComposer(AnimComposer animComposer) {
        this.animComposer = animComposer;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        jmeExporter.getCapsule(this).write(this.targetLayer, "targetLayer", (String) null);
    }

    public SingleLayerInfluenceMask(String str, AnimComposer animComposer, Armature armature) {
        super(armature);
        this.targetLayer = str;
        this.animComposer = animComposer;
    }

    public SingleLayerInfluenceMask(String str, AnimComposer animComposer) {
        this.targetLayer = str;
        this.animComposer = animComposer;
    }
}
