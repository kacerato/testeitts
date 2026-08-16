package java.nio.channels;

import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/InterruptibleChannel.class
 */
public interface InterruptibleChannel extends Channel {
    @Override
    void close() throws IOException;
}
