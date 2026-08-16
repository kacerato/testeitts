package com.simsilica.mathd.trans;

import com.simsilica.mathd.Quatd;
import com.simsilica.mathd.Vec3d;

public class PositionTransition3d implements Transition<PositionTransition3d> {
    private final Vec3d endPos;
    private final Quatd endRot;
    private final long endTime;
    private final boolean endVisible;
    private Vec3d startPos;
    private Quatd startRot;
    private long startTime;
    private boolean startVisible;

    public PositionTransition3d(long j10, Vec3d vec3d, Quatd quatd, boolean z10) {
        this.endTime = j10;
        this.endPos = vec3d;
        this.endRot = quatd;
        this.endVisible = z10;
    }

    public static TransitionBuffer<PositionTransition3d> createBuffer(int i10) {
        return new TransitionBuffer<>(i10);
    }

    @Override
    public boolean containsTime(long j10) {
        return j10 >= this.startTime && j10 <= this.endTime;
    }

    public Vec3d getEndPosition() {
        return this.endPos;
    }

    public Quatd getEndRotation() {
        return this.endRot;
    }

    @Override
    public long getEndTime() {
        return this.endTime;
    }

    public boolean getEndVisibility() {
        return this.endVisible;
    }

    public Vec3d getPosition(long j10) {
        return getPosition(j10, false);
    }

    public Quatd getRotation(long j10) {
        return getRotation(j10, false);
    }

    public Vec3d getStartPosition() {
        return this.startPos;
    }

    public Quatd getStartRotation() {
        return this.startRot;
    }

    @Override
    public long getStartTime() {
        return this.startTime;
    }

    public boolean getStartVisibility() {
        return this.startVisible;
    }

    public boolean getVisibility(long j10) {
        return j10 > this.endTime ? this.endVisible : this.startVisible;
    }

    public String toString() {
        return "PositionTransition3d[ t:" + this.startTime + ", pos:" + ((Object) this.startPos) + ", rot:" + ((Object) this.startRot) + ", vis:" + this.startVisible + " -> t:" + this.endTime + ", pos:" + ((Object) this.endPos) + ", rot:" + ((Object) this.endRot) + ", vis:" + this.endVisible + " ]";
    }

    public final double tween(long j10) {
        long j11 = this.endTime;
        long j12 = this.startTime;
        long j13 = j11 - j12;
        if (j13 == 0) {
            return 0.0d;
        }
        double d10 = j10 - j12;
        double d11 = j13;
        if (d10 > d11) {
            return 1.0d;
        }
        if (d10 < 0.0d) {
            return 0.0d;
        }
        return d10 / d11;
    }

    public Vec3d getPosition(long j10, boolean z10) {
        Vec3d vec3d = this.startPos;
        if (vec3d == null) {
            if (z10) {
                return this.endPos.m1323clone();
            }
            return null;
        }
        if (j10 >= this.startTime) {
            return new Vec3d().interpolateLocal(this.startPos, this.endPos, tween(j10));
        }
        if (z10) {
            return vec3d.m1323clone();
        }
        return null;
    }

    public Quatd getRotation(long j10, boolean z10) {
        Quatd quatd = this.startRot;
        if (quatd == null) {
            if (z10) {
                return this.endRot.m1321clone();
            }
            return null;
        }
        if (j10 >= this.startTime) {
            return new Quatd().slerpLocal(this.startRot, this.endRot, tween(j10));
        }
        if (z10) {
            return quatd.m1321clone();
        }
        return null;
    }

    @Override
    public void setPreviousTransition(PositionTransition3d positionTransition3d) {
        long j10 = positionTransition3d.endTime;
        this.startTime = j10;
        this.startPos = positionTransition3d.endPos;
        this.startRot = positionTransition3d.endRot;
        this.startVisible = positionTransition3d.endVisible;
        if (j10 > this.endTime) {
            throw new IllegalArgumentException("Frame transitions cannot go backwards.");
        }
    }
}
