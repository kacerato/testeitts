package java.nio.channels;

import java.io.Closeable;
import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/Channel.class
 */
public interface Channel extends Closeable {
    boolean isOpen();

    @Override
    void close() throws IOException;
}
