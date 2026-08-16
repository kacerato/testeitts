package com.jme3.bullet.util;

import com.jme3.bullet.NativePhysicsObject;
import com.jme3.math.Vector3f;
import java.util.logging.Logger;

public final class NativeLibrary {
    public static final String expectedVersion = "23.1.0";
    public static final Logger logger = Logger.getLogger(NativeLibrary.class.getName());

    private NativeLibrary() {
    }

    public static native int countClampedCcdMotions();

    public static native int countThreads();

    public static native void crash();

    public static native int dumpMemoryLeaks();

    public static native int dumpQuickprof();

    public static native void fail();

    public static native boolean isDebug();

    public static native boolean isDoublePrecision();

    public static native boolean isInsideTriangle(Vector3f vector3f, float f10, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4);

    public static native boolean isQuickprof();

    public static native boolean isThreadSafe();

    public static native long jniEnvId();

    private static void postInitialization() {
        String versionNumber = versionNumber();
        if (!versionNumber.equals(expectedVersion)) {
            logger.warning("Expected a v23.1.0 native library but loaded v" + versionNumber + "!");
        }
        Thread thread = new Thread("Physics Cleaner") {
            @Override
            public void run() {
                NativePhysicsObject.freeUnusedObjects();
            }
        };
        thread.setDaemon(true);
        thread.start();
    }

    private static void reinitialization() {
    }

    public static native void resetQuickprof();

    public static native void setReinitializationCallbackEnabled(boolean z10);

    public static native void setStartupMessageEnabled(boolean z10);

    public static native String versionNumber();
}
