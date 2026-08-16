package com.threed.jpct;

public class BufferUtilFactory {
    private static boolean nativeSupport = false;
    private static BufferUtil util;

    static {
        try {
            if (Config.disableNativeBufferCopies) {
                throw new Exception("Troet!");
            }
            Class.forName("com.badlogic.gdx.utils.BufferUtils").newInstance();
            nativeSupport = true;
            util = (BufferUtil) BufferUtilNative.class.newInstance();
            System.loadLibrary("gdx");
            FloatBufferWrapper floatBufferWrapper = new FloatBufferWrapper(2);
            util.copy(new float[2], floatBufferWrapper);
            Logger.log("Using native buffer copies!");
        } catch (Throwable th2) {
            nativeSupport = false;
            util = new BufferUtilVM();
            if ("Troet!".equals(th2.getMessage())) {
                Logger.log("Native buffer copies disabled!");
            } else {
                Logger.log("Using vm based buffer copies!");
            }
        }
    }

    public static BufferUtil getBufferUtil() {
        return util;
    }

    public static boolean hasNativeSupport() {
        return nativeSupport;
    }
}
