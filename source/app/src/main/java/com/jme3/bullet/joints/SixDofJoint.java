package com.jme3.bullet.joints;

import com.jme3.bullet.joints.motors.RotationalLimitMotor;
import com.jme3.bullet.joints.motors.TranslationalLimitMotor;
import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Matrix3f;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Logger;
import jf.f;
import p000if.C13702E;

public class SixDofJoint extends Constraint {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(SixDofJoint.class.getName());
    private static final int numAxes = 3;
    private static final String tagAccumulatedImpulse = "_AccumulatedImpulse";
    private static final String tagAngularLowerLimit = "angularLowerLimit";
    private static final String tagAngularUpperLimit = "angularUpperLimit";
    private static final String tagBounce = "_Bounce";
    private static final String tagDamping = "_Damping";
    private static final String tagERP = "_ERP";
    private static final String tagEnable = "_Enable";
    private static final String tagHiLimit = "_HiLimit";
    private static final String tagLimitSoftness = "_LimitSoftness";
    private static final String tagLinearLowerLimit = "linearLowerLimit";
    private static final String tagLinearUpperLimit = "linearUpperLimit";
    private static final String tagLoLimit = "_LoLimit";
    private static final String tagMaxForce = "_MaxForce";
    private static final String tagMaxLimitForce = "_MaxLimitForce";
    private static final String tagNormalCFM = "_NormalCFM";
    private static final String tagRotA = "rotA";
    private static final String tagRotB = "rotB";
    private static final String tagRotMotor = "rotMotor";
    private static final String tagStopCFM = "_StopCFM";
    private static final String tagTargetVelocity = "_TargetVelocity";
    private static final String tagTransMotor = "transMotor";
    private static final String tagUseLinearReferenceFrameA = "useLinearReferenceFrameA";
    private Vector3f angularLowerLimit;
    private Vector3f angularUpperLimit;
    private Vector3f linearLowerLimit;
    private Vector3f linearUpperLimit;
    private Matrix3f rotA;
    private Matrix3f rotB;
    private RotationalLimitMotor[] rotationalMotors;
    private TranslationalLimitMotor translationalMotor;
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

    public SixDofJoint() {
        this.angularUpperLimit = new Vector3f(0.0f, 0.0f, 0.0f);
        this.angularLowerLimit = new Vector3f(0.0f, 0.0f, 0.0f);
        this.linearUpperLimit = new Vector3f(0.0f, 0.0f, 0.0f);
        this.linearLowerLimit = new Vector3f(0.0f, 0.0f, 0.0f);
    }

    private void createJoint() {
        long createJoint;
        PhysicsRigidBody bodyA = getBodyA();
        PhysicsRigidBody bodyB = getBodyB();
        long nativeId = bodyB.nativeId();
        if (bodyA == null) {
            Transform transform = new Transform();
            transform.getRotation().fromRotationMatrix(this.rotA);
            transform.setTranslation(this.pivotA);
            Transform transform2 = new Transform();
            transform2.getRotation().fromRotationMatrix(this.rotB);
            transform2.setTranslation(this.pivotB);
            Transform invert = transform2.invert();
            f.i(invert, transform, invert);
            Vector3f physicsLocation = bodyB.getPhysicsLocation(null);
            Quaternion physicsRotation = bodyB.getPhysicsRotation(null);
            bodyB.setPhysicsLocation(invert.getTranslation());
            bodyB.setPhysicsRotation(invert.getRotation());
            createJoint = createJoint1(nativeId, this.pivotB, this.rotB, !this.useLinearReferenceFrameA);
            bodyB.setPhysicsLocation(physicsLocation);
            bodyB.setPhysicsRotation(physicsRotation);
        } else {
            createJoint = createJoint(bodyA.nativeId(), nativeId, this.pivotA, this.rotA, this.pivotB, this.rotB, this.useLinearReferenceFrameA);
        }
        Constraint.getConstraintType(createJoint);
        setNativeId(createJoint);
        gatherMotors();
    }

