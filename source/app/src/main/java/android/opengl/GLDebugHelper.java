package android.opengl;

import java.io.Writer;
import javax.microedition.khronos.egl.EGL;
import javax.microedition.khronos.opengles.GL;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/opengl/GLDebugHelper.class
 */
public class GLDebugHelper {
    public static final int CONFIG_CHECK_GL_ERROR = 1;
    public static final int CONFIG_CHECK_THREAD = 2;
    public static final int CONFIG_LOG_ARGUMENT_NAMES = 4;
    public static final int ERROR_WRONG_THREAD = 28672;

    public GLDebugHelper() {
        throw new RuntimeException("Stub!");
    }

    public static GL wrap(GL gl2, int configFlags, Writer log) {
        throw new RuntimeException("Stub!");
    }

    public static EGL wrap(EGL egl, int configFlags, Writer log) {
        throw new RuntimeException("Stub!");
    }
}
