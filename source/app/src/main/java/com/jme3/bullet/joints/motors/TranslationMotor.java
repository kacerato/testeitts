package com.jme3.bullet.joints.motors;

import com.jme3.bullet.NativePhysicsObject;
import com.jme3.math.Vector3f;
import java.util.logging.Logger;
import p000if.C13702E;

public class TranslationMotor extends NativePhysicsObject {
    public static final Logger logger = Logger.getLogger(TranslationMotor.class.getName());

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$bullet$joints$motors$MotorParam;

        static {
            int[] iArr = new int[MotorParam.values().length];
            $SwitchMap$com$jme3$bullet$joints$motors$MotorParam = iArr;
            try {
                iArr[MotorParam.Bounce.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$bullet$joints$motors$MotorParam[MotorParam.Damping.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$bullet$joints$motors$MotorParam[MotorParam.Equilibrium.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$jme3$bullet$joints$motors$MotorParam[MotorParam.LowerLimit.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$jme3$bullet$joints$motors$MotorParam[MotorParam.MaxMotorForce.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$jme3$bullet$joints$motors$MotorParam[MotorParam.ServoTarget.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$jme3$bullet$joints$motors$MotorParam[MotorParam.Stiffness.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$jme3$bullet$joints$motors$MotorParam[MotorParam.TargetVelocity.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$jme3$bullet$joints$motors$MotorParam[MotorParam.UpperLimit.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public TranslationMotor(long j10) {
        C13702E.x(j10, "native ID");
        super.setNativeIdNotTracked(j10);
    }

    private static native void getBounce(long j10, Vector3f vector3f);

    private static native void getDamping(long j10, Vector3f vector3f);

    private static native void getEquilibrium(long j10, Vector3f vector3f);

    private static native void getLowerLimit(long j10, Vector3f vector3f);

    private static native void getMaxMotorForce(long j10, Vector3f vector3f);

    private static native void getParameter(long j10, int i10, Vector3f vector3f);

    private static native void getServoTarget(long j10, Vector3f vector3f);

    private static native void getStiffness(long j10, Vector3f vector3f);

    private static native void getTargetVelocity(long j10, Vector3f vector3f);

    private static native void getUpperLimit(long j10, Vector3f vector3f);

    private static native boolean isDampingLimited(long j10, int i10);

    private static native boolean isMotorEnabled(long j10, int i10);

    private static native boolean isServoEnabled(long j10, int i10);

    private static native boolean isSpringEnabled(long j10, int i10);

    private static native boolean isStiffnessLimited(long j10, int i10);

    private static native void setBounce(long j10, Vector3f vector3f);

    private static native void setDamping(long j10, Vector3f vector3f);

    private static native void setDampingLimited(long j10, int i10, boolean z10);

    private static native void setEquilibrium(long j10, Vector3f vector3f);

    private static native void setLowerLimit(long j10, Vector3f vector3f);

    private static native void setMaxMotorForce(long j10, Vector3f vector3f);

    private static native void setMotorEnabled(long j10, int i10, boolean z10);

    private static native void setParameter(long j10, int i10, Vector3f vector3f);

    private static native void setServoEnabled(long j10, int i10, boolean z10);

    private static native void setServoTarget(long j10, Vector3f vector3f);

    private static native void setSpringEnabled(long j10, int i10, boolean z10);

    private static native void setStiffness(long j10, Vector3f vector3f);

    private static native void setStiffnessLimited(long j10, int i10, boolean z10);

    private static native void setTargetVelocity(long j10, Vector3f vector3f);

    private static native void setUpperLimit(long j10, Vector3f vector3f);

    public Vector3f get(MotorParam motorParam, Vector3f vector3f) {
        long nativeId = nativeId();
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        switch (AnonymousClass1.$SwitchMap$com$jme3$bullet$joints$motors$MotorParam[motorParam.ordinal()]) {
            case 1:
                getBounce(nativeId, vector3f);
                return vector3f;
            case 2:
                getDamping(nativeId, vector3f);
                return vector3f;
            case 3:
                getEquilibrium(nativeId, vector3f);
                return vector3f;
            case 4:
                getLowerLimit(nativeId, vector3f);
                return vector3f;
            case 5:
                getMaxMotorForce(nativeId, vector3f);
                return vector3f;
            case 6:
                getServoTarget(nativeId, vector3f);
                return vector3f;
            case 7:
                getStiffness(nativeId, vector3f);
                return vector3f;
            case 8:
                getTargetVelocity(nativeId, vector3f);
                return vector3f;
            case 9:
                getUpperLimit(nativeId, vector3f);
                return vector3f;
            default:
                getParameter(nativeId, motorParam.nativeIndex(), vector3f);
                return vector3f;
        }
    }

    public boolean isDampingLimited(int i10) {
        C13702E.a(i10, "axis index");
        return isDampingLimited(nativeId(), i10);
    }

    public boolean isMotorEnabled(int i10) {
        C13702E.a(i10, "axis index");
        return isMotorEnabled(nativeId(), i10);
    }

    public boolean isServoEnabled(int i10) {
        C13702E.a(i10, "axis index");
        return isServoEnabled(nativeId(), i10);
    }

    public boolean isSpringEnabled(int i10) {
        C13702E.a(i10, "axis index");
        return isSpringEnabled(nativeId(), i10);
    }

    public boolean isStiffnessLimited(int i10) {
        C13702E.a(i10, "axis index");
        return isStiffnessLimited(nativeId(), i10);
    }

    public void set(MotorParam motorParam, Vector3f vector3f) {
        C13702E.t(vector3f, "value");
        long nativeId = nativeId();
        switch (AnonymousClass1.$SwitchMap$com$jme3$bullet$joints$motors$MotorParam[motorParam.ordinal()]) {
            case 1:
                setBounce(nativeId, vector3f);
                return;
            case 2:
                setDamping(nativeId, vector3f);
                return;
            case 3:
                setEquilibrium(nativeId, vector3f);
                return;
            case 4:
                setLowerLimit(nativeId, vector3f);
                return;
            case 5:
                setMaxMotorForce(nativeId, vector3f);
                return;
            case 6:
                setServoTarget(nativeId, vector3f);
                return;
            case 7:
                setStiffness(nativeId, vector3f);
                return;
            case 8:
                setTargetVelocity(nativeId, vector3f);
                return;
            case 9:
                setUpperLimit(nativeId, vector3f);
                return;
            default:
                setParameter(nativeId, motorParam.nativeIndex(), vector3f);
                return;
        }
    }

    public void setDampingLimited(int i10, boolean z10) {
        C13702E.a(i10, "axis index");
        setDampingLimited(nativeId(), i10, z10);
    }

    public void setMotorEnabled(int i10, boolean z10) {
        C13702E.a(i10, "axis index");
        setMotorEnabled(nativeId(), i10, z10);
    }

    public void setServoEnabled(int i10, boolean z10) {
        C13702E.a(i10, "axis index");
        setServoEnabled(nativeId(), i10, z10);
    }

    public void setSpringEnabled(int i10, boolean z10) {
        C13702E.a(i10, "axis index");
        setSpringEnabled(nativeId(), i10, z10);
    }

    public void setStiffnessLimited(int i10, boolean z10) {
        C13702E.a(i10, "axis index");
        setStiffnessLimited(nativeId(), i10, z10);
    }
}
