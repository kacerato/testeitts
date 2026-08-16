package com.jme3.bullet.joints;

import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.bullet.objects.PhysicsSoftBody;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.Savable;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Logger;
import p000if.C13702E;

public class SoftLinearJoint extends SoftPhysicsJoint {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger3 = Logger.getLogger(SoftLinearJoint.class.getName());
    private static final String tagLocation = "location";
    private Vector3f location;

    public SoftLinearJoint() {
    }

    private void createJoint() {
        long createJointSoftSoft;
        long nativeId = getSoftBodyA().nativeId();
        int clusterIndexA = clusterIndexA();
        long nativeId2 = getBodyB().nativeId();
        int clusterIndexB = clusterIndexB();
        float erp = getERP();
        float cfm = getCFM();
        float split = getSplit();
        if (isSoftRigid()) {
            createJointSoftSoft = createJointSoftRigid(nativeId, clusterIndexA, nativeId2, erp, cfm, split, this.location);
        } else {
            getSoftBodyB();
            createJointSoftSoft = createJointSoftSoft(nativeId, clusterIndexA, nativeId2, clusterIndexB, erp, cfm, split, this.location);
        }
        setNativeIdNotTracked(createJointSoftSoft);
    }

    private static native long createJointSoftRigid(long j10, int i10, long j11, float f10, float f11, float f12, Vector3f vector3f);

    private static native long createJointSoftSoft(long j10, int i10, long j11, int i11, float f10, float f11, float f12, Vector3f vector3f);

    private static native void setPosition(long j10, Vector3f vector3f);

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        SoftLinearJoint softLinearJoint = (SoftLinearJoint) obj;
        super.cloneFields(cloner, obj);
        if (hasAssignedNativeObject()) {
            return;
        }
        this.location = (Vector3f) cloner.clone(this.location);
        createJoint();
        setCFM(softLinearJoint.getCFM());
        setERP(softLinearJoint.getERP());
        setSplit(softLinearJoint.getSplit());
    }

    public Vector3f copyLocation(Vector3f vector3f) {
        return vector3f == null ? this.location.m1292clone() : vector3f.set(this.location);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        this.location = (Vector3f) jmeImporter.getCapsule(this).readSavable("location", new Vector3f());
        createJoint();
    }

    public void setLocation(Vector3f vector3f) {
        long nativeId = nativeId();
        this.location.set(vector3f);
        setPosition(nativeId, vector3f);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        jmeExporter.getCapsule(this).write(this.location, "location", (Savable) null);
    }

    public SoftLinearJoint(Vector3f vector3f, PhysicsSoftBody physicsSoftBody, int i10, PhysicsRigidBody physicsRigidBody) {
        super(physicsSoftBody, i10, physicsRigidBody);
        C13702E.d(vector3f, "location");
        this.location = vector3f.m1292clone();
        createJoint();
    }

    public SoftLinearJoint(Vector3f vector3f, PhysicsSoftBody physicsSoftBody, int i10, PhysicsSoftBody physicsSoftBody2, int i11) {
        super(physicsSoftBody, i10, physicsSoftBody2, i11);
        C13702E.d(vector3f, "location");
        this.location = vector3f.m1292clone();
        createJoint();
    }
}
