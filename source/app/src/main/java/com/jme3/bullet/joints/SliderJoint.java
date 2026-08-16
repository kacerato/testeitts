package com.jme3.bullet.joints;

import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.math.Matrix3f;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Logger;

public class SliderJoint extends Constraint {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(SliderJoint.class.getName());
    private static final String tagDampingDirAng = "dampingDirAng";
    private static final String tagDampingDirLin = "dampingDirLin";
    private static final String tagDampingLimAng = "dampingLimAng";
    private static final String tagDampingLimLin = "dampingLimLin";
    private static final String tagDampingOrthoAng = "dampingOrthoAng";
    private static final String tagDampingOrthoLin = "dampingOrthoLin";
    private static final String tagLowerAngLimit = "lowerAngLimit";
    private static final String tagLowerLinLimit = "lowerLinLimit";
    private static final String tagMaxAngMotorForce = "maxAngMotorForce";
    private static final String tagMaxLinMotorForce = "maxLinMotorForce";
    private static final String tagPoweredAngMotor = "poweredAngMotor";
    private static final String tagPoweredLinMotor = "poweredLinMotor";
    private static final String tagRestitutionDirAng = "restitutionDirAng";
    private static final String tagRestitutionDirLin = "restitutionDirLin";
    private static final String tagRestitutionLimAng = "restitutionLimAng";
    private static final String tagRestitutionLimLin = "restitutionLimLin";
    private static final String tagRestitutionOrthoAng = "restitutionOrthoAng";
    private static final String tagRestitutionOrthoLin = "restitutionOrthoLin";
    private static final String tagRotA = "rotA";
    private static final String tagRotB = "rotB";
    private static final String tagSoftnessDirAng = "softnessDirAng";
    private static final String tagSoftnessDirLin = "softnessDirLin";
    private static final String tagSoftnessLimAng = "softnessLimAng";
    private static final String tagSoftnessLimLin = "softnessLimLin";
    private static final String tagSoftnessOrthoAng = "softnessOrthoAng";
    private static final String tagSoftnessOrthoLin = "softnessOrthoLin";
    private static final String tagTargetAngMotorVelocity = "targetAngMotorVelocity";
    private static final String tagTargetLinMotorVelocity = "targetLinMotorVelocity";
    private static final String tagUpperAngLimit = "upperAngLimit";
    private static final String tagUpperLinLimit = "upperLinLimit";
    private static final String tagUseLinearReferenceFrameA = "useLinearReferenceFrameA";
    private Matrix3f rotA;
    private Matrix3f rotB;
    private boolean useLinearReferenceFrameA;

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

    public SliderJoint() {
    }

    private static native long createJoint(long j10, long j11, Vector3f vector3f, Matrix3f matrix3f, Vector3f vector3f2, Matrix3f matrix3f2, boolean z10);

    private void createJoint() {
        long createJoint;
        PhysicsRigidBody bodyA = getBodyA();
        PhysicsRigidBody bodyB = getBodyB();
        long nativeId = bodyB.nativeId();
        if (bodyA == null) {
            Vector3f physicsLocation = bodyB.getPhysicsLocation(null);
            bodyB.setPhysicsLocation(this.pivotA.subtract(this.pivotB));
            createJoint = createJoint1(nativeId, this.pivotB, this.rotB, this.useLinearReferenceFrameA);
            bodyB.setPhysicsLocation(physicsLocation);
        } else {
            createJoint = createJoint(bodyA.nativeId(), nativeId, this.pivotA, this.rotA, this.pivotB, this.rotB, this.useLinearReferenceFrameA);
        }
        setNativeId(createJoint);
    }

    private static native long createJoint1(long j10, Vector3f vector3f, Matrix3f matrix3f, boolean z10);

    private static native float getDampingDirAng(long j10);

    private static native float getDampingDirLin(long j10);

    private static native float getDampingLimAng(long j10);

    private static native float getDampingLimLin(long j10);

    private static native float getDampingOrthoAng(long j10);

    private static native float getDampingOrthoLin(long j10);