    private void gatherMotors() {
        long nativeId = nativeId();
        this.rotationalMotors = new RotationalLimitMotor[3];
        for (int i10 = 0; i10 < 3; i10++) {
            this.rotationalMotors[i10] = new RotationalLimitMotor(getRotationalLimitMotor(nativeId, i10));
        }
        this.translationalMotor = new TranslationalLimitMotor(getTranslationalLimitMotor(nativeId));
    }

    private static native void getAngles(long j10, Vector3f vector3f);

    private static native void getFrameOffsetA(long j10, Transform transform);

    private static native void getFrameOffsetB(long j10, Transform transform);

    private static native void getPivotOffset(long j10, Vector3f vector3f);

    private static native long getRotationalLimitMotor(long j10, int i10);

    private static native long getTranslationalLimitMotor(long j10);

    private static native void setAngularLowerLimit(long j10, Vector3f vector3f);

    private static native void setAngularUpperLimit(long j10, Vector3f vector3f);

    private static native void setLinearLowerLimit(long j10, Vector3f vector3f);

    private static native void setLinearUpperLimit(long j10, Vector3f vector3f);

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        SixDofJoint sixDofJoint = (SixDofJoint) obj;
        super.cloneFields(cloner, obj);
        if (hasAssignedNativeObject()) {
            return;
        }
        this.rotA = (Matrix3f) cloner.clone(this.rotA);
        this.rotB = (Matrix3f) cloner.clone(this.rotB);
        this.rotationalMotors = null;
        this.translationalMotor = null;
        createJoint();
        this.angularLowerLimit = (Vector3f) cloner.clone(this.angularLowerLimit);
        this.angularUpperLimit = (Vector3f) cloner.clone(this.angularUpperLimit);
        this.linearLowerLimit = (Vector3f) cloner.clone(this.linearLowerLimit);
        this.linearUpperLimit = (Vector3f) cloner.clone(this.linearUpperLimit);
        copyConstraintProperties(sixDofJoint);
        setAngularLowerLimit(sixDofJoint.getAngularLowerLimit(null));
        setAngularUpperLimit(sixDofJoint.getAngularUpperLimit(null));
        setLinearLowerLimit(sixDofJoint.getLinearLowerLimit(null));
        setLinearLowerLimit(sixDofJoint.getLinearUpperLimit(null));
        TranslationalLimitMotor translationalLimitMotor = getTranslationalLimitMotor();
        TranslationalLimitMotor translationalLimitMotor2 = sixDofJoint.getTranslationalLimitMotor();
        translationalLimitMotor.setAccumulatedImpulse(translationalLimitMotor2.getAccumulatedImpulse(null));
        translationalLimitMotor.setDamping(translationalLimitMotor2.getDamping());
        for (int i10 = 0; i10 < 3; i10++) {
            translationalLimitMotor.setEnabled(i10, translationalLimitMotor2.isEnabled(i10));
        }
        translationalLimitMotor.setERP(translationalLimitMotor2.getERP(null));
        translationalLimitMotor.setLimitSoftness(translationalLimitMotor2.getLimitSoftness());
        translationalLimitMotor.setLowerLimit(translationalLimitMotor2.getLowerLimit(null));
        translationalLimitMotor.setMaxMotorForce(translationalLimitMotor2.getMaxMotorForce(null));
        translationalLimitMotor.setNormalCFM(translationalLimitMotor2.getNormalCFM(null));
        translationalLimitMotor.setRestitution(translationalLimitMotor2.getRestitution());
        translationalLimitMotor.setStopCFM(translationalLimitMotor2.getStopCFM(null));
        translationalLimitMotor.setTargetVelocity(translationalLimitMotor2.getTargetVelocity(null));
        translationalLimitMotor.setUpperLimit(translationalLimitMotor2.getUpperLimit(null));
        for (int i11 = 0; i11 < 3; i11++) {
            RotationalLimitMotor rotationalLimitMotor = getRotationalLimitMotor(i11);
            RotationalLimitMotor rotationalLimitMotor2 = sixDofJoint.getRotationalLimitMotor(i11);
            rotationalLimitMotor.setAccumulatedImpulse(rotationalLimitMotor2.getAccumulatedImpulse());
            rotationalLimitMotor.setRestitution(rotationalLimitMotor2.getRestitution());
            rotationalLimitMotor.setDamping(rotationalLimitMotor2.getDamping());
            rotationalLimitMotor.setEnableMotor(rotationalLimitMotor2.isEnableMotor());
            rotationalLimitMotor.setERP(rotationalLimitMotor2.getERP());
            rotationalLimitMotor.setUpperLimit(rotationalLimitMotor2.getUpperLimit());
            rotationalLimitMotor.setLimitSoftness(rotationalLimitMotor2.getLimitSoftness());
            rotationalLimitMotor.setLowerLimit(rotationalLimitMotor2.getLowerLimit());
            rotationalLimitMotor.setMaxLimitForce(rotationalLimitMotor2.getMaxLimitForce());
            rotationalLimitMotor.setMaxMotorForce(rotationalLimitMotor2.getMaxMotorForce());
            rotationalLimitMotor.setNormalCFM(rotationalLimitMotor2.getNormalCFM());
            rotationalLimitMotor.setStopCFM(rotationalLimitMotor2.getStopCFM());
            rotationalLimitMotor.setTargetVelocity(rotationalLimitMotor2.getTargetVelocity());
        }
    }

    public native long createJoint(long j10, long j11, Vector3f vector3f, Matrix3f matrix3f, Vector3f vector3f2, Matrix3f matrix3f2, boolean z10);

    public native long createJoint1(long j10, Vector3f vector3f, Matrix3f matrix3f, boolean z10);

    public Vector3f getAngles(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getAngles(nativeId(), vector3f);
        return vector3f;
    }

    public Vector3f getAngularLowerLimit(Vector3f vector3f) {
        return vector3f == null ? this.angularLowerLimit.m1292clone() : vector3f.set(this.angularLowerLimit);
    }

    public Vector3f getAngularUpperLimit(Vector3f vector3f) {
        return vector3f == null ? this.angularUpperLimit.m1292clone() : vector3f.set(this.angularUpperLimit);
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

    public Vector3f getLinearLowerLimit(Vector3f vector3f) {
        return vector3f == null ? this.linearLowerLimit.m1292clone() : vector3f.set(this.linearLowerLimit);
    }

    public Vector3f getLinearUpperLimit(Vector3f vector3f) {
        return vector3f == null ? this.linearUpperLimit.m1292clone() : vector3f.set(this.linearUpperLimit);
    }

    public Vector3f getPivotOffset(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getPivotOffset(nativeId(), vector3f);
        return vector3f;
    }

    public RotationalLimitMotor getRotationalLimitMotor(int i10) {
        C13702E.a(i10, "axis index");
        return this.rotationalMotors[i10];
    }

    public TranslationalLimitMotor getTranslationalLimitMotor() {
        return this.translationalMotor;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        SixDofJoint sixDofJoint = this;
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(sixDofJoint);
        sixDofJoint.rotA = (Matrix3f) capsule.readSavable(tagRotA, null);
        sixDofJoint.rotB = (Matrix3f) capsule.readSavable(tagRotB, null);
        sixDofJoint.useLinearReferenceFrameA = capsule.readBoolean(tagUseLinearReferenceFrameA, false);
        createJoint();
        sixDofJoint.readConstraintProperties(capsule);
        sixDofJoint.setAngularLowerLimit((Vector3f) capsule.readSavable(tagAngularLowerLimit, null));
        sixDofJoint.setAngularUpperLimit((Vector3f) capsule.readSavable(tagAngularUpperLimit, null));
        sixDofJoint.setLinearLowerLimit((Vector3f) capsule.readSavable(tagLinearLowerLimit, null));
        sixDofJoint.setLinearUpperLimit((Vector3f) capsule.readSavable(tagLinearUpperLimit, null));
        int i10 = 0;
        while (i10 < 3) {
            RotationalLimitMotor rotationalLimitMotor = sixDofJoint.getRotationalLimitMotor(i10);
            String str = tagRotMotor + i10;
            rotationalLimitMotor.setAccumulatedImpulse(capsule.readFloat(str + tagAccumulatedImpulse, 0.0f));
            rotationalLimitMotor.setRestitution(capsule.readFloat(str + tagBounce, 0.0f));
            rotationalLimitMotor.setDamping(capsule.readFloat(str + tagDamping, 1.0f));
            rotationalLimitMotor.setEnableMotor(capsule.readBoolean(str + tagEnable, false));
            rotationalLimitMotor.setERP(capsule.readFloat(str + tagERP, 0.5f));
            rotationalLimitMotor.setUpperLimit(capsule.readFloat(str + tagHiLimit, Float.POSITIVE_INFINITY));
            rotationalLimitMotor.setLimitSoftness(capsule.readFloat(str + tagLimitSoftness, 0.5f));
            rotationalLimitMotor.setLowerLimit(capsule.readFloat(str + tagLoLimit, Float.NEGATIVE_INFINITY));
            rotationalLimitMotor.setMaxLimitForce(capsule.readFloat(str + tagMaxLimitForce, 300.0f));
            rotationalLimitMotor.setMaxMotorForce(capsule.readFloat(str + tagMaxForce, 0.1f));
            rotationalLimitMotor.setNormalCFM(capsule.readFloat(str + tagNormalCFM, 0.0f));
            rotationalLimitMotor.setStopCFM(capsule.readFloat(str + tagStopCFM, 0.0f));
            rotationalLimitMotor.setTargetVelocity(capsule.readFloat(str + tagTargetVelocity, 0.0f));
            i10++;
            sixDofJoint = this;
        }
        TranslationalLimitMotor translationalLimitMotor = sixDofJoint.translationalMotor;
        translationalLimitMotor.setAccumulatedImpulse((Vector3f) capsule.readSavable(tagTransMotor + tagAccumulatedImpulse, null));
        translationalLimitMotor.setRestitution(capsule.readFloat(tagTransMotor + tagBounce, 0.5f));
        translationalLimitMotor.setDamping(capsule.readFloat(tagTransMotor + tagDamping, 1.0f));
        for (int i11 = 0; i11 < 3; i11++) {
            translationalLimitMotor.setEnabled(i11, capsule.readBoolean(tagTransMotor + tagEnable + i11, false));
        }
        translationalLimitMotor.setERP((Vector3f) capsule.readSavable(tagTransMotor + tagERP, null));
        translationalLimitMotor.setUpperLimit((Vector3f) capsule.readSavable(tagTransMotor + tagHiLimit, null));
        translationalLimitMotor.setLimitSoftness(capsule.readFloat(tagTransMotor + tagLimitSoftness, 0.7f));
        translationalLimitMotor.setLowerLimit((Vector3f) capsule.readSavable(tagTransMotor + tagLoLimit, null));
        translationalLimitMotor.setMaxMotorForce((Vector3f) capsule.readSavable(tagTransMotor + tagMaxForce, null));
        translationalLimitMotor.setNormalCFM((Vector3f) capsule.readSavable(tagTransMotor + tagNormalCFM, null));
        translationalLimitMotor.setStopCFM((Vector3f) capsule.readSavable(tagTransMotor + tagStopCFM, null));
        translationalLimitMotor.setTargetVelocity((Vector3f) capsule.readSavable(tagTransMotor + tagTargetVelocity, null));
    }

    public void setAngularLowerLimit(Vector3f vector3f) {
        C13702E.h(vector3f.f81611x, "limits.x", -3.1415927f, 3.1415927f);
        C13702E.h(vector3f.f81612y, "limits.y", -1.5707964f, 1.5707964f);
        C13702E.h(vector3f.f81613z, "limits.z", -3.1415927f, 3.1415927f);
        this.angularLowerLimit.set(vector3f);
        setAngularLowerLimit(nativeId(), vector3f);
    }

    public void setAngularUpperLimit(Vector3f vector3f) {
        C13702E.h(vector3f.f81611x, "limits.x", -3.1415927f, 3.1415927f);
        C13702E.h(vector3f.f81612y, "limits.y", -1.5707964f, 1.5707964f);
        C13702E.h(vector3f.f81613z, "limits.z", -3.1415927f, 3.1415927f);
        this.angularUpperLimit.set(vector3f);
        setAngularUpperLimit(nativeId(), vector3f);
    }

    public void setLinearLowerLimit(Vector3f vector3f) {
        this.linearLowerLimit.set(vector3f);
        setLinearLowerLimit(nativeId(), vector3f);
    }

    public void setLinearUpperLimit(Vector3f vector3f) {
        this.linearUpperLimit.set(vector3f);
        setLinearUpperLimit(nativeId(), vector3f);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        SixDofJoint sixDofJoint = this;
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(sixDofJoint);
        capsule.write(sixDofJoint.rotA, tagRotA, (Savable) null);
        capsule.write(sixDofJoint.rotB, tagRotB, (Savable) null);
        capsule.write(sixDofJoint.useLinearReferenceFrameA, tagUseLinearReferenceFrameA, false);
        capsule.write(sixDofJoint.angularUpperLimit, tagAngularUpperLimit, (Savable) null);
        capsule.write(sixDofJoint.angularLowerLimit, tagAngularLowerLimit, (Savable) null);
        capsule.write(sixDofJoint.linearUpperLimit, tagLinearUpperLimit, (Savable) null);
        capsule.write(sixDofJoint.linearLowerLimit, tagLinearLowerLimit, (Savable) null);
        int i10 = 0;
        while (i10 < 3) {
            RotationalLimitMotor rotationalLimitMotor = sixDofJoint.rotationalMotors[i10];
            String str = tagRotMotor + i10;
            int i11 = i10;
            capsule.write(rotationalLimitMotor.getAccumulatedImpulse(), str + tagAccumulatedImpulse, 0.0f);
            capsule.write(rotationalLimitMotor.getRestitution(), str + tagBounce, 0.0f);
            capsule.write(rotationalLimitMotor.getDamping(), str + tagDamping, 1.0f);
            capsule.write(rotationalLimitMotor.isEnableMotor(), str + tagEnable, false);
            capsule.write(rotationalLimitMotor.getERP(), str + tagERP, 0.5f);
            capsule.write(rotationalLimitMotor.getUpperLimit(), str + tagHiLimit, Float.POSITIVE_INFINITY);
            capsule.write(rotationalLimitMotor.getLimitSoftness(), str + tagLimitSoftness, 0.5f);
            capsule.write(rotationalLimitMotor.getLowerLimit(), str + tagLoLimit, Float.NEGATIVE_INFINITY);
            capsule.write(rotationalLimitMotor.getMaxLimitForce(), str + tagMaxLimitForce, 300.0f);
            capsule.write(rotationalLimitMotor.getMaxMotorForce(), str + tagMaxForce, 0.1f);
            capsule.write(rotationalLimitMotor.getNormalCFM(), str + tagNormalCFM, 0.0f);
            capsule.write(rotationalLimitMotor.getStopCFM(), str + tagStopCFM, 0.0f);
            capsule.write(rotationalLimitMotor.getTargetVelocity(), str + tagTargetVelocity, 0.0f);
            i10 = i11 + 1;
            sixDofJoint = this;
        }
        TranslationalLimitMotor translationalLimitMotor = sixDofJoint.translationalMotor;
        capsule.write(translationalLimitMotor.getAccumulatedImpulse(null), tagTransMotor + tagAccumulatedImpulse, (Savable) null);
        capsule.write(translationalLimitMotor.getRestitution(), tagTransMotor + tagBounce, 0.5f);
        capsule.write(translationalLimitMotor.getDamping(), tagTransMotor + tagDamping, 1.0f);
        for (int i12 = 0; i12 < 3; i12++) {
            capsule.write(translationalLimitMotor.isEnabled(i12), tagTransMotor + tagEnable + i12, false);
        }
        capsule.write(translationalLimitMotor.getERP(null), tagTransMotor + tagERP, (Savable) null);
        capsule.write(translationalLimitMotor.getUpperLimit(null), tagTransMotor + tagHiLimit, (Savable) null);
        capsule.write(translationalLimitMotor.getLimitSoftness(), tagTransMotor + tagLimitSoftness, 0.7f);
        capsule.write(translationalLimitMotor.getLowerLimit(null), tagTransMotor + tagLoLimit, (Savable) null);
        capsule.write(translationalLimitMotor.getMaxMotorForce(null), tagTransMotor + tagMaxForce, (Savable) null);
        capsule.write(translationalLimitMotor.getNormalCFM(null), tagTransMotor + tagNormalCFM, (Savable) null);
        capsule.write(translationalLimitMotor.getStopCFM(null), tagTransMotor + tagStopCFM, (Savable) null);
        capsule.write(translationalLimitMotor.getTargetVelocity(null), tagTransMotor + tagTargetVelocity, (Savable) null);
    }

    public SixDofJoint(PhysicsRigidBody physicsRigidBody, Vector3f vector3f, Vector3f vector3f2, Matrix3f matrix3f, Matrix3f matrix3f2, JointEnd jointEnd) {
        super(physicsRigidBody, JointEnd.B, vector3f, vector3f2);
        this.angularUpperLimit = new Vector3f(0.0f, 0.0f, 0.0f);
        this.angularLowerLimit = new Vector3f(0.0f, 0.0f, 0.0f);
        this.linearUpperLimit = new Vector3f(0.0f, 0.0f, 0.0f);
        this.linearLowerLimit = new Vector3f(0.0f, 0.0f, 0.0f);
        this.useLinearReferenceFrameA = jointEnd == JointEnd.A;
        this.rotA = matrix3f2.m1282clone();
        this.rotB = matrix3f.m1282clone();
        createJoint();
    }

    public SixDofJoint(PhysicsRigidBody physicsRigidBody, PhysicsRigidBody physicsRigidBody2, Vector3f vector3f, Vector3f vector3f2, Matrix3f matrix3f, Matrix3f matrix3f2, boolean z10) {
        super(physicsRigidBody, physicsRigidBody2, vector3f, vector3f2);
        this.angularUpperLimit = new Vector3f(0.0f, 0.0f, 0.0f);
        this.angularLowerLimit = new Vector3f(0.0f, 0.0f, 0.0f);
        this.linearUpperLimit = new Vector3f(0.0f, 0.0f, 0.0f);
        this.linearLowerLimit = new Vector3f(0.0f, 0.0f, 0.0f);
        this.useLinearReferenceFrameA = z10;
        this.rotA = matrix3f.m1282clone();
        this.rotB = matrix3f2.m1282clone();
        createJoint();
    }

    public SixDofJoint(PhysicsRigidBody physicsRigidBody, PhysicsRigidBody physicsRigidBody2, Vector3f vector3f, Vector3f vector3f2, boolean z10) {
        super(physicsRigidBody, physicsRigidBody2, vector3f, vector3f2);
        this.angularUpperLimit = new Vector3f(0.0f, 0.0f, 0.0f);
        this.angularLowerLimit = new Vector3f(0.0f, 0.0f, 0.0f);
        this.linearUpperLimit = new Vector3f(0.0f, 0.0f, 0.0f);
        this.linearLowerLimit = new Vector3f(0.0f, 0.0f, 0.0f);
        this.useLinearReferenceFrameA = z10;
        this.rotA = new Matrix3f();
        this.rotB = new Matrix3f();
        createJoint();
    }
}
