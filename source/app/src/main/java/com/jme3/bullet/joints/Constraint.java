package com.jme3.bullet.joints;

import android.provider.Telephony;
import com.jme3.bullet.objects.PhysicsBody;
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
import p000if.C13702E;

public abstract class Constraint extends PhysicsJoint {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger15 = Logger.getLogger(Constraint.class.getName());
    private static final String tagBreakingImpulse = "breakingImpulseThreshold";
    private static final String tagIsCollision = "isCollisionBetweenLinkedBodies";
    private static final String tagIsEnabled = "isEnabled";
    private static final String tagIsFeedback = "isFeedback";
    private static final String tagNumIterations = "numIterations";
    private static final String tagPivotA = "pivotA";
    private static final String tagPivotB = "pivotB";
    protected Vector3f pivotA;
    protected Vector3f pivotB;

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

    public Constraint() {
    }

    private static native void enableFeedback(long j10, boolean z10);

    private static native void finalizeNative(long j10);

    private static void freeNativeObject(long j10) {
        finalizeNative(j10);
    }

    private static native float getAppliedImpulse(long j10);

    private static native float getBreakingImpulseThreshold(long j10);

    public static final native int getConstraintType(long j10);

    private static native int getOverrideIterations(long j10);

    private static native boolean isEnabled(long j10);

    private static native boolean needsFeedback(long j10);

    private static native void overrideIterations(long j10, int i10);

    private static native void setBreakingImpulseThreshold(long j10, float f10);

