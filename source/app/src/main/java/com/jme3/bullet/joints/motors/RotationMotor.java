package com.jme3.bullet.joints.motors;

import com.jme3.bullet.NativePhysicsObject;
import java.util.logging.Logger;
import p000if.C13702E;

public class RotationMotor extends NativePhysicsObject {
    public static final Logger logger = Logger.getLogger(RotationMotor.class.getName());

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

    public RotationMotor(long j10) {
        C13702E.x(j10, "native ID");
        super.setNativeIdNotTracked(j10);
    }

    private static native float getBounce(long j10);

    private static native float getDamping(long j10);

    private static native float getEquilibrium(long j10);

    private static native float getLowerLimit(long j10);

    private static native float getMaxMotorForce(long j10);

    private static native float getParameter(long j10, int i10);

    private static native float getServoTarget(long j10);

    private static native float getStiffness(long j10);

    private static native float getTargetVelocity(long j10);

    private static native float getUpperLimit(long j10);

    private static native boolean isDampingLimited(long j10);

    private static native boolean isMotorEnabled(long j10);

    private static native boolean isServoEnabled(long j10);

    private static native boolean isSpringEnabled(long j10);

    private static native boolean isStiffnessLimited(long j10);

    private static native void setBounce(long j10, float f10);

    private static native void setDamping(long j10, float f10);

    private static native void setDampingLimited(long j10, boolean z10);

    private static native void setEquilibrium(long j10, float f10);

    private static native void setLowerLimit(long j10, float f10);

    private static native void setMaxMotorForce(long j10, float f10);

    private static native void setMotorEnabled(long j10, boolean z10);

    private static native void setParameter(long j10, int i10, float f10);

    private static native void setServoEnabled(long j10, boolean z10);

    private static native void setServoTarget(long j10, float f10);

    private static native void setSpringEnabled(long j10, boolean z10);

    private static native void setStiffness(long j10, float f10);

    private static native void setStiffnessLimited(long j10, boolean z10);

    private static native void setTargetVelocity(long j10, float f10);

    private static native void setUpperLimit(long j10, float f10);

    public float get(MotorParam motorParam) {
        long nativeId = nativeId();
        switch (AnonymousClass1.$SwitchMap$com$jme3$bullet$joints$motors$MotorParam[motorParam.ordinal()]) {
            case 1:
                return getBounce(nativeId);
            case 2:
                return getDamping(nativeId);
            case 3:
                return getEquilibrium(nativeId);
            case 4:
                return getLowerLimit(nativeId);
            case 5:
                return getMaxMotorForce(nativeId);
            case 6:
                return getServoTarget(nativeId);
            case 7:
                return getStiffness(nativeId);
            case 8:
                return getTargetVelocity(nativeId);
            case 9:
                return getUpperLimit(nativeId);
            default:
                return getParameter(nativeId, motorParam.nativeIndex());
        }
    }

    public boolean isDampingLimited() {
        return isDampingLimited(nativeId());
    }

    public boolean isMotorEnabled() {
        return isMotorEnabled(nativeId());
    }

    public boolean isServoEnabled() {
        return isServoEnabled(nativeId());
    }

    public boolean isSpringEnabled() {
        return isSpringEnabled(nativeId());
    }

    public boolean isStiffnessLimited() {
        return isStiffnessLimited(nativeId());
    }

    public void set(MotorParam motorParam, float f10) {
        long nativeId = nativeId();
        switch (AnonymousClass1.$SwitchMap$com$jme3$bullet$joints$motors$MotorParam[motorParam.ordinal()]) {
            case 1:
                setBounce(nativeId, f10);
                return;
            case 2:
                setDamping(nativeId, f10);
                return;
            case 3:
                setEquilibrium(nativeId, f10);
                return;
            case 4:
                setLowerLimit(nativeId, f10);
                return;
            case 5:
                setMaxMotorForce(nativeId, f10);
                return;
            case 6:
                setServoTarget(nativeId, f10);
                return;
            case 7:
                setStiffness(nativeId, f10);
                return;
            case 8:
                setTargetVelocity(nativeId, f10);
                return;
            case 9:
                setUpperLimit(nativeId, f10);
                return;
            default:
                setParameter(nativeId, motorParam.nativeIndex(), f10);
                return;
        }
    }

    public void setDampingLimited(boolean z10) {
        setDampingLimited(nativeId(), z10);
    }

    public void setMotorEnabled(boolean z10) {
        setMotorEnabled(nativeId(), z10);
    }

    public void setServoEnabled(boolean z10) {
        setServoEnabled(nativeId(), z10);
    }

    public void setSpringEnabled(boolean z10) {
        setSpringEnabled(nativeId(), z10);
    }

    public void setStiffnessLimited(boolean z10) {
        setStiffnessLimited(nativeId(), z10);
    }
}
