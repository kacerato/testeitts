package android.opengl;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.Buffer;
import java.nio.ByteBuffer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/opengl/ETC1Util.class
 */
public class ETC1Util {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/opengl/ETC1Util$ETC1Texture.class
 */
    public static class ETC1Texture {
        public ETC1Texture(int width, int height, ByteBuffer data) {
            throw new RuntimeException("Stub!");
        }

        public int getWidth() {
            throw new RuntimeException("Stub!");
        }

        public int getHeight() {
            throw new RuntimeException("Stub!");
        }

        public ByteBuffer getData() {
            throw new RuntimeException("Stub!");
        }
    }

    public ETC1Util() {
        throw new RuntimeException("Stub!");
    }

    public static void loadTexture(int target, int level, int border, int fallbackFormat, int fallbackType, InputStream input) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static void loadTexture(int target, int level, int border, int fallbackFormat, int fallbackType, ETC1Texture texture) {
        throw new RuntimeException("Stub!");
    }

    public static boolean isETC1Supported() {
        throw new RuntimeException("Stub!");
    }

    public static ETC1Texture createTexture(InputStream input) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static ETC1Texture compressTexture(Buffer input, int width, int height, int pixelSize, int stride) {
        throw new RuntimeException("Stub!");
    }

    public static void writeTexture(ETC1Texture texture, OutputStream output) throws IOException {
        throw new RuntimeException("Stub!");
    }
}
