package com.jme3.bullet.joints;

import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.FastMath;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Logger;
import jf.h;

public class HingeJoint extends Constraint {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(HingeJoint.class.getName());
    private static final String tagAngularOnly = "angularOnly";
    private static final String tagAxisA = "axisA";
    private static final String tagAxisB = "axisB";
    private static final String tagBiasFactor = "biasFactor";
    private static final String tagEnableAngularMotor = "enableAngularMotor";
    private static final String tagLimitSoftness = "limitSoftness";
    private static final String tagLowerLimit = "lowerLimit";
    private static final String tagMaxMotorImpulse = "maxMotorImpulse";
    private static final String tagRelaxationFactor = "relaxationFactor";
    private static final String tagTargetVelocity = "targetVelocity";
    private static final String tagUpperLimit = "upperLimit";
    private boolean angularOnly;
    private Vector3f axisA;
    private Vector3f axisB;
    private float biasFactor;
    private float limitSoftness;
    private float relaxationFactor;
    private boolean useReferenceFrameA;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$bullet$joints$JointEnd;

        static {
            int[] iArr = new int[JointEnd.values().length];
            $SwitchMap$com$jme3$bullet$joints$JointEnd = iArr;
            try {
                iArr[JointEnd.A.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$bullet$joints$JointEnd[JointEnd.B.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public HingeJoint() {
        this.angularOnly = false;
        this.useReferenceFrameA = false;
        this.biasFactor = 0.3f;
        this.limitSoftness = 0.9f;
        this.relaxationFactor = 1.0f;
    }

    private static native long createJoint(long j10, long j11, Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4);

    private void createJoint() {
        long createJoint;
        PhysicsRigidBody bodyA = getBodyA();
        long nativeId = bodyA.nativeId();
        PhysicsRigidBody bodyB = getBodyB();
        if (bodyB == null) {
            Vector3f physicsLocation = bodyA.getPhysicsLocation(null);
            Quaternion physicsRotation = bodyA.getPhysicsRotation(null);
            Vector3f cross = this.axisB.cross(this.axisA);
            float atan2 = FastMath.atan2(cross.length(), this.axisB.dot(this.axisA));
            h.P(cross);
            Quaternion quaternion = new Quaternion();
            quaternion.fromAngleNormalAxis(atan2, cross);
            bodyA.setPhysicsRotation(quaternion);
            bodyA.setPhysicsLocation(this.pivotB.subtract(this.pivotA));
            createJoint = createJoint1(nativeId, this.pivotA, this.axisA, this.useReferenceFrameA);
            bodyA.setPhysicsLocation(physicsLocation);
            bodyA.setPhysicsRotation(physicsRotation);
        } else {
            createJoint = createJoint(nativeId, bodyB.nativeId(), this.pivotA, this.axisA, this.pivotB, this.axisB);
        }
        setNativeId(createJoint);
    }

    private static native long createJoint1(long j10, Vector3f vector3f, Vector3f vector3f2, boolean z10);

    private static native void enableMotor(long j10, boolean z10, float f10, float f11);

    private static native boolean getEnableAngularMotor(long j10);

    private static native void getFrameOffsetA(long j10, Transform transform);

    private static native void getFrameOffsetB(long j10, Transform transform);

    private static native float getHingeAngle(long j10);

    private static native float getLowerLimit(long j10);

    private static native float getMaxMotorImpulse(long j10);

    private static native float getMotorTargetVelocity(long j10);

    private static native float getUpperLimit(long j10);

    private static native void setAngularOnly(long j10, boolean z10);

    private static native void setLimit(long j10, float f10, float f11, float f12, float f13, float f14);

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        HingeJoint hingeJoint = (HingeJoint) obj;
        super.cloneFields(cloner, obj);
        if (hasAssignedNativeObject()) {
            return;
        }
        this.axisA = (Vector3f) cloner.clone(this.axisA);
        this.axisB = (Vector3f) cloner.clone(this.axisB);
        createJoint();
        setAngularOnly(this.angularOnly);
        copyConstraintProperties(hingeJoint);
        setLimit(hingeJoint.getLowerLimit(), hingeJoint.getUpperLimit(), this.limitSoftness, this.biasFactor, this.relaxationFactor);
        enableMotor(hingeJoint.getEnableMotor(), hingeJoint.getMotorTargetVelocity(), hingeJoint.getMaxMotorImpulse());
    }

    public void enableMotor(boolean z10, float f10, float f11) {
        enableMotor(nativeId(), z10, f10, f11);
    }

    public float getBiasFactor() {
        return this.biasFactor;
    }

    public boolean getEnableMotor() {
        return getEnableAngularMotor(nativeId());
    }

    public Transform getFrameTransform(JointEnd jointEnd, Transform transform) {
        if (transform == null) {
            transform = new Transform();
        }
        long nativeId = nativeId();
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$bullet$joints$JointEnd[jointEnd.ordinal()];
        if (i10 == 1) {
            getFrameOffsetA(nativeId, transform);
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException("end = " + ((Object) jointEnd));
            }
            getFrameOffsetB(nativeId, transform);
        }
        return transform;
    }

    public float getHingeAngle() {
        return getHingeAngle(nativeId());
    }

    public float getLimitSoftness() {
        return this.limitSoftness;
    }

    public final float getLowerLimit() {
        return getLowerLimit(nativeId());
    }

    public float getMaxMotorImpulse() {
        return getMaxMotorImpulse(nativeId());
    }

    public float getMotorTargetVelocity() {
        return getMotorTargetVelocity(nativeId());
    }

    public float getRelaxationFactor() {
        return this.relaxationFactor;
    }

    public final float getUpperLimit() {
        return getUpperLimit(nativeId());
    }

    public boolean isAngularOnly() {
        return this.angularOnly;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.axisA = (Vector3f) capsule.readSavable(tagAxisA, new Vector3f());
        this.axisB = (Vector3f) capsule.readSavable(tagAxisB, new Vector3f());
        this.angularOnly = capsule.readBoolean(tagAngularOnly, false);
        float readFloat = capsule.readFloat(tagLowerLimit, 1.0E30f);
        float readFloat2 = capsule.readFloat(tagUpperLimit, -1.0E30f);
        this.biasFactor = capsule.readFloat(tagBiasFactor, 0.3f);
        this.relaxationFactor = capsule.readFloat(tagRelaxationFactor, 1.0f);
        this.limitSoftness = capsule.readFloat(tagLimitSoftness, 0.9f);
        createJoint();
        readConstraintProperties(capsule);
        enableMotor(capsule.readBoolean(tagEnableAngularMotor, false), capsule.readFloat(tagTargetVelocity, 0.0f), capsule.readFloat(tagMaxMotorImpulse, 0.0f));
        setAngularOnly(this.angularOnly);
        setLimit(readFloat, readFloat2, this.limitSoftness, this.biasFactor, this.relaxationFactor);
    }

    public void setAngularOnly(boolean z10) {
        this.angularOnly = z10;
        setAngularOnly(nativeId(), z10);
    }

    public void setLimit(float f10, float f11) {
        setLimit(nativeId(), f10, f11, this.limitSoftness, this.biasFactor, this.relaxationFactor);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.axisA, tagAxisA, (Savable) null);
        capsule.write(this.axisB, tagAxisB, (Savable) null);
        capsule.write(this.angularOnly, tagAngularOnly, false);
        capsule.write(getLowerLimit(), tagLowerLimit, 1.0E30f);
        capsule.write(getUpperLimit(), tagUpperLimit, -1.0E30f);
        capsule.write(this.biasFactor, tagBiasFactor, 0.3f);
        capsule.write(this.relaxationFactor, tagRelaxationFactor, 1.0f);
        capsule.write(this.limitSoftness, tagLimitSoftness, 0.9f);
        capsule.write(getEnableMotor(), tagEnableAngularMotor, false);
        capsule.write(getMotorTargetVelocity(), tagTargetVelocity, 0.0f);
        capsule.write(getMaxMotorImpulse(), tagMaxMotorImpulse, 0.0f);
    }

    public void setLimit(float f10, float f11, float f12, float f13, float f14) {
        long nativeId = nativeId();
        this.biasFactor = f13;
        this.relaxationFactor = f14;
        this.limitSoftness = f12;
        setLimit(nativeId, f10, f11, f12, f13, f14);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public HingeJoint(PhysicsRigidBody physicsRigidBody, Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4, JointEnd jointEnd) {
        super(physicsRigidBody, r0, vector3f, vector3f2);
        JointEnd jointEnd2 = JointEnd.A;
        this.angularOnly = false;
        this.useReferenceFrameA = false;
        this.biasFactor = 0.3f;
        this.limitSoftness = 0.9f;
        this.relaxationFactor = 1.0f;
        this.axisA = vector3f3.m1292clone();
        this.axisB = vector3f4.m1292clone();
        this.useReferenceFrameA = jointEnd == jointEnd2;
        createJoint();
        long nativeId = super.nativeId();
        setAngularOnly(nativeId, this.angularOnly);
        setLimit(nativeId, getLowerLimit(), getUpperLimit(), this.limitSoftness, this.biasFactor, this.relaxationFactor);
    }

    public HingeJoint(PhysicsRigidBody physicsRigidBody, PhysicsRigidBody physicsRigidBody2, Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4) {
        super(physicsRigidBody, physicsRigidBody2, vector3f, vector3f2);
        this.angularOnly = false;
        this.useReferenceFrameA = false;
        this.biasFactor = 0.3f;
        this.limitSoftness = 0.9f;
        this.relaxationFactor = 1.0f;
        this.axisA = vector3f3.m1292clone();
        this.axisB = vector3f4.m1292clone();
        createJoint();
        long nativeId = super.nativeId();
        setAngularOnly(nativeId, this.angularOnly);
        setLimit(nativeId, getLowerLimit(), getUpperLimit(), this.limitSoftness, this.biasFactor, this.relaxationFactor);
    }
}
