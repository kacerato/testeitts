package com.jme3.bullet.animation;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import p000if.C13724t;

public abstract class IKController implements JmeCloneable, Savable {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(IKController.class.getName());
    private static final String tagControlledLink = "controlledLink";
    private static final String tagIsEnabled = "isEnabled";
    private PhysicsLink controlledLink;
    private boolean isEnabled;

    public IKController() {
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.controlledLink = (PhysicsLink) cloner.clone(this.controlledLink);
    }

    public PhysicsLink getLink() {
        return this.controlledLink;
    }

    public boolean isEnabled() {
        return this.isEnabled;
    }

    public abstract void preTick(float f10);

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.isEnabled = capsule.readBoolean(tagIsEnabled, true);
        this.controlledLink = (PhysicsLink) capsule.readSavable(tagControlledLink, null);
    }

    public void setEnabled(boolean z10) {
        this.isEnabled = z10;
    }

    public void setRagdollMode() {
        this.isEnabled = false;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.isEnabled, tagIsEnabled, true);
        capsule.write(this.controlledLink, tagControlledLink, (Savable) null);
    }

    public IKController(PhysicsLink physicsLink) {
        Logger logger2 = logger;
        Level level = Level.FINE;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "Creating controller for bone {0}.", C13724t.s(physicsLink.boneName()));
        }
        this.controlledLink = physicsLink;
        this.isEnabled = true;
    }

    @Override
    public IKController jmeClone() {
        try {
            return (IKController) clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }
}
