package com.jme3.bullet.joints.motors;

import com.jme3.bullet.NativePhysicsObject;
import java.util.logging.Logger;
import p000if.C13702E;

public class RotationalLimitMotor extends NativePhysicsObject {
    public static final Logger logger = Logger.getLogger(RotationalLimitMotor.class.getName());

    public RotationalLimitMotor(long j10) {
        C13702E.x(j10, "native ID");
        super.setNativeIdNotTracked(j10);
    }

    private static native float getAccumulatedImpulse(long j10);

    private static native float getBounce(long j10);

    private static native float getCurrentPosition(long j10);

    private static native float getDamping(long j10);

    private static native float getERP(long j10);

    private static native float getHiLimit(long j10);

    private static native float getLimitSoftness(long j10);

    private static native float getLoLimit(long j10);

    private static native float getMaxLimitForce(long j10);

    private static native float getMaxMotorForce(long j10);

    private static native float getNormalCFM(long j10);

    private static native float getStopCFM(long j10);

    private static native float getTargetVelocity(long j10);

    private static native boolean isEnableMotor(long j10);

    private static native void setAccumulatedImpulse(long j10, float f10);

    private static native void setBounce(long j10, float f10);

    private static native void setDamping(long j10, float f10);

    private static native void setERP(long j10, float f10);

    private static native void setEnableMotor(long j10, boolean z10);

    private static native void setHiLimit(long j10, float f10);

    private static native void setLimitSoftness(long j10, float f10);

    private static native void setLoLimit(long j10, float f10);

    private static native void setMaxLimitForce(long j10, float f10);

    private static native void setMaxMotorForce(long j10, float f10);

    private static native void setNormalCFM(long j10, float f10);

    private static native void setStopCFM(long j10, float f10);

    private static native void setTargetVelocity(long j10, float f10);

    public float getAccumulatedImpulse() {
        return getAccumulatedImpulse(nativeId());
    }

    public float getAngle() {
        return getCurrentPosition(nativeId());
    }

    public float getDamping() {
        return getDamping(nativeId());
    }

    public float getERP() {
        return getERP(nativeId());
    }

    public float getLimitSoftness() {
        return getLimitSoftness(nativeId());
    }

    public float getLowerLimit() {
        return getLoLimit(nativeId());
    }

    public float getMaxLimitForce() {
        return getMaxLimitForce(nativeId());
    }

    public float getMaxMotorForce() {
        return getMaxMotorForce(nativeId());
    }

    public float getNormalCFM() {
        return getNormalCFM(nativeId());
    }

    public float getRestitution() {
        return getBounce(nativeId());
    }

    public float getStopCFM() {
        return getStopCFM(nativeId());
    }

    public float getTargetVelocity() {
        return getTargetVelocity(nativeId());
    }

    public float getUpperLimit() {
        return getHiLimit(nativeId());
    }

    public boolean isEnableMotor() {
        return isEnableMotor(nativeId());
    }

    public void setAccumulatedImpulse(float f10) {
        setAccumulatedImpulse(nativeId(), f10);
    }

    public void setDamping(float f10) {
        setDamping(nativeId(), f10);
    }

    public void setERP(float f10) {
        setERP(nativeId(), f10);
    }

    public void setEnableMotor(boolean z10) {
        setEnableMotor(nativeId(), z10);
    }

    public void setLimitSoftness(float f10) {
        setLimitSoftness(nativeId(), f10);
    }

    public void setLowerLimit(float f10) {
        setLoLimit(nativeId(), f10);
    }

    public void setMaxLimitForce(float f10) {
        setMaxLimitForce(nativeId(), f10);
    }

    public void setMaxMotorForce(float f10) {
        setMaxMotorForce(nativeId(), f10);
    }

    public void setNormalCFM(float f10) {
        setNormalCFM(nativeId(), f10);
    }

    public void setRestitution(float f10) {
        setBounce(nativeId(), f10);
    }

    public void setStopCFM(float f10) {
        setStopCFM(nativeId(), f10);
    }

    public void setTargetVelocity(float f10) {
        setTargetVelocity(nativeId(), f10);
    }

    public void setUpperLimit(float f10) {
        setHiLimit(nativeId(), f10);
    }
}
