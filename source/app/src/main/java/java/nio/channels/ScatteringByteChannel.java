package java.nio.channels;

import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/ScatteringByteChannel.class
 */
public interface ScatteringByteChannel extends ReadableByteChannel {
    long read(ByteBuffer[] byteBufferArr, int i10, int i11) throws IOException;

    long read(ByteBuffer[] byteBufferArr) throws IOException;
}
