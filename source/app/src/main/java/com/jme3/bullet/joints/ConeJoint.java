package com.jme3.bullet.joints;

import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Matrix3f;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Logger;

public class ConeJoint extends Constraint {
    static final boolean $assertionsDisabled = false;
    private static final String tagAngularOnly = "angularOnly";
    private static final String tagRotA = "rotA";
    private static final String tagRotB = "rotB";
    private static final String tagSwingSpan1 = "swingSpan1";
    private static final String tagSwingSpan2 = "swingSpan2";
    private static final String tagTwistSpan = "twistSpan";
    private boolean angularOnly;
    private Matrix3f rotA;
    private Matrix3f rotB;
    private float swingSpan1;
    private float swingSpan2;
    private float twistSpan;
    public static final Logger logger2 = Logger.getLogger(ConeJoint.class.getName());
    private static final Vector3f translateIdentity = new Vector3f(0.0f, 0.0f, 0.0f);

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

    public ConeJoint() {
        this.swingSpan1 = 1.0E30f;
        this.swingSpan2 = 1.0E30f;
        this.twistSpan = 1.0E30f;
        this.angularOnly = false;
    }

    private static native long createJoint(long j10, long j11, Vector3f vector3f, Matrix3f matrix3f, Vector3f vector3f2, Matrix3f matrix3f2);

    private void createJoint() {
        long createJoint;
        long nativeId = getBodyA().nativeId();
        PhysicsRigidBody bodyB = getBodyB();
        if (bodyB == null) {
            createJoint = createJoint1(nativeId, this.pivotA, this.rotA);
        } else {
            createJoint = createJoint(nativeId, bodyB.nativeId(), this.pivotA, this.rotA, this.pivotB, this.rotB);
        }
        setNativeId(createJoint);
        setLimit(this.swingSpan1, this.swingSpan2, this.twistSpan);
        setAngularOnly(this.angularOnly);
    }

    private static native long createJoint1(long j10, Vector3f vector3f, Matrix3f matrix3f);

    private static native void getFrameOffsetA(long j10, Transform transform);

    private static native void getFrameOffsetB(long j10, Transform transform);

    private static native void setAngularOnly(long j10, boolean z10);

    private static native void setLimit(long j10, float f10, float f11, float f12);

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        ConeJoint coneJoint = (ConeJoint) obj;
        super.cloneFields(cloner, obj);
        if (hasAssignedNativeObject()) {
            return;
        }
        this.rotA = (Matrix3f) cloner.clone(this.rotA);
        this.rotB = (Matrix3f) cloner.clone(this.rotB);
        createJoint();
        copyConstraintProperties(coneJoint);
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

    public float getSwingSpan1() {
        return this.swingSpan1;
    }

    public float getSwingSpan2() {
        return this.swingSpan2;
    }

    public float getTwistSpan() {
        return this.twistSpan;
    }

    public boolean isAngularOnly() {
        return this.angularOnly;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.rotA = (Matrix3f) capsule.readSavable(tagRotA, new Matrix3f());
        this.rotB = (Matrix3f) capsule.readSavable(tagRotB, new Matrix3f());
        this.angularOnly = capsule.readBoolean(tagAngularOnly, false);
        this.swingSpan1 = capsule.readFloat(tagSwingSpan1, 1.0E30f);
        this.swingSpan2 = capsule.readFloat(tagSwingSpan2, 1.0E30f);
        this.twistSpan = capsule.readFloat(tagTwistSpan, 1.0E30f);
        createJoint();
        readConstraintProperties(capsule);
    }

    public void setAngularOnly(boolean z10) {
        long nativeId = nativeId();
        this.angularOnly = z10;
        setAngularOnly(nativeId, z10);
    }

    public void setLimit(float f10, float f11, float f12) {
        long nativeId = nativeId();
        this.swingSpan1 = f10;
        this.swingSpan2 = f11;
        this.twistSpan = f12;
        setLimit(nativeId, f10, f11, f12);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.rotA, tagRotA, (Savable) null);
        capsule.write(this.rotB, tagRotB, (Savable) null);
        capsule.write(this.angularOnly, tagAngularOnly, false);
        capsule.write(this.swingSpan1, tagSwingSpan1, 1.0E30f);
        capsule.write(this.swingSpan2, tagSwingSpan2, 1.0E30f);
        capsule.write(this.twistSpan, tagTwistSpan, 1.0E30f);
    }

    public ConeJoint(PhysicsRigidBody physicsRigidBody, Vector3f vector3f, Matrix3f matrix3f) {
        super(physicsRigidBody, JointEnd.A, vector3f, translateIdentity);
        this.swingSpan1 = 1.0E30f;
        this.swingSpan2 = 1.0E30f;
        this.twistSpan = 1.0E30f;
        this.angularOnly = false;
        Matrix3f m1282clone = matrix3f.m1282clone();
        this.rotA = m1282clone;
        this.rotB = m1282clone;
        createJoint();
    }

    public ConeJoint(PhysicsRigidBody physicsRigidBody, PhysicsRigidBody physicsRigidBody2, Vector3f vector3f, Vector3f vector3f2) {
        super(physicsRigidBody, physicsRigidBody2, vector3f, vector3f2);
        this.swingSpan1 = 1.0E30f;
        this.swingSpan2 = 1.0E30f;
        this.twistSpan = 1.0E30f;
        this.angularOnly = false;
        this.rotA = new Matrix3f();
        this.rotB = new Matrix3f();
        createJoint();
    }

    public ConeJoint(PhysicsRigidBody physicsRigidBody, PhysicsRigidBody physicsRigidBody2, Vector3f vector3f, Vector3f vector3f2, Matrix3f matrix3f, Matrix3f matrix3f2) {
        super(physicsRigidBody, physicsRigidBody2, vector3f, vector3f2);
        this.swingSpan1 = 1.0E30f;
        this.swingSpan2 = 1.0E30f;
        this.twistSpan = 1.0E30f;
        this.angularOnly = false;
        this.rotA = matrix3f.m1282clone();
        this.rotB = matrix3f2.m1282clone();
        createJoint();
    }
}