    private static native void setEnabled(long j10, boolean z10);

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        if (hasAssignedNativeObject()) {
            return;
        }
        this.pivotA = (Vector3f) cloner.clone(this.pivotA);
        this.pivotB = (Vector3f) cloner.clone(this.pivotB);
    }

    public final void copyConstraintProperties(Constraint constraint) {
        setBreakingImpulseThreshold(constraint.getBreakingImpulseThreshold());
        setEnabled(constraint.isEnabled());
        setFeedback(constraint.isFeedback());
        overrideIterations(constraint.getOverrideIterations());
    }

    public float getAppliedImpulse() {
        if (isFeedback()) {
            return getAppliedImpulse(nativeId());
        }
        throw new IllegalStateException("Feedback is not enabled.");
    }

    public float getBreakingImpulseThreshold() {
        return getBreakingImpulseThreshold(nativeId());
    }

    public int getOverrideIterations() {
        return getOverrideIterations(nativeId());
    }

    public Vector3f getPivot(JointEnd jointEnd, Vector3f vector3f) {
        C13702E.t(jointEnd, "end");
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$bullet$joints$JointEnd[jointEnd.ordinal()];
        if (i10 == 1) {
            return getPivotA(vector3f);
        }
        if (i10 == 2) {
            return getPivotB(vector3f);
        }
        throw new IllegalArgumentException("end = " + ((Object) jointEnd));
    }

    public Vector3f getPivotA(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        if (getBodyA() == null) {
            throw new IllegalArgumentException("No body at the A end.");
        }
        vector3f.set(this.pivotA);
        return vector3f;
    }

    public Vector3f getPivotB(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        if (getBodyB() == null) {
            throw new IllegalArgumentException("No body at the B end.");
        }
        vector3f.set(this.pivotB);
        return vector3f;
    }

    public boolean isCollisionBetweenLinkedBodies() {
        if (countEnds() == 2) {
            return true ^ getBodyA().ignores(getBodyB());
        }
        return true;
    }

    @Override
    public boolean isEnabled() {
        return isEnabled(nativeId());
    }

    public boolean isFeedback() {
        return needsFeedback(nativeId());
    }

    public void overrideIterations(int i10) {
        C13702E.i(i10, "number of iterations", -1, Integer.MAX_VALUE);
        overrideIterations(nativeId(), i10);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.pivotA = (Vector3f) capsule.readSavable(tagPivotA, null);
        this.pivotB = (Vector3f) capsule.readSavable(tagPivotB, null);
    }

    public final void readConstraintProperties(InputCapsule inputCapsule) throws IOException {
        setBreakingImpulseThreshold(inputCapsule.readFloat(tagBreakingImpulse, Float.MAX_VALUE));
        if (countEnds() == 2) {
            setCollisionBetweenLinkedBodies(inputCapsule.readBoolean(tagIsCollision, true));
        }
        setEnabled(inputCapsule.readBoolean(tagIsEnabled, true));
        setFeedback(inputCapsule.readBoolean(tagIsFeedback, false));
        overrideIterations(inputCapsule.readInt(tagNumIterations, -1));
    }

    public void setBreakingImpulseThreshold(float f10) {
        setBreakingImpulseThreshold(nativeId(), f10);
    }

    public void setCollisionBetweenLinkedBodies(boolean z10) {
        if (countEnds() < 2) {
            throw new IllegalArgumentException("Can't configure collisions between linked bodies for a single-ended constraint!");
        }
        PhysicsRigidBody bodyA = getBodyA();
        PhysicsRigidBody bodyB = getBodyB();
        if (z10) {
            bodyA.removeFromIgnoreList(bodyB);
        } else {
            bodyA.addToIgnoreList(bodyB);
        }
    }

    public void setEnabled(boolean z10) {
        setEnabled(nativeId(), z10);
    }

    public void setFeedback(boolean z10) {
        enableFeedback(nativeId(), z10);
    }

    public void setPivotInA(Vector3f vector3f) {
        C13702E.t(vector3f, "location");
        this.pivotA.set(vector3f);
    }

    public void setPivotInB(Vector3f vector3f) {
        C13702E.t(vector3f, "location");
        this.pivotB.set(vector3f);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.pivotA, tagPivotA, (Savable) null);
        capsule.write(this.pivotB, tagPivotB, (Savable) null);
        capsule.write(getBreakingImpulseThreshold(), tagBreakingImpulse, Float.MAX_VALUE);
        capsule.write(isCollisionBetweenLinkedBodies(), tagIsCollision, true);
        capsule.write(isEnabled(), tagIsEnabled, true);
        capsule.write(isFeedback(), tagIsFeedback, false);
        capsule.write(getOverrideIterations(), tagNumIterations, -1);
    }

    public Constraint(PhysicsRigidBody physicsRigidBody, JointEnd jointEnd, Vector3f vector3f) {
        C13702E.t(physicsRigidBody, Telephony.TextBasedSmsColumns.BODY);
        C13702E.t(jointEnd, "body end");
        C13702E.t(vector3f, "pivot in body");
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$bullet$joints$JointEnd[jointEnd.ordinal()];
        if (i10 == 1) {
            setBodyA(physicsRigidBody);
            this.pivotA = vector3f.m1292clone();
            this.pivotB = null;
        } else if (i10 == 2) {
            setBodyB(physicsRigidBody);
            this.pivotA = null;
            this.pivotB = vector3f.m1292clone();
        } else {
            throw new IllegalArgumentException("body end = " + ((Object) jointEnd));
        }
        physicsRigidBody.addJoint(this);
    }

    @Override
    public PhysicsRigidBody getBodyA() {
        PhysicsBody bodyA = super.getBodyA();
        if (bodyA instanceof PhysicsRigidBody) {
            return (PhysicsRigidBody) bodyA;
        }
        return null;
    }

    @Override
    public PhysicsRigidBody getBodyB() {
        PhysicsBody bodyB = super.getBodyB();
        if (bodyB instanceof PhysicsRigidBody) {
            return (PhysicsRigidBody) bodyB;
        }
        return null;
    }

    public Constraint(PhysicsRigidBody physicsRigidBody, JointEnd jointEnd, Vector3f vector3f, Vector3f vector3f2) {
        C13702E.t(physicsRigidBody, Telephony.TextBasedSmsColumns.BODY);
        C13702E.t(jointEnd, "body end");
        C13702E.d(vector3f, "pivot in body");
        C13702E.d(vector3f2, "pivot in world");
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$bullet$joints$JointEnd[jointEnd.ordinal()];
        if (i10 == 1) {
            setBodyA(physicsRigidBody);
            this.pivotA = vector3f.m1292clone();
            this.pivotB = vector3f2.m1292clone();
        } else if (i10 == 2) {
            setBodyB(physicsRigidBody);
            this.pivotA = vector3f2.m1292clone();
            this.pivotB = vector3f.m1292clone();
        } else {
            throw new IllegalArgumentException("body end = " + ((Object) jointEnd));
        }
        physicsRigidBody.addJoint(this);
    }

    public Constraint(PhysicsBody physicsBody, PhysicsBody physicsBody2, Vector3f vector3f, Vector3f vector3f2) {
        C13702E.t(physicsBody, "body A");
        C13702E.t(physicsBody2, "body B");
        if (physicsBody != physicsBody2) {
            setBodyA(physicsBody);
            setBodyB(physicsBody2);
            this.pivotA = vector3f.m1292clone();
            this.pivotB = vector3f2.m1292clone();
            physicsBody.addJoint(this);
            physicsBody2.addJoint(this);
            return;
        }
        throw new IllegalArgumentException("The jointed bodies must be distinct.");
    }
}
