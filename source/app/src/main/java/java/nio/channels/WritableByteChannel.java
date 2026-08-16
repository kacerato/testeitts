package java.nio.channels;

import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/WritableByteChannel.class
 */
public interface WritableByteChannel extends Channel {
    int write(ByteBuffer byteBuffer) throws IOException;
}
