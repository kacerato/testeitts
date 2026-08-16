package com.jme3.bullet.joints.motors;

import com.jme3.bullet.NativePhysicsObject;
import com.jme3.math.Vector3f;
import java.util.logging.Logger;
import p000if.C13702E;

public class TranslationalLimitMotor extends NativePhysicsObject {
    public static final Logger logger = Logger.getLogger(TranslationalLimitMotor.class.getName());

    public TranslationalLimitMotor(long j10) {
        C13702E.x(j10, "native ID");
        super.setNativeIdNotTracked(j10);
    }

    private static native void getAccumulatedImpulse(long j10, Vector3f vector3f);

    private static native float getDamping(long j10);

    private static native void getERP(long j10, Vector3f vector3f);

    private static native float getLimitSoftness(long j10);

    private static native void getLowerLimit(long j10, Vector3f vector3f);

    private static native void getMaxMotorForce(long j10, Vector3f vector3f);

    private static native void getNormalCFM(long j10, Vector3f vector3f);

    private static native void getOffset(long j10, Vector3f vector3f);

    private static native float getRestitution(long j10);

    private static native void getStopCFM(long j10, Vector3f vector3f);

    private static native void getTargetVelocity(long j10, Vector3f vector3f);

    private static native void getUpperLimit(long j10, Vector3f vector3f);

    private static native boolean isEnabled(long j10, int i10);

    private static native void setAccumulatedImpulse(long j10, Vector3f vector3f);

    private static native void setDamping(long j10, float f10);

    private static native void setERP(long j10, Vector3f vector3f);

    private static native void setEnabled(long j10, int i10, boolean z10);

    private static native void setLimitSoftness(long j10, float f10);

    private static native void setLowerLimit(long j10, Vector3f vector3f);

    private static native void setMaxMotorForce(long j10, Vector3f vector3f);

    private static native void setNormalCFM(long j10, Vector3f vector3f);

    private static native void setRestitution(long j10, float f10);

    private static native void setStopCFM(long j10, Vector3f vector3f);

    private static native void setTargetVelocity(long j10, Vector3f vector3f);

    private static native void setUpperLimit(long j10, Vector3f vector3f);

    public Vector3f getAccumulatedImpulse(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getAccumulatedImpulse(nativeId(), vector3f);
        return vector3f;
    }

    public float getDamping() {
        return getDamping(nativeId());
    }

    public Vector3f getERP(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getERP(nativeId(), vector3f);
        return vector3f;
    }

    public float getLimitSoftness() {
        return getLimitSoftness(nativeId());
    }

    public Vector3f getLowerLimit(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getLowerLimit(nativeId(), vector3f);
        return vector3f;
    }

    public Vector3f getMaxMotorForce(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getMaxMotorForce(nativeId(), vector3f);
        return vector3f;
    }

    public Vector3f getNormalCFM(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getNormalCFM(nativeId(), vector3f);
        return vector3f;
    }

    public Vector3f getOffset(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getOffset(nativeId(), vector3f);
        return vector3f;
    }

    public float getRestitution() {
        return getRestitution(nativeId());
    }

    public Vector3f getStopCFM(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getStopCFM(nativeId(), vector3f);
        return vector3f;
    }

    public Vector3f getTargetVelocity(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getTargetVelocity(nativeId(), vector3f);
        return vector3f;
    }

    public Vector3f getUpperLimit(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getUpperLimit(nativeId(), vector3f);
        return vector3f;
    }

    public boolean isEnabled(int i10) {
        C13702E.a(i10, "axis index");
        return isEnabled(nativeId(), i10);
    }

    public void setAccumulatedImpulse(Vector3f vector3f) {
        setAccumulatedImpulse(nativeId(), vector3f);
    }

    public void setDamping(float f10) {
        setDamping(nativeId(), f10);
    }

    public void setERP(Vector3f vector3f) {
        setERP(nativeId(), vector3f);
    }

    public void setEnabled(int i10, boolean z10) {
        C13702E.a(i10, "axis index");
        setEnabled(nativeId(), i10, z10);
    }

    public void setLimitSoftness(float f10) {
        setLimitSoftness(nativeId(), f10);
    }

    public void setLowerLimit(Vector3f vector3f) {
        setLowerLimit(nativeId(), vector3f);
    }

    public void setMaxMotorForce(Vector3f vector3f) {
        setMaxMotorForce(nativeId(), vector3f);
    }

    public void setNormalCFM(Vector3f vector3f) {
        setNormalCFM(nativeId(), vector3f);
    }

    public void setRestitution(float f10) {
        setRestitution(nativeId(), f10);
    }

    public void setStopCFM(Vector3f vector3f) {
        setStopCFM(nativeId(), vector3f);
    }

    public void setTargetVelocity(Vector3f vector3f) {
        setTargetVelocity(nativeId(), vector3f);
    }

    public void setUpperLimit(Vector3f vector3f) {
        setUpperLimit(nativeId(), vector3f);
    }
}
