package android.graphics;

import java.io.InputStream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/Movie.class
 */
public class Movie {
    public native int width();

    public native int height();

    public native boolean isOpaque();

    public native int duration();

    public native boolean setTime(int i10);

    public static native Movie decodeByteArray(byte[] bArr, int i10, int i11);

    Movie() {
        throw new RuntimeException("Stub!");
    }

    public void draw(Canvas canvas, float x10, float y10, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void draw(Canvas canvas, float x10, float y10) {
        throw new RuntimeException("Stub!");
    }

    public static Movie decodeStream(InputStream is) {
        throw new RuntimeException("Stub!");
    }

    public static Movie decodeFile(String pathName) {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() throws Throwable {
        throw new RuntimeException("Stub!");
    }
}
