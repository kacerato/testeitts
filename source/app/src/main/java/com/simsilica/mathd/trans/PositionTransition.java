package com.simsilica.mathd.trans;

import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.simsilica.mathd.Quatd;
import com.simsilica.mathd.Vec3d;

@Deprecated
public class PositionTransition implements Transition<PositionTransition> {
    private final Vector3f endPos;
    private final Quaternion endRot;
    private final long endTime;
    private final boolean endVisible;
    private Vector3f startPos;
    private Quaternion startRot;
    private long startTime;
    private boolean startVisible;

    public PositionTransition(long j10, Vector3f vector3f, Quaternion quaternion, boolean z10) {
        this.endTime = j10;
        this.endPos = vector3f;
        this.endRot = quaternion;
        this.endVisible = z10;
    }

    public static TransitionBuffer<PositionTransition> createBuffer(int i10) {
        return new TransitionBuffer<>(i10);
    }

    @Override
    public boolean containsTime(long j10) {
        return j10 >= this.startTime && j10 <= this.endTime;
    }

    @Override
    public long getEndTime() {
        return this.endTime;
    }

    @Deprecated
    public Vector3f getFrameVelocity() {
        Vector3f vector3f = this.endPos;
        float f10 = vector3f.f81611x;
        Vector3f vector3f2 = this.startPos;
        return new Vector3f(f10 - vector3f2.f81611x, vector3f.f81612y - vector3f2.f81612y, vector3f.f81613z - vector3f2.f81613z);
    }

    public Vector3f getPosition(long j10) {
        return getPosition(j10, false);
    }

    public Quaternion getRotation(long j10) {
        return getRotation(j10, false);
    }

    @Override
    public long getStartTime() {
        return this.startTime;
    }

    public boolean getVisibility(long j10) {
        return j10 > this.endTime ? this.endVisible : this.startVisible;
    }

    public String toString() {
        return "PositionTransition[ t:" + this.startTime + ", pos:" + ((Object) this.startPos) + ", rot:" + ((Object) this.startRot) + ", vis:" + this.startVisible + " -> t:" + this.endTime + ", pos:" + ((Object) this.endPos) + ", rot:" + ((Object) this.endRot) + ", vis:" + this.endVisible + " ]";
    }

    public final float tween(long j10) {
        long j11 = this.endTime;
        long j12 = this.startTime;
        long j13 = j11 - j12;
        if (j13 == 0) {
            return 0.0f;
        }
        float f10 = (float) (j10 - j12);
        float f11 = (float) j13;
        if (f10 > f11) {
            return 1.0f;
        }
        if (f10 < 0.0f) {
            return 0.0f;
        }
        return f10 / f11;
    }

    public Vector3f getPosition(long j10, boolean z10) {
        Vector3f vector3f = this.startPos;
        if (vector3f == null) {
            if (z10) {
                return this.endPos.m1292clone();
            }
            return null;
        }
        if (j10 >= this.startTime) {
            return new Vector3f().interpolateLocal(this.startPos, this.endPos, tween(j10));
        }
        if (z10) {
            return vector3f.m1292clone();
        }
        return null;
    }

    public Quaternion getRotation(long j10, boolean z10) {
        Quaternion quaternion = this.startRot;
        if (quaternion == null) {
            if (z10) {
                return this.endRot.m1285clone();
            }
            return null;
        }
        if (j10 >= this.startTime) {
            return new Quaternion().slerp(this.startRot, this.endRot, tween(j10));
        }
        if (z10) {
            return quaternion.m1285clone();
        }
        return null;
    }

    @Override
    public void setPreviousTransition(PositionTransition positionTransition) {
        long j10 = positionTransition.endTime;
        this.startTime = j10;
        this.startPos = positionTransition.endPos;
        this.startRot = positionTransition.endRot;
        this.startVisible = positionTransition.endVisible;
        if (j10 > this.endTime) {
            throw new IllegalArgumentException("Frame transitions cannot go backwards.");
        }
    }

    public PositionTransition(long j10, Vec3d vec3d, Quatd quatd, boolean z10) {
        this.endTime = j10;
        this.endPos = new Vector3f((float) vec3d.f83547x, (float) vec3d.f83548y, (float) vec3d.f83549z);
        this.endRot = new Quaternion((float) quatd.f83544x, (float) quatd.f83545y, (float) quatd.f83546z, (float) quatd.f83543w);
        this.endVisible = z10;
    }
}
