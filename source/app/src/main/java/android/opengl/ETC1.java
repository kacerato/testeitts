package android.opengl;

import java.nio.Buffer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/opengl/ETC1.class
 */
public class ETC1 {
    public static final int DECODED_BLOCK_SIZE = 48;
    public static final int ENCODED_BLOCK_SIZE = 8;
    public static final int ETC1_RGB8_OES = 36196;
    public static final int ETC_PKM_HEADER_SIZE = 16;

    public static native void encodeBlock(Buffer buffer, int i10, Buffer buffer2);

    public static native void decodeBlock(Buffer buffer, Buffer buffer2);

    public static native int getEncodedDataSize(int i10, int i11);

    public static native void encodeImage(Buffer buffer, int i10, int i11, int i12, int i13, Buffer buffer2);

    public static native void decodeImage(Buffer buffer, Buffer buffer2, int i10, int i11, int i12, int i13);

    public static native void formatHeader(Buffer buffer, int i10, int i11);

    public static native boolean isValid(Buffer buffer);

    public static native int getWidth(Buffer buffer);

    public static native int getHeight(Buffer buffer);

    public ETC1() {
        throw new RuntimeException("Stub!");
    }
}
