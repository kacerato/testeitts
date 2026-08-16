package java.nio.channels.spi;

import java.io.IOException;
import java.nio.channels.AsynchronousCloseException;
import java.nio.channels.Channel;
import java.nio.channels.InterruptibleChannel;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/spi/AbstractInterruptibleChannel.class
 */
public abstract class AbstractInterruptibleChannel implements Channel, InterruptibleChannel {
    protected abstract void implCloseChannel() throws IOException;

    public AbstractInterruptibleChannel() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final void close() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final boolean isOpen() {
        throw new RuntimeException("Stub!");
    }

    protected final void begin() {
        throw new RuntimeException("Stub!");
    }

    protected final void end(boolean completed) throws AsynchronousCloseException {
        throw new RuntimeException("Stub!");
    }
}