    private static native void getFrameOffsetA(long j10, Transform transform);

    private static native void getFrameOffsetB(long j10, Transform transform);

    private static native float getLowerAngLimit(long j10);

    private static native float getLowerLinLimit(long j10);

    private static native float getMaxAngMotorForce(long j10);

    private static native float getMaxLinMotorForce(long j10);

    private static native float getRestitutionDirAng(long j10);

    private static native float getRestitutionDirLin(long j10);

    private static native float getRestitutionLimAng(long j10);

    private static native float getRestitutionLimLin(long j10);

    private static native float getRestitutionOrthoAng(long j10);

    private static native float getRestitutionOrthoLin(long j10);

    private static native float getSoftnessDirAng(long j10);

    private static native float getSoftnessDirLin(long j10);

    private static native float getSoftnessLimAng(long j10);

    private static native float getSoftnessLimLin(long j10);

    private static native float getSoftnessOrthoAng(long j10);

    private static native float getSoftnessOrthoLin(long j10);

    private static native float getTargetAngMotorVelocity(long j10);

    private static native float getTargetLinMotorVelocity(long j10);

    private static native float getUpperAngLimit(long j10);

    private static native float getUpperLinLimit(long j10);

    private static native boolean isPoweredAngMotor(long j10);

    private static native boolean isPoweredLinMotor(long j10);

    private static native void setDampingDirAng(long j10, float f10);

    private static native void setDampingDirLin(long j10, float f10);

    private static native void setDampingLimAng(long j10, float f10);

    private static native void setDampingLimLin(long j10, float f10);

    private static native void setDampingOrthoAng(long j10, float f10);

    private static native void setDampingOrthoLin(long j10, float f10);

    private static native void setLowerAngLimit(long j10, float f10);

    private static native void setLowerLinLimit(long j10, float f10);

    private static native void setMaxAngMotorForce(long j10, float f10);

    private static native void setMaxLinMotorForce(long j10, float f10);

    private static native void setPoweredAngMotor(long j10, boolean z10);

    private static native void setPoweredLinMotor(long j10, boolean z10);

    private static native void setRestitutionDirAng(long j10, float f10);

    private static native void setRestitutionDirLin(long j10, float f10);

    private static native void setRestitutionLimAng(long j10, float f10);

    private static native void setRestitutionLimLin(long j10, float f10);

    private static native void setRestitutionOrthoAng(long j10, float f10);

    private static native void setRestitutionOrthoLin(long j10, float f10);

    private static native void setSoftnessDirAng(long j10, float f10);

    private static native void setSoftnessDirLin(long j10, float f10);

    private static native void setSoftnessLimAng(long j10, float f10);

    private static native void setSoftnessLimLin(long j10, float f10);

    private static native void setSoftnessOrthoAng(long j10, float f10);

    private static native void setSoftnessOrthoLin(long j10, float f10);

    private static native void setTargetAngMotorVelocity(long j10, float f10);

    private static native void setTargetLinMotorVelocity(long j10, float f10);

    private static native void setUpperAngLimit(long j10, float f10);

