package java.nio.channels;

import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/SeekableByteChannel.class
 */
public interface SeekableByteChannel extends ByteChannel {
    @Override
    int read(ByteBuffer byteBuffer) throws IOException;

    int write(ByteBuffer byteBuffer) throws IOException;

    long position() throws IOException;

    SeekableByteChannel position(long j10) throws IOException;

    long size() throws IOException;

    SeekableByteChannel truncate(long j10) throws IOException;
}
