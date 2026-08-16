package java.nio.channels;

import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/Channels.class
 */
public final class Channels {
    Channels() {
        throw new RuntimeException("Stub!");
    }

    public static InputStream newInputStream(ReadableByteChannel ch2) {
        throw new RuntimeException("Stub!");
    }

    public static OutputStream newOutputStream(WritableByteChannel ch2) {
        throw new RuntimeException("Stub!");
    }

    public static InputStream newInputStream(AsynchronousByteChannel ch2) {
        throw new RuntimeException("Stub!");
    }

    public static OutputStream newOutputStream(AsynchronousByteChannel ch2) {
        throw new RuntimeException("Stub!");
    }

    public static ReadableByteChannel newChannel(InputStream in2) {
        throw new RuntimeException("Stub!");
    }

    public static WritableByteChannel newChannel(OutputStream out) {
        throw new RuntimeException("Stub!");
    }

    public static Reader newReader(ReadableByteChannel ch2, CharsetDecoder dec, int minBufferCap) {
        throw new RuntimeException("Stub!");
    }

    public static Reader newReader(ReadableByteChannel ch2, String csName) {
        throw new RuntimeException("Stub!");
    }

    public static Writer newWriter(WritableByteChannel ch2, CharsetEncoder enc, int minBufferCap) {
        throw new RuntimeException("Stub!");
    }

    public static Writer newWriter(WritableByteChannel ch2, String csName) {
        throw new RuntimeException("Stub!");
    }
}
