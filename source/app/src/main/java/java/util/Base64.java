package java.util;

import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Base64.class
 */
public class Base64 {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Base64$Encoder.class
 */
    public static class Encoder {
        Encoder() {
            throw new RuntimeException("Stub!");
        }

        public byte[] encode(byte[] src) {
            throw new RuntimeException("Stub!");
        }

        public int encode(byte[] src, byte[] dst) {
            throw new RuntimeException("Stub!");
        }

        public String encodeToString(byte[] src) {
            throw new RuntimeException("Stub!");
        }

        public ByteBuffer encode(ByteBuffer buffer) {
            throw new RuntimeException("Stub!");
        }

        public OutputStream wrap(OutputStream os) {
            throw new RuntimeException("Stub!");
        }

        public Encoder withoutPadding() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Base64$Decoder.class
 */
    public static class Decoder {
        Decoder() {
            throw new RuntimeException("Stub!");
        }

        public byte[] decode(byte[] src) {
            throw new RuntimeException("Stub!");
        }

        public byte[] decode(String src) {
            throw new RuntimeException("Stub!");
        }

        public int decode(byte[] src, byte[] dst) {
            throw new RuntimeException("Stub!");
        }

        public ByteBuffer decode(ByteBuffer buffer) {
            throw new RuntimeException("Stub!");
        }

        public InputStream wrap(InputStream is) {
            throw new RuntimeException("Stub!");
        }
    }

    Base64() {
        throw new RuntimeException("Stub!");
    }

    public static Encoder getEncoder() {
        throw new RuntimeException("Stub!");
    }

    public static Encoder getUrlEncoder() {
        throw new RuntimeException("Stub!");
    }

    public static Encoder getMimeEncoder() {
        throw new RuntimeException("Stub!");
    }

    public static Encoder getMimeEncoder(int lineLength, byte[] lineSeparator) {
        throw new RuntimeException("Stub!");
    }

    public static Decoder getDecoder() {
        throw new RuntimeException("Stub!");
    }

    public static Decoder getUrlDecoder() {
        throw new RuntimeException("Stub!");
    }

    public static Decoder getMimeDecoder() {
        throw new RuntimeException("Stub!");
    }
}
