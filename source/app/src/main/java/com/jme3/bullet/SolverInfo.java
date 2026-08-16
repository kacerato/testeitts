package com.jme3.bullet;

import java.util.logging.Logger;
import p000if.C13702E;

public class SolverInfo extends NativePhysicsObject {
    public static final Logger logger = Logger.getLogger(SolverInfo.class.getName());

    public SolverInfo(long j10) {
        C13702E.x(j10, "native ID");
        super.setNativeIdNotTracked(j10);
    }

    private static native void copyAllParameters(long j10, long j11);

    private static native float getContactErp(long j10);

    private static native float getGlobalCfm(long j10);

    private static native float getJointErp(long j10);

    private static native int getMinBatch(long j10);

    private static native int getMode(long j10);

    private static native int getNumIterations(long j10);

    private static native float getSplitImpulseErp(long j10);

    private static native float getSplitImpulseThreshold(long j10);

    private static native boolean isSplitImpulseEnabled(long j10);

    private static native void setContactErp(long j10, float f10);

    private static native void setGlobalCfm(long j10, float f10);

    private static native void setJointErp(long j10, float f10);

    private static native void setMinBatch(long j10, int i10);

    private static native void setMode(long j10, int i10);

    private static native void setNumIterations(long j10, int i10);

    private static native void setSplitImpulseEnabled(long j10, boolean z10);

    private static native void setSplitImpulseErp(long j10, float f10);

    private static native void setSplitImpulseThreshold(long j10, float f10);

    public float contactErp() {
        return getContactErp(nativeId());
    }

    public void copyAll(SolverInfo solverInfo) {
        copyAllParameters(nativeId(), solverInfo.nativeId());
    }

    public float globalCfm() {
        return getGlobalCfm(nativeId());
    }

    public boolean isSplitImpulseEnabled() {
        return isSplitImpulseEnabled(nativeId());
    }

    public float jointErp() {
        return getJointErp(nativeId());
    }

    public int minBatch() {
        return getMinBatch(nativeId());
    }

    public int mode() {
        return getMode(nativeId());
    }

    public int numIterations() {
        return getNumIterations(nativeId());
    }

    public void setContactErp(float f10) {
        setContactErp(nativeId(), f10);
    }

    public void setGlobalCfm(float f10) {
        C13702E.p(f10, "mixing parameter");
        setGlobalCfm(nativeId(), f10);
    }

    public void setJointErp(float f10) {
        setJointErp(nativeId(), f10);
    }

    public void setMinBatch(int i10) {
        C13702E.F(i10, "number of constraints");
        setMinBatch(nativeId(), i10);
    }

    public void setMode(int i10) {
        setMode(nativeId(), i10);
    }

    public void setNumIterations(int i10) {
        C13702E.F(i10, "number of iterations");
        setNumIterations(nativeId(), i10);
    }

    public void setSplitImpulseEnabled(boolean z10) {
        setSplitImpulseEnabled(nativeId(), z10);
    }

    public void setSplitImpulseErp(float f10) {
        setSplitImpulseErp(nativeId(), f10);
    }

    public void setSplitImpulseThreshold(float f10) {
        setSplitImpulseThreshold(nativeId(), f10);
    }

    public float splitImpulseErp() {
        return getSplitImpulseErp(nativeId());
    }

    public float splitImpulseThreshold() {
        return getSplitImpulseThreshold(nativeId());
    }
}
