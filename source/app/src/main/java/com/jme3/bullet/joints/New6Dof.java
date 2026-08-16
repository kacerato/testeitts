package com.jme3.bullet.joints;

import com.jme3.bullet.RotationOrder;
import com.jme3.bullet.joints.motors.MotorParam;
import com.jme3.bullet.joints.motors.RotationMotor;
import com.jme3.bullet.joints.motors.TranslationMotor;
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
import java.util.logging.Level;
import java.util.logging.Logger;
import jf.f;
import p000if.C13702E;
import u8.C15580b;

public class New6Dof extends Constraint {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(New6Dof.class.getName());
    private static final String tagDampingLimited = "_DampingLimited";
    private static final String tagMotorEnabled = "_MotorEnabled";
    private static final String tagRotA = "rotA";
    private static final String tagRotB = "rotB";
    private static final String tagRotMotor = "rm";
    private static final String tagRotOrder = "rotOrder";
    private static final String tagServoEnabled = "_ServoEnabled";
    private static final String tagSpringEnabled = "_SpringEnabled";
    private static final String tagStiffnessLimited = "_StiffnessLimited";
    private static final String tagTransMotor = "tm";
    private Matrix3f rotA;
    private Matrix3f rotB;
    private RotationMotor[] rotationMotor;
    private RotationOrder rotationOrder;
    private TranslationMotor translationMotor;

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

    public New6Dof() {
    }

