package com.jme3.bullet.animation;

import com.jme3.anim.Armature;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Transform;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.control.AbstractControl;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Logger;
import p000if.C13702E;

public class PreComposer extends AbstractControl {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(PreComposer.class.getName());
    private static final String tagDac = "dac";
    private static final String tagHaveSaved = "haveSaved";
    private static final String tagSavedTransforms = "savedTransforms";
    private DacLinks dac;
    private boolean haveSaved = false;
    private Transform[] savedTransforms;

    public PreComposer() {
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.dac = (DacLinks) cloner.clone(this.dac);
        this.savedTransforms = (Transform[]) cloner.clone(this.savedTransforms);
    }

    @Override
    public void controlRender(RenderManager renderManager, ViewPort viewPort) {
    }

    @Override
    public void controlUpdate(float f10) {
        if (this.haveSaved) {
            Armature armature = this.dac.getArmature();
            int jointCount = armature.getJointCount();
            for (int i10 = 0; i10 < jointCount; i10++) {
                armature.getJoint(i10).setLocalTransform(this.savedTransforms[i10]);
            }
            this.haveSaved = false;
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.haveSaved = capsule.readBoolean(tagHaveSaved, false);
        this.dac = (DacLinks) capsule.readSavable(tagDac, null);
        this.savedTransforms = RagUtils.readTransformArray(capsule, tagSavedTransforms);
    }

    public void saveArmature() {
        Armature armature = this.dac.getArmature();
        int jointCount = armature.getJointCount();
        if (this.savedTransforms == null) {
            this.savedTransforms = new Transform[jointCount];
            for (int i10 = 0; i10 < jointCount; i10++) {
                this.savedTransforms[i10] = new Transform();
            }
        }
        for (int i11 = 0; i11 < jointCount; i11++) {
            this.savedTransforms[i11].set(armature.getJoint(i11).getLocalTransform());
        }
        this.haveSaved = true;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.haveSaved, tagHaveSaved, false);
        capsule.write(this.dac, tagDac, (Savable) null);
        capsule.write(this.savedTransforms, tagSavedTransforms, (Savable[]) null);
    }

    public PreComposer(DacLinks dacLinks) {
        C13702E.t(dacLinks, tagDac);
        this.dac = dacLinks;
    }
}
