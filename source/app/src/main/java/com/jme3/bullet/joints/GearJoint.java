package com.jme3.bullet.joints;

import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Logger;
import jf.h;
import p000if.C13702E;

public class GearJoint extends Constraint {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(GearJoint.class.getName());
    private static final String tagAxisA = "axisA";
    private static final String tagAxisB = "axisB";
    private static final String tagRatio = "ratio";
    private Vector3f axisA;
    private Vector3f axisB;
    private float ratio;

    public GearJoint() {
    }

    private boolean checkAxisA() {
        long nativeId = nativeId();
        Vector3f vector3f = new Vector3f();
        getAxisA(nativeId, vector3f);
        return this.axisA.equals(vector3f);
    }

    private boolean checkAxisB() {
        long nativeId = nativeId();
        Vector3f vector3f = new Vector3f();
        getAxisB(nativeId, vector3f);
        return this.axisB.equals(vector3f);
    }

    private static native long createJoint(long j10, long j11, Vector3f vector3f, Vector3f vector3f2, float f10);

    private void createJoint() {
        setNativeId(createJoint(getBodyA().nativeId(), getBodyB().nativeId(), this.axisA, this.axisB, this.ratio));
    }

    private static native void getAxisA(long j10, Vector3f vector3f);

    private static native void getAxisB(long j10, Vector3f vector3f);

    private static native float getRatio(long j10);

    private static native void setAxisA(long j10, Vector3f vector3f);

    private static native void setAxisB(long j10, Vector3f vector3f);

    private static native void setRatio(long j10, float f10);

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        GearJoint gearJoint = (GearJoint) obj;
        super.cloneFields(cloner, obj);
        if (hasAssignedNativeObject()) {
            return;
        }
        this.axisA = (Vector3f) cloner.clone(this.axisA);
        this.axisB = (Vector3f) cloner.clone(this.axisB);
        createJoint();
        copyConstraintProperties(gearJoint);
    }

    public Vector3f getAxisA(Vector3f vector3f) {
        if (vector3f == null) {
            return this.axisA.m1292clone();
        }
        return vector3f.set(this.axisA);
    }

    public Vector3f getAxisB(Vector3f vector3f) {
        if (vector3f == null) {
            return this.axisB.m1292clone();
        }
        return vector3f.set(this.axisB);
    }

    public float getRatio() {
        return this.ratio;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.axisA = (Vector3f) capsule.readSavable(tagAxisA, null);
        this.axisB = (Vector3f) capsule.readSavable(tagAxisB, null);
        this.ratio = capsule.readFloat(tagRatio, 1.0f);
        createJoint();
        readConstraintProperties(capsule);
    }

    public void setAxisA(Vector3f vector3f) {
        C13702E.A(vector3f, "axis in body A");
        this.axisA.set(vector3f);
        h.P(this.axisA);
        setAxisA(nativeId(), this.axisA);
    }

    public void setAxisB(Vector3f vector3f) {
        C13702E.A(vector3f, "axis in body B");
        this.axisB.set(vector3f);
        h.P(this.axisB);
        setAxisB(nativeId(), this.axisB);
    }

    public void setRatio(float f10) {
        this.ratio = f10;
        setRatio(nativeId(), f10);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.axisA, tagAxisA, (Savable) null);
        capsule.write(this.axisB, tagAxisB, (Savable) null);
        capsule.write(this.ratio, tagRatio, 1.0f);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public GearJoint(PhysicsRigidBody physicsRigidBody, PhysicsRigidBody physicsRigidBody2, Vector3f vector3f, Vector3f vector3f2) {
        super(physicsRigidBody, physicsRigidBody2, r0, r0);
        Vector3f vector3f3 = Vector3f.ZERO;
        C13702E.A(vector3f, "axis in body A");
        C13702E.A(vector3f2, "axis in body B");
        this.axisA = vector3f.normalize();
        this.axisB = vector3f2.normalize();
        this.ratio = 1.0f;
        createJoint();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public GearJoint(PhysicsRigidBody physicsRigidBody, PhysicsRigidBody physicsRigidBody2, Vector3f vector3f, Vector3f vector3f2, float f10) {
        super(physicsRigidBody, physicsRigidBody2, r0, r0);
        Vector3f vector3f3 = Vector3f.ZERO;
        C13702E.A(vector3f, "axis in body A");
        C13702E.A(vector3f2, "axis in body B");
        this.axisA = vector3f.normalize();
        this.axisB = vector3f2.normalize();
        this.ratio = f10;
        createJoint();
    }
}
