package javax.microedition.khronos.egl;

import javax.microedition.khronos.opengles.GL;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/microedition/khronos/egl/EGLContext.class
 */
public abstract class EGLContext {
    public abstract GL getGL();

    public EGLContext() {
        throw new RuntimeException("Stub!");
    }

    public static EGL getEGL() {
        throw new RuntimeException("Stub!");
    }
}