    private static native void setUpperLinLimit(long j10, float f10);

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        SliderJoint sliderJoint = (SliderJoint) obj;
        super.cloneFields(cloner, obj);
        if (hasAssignedNativeObject()) {
            return;
        }
        this.rotA = (Matrix3f) cloner.clone(this.rotA);
        this.rotB = (Matrix3f) cloner.clone(this.rotB);
        createJoint();
        copyConstraintProperties(sliderJoint);
        setDampingDirAng(sliderJoint.getDampingDirAng());
        setDampingDirLin(sliderJoint.getDampingDirLin());
        setDampingLimAng(sliderJoint.getDampingLimAng());
        setDampingLimLin(sliderJoint.getDampingLimLin());
        setDampingOrthoAng(sliderJoint.getDampingOrthoAng());
        setDampingOrthoLin(sliderJoint.getDampingOrthoLin());
        setLowerAngLimit(sliderJoint.getLowerAngLimit());
        setLowerLinLimit(sliderJoint.getLowerLinLimit());
        setMaxAngMotorForce(sliderJoint.getMaxAngMotorForce());
        setMaxLinMotorForce(sliderJoint.getMaxLinMotorForce());
        setPoweredAngMotor(sliderJoint.isPoweredAngMotor());
        setPoweredLinMotor(sliderJoint.isPoweredLinMotor());
        setRestitutionDirAng(sliderJoint.getRestitutionDirAng());
        setRestitutionDirLin(sliderJoint.getRestitutionDirLin());
        setRestitutionLimAng(sliderJoint.getRestitutionLimAng());
        setRestitutionLimLin(sliderJoint.getRestitutionLimLin());
        setRestitutionOrthoAng(sliderJoint.getRestitutionOrthoAng());
        setRestitutionOrthoLin(sliderJoint.getRestitutionOrthoLin());
        setSoftnessDirAng(sliderJoint.getSoftnessDirAng());
        setSoftnessDirLin(sliderJoint.getSoftnessDirLin());
        setSoftnessLimAng(sliderJoint.getSoftnessLimAng());
        setSoftnessLimLin(sliderJoint.getSoftnessLimLin());
        setSoftnessOrthoAng(sliderJoint.getSoftnessOrthoAng());
        setSoftnessOrthoLin(sliderJoint.getSoftnessOrthoLin());
        setTargetAngMotorVelocity(sliderJoint.getTargetAngMotorVelocity());
        setTargetLinMotorVelocity(sliderJoint.getTargetLinMotorVelocity());
        setUpperAngLimit(sliderJoint.getUpperAngLimit());
        setUpperLinLimit(sliderJoint.getUpperLinLimit());
    }

    public float getDampingDirAng() {
        return getDampingDirAng(nativeId());
    }

    public float getDampingDirLin() {
        return getDampingDirLin(nativeId());
    }

    public float getDampingLimAng() {
        return getDampingLimAng(nativeId());
    }

    public float getDampingLimLin() {
        return getDampingLimLin(nativeId());
    }

    public float getDampingOrthoAng() {
        return getDampingOrthoAng(nativeId());
    }

    public float getDampingOrthoLin() {
        return getDampingOrthoLin(nativeId());
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

    public float getLowerAngLimit() {
        return getLowerAngLimit(nativeId());
    }

    public float getLowerLinLimit() {
        return getLowerLinLimit(nativeId());
    }

    public float getMaxAngMotorForce() {
        return getMaxAngMotorForce(nativeId());
    }

    public float getMaxLinMotorForce() {
        return getMaxLinMotorForce(nativeId());
    }

    public float getRestitutionDirAng() {
        return getRestitutionDirAng(nativeId());
    }

    public float getRestitutionDirLin() {
        return getRestitutionDirLin(nativeId());
    }

    public float getRestitutionLimAng() {
        return getRestitutionLimAng(nativeId());
    }

    public float getRestitutionLimLin() {
        return getRestitutionLimLin(nativeId());
    }

    public float getRestitutionOrthoAng() {
        return getRestitutionOrthoAng(nativeId());
    }

    public float getRestitutionOrthoLin() {
        return getRestitutionOrthoLin(nativeId());
    }

    public float getSoftnessDirAng() {
        return getSoftnessDirAng(nativeId());
    }

    public float getSoftnessDirLin() {
        return getSoftnessDirLin(nativeId());
    }

    public float getSoftnessLimAng() {
        return getSoftnessLimAng(nativeId());
    }

    public float getSoftnessLimLin() {
        return getSoftnessLimLin(nativeId());
    }

    public float getSoftnessOrthoAng() {
        return getSoftnessOrthoAng(nativeId());
    }

    public float getSoftnessOrthoLin() {
        return getSoftnessOrthoLin(nativeId());
    }

    public float getTargetAngMotorVelocity() {
        return getTargetAngMotorVelocity(nativeId());
    }

    public float getTargetLinMotorVelocity() {
        return getTargetLinMotorVelocity(nativeId());
    }

    public float getUpperAngLimit() {
        return getUpperAngLimit(nativeId());
    }

    public float getUpperLinLimit() {
        return getUpperLinLimit(nativeId());
    }

    public boolean isPoweredAngMotor() {
        return isPoweredAngMotor(nativeId());
    }

    public boolean isPoweredLinMotor() {
        return isPoweredLinMotor(nativeId());
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        float readFloat = capsule.readFloat(tagDampingDirAng, 0.0f);
        float readFloat2 = capsule.readFloat(tagDampingDirLin, 0.0f);
        float readFloat3 = capsule.readFloat(tagDampingLimAng, 1.0f);
        float readFloat4 = capsule.readFloat(tagDampingLimLin, 1.0f);
        float readFloat5 = capsule.readFloat(tagDampingOrthoAng, 1.0f);
        float readFloat6 = capsule.readFloat(tagDampingOrthoLin, 1.0f);
        float readFloat7 = capsule.readFloat(tagLowerAngLimit, 0.0f);
        float readFloat8 = capsule.readFloat(tagLowerLinLimit, 1.0f);
        float readFloat9 = capsule.readFloat(tagMaxAngMotorForce, 0.0f);
        float readFloat10 = capsule.readFloat(tagMaxLinMotorForce, 0.0f);
        boolean readBoolean = capsule.readBoolean(tagPoweredAngMotor, false);
        boolean readBoolean2 = capsule.readBoolean(tagPoweredLinMotor, false);
        float readFloat11 = capsule.readFloat(tagRestitutionDirAng, 0.7f);
        float readFloat12 = capsule.readFloat(tagRestitutionDirLin, 0.7f);
        float readFloat13 = capsule.readFloat(tagRestitutionLimAng, 0.7f);
        float readFloat14 = capsule.readFloat(tagRestitutionLimLin, 0.7f);
        float readFloat15 = capsule.readFloat(tagRestitutionOrthoAng, 0.7f);
        float readFloat16 = capsule.readFloat(tagRestitutionOrthoLin, 0.7f);
        float readFloat17 = capsule.readFloat(tagSoftnessDirAng, 1.0f);
        float readFloat18 = capsule.readFloat(tagSoftnessDirLin, 1.0f);
        float readFloat19 = capsule.readFloat(tagSoftnessLimAng, 1.0f);
        float readFloat20 = capsule.readFloat(tagSoftnessLimLin, 1.0f);
        float readFloat21 = capsule.readFloat(tagSoftnessOrthoAng, 1.0f);
        float readFloat22 = capsule.readFloat(tagSoftnessOrthoLin, 1.0f);
        float readFloat23 = capsule.readFloat(tagTargetAngMotorVelocity, 0.0f);
        float readFloat24 = capsule.readFloat(tagTargetLinMotorVelocity, 0.0f);
        float readFloat25 = capsule.readFloat(tagUpperAngLimit, 0.0f);
        float readFloat26 = capsule.readFloat(tagUpperLinLimit, -1.0f);
        this.rotA = (Matrix3f) capsule.readSavable(tagRotA, new Matrix3f());
        this.rotB = (Matrix3f) capsule.readSavable(tagRotB, new Matrix3f());
        this.useLinearReferenceFrameA = capsule.readBoolean(tagUseLinearReferenceFrameA, false);
        createJoint();
        readConstraintProperties(capsule);
        setDampingDirAng(readFloat);
        setDampingDirLin(readFloat2);
        setDampingLimAng(readFloat3);
        setDampingLimLin(readFloat4);
        setDampingOrthoAng(readFloat5);
        setDampingOrthoLin(readFloat6);
        setLowerAngLimit(readFloat7);
        setLowerLinLimit(readFloat8);
        setMaxAngMotorForce(readFloat9);
        setMaxLinMotorForce(readFloat10);
        setPoweredAngMotor(readBoolean);
        setPoweredLinMotor(readBoolean2);
        setRestitutionDirAng(readFloat11);
        setRestitutionDirLin(readFloat12);
        setRestitutionLimAng(readFloat13);
        setRestitutionLimLin(readFloat14);
        setRestitutionOrthoAng(readFloat15);
        setRestitutionOrthoLin(readFloat16);
        setSoftnessDirAng(readFloat17);
        setSoftnessDirLin(readFloat18);
        setSoftnessLimAng(readFloat19);
        setSoftnessLimLin(readFloat20);
        setSoftnessOrthoAng(readFloat21);
        setSoftnessOrthoLin(readFloat22);
        setTargetAngMotorVelocity(readFloat23);
        setTargetLinMotorVelocity(readFloat24);
        setUpperAngLimit(readFloat25);
        setUpperLinLimit(readFloat26);
    }

    public void setDampingDirAng(float f10) {
        setDampingDirAng(nativeId(), f10);
    }

    public void setDampingDirLin(float f10) {
        setDampingDirLin(nativeId(), f10);
    }

    public void setDampingLimAng(float f10) {
        setDampingLimAng(nativeId(), f10);
    }

    public void setDampingLimLin(float f10) {
        setDampingLimLin(nativeId(), f10);
    }

    public void setDampingOrthoAng(float f10) {
        setDampingOrthoAng(nativeId(), f10);
    }

    public void setDampingOrthoLin(float f10) {
        setDampingOrthoLin(nativeId(), f10);
    }

    public void setLowerAngLimit(float f10) {
        setLowerAngLimit(nativeId(), f10);
    }

    public void setLowerLinLimit(float f10) {
        setLowerLinLimit(nativeId(), f10);
    }

    public void setMaxAngMotorForce(float f10) {
        setMaxAngMotorForce(nativeId(), f10);
    }

    public void setMaxLinMotorForce(float f10) {
        setMaxLinMotorForce(nativeId(), f10);
    }

    public void setPoweredAngMotor(boolean z10) {
        setPoweredAngMotor(nativeId(), z10);
    }

    public void setPoweredLinMotor(boolean z10) {
        setPoweredLinMotor(nativeId(), z10);
    }

    public void setRestitutionDirAng(float f10) {
        setRestitutionDirAng(nativeId(), f10);
    }

    public void setRestitutionDirLin(float f10) {
        setRestitutionDirLin(nativeId(), f10);
    }

    public void setRestitutionLimAng(float f10) {
        setRestitutionLimAng(nativeId(), f10);
    }

    public void setRestitutionLimLin(float f10) {
        setRestitutionLimLin(nativeId(), f10);
    }

    public void setRestitutionOrthoAng(float f10) {
        setRestitutionOrthoAng(nativeId(), f10);
    }

    public void setRestitutionOrthoLin(float f10) {
        setRestitutionOrthoLin(nativeId(), f10);
    }

    public void setSoftnessDirAng(float f10) {
        setSoftnessDirAng(nativeId(), f10);
    }

    public void setSoftnessDirLin(float f10) {
        setSoftnessDirLin(nativeId(), f10);
    }

    public void setSoftnessLimAng(float f10) {
        setSoftnessLimAng(nativeId(), f10);
    }

    public void setSoftnessLimLin(float f10) {
        setSoftnessLimLin(nativeId(), f10);
    }

    public void setSoftnessOrthoAng(float f10) {
        setSoftnessOrthoAng(nativeId(), f10);
    }

    public void setSoftnessOrthoLin(float f10) {
        setSoftnessOrthoLin(nativeId(), f10);
    }

    public void setTargetAngMotorVelocity(float f10) {
        setTargetAngMotorVelocity(nativeId(), f10);
    }

    public void setTargetLinMotorVelocity(float f10) {
        setTargetLinMotorVelocity(nativeId(), f10);
    }

    public void setUpperAngLimit(float f10) {
        setUpperAngLimit(nativeId(), f10);
    }

    public void setUpperLinLimit(float f10) {
        setUpperLinLimit(nativeId(), f10);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(getDampingDirAng(), tagDampingDirAng, 0.0f);
        capsule.write(getDampingDirLin(), tagDampingDirLin, 0.0f);
        capsule.write(getDampingLimAng(), tagDampingLimAng, 1.0f);
        capsule.write(getDampingLimLin(), tagDampingLimLin, 1.0f);
        capsule.write(getDampingOrthoAng(), tagDampingOrthoAng, 1.0f);
        capsule.write(getDampingOrthoLin(), tagDampingOrthoLin, 1.0f);
        capsule.write(getLowerAngLimit(), tagLowerAngLimit, 0.0f);
        capsule.write(getLowerLinLimit(), tagLowerLinLimit, 1.0f);
        capsule.write(getMaxAngMotorForce(), tagMaxAngMotorForce, 0.0f);
        capsule.write(getMaxLinMotorForce(), tagMaxLinMotorForce, 0.0f);
        capsule.write(isPoweredAngMotor(), tagPoweredAngMotor, false);
        capsule.write(isPoweredLinMotor(), tagPoweredLinMotor, false);
        capsule.write(getRestitutionDirAng(), tagRestitutionDirAng, 0.7f);
        capsule.write(getRestitutionDirLin(), tagRestitutionDirLin, 0.7f);
        capsule.write(getRestitutionLimAng(), tagRestitutionLimAng, 0.7f);
        capsule.write(getRestitutionLimLin(), tagRestitutionLimLin, 0.7f);
        capsule.write(getRestitutionOrthoAng(), tagRestitutionOrthoAng, 0.7f);
        capsule.write(getRestitutionOrthoLin(), tagRestitutionOrthoLin, 0.7f);
        capsule.write(getSoftnessDirAng(), tagSoftnessDirAng, 1.0f);
        capsule.write(getSoftnessDirLin(), tagSoftnessDirLin, 1.0f);
        capsule.write(getSoftnessLimAng(), tagSoftnessLimAng, 1.0f);
        capsule.write(getSoftnessLimLin(), tagSoftnessLimLin, 1.0f);
        capsule.write(getSoftnessOrthoAng(), tagSoftnessOrthoAng, 1.0f);
        capsule.write(getSoftnessOrthoLin(), tagSoftnessOrthoLin, 1.0f);
        capsule.write(getTargetAngMotorVelocity(), tagTargetAngMotorVelocity, 0.0f);
        capsule.write(getTargetLinMotorVelocity(), tagTargetLinMotorVelocity, 0.0f);
        capsule.write(getUpperAngLimit(), tagUpperAngLimit, 0.0f);
        capsule.write(getUpperLinLimit(), tagUpperLinLimit, -1.0f);
        capsule.write(this.useLinearReferenceFrameA, tagUseLinearReferenceFrameA, false);
    }

    public SliderJoint(PhysicsRigidBody physicsRigidBody, Vector3f vector3f, Vector3f vector3f2, JointEnd jointEnd) {
        super(physicsRigidBody, JointEnd.B, vector3f, vector3f2);
        this.rotA = new Matrix3f();
        this.rotB = new Matrix3f();
        this.useLinearReferenceFrameA = jointEnd == JointEnd.A;
        createJoint();
    }

    public SliderJoint(PhysicsRigidBody physicsRigidBody, PhysicsRigidBody physicsRigidBody2, Vector3f vector3f, Vector3f vector3f2, Matrix3f matrix3f, Matrix3f matrix3f2, boolean z10) {
        super(physicsRigidBody, physicsRigidBody2, vector3f, vector3f2);
        this.useLinearReferenceFrameA = z10;
        this.rotA = matrix3f.m1282clone();
        this.rotB = matrix3f2.m1282clone();
        createJoint();
    }

    public SliderJoint(PhysicsRigidBody physicsRigidBody, PhysicsRigidBody physicsRigidBody2, Vector3f vector3f, Vector3f vector3f2, boolean z10) {
        super(physicsRigidBody, physicsRigidBody2, vector3f, vector3f2);
        this.useLinearReferenceFrameA = z10;
        this.rotA = new Matrix3f();
        this.rotB = new Matrix3f();
        createJoint();
    }
}
