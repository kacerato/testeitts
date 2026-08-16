package com.jme3.bullet;

import java.util.logging.Logger;
import p000if.C13702E;

public class CollisionConfiguration extends NativePhysicsObject {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(CollisionConfiguration.class.getName());

    public CollisionConfiguration() {
        this(4096, 1);
    }

    private static native long createNative(int i10, int i11);

    private static native void finalizeNative(long j10);

    private static void freeNativeObject(long j10) {
        finalizeNative(j10);
    }

    private static native int maxManifolds(long j10);

    private static native int penetrationDepthSolver(long j10);

    public int maxManifolds() {
        return maxManifolds(nativeId());
    }

    public int penetrationDepthSolver() {
        return penetrationDepthSolver(nativeId());
    }

    public CollisionConfiguration(int i10, int i11) {
        C13702E.F(i10, "max manifolds");
        C13702E.i(i11, "penetration depth solver", 0, 1);
        super.setNativeId(createNative(i10, i11));
    }
}
