package android.renderscript;

import android.content.Context;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/renderscript/RenderScript.class
 */
public class RenderScript {
    public static final int CREATE_FLAG_LOW_LATENCY = 2;
    public static final int CREATE_FLAG_LOW_POWER = 4;
    public static final int CREATE_FLAG_NONE = 0;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/renderscript/RenderScript$ContextType.class
 */
    public enum ContextType {
        DEBUG,
        NORMAL,
        PROFILE
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/renderscript/RenderScript$Priority.class
 */
    public enum Priority {
        LOW,
        NORMAL
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/renderscript/RenderScript$RSMessageHandler.class
 */
    public static class RSMessageHandler implements Runnable {
        protected int[] mData = null;
        protected int mID;
        protected int mLength;

        public RSMessageHandler() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void run() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/renderscript/RenderScript$RSErrorHandler.class
 */
    public static class RSErrorHandler implements Runnable {
        protected String mErrorMessage;
        protected int mErrorNum;

        public RSErrorHandler() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void run() {
            throw new RuntimeException("Stub!");
        }
    }

    RenderScript() {
        throw new RuntimeException("Stub!");
    }

    public static long getMinorVersion() {
        throw new RuntimeException("Stub!");
    }

    public void setMessageHandler(RSMessageHandler msg) {
        throw new RuntimeException("Stub!");
    }

    public RSMessageHandler getMessageHandler() {
        throw new RuntimeException("Stub!");
    }

    public void sendMessage(int id2, int[] data) {
        throw new RuntimeException("Stub!");
    }

    public void setErrorHandler(RSErrorHandler msg) {
        throw new RuntimeException("Stub!");
    }

    public RSErrorHandler getErrorHandler() {
        throw new RuntimeException("Stub!");
    }

    public void setPriority(Priority p10) {
        throw new RuntimeException("Stub!");
    }

    public final Context getApplicationContext() {
        throw new RuntimeException("Stub!");
    }

    public static RenderScript create(Context ctx) {
        throw new RuntimeException("Stub!");
    }

    public static RenderScript create(Context ctx, ContextType ct) {
        throw new RuntimeException("Stub!");
    }

    public static RenderScript create(Context ctx, ContextType ct, int flags) {
        throw new RuntimeException("Stub!");
    }

    public static void releaseAllContexts() {
        throw new RuntimeException("Stub!");
    }

    public static RenderScript createMultiContext(Context ctx, ContextType ct, int flags, int API_number) {
        throw new RuntimeException("Stub!");
    }

    public void contextDump() {
        throw new RuntimeException("Stub!");
    }

    public void finish() {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() throws Throwable {
        throw new RuntimeException("Stub!");
    }

    public void destroy() {
        throw new RuntimeException("Stub!");
    }
}
