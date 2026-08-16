package com.jme3.bullet.joints;

import com.jme3.bullet.objects.PhysicsBody;
import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.bullet.objects.PhysicsSoftBody;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import java.io.IOException;
import java.util.logging.Logger;
import p000if.C13702E;

public abstract class SoftPhysicsJoint extends PhysicsJoint {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(SoftPhysicsJoint.class.getName());
    private static final String tagClusterIndexA = "clusterIndexA";
    private static final String tagClusterIndexB = "clusterIndexB";
    private static final String tagConstraintForceMixing = "constraintForceMixing";
    private static final String tagErrorReductionParameter = "errorReductionParameter";
    private static final String tagSplit = "split";
    private boolean added;
    private float cfm;
    private int clusterIndexA;
    private int clusterIndexB;
    private float erp;
    private float split;

    public SoftPhysicsJoint() {
        this.added = false;
        this.cfm = 1.0f;
        this.erp = 1.0f;
        this.split = 1.0f;
        this.clusterIndexA = -1;
        this.clusterIndexB = -1;
    }

    public static native void finalizeNative(long j10);

    private static native float getConstraintForceMixing(long j10);

    private static native float getErrorReductionParameter(long j10);

    private static native float getSplit(long j10);

    private static native void setConstraintForceMixing(long j10, float f10);

    private static native void setErrorReductionParameter(long j10, float f10);

    private static native void setSplit(long j10, float f10);

    public boolean checkParameters() {
        long nativeId = nativeId();
        return this.cfm == getConstraintForceMixing(nativeId) && this.erp == getErrorReductionParameter(nativeId) && this.split == getSplit(nativeId);
    }

    public int clusterIndexA() {
        return this.clusterIndexA;
    }

    public int clusterIndexB() {
        return this.clusterIndexB;
    }

    public float getCFM() {
        return this.cfm;
    }

    public float getERP() {
        return this.erp;
    }

    public PhysicsSoftBody getSoftBodyA() {
        return (PhysicsSoftBody) getBodyA();
    }

    public PhysicsSoftBody getSoftBodyB() {
        PhysicsBody bodyB = getBodyB();
        if (bodyB instanceof PhysicsSoftBody) {
            return (PhysicsSoftBody) bodyB;
        }
        return null;
    }

    public float getSplit() {
        return this.split;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

    public boolean isSoftRigid() {
        return getBodyB() instanceof PhysicsRigidBody;
    }

    public boolean isSoftSoft() {
        return getBodyB() instanceof PhysicsSoftBody;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.cfm = capsule.readFloat(tagConstraintForceMixing, 1.0f);
        this.erp = capsule.readFloat(tagErrorReductionParameter, 1.0f);
        this.split = capsule.readFloat(tagSplit, 1.0f);
        this.clusterIndexA = capsule.readInt(tagClusterIndexA, -1);
        this.clusterIndexB = capsule.readInt(tagClusterIndexB, -1);
    }

    public void setCFM(float f10) {
        C13702E.p(f10, "CFM coefficient");
        setConstraintForceMixing(nativeId(), f10);
        this.cfm = f10;
    }

    public void setERP(float f10) {
        C13702E.f(f10, "error-reduction parameter");
        setErrorReductionParameter(nativeId(), f10);
        this.erp = f10;
    }

    public void setSplit(float f10) {
        setSplit(nativeId(), f10);
        this.split = f10;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(getCFM(), tagConstraintForceMixing, 1.0f);
        capsule.write(getERP(), tagErrorReductionParameter, 1.0f);
        capsule.write(getSplit(), tagSplit, 1.0f);
        capsule.write(clusterIndexA(), tagClusterIndexA, -1);
        capsule.write(clusterIndexB(), tagClusterIndexB, -1);
    }

    public SoftPhysicsJoint(PhysicsSoftBody physicsSoftBody, int i10, PhysicsRigidBody physicsRigidBody) {
        this.added = false;
        this.cfm = 1.0f;
        this.erp = 1.0f;
        this.split = 1.0f;
        this.clusterIndexA = -1;
        this.clusterIndexB = -1;
        C13702E.i(i10, "cluster index", 0, physicsSoftBody.countClusters() - 1);
        C13702E.t(physicsRigidBody, "rigid body B");
        setBodyA(physicsSoftBody);
        physicsSoftBody.addJoint(this);
        this.clusterIndexA = i10;
        setBodyB(physicsRigidBody);
        physicsRigidBody.addJoint(this);
    }

    public SoftPhysicsJoint(PhysicsSoftBody physicsSoftBody, int i10, PhysicsSoftBody physicsSoftBody2, int i11) {
        this.added = false;
        this.cfm = 1.0f;
        this.erp = 1.0f;
        this.split = 1.0f;
        this.clusterIndexA = -1;
        this.clusterIndexB = -1;
        C13702E.i(i10, "cluster index A", 0, physicsSoftBody.countClusters() - 1);
        C13702E.i(i11, "cluster index B", 0, physicsSoftBody2.countClusters() - 1);
        setBodyA(physicsSoftBody);
        physicsSoftBody.addJoint(this);
        this.clusterIndexA = i10;
        setBodyB(physicsSoftBody2);
        physicsSoftBody2.addJoint(this);
        this.clusterIndexB = i11;
    }
}
