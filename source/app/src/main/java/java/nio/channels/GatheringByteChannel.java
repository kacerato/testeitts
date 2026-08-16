package java.nio.channels;

import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/GatheringByteChannel.class
 */
public interface GatheringByteChannel extends WritableByteChannel {
    long write(ByteBuffer[] byteBufferArr, int i10, int i11) throws IOException;

    long write(ByteBuffer[] byteBufferArr) throws IOException;
}
