package com.jme3.bullet.animation;

import com.jme3.bullet.joints.Constraint;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.util.logging.Logger;
import p000if.C13702E;

public class IKJoint implements JmeCloneable, Savable {
    public static final Logger logger = Logger.getLogger(IKJoint.class.getName());
    private static final String tagConstraint = "joint";
    private static final String tagDisableForRagdoll = "disableForRagdoll";
    private Constraint constraint;
    private boolean disableForRagdoll;

    public IKJoint() {
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.constraint = (Constraint) cloner.clone(this.constraint);
    }

    public Constraint getPhysicsJoint() {
        return this.constraint;
    }

    public boolean isDisableForRagdoll() {
        return this.disableForRagdoll;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.disableForRagdoll = capsule.readBoolean(tagDisableForRagdoll, true);
        this.constraint = (Constraint) capsule.readSavable(tagConstraint, null);
    }

    public void setDisableForRagdoll(boolean z10) {
        this.disableForRagdoll = z10;
    }

    public void setRagdollMode() {
        if (this.disableForRagdoll) {
            this.constraint.setEnabled(false);
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.disableForRagdoll, tagDisableForRagdoll, true);
        capsule.write(this.constraint, tagConstraint, (Savable) null);
    }

    public IKJoint(Constraint constraint, boolean z10) {
        C13702E.t(constraint, "constraint");
        this.constraint = constraint;
        this.disableForRagdoll = z10;
    }

    @Override
    public IKJoint jmeClone() {
        try {
            return (IKJoint) clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }
}
