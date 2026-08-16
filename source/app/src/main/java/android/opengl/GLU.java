package android.opengl;

import javax.microedition.khronos.opengles.GL10;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/opengl/GLU.class
 */
public class GLU {
    public GLU() {
        throw new RuntimeException("Stub!");
    }

    public static String gluErrorString(int error) {
        throw new RuntimeException("Stub!");
    }

    public static void gluLookAt(GL10 gl2, float eyeX, float eyeY, float eyeZ, float centerX, float centerY, float centerZ, float upX, float upY, float upZ) {
        throw new RuntimeException("Stub!");
    }

    public static void gluOrtho2D(GL10 gl2, float left, float right, float bottom, float top) {
        throw new RuntimeException("Stub!");
    }

    public static void gluPerspective(GL10 gl2, float fovy, float aspect, float zNear, float zFar) {
        throw new RuntimeException("Stub!");
    }

    public static int gluProject(float objX, float objY, float objZ, float[] model, int modelOffset, float[] project, int projectOffset, int[] view, int viewOffset, float[] win, int winOffset) {
        throw new RuntimeException("Stub!");
    }

    public static int gluUnProject(float winX, float winY, float winZ, float[] model, int modelOffset, float[] project, int projectOffset, int[] view, int viewOffset, float[] obj, int objOffset) {
        throw new RuntimeException("Stub!");
    }
}