    private void createConstraint() {
        long createDoubleEnded;
        PhysicsRigidBody bodyA = getBodyA();
        PhysicsRigidBody bodyB = getBodyB();
        long nativeId = bodyB.nativeId();
        int ordinal = this.rotationOrder.ordinal();
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
            createDoubleEnded = createSingleEnded(nativeId, this.pivotB, this.rotB, ordinal);
            bodyB.setPhysicsLocation(physicsLocation);
            bodyB.setPhysicsRotation(physicsRotation);
        } else {
            long nativeId2 = bodyA.nativeId();
            createDoubleEnded = createDoubleEnded(nativeId2, nativeId, this.pivotA, this.rotA, this.pivotB, this.rotB, ordinal);
            Logger logger = logger2;
            Level level = Level.INFO;
            if (logger.isLoggable(level)) {
                logger.log(level, "Created {0} with A={1} B={2}", new Object[]{Long.toHexString(createDoubleEnded), Long.toHexString(nativeId2), Long.toHexString(nativeId)});
            }
        }
        setNativeId(createDoubleEnded);
        gatherMotors();
    }

    private static native long createDoubleEnded(long j10, long j11, Vector3f vector3f, Matrix3f matrix3f, Vector3f vector3f2, Matrix3f matrix3f2, int i10);

    private static native long createSingleEnded(long j10, Vector3f vector3f, Matrix3f matrix3f, int i10);

    private static native void enableSpring(long j10, int i10, boolean z10);

    private void gatherMotors() {
        long nativeId = nativeId();
        this.rotationMotor = new RotationMotor[3];
        for (int i10 = 0; i10 < 3; i10++) {
            this.rotationMotor[i10] = new RotationMotor(getRotationalMotor(nativeId, i10));
        }
        this.translationMotor = new TranslationMotor(getTranslationalMotor(nativeId));
    }

    private static native void getAngles(long j10, Vector3f vector3f);

    private static native void getAxis(long j10, int i10, Vector3f vector3f);

    private static native void getCalculatedBasisA(long j10, Matrix3f matrix3f);

    private static native void getCalculatedBasisB(long j10, Matrix3f matrix3f);

    private static native void getCalculatedOriginA(long j10, Vector3f vector3f);

    private static native void getCalculatedOriginB(long j10, Vector3f vector3f);

    private static native void getFrameOffsetA(long j10, Transform transform);

    private static native void getFrameOffsetB(long j10, Transform transform);

    private static native void getPivotOffset(long j10, Vector3f vector3f);

    private static native int getRotationOrder(long j10);

    private static native long getRotationalMotor(long j10, int i10);

    private static native long getTranslationalMotor(long j10);

    public static New6Dof newInstance(PhysicsRigidBody physicsRigidBody, PhysicsRigidBody physicsRigidBody2, Vector3f vector3f, Quaternion quaternion, RotationOrder rotationOrder) {
        C13702E.t(physicsRigidBody, "a");
        C13702E.t(physicsRigidBody2, C15580b.f118629u);
        C13702E.d(vector3f, "pivot location");
        C13702E.y(quaternion, "pivot orientation");
        C13702E.t(rotationOrder, "rotation order");
        Transform transform = new Transform();
        physicsRigidBody.getTransform(transform);
        transform.setScale(1.0f);
        Transform invert = transform.invert();
        Transform transform2 = new Transform(vector3f, quaternion);
        f.i(transform2, invert, transform2);
        Vector3f translation = transform2.getTranslation();
        Matrix3f rotationMatrix = transform2.getRotation().toRotationMatrix();
        physicsRigidBody2.getTransform(invert);
        invert.setScale(1.0f);
        Transform invert2 = invert.invert();
        Transform transform3 = new Transform(vector3f, quaternion);
        f.i(transform3, invert2, transform3);
        return new New6Dof(physicsRigidBody, physicsRigidBody2, translation, transform3.getTranslation(), rotationMatrix, transform3.getRotation().toRotationMatrix(), rotationOrder);
    }

    private static native void setAllEquilibriumPointsToCurrent(long j10);

    private static native void setDamping(long j10, int i10, float f10, boolean z10);

    private static native void setEquilibriumPoint(long j10, int i10, float f10);

    private static native void setEquilibriumPointToCurrent(long j10, int i10);

    private static native void setRotationOrder(long j10, int i10);

    private static native void setStiffness(long j10, int i10, float f10, boolean z10);

    public Matrix3f calculatedBasisA(Matrix3f matrix3f) {
        if (matrix3f == null) {
            matrix3f = new Matrix3f();
        }
        getCalculatedBasisA(nativeId(), matrix3f);
        return matrix3f;
    }

    public Matrix3f calculatedBasisB(Matrix3f matrix3f) {
        if (matrix3f == null) {
            matrix3f = new Matrix3f();
        }
        getCalculatedBasisB(nativeId(), matrix3f);
        return matrix3f;
    }

    public Vector3f calculatedOriginA(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getCalculatedOriginA(nativeId(), vector3f);
        return vector3f;
    }

    public Vector3f calculatedOriginB(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getCalculatedOriginB(nativeId(), vector3f);
        return vector3f;
    }

    public boolean checkRotationOrder() {
        return getRotationOrder(nativeId()) == this.rotationOrder.ordinal();
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        New6Dof new6Dof = (New6Dof) obj;
        super.cloneFields(cloner, obj);
        if (hasAssignedNativeObject()) {
            return;
        }
        this.rotA = (Matrix3f) cloner.clone(this.rotA);
        this.rotB = (Matrix3f) cloner.clone(this.rotB);
        this.rotationMotor = null;
        this.translationMotor = null;
        createConstraint();
        copyConstraintProperties(new6Dof);
        for (int i10 = 0; i10 < 3; i10++) {
            RotationMotor rotationMotor = getRotationMotor(i10);
            RotationMotor rotationMotor2 = new6Dof.getRotationMotor(i10);
            rotationMotor.setDampingLimited(rotationMotor2.isDampingLimited());
            rotationMotor.setMotorEnabled(rotationMotor2.isMotorEnabled());
            rotationMotor.setServoEnabled(rotationMotor2.isServoEnabled());
            rotationMotor.setSpringEnabled(rotationMotor2.isSpringEnabled());
            rotationMotor.setStiffnessLimited(rotationMotor2.isStiffnessLimited());
            for (MotorParam motorParam : MotorParam.values()) {
                rotationMotor.set(motorParam, rotationMotor2.get(motorParam));
            }
        }
        TranslationMotor translationMotor = getTranslationMotor();
        TranslationMotor translationMotor2 = new6Dof.getTranslationMotor();
        for (int i11 = 0; i11 < 3; i11++) {
            translationMotor.setDampingLimited(i11, translationMotor2.isDampingLimited(i11));
            translationMotor.setMotorEnabled(i11, translationMotor2.isMotorEnabled(i11));
            translationMotor.setServoEnabled(i11, translationMotor2.isServoEnabled(i11));
            translationMotor.setSpringEnabled(i11, translationMotor2.isSpringEnabled(i11));
            translationMotor.setStiffnessLimited(i11, translationMotor2.isStiffnessLimited(i11));
        }
        for (MotorParam motorParam2 : MotorParam.values()) {
            translationMotor.set(motorParam2, translationMotor2.get(motorParam2, null));
        }
    }

    public void enableSpring(int i10, boolean z10) {
        C13702E.i(i10, "DOF index", 0, 5);
        enableSpring(nativeId(), i10, z10);
    }

    public float get(MotorParam motorParam, int i10) {
        C13702E.i(i10, "DOF index", 0, 5);
        return i10 >= 3 ? getRotationMotor(i10 - 3).get(motorParam) : getTranslationMotor().get(motorParam, null).get(i10);
    }

    public Vector3f getAngles(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getAngles(nativeId(), vector3f);
        return vector3f;
    }

    public Vector3f getAxis(int i10, Vector3f vector3f) {
        C13702E.a(i10, "axis index");
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getAxis(nativeId(), i10, vector3f);
        return vector3f;
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

    public Vector3f getPivotOffset(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getPivotOffset(nativeId(), vector3f);
        return vector3f;
    }

    public Matrix3f getRotationMatrix(JointEnd jointEnd, Matrix3f matrix3f) {
        C13702E.t(jointEnd, "end");
        if (matrix3f == null) {
            matrix3f = new Matrix3f();
        }
        if (jointEnd == JointEnd.A) {
            matrix3f.set(this.rotA);
        } else {
            matrix3f.set(this.rotB);
        }
        return matrix3f;
    }

    public RotationMotor getRotationMotor(int i10) {
        C13702E.a(i10, "axis index");
        return this.rotationMotor[i10];
    }

    public RotationOrder getRotationOrder() {
        checkRotationOrder();
        return this.rotationOrder;
    }

    public TranslationMotor getTranslationMotor() {
        return this.translationMotor;
    }

    public boolean isMotorEnabled(int i10) {
        C13702E.i(i10, "DOF index", 0, 5);
        return i10 >= 3 ? getRotationMotor(i10 - 3).isMotorEnabled() : getTranslationMotor().isMotorEnabled(i10);
    }

    public boolean isServoEnabled(int i10) {
        C13702E.i(i10, "DOF index", 0, 5);
        return i10 >= 3 ? getRotationMotor(i10 - 3).isServoEnabled() : getTranslationMotor().isServoEnabled(i10);
    }

    public boolean isSpringEnabled(int i10) {
        C13702E.i(i10, "DOF index", 0, 5);
        return i10 >= 3 ? getRotationMotor(i10 - 3).isSpringEnabled() : getTranslationMotor().isSpringEnabled(i10);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.rotA = (Matrix3f) capsule.readSavable(tagRotA, null);
        this.rotB = (Matrix3f) capsule.readSavable(tagRotB, null);
        this.rotationOrder = (RotationOrder) capsule.readEnum(tagRotOrder, RotationOrder.class, RotationOrder.XYZ);
        createConstraint();
        readConstraintProperties(capsule);
        for (int i10 = 0; i10 < 3; i10++) {
            RotationMotor rotationMotor = getRotationMotor(i10);
            String str = tagRotMotor + i10;
            rotationMotor.setDampingLimited(capsule.readBoolean(str + tagDampingLimited, false));
            rotationMotor.setMotorEnabled(capsule.readBoolean(str + tagMotorEnabled, false));
            rotationMotor.setServoEnabled(capsule.readBoolean(str + tagServoEnabled, false));
            rotationMotor.setSpringEnabled(capsule.readBoolean(str + tagSpringEnabled, false));
            rotationMotor.setStiffnessLimited(capsule.readBoolean(str + tagStiffnessLimited, false));
            MotorParam[] values = MotorParam.values();
            int length = values.length;
            for (int i11 = 0; i11 < length; i11++) {
                MotorParam motorParam = values[i11];
                rotationMotor.set(motorParam, capsule.readFloat(str + motorParam.tagSuffix(), motorParam.defaultForRotationMotor()));
            }
        }
        TranslationMotor translationMotor = this.translationMotor;
        for (int i12 = 0; i12 < 3; i12++) {
            translationMotor.setDampingLimited(i12, capsule.readBoolean(tagTransMotor + tagDampingLimited + i12, false));
            translationMotor.setMotorEnabled(i12, capsule.readBoolean(tagTransMotor + tagMotorEnabled + i12, false));
            translationMotor.setServoEnabled(i12, capsule.readBoolean(tagTransMotor + tagServoEnabled + i12, false));
            translationMotor.setSpringEnabled(i12, capsule.readBoolean(tagTransMotor + tagSpringEnabled + i12, false));
            translationMotor.setStiffnessLimited(i12, capsule.readBoolean(tagTransMotor + tagStiffnessLimited + i12, false));
        }
        for (MotorParam motorParam2 : MotorParam.values()) {
            String str2 = tagTransMotor + motorParam2.tagSuffix();
            float defaultForRotationMotor = motorParam2.defaultForRotationMotor();
            translationMotor.set(motorParam2, (Vector3f) capsule.readSavable(str2, new Vector3f(defaultForRotationMotor, defaultForRotationMotor, defaultForRotationMotor)));
        }
    }

    public void set(MotorParam motorParam, int i10, float f10) {
        C13702E.i(i10, "DOF index", 0, 5);
        if (i10 >= 3) {
            getRotationMotor(i10 - 3).set(motorParam, f10);
            return;
        }
        TranslationMotor translationMotor = getTranslationMotor();
        Vector3f vector3f = translationMotor.get(motorParam, null);
        vector3f.set(i10, f10);
        translationMotor.set(motorParam, vector3f);
    }

    public void setDamping(int i10, float f10, boolean z10) {
        C13702E.i(i10, "DOF index", 0, 5);
        setDamping(nativeId(), i10, f10, z10);
    }

    public void setEquilibriumPoint() {
        setAllEquilibriumPointsToCurrent(nativeId());
    }

    public void setRotationOrder(RotationOrder rotationOrder) {
        setRotationOrder(nativeId(), rotationOrder.ordinal());
    }

    public void setStiffness(int i10, float f10, boolean z10) {
        C13702E.i(i10, "DOF index", 0, 5);
        setStiffness(nativeId(), i10, f10, z10);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.rotA, tagRotA, (Savable) null);
        capsule.write(this.rotB, tagRotB, (Savable) null);
        capsule.write(this.rotationOrder, tagRotOrder, RotationOrder.XYZ);
        for (int i10 = 0; i10 < 3; i10++) {
            RotationMotor rotationMotor = this.rotationMotor[i10];
            String str = tagRotMotor + i10;
            capsule.write(rotationMotor.isDampingLimited(), str + tagDampingLimited, false);
            capsule.write(rotationMotor.isMotorEnabled(), str + tagMotorEnabled, false);
            capsule.write(rotationMotor.isServoEnabled(), str + tagServoEnabled, false);
            capsule.write(rotationMotor.isSpringEnabled(), str + tagSpringEnabled, false);
            capsule.write(rotationMotor.isStiffnessLimited(), str + tagStiffnessLimited, false);
            MotorParam[] values = MotorParam.values();
            int length = values.length;
            for (int i11 = 0; i11 < length; i11++) {
                MotorParam motorParam = values[i11];
                capsule.write(rotationMotor.get(motorParam), str + motorParam.tagSuffix(), motorParam.defaultForRotationMotor());
            }
        }
        TranslationMotor translationMotor = this.translationMotor;
        for (int i12 = 0; i12 < 3; i12++) {
            capsule.write(translationMotor.isDampingLimited(i12), tagTransMotor + tagDampingLimited + i12, false);
            capsule.write(translationMotor.isMotorEnabled(i12), tagTransMotor + tagMotorEnabled + i12, false);
            capsule.write(translationMotor.isServoEnabled(i12), tagTransMotor + tagServoEnabled + i12, false);
            capsule.write(translationMotor.isSpringEnabled(i12), tagTransMotor + tagSpringEnabled + i12, false);
            capsule.write(translationMotor.isStiffnessLimited(i12), tagTransMotor + tagStiffnessLimited + i12, false);
        }
        for (MotorParam motorParam2 : MotorParam.values()) {
            capsule.write(translationMotor.get(motorParam2, null), tagTransMotor + motorParam2.tagSuffix(), (Savable) null);
        }
    }

    public New6Dof(PhysicsRigidBody physicsRigidBody, Vector3f vector3f, Vector3f vector3f2, Matrix3f matrix3f, Matrix3f matrix3f2, RotationOrder rotationOrder) {
        super(physicsRigidBody, JointEnd.B, vector3f, vector3f2);
        this.rotA = matrix3f2.m1282clone();
        this.rotB = matrix3f.m1282clone();
        this.rotationOrder = rotationOrder;
        createConstraint();
    }

    public void setEquilibriumPoint(int i10) {
        C13702E.i(i10, "DOF index", 0, 5);
        setEquilibriumPointToCurrent(nativeId(), i10);
    }

    public void setEquilibriumPoint(int i10, float f10) {
        C13702E.i(i10, "DOF index", 0, 5);
        setEquilibriumPoint(nativeId(), i10, f10);
    }

    public New6Dof(PhysicsRigidBody physicsRigidBody, PhysicsRigidBody physicsRigidBody2, Vector3f vector3f, Vector3f vector3f2, Matrix3f matrix3f, Matrix3f matrix3f2, RotationOrder rotationOrder) {
        super(physicsRigidBody, physicsRigidBody2, vector3f, vector3f2);
        this.rotA = matrix3f.m1282clone();
        this.rotB = matrix3f2.m1282clone();
        this.rotationOrder = rotationOrder;
        createConstraint();
    }
}
