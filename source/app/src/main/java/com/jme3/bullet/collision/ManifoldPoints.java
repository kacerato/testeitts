package com.jme3.bullet.collision;

import com.jme3.math.Vector3f;
import com.simsilica.mathd.Vec3d;
import java.util.logging.Logger;

public final class ManifoldPoints {
    public static final Logger logger = Logger.getLogger(ManifoldPoints.class.getName());

    private ManifoldPoints() {
    }

    public static native long createTestPoint();

    public static native float getAppliedImpulse(long j10);

    public static native float getAppliedImpulseLateral1(long j10);

    public static native float getAppliedImpulseLateral2(long j10);

    public static native float getCombinedFriction(long j10);

    public static native float getCombinedRestitution(long j10);

    public static native float getCombinedRollingFriction(long j10);

    public static native float getCombinedSpinningFriction(long j10);

    public static native float getContactMotion1(long j10);

    public static native float getContactMotion2(long j10);

    public static native float getDistance1(long j10);

    public static native int getFlags(long j10);

    public static native int getIndex0(long j10);

    public static native int getIndex1(long j10);

    public static native void getLateralFrictionDir1(long j10, Vector3f vector3f);

    public static native void getLateralFrictionDir2(long j10, Vector3f vector3f);

    public static native int getLifeTime(long j10);

    public static native void getLocalPointA(long j10, Vector3f vector3f);

    public static native void getLocalPointB(long j10, Vector3f vector3f);

    public static native void getNormalWorldOnB(long j10, Vector3f vector3f);

    public static native int getPartId0(long j10);

    public static native int getPartId1(long j10);

    public static native void getPositionWorldOnA(long j10, Vector3f vector3f);

    public static native void getPositionWorldOnADp(long j10, Vec3d vec3d);

    public static native void getPositionWorldOnB(long j10, Vector3f vector3f);

    public static native void getPositionWorldOnBDp(long j10, Vec3d vec3d);

    public static native boolean isContactCalcArea3Points();

    public static native void setAppliedImpulse(long j10, float f10);

    public static native void setAppliedImpulseLateral1(long j10, float f10);

    public static native void setAppliedImpulseLateral2(long j10, float f10);

    public static native void setCombinedFriction(long j10, float f10);

    public static native void setCombinedRestitution(long j10, float f10);

    public static native void setCombinedRollingFriction(long j10, float f10);

    public static native void setCombinedSpinningFriction(long j10, float f10);

    public static native void setContactCalcArea3Points(boolean z10);

    public static native void setContactMotion1(long j10, float f10);

    public static native void setContactMotion2(long j10, float f10);

    public static native void setDistance1(long j10, float f10);

    public static native void setFlags(long j10, int i10);

    public static native void setLateralFrictionDir1(long j10, Vector3f vector3f);

    public static native void setLateralFrictionDir2(long j10, Vector3f vector3f);

    public static native void setLocalPointA(long j10, Vector3f vector3f);

    public static native void setLocalPointB(long j10, Vector3f vector3f);

    public static native void setNormalWorldOnB(long j10, Vector3f vector3f);

    public static native void setPositionWorldOnA(long j10, Vector3f vector3f);

    public static native void setPositionWorldOnB(long j10, Vector3f vector3f);
}
