package java.nio.channels;

import java.io.IOException;
import java.nio.channels.spi.AbstractInterruptibleChannel;
import java.nio.channels.spi.SelectorProvider;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/SelectableChannel.class
 */
public abstract class SelectableChannel extends AbstractInterruptibleChannel implements Channel {
    public abstract SelectorProvider provider();

    public abstract int validOps();

    public abstract boolean isRegistered();

    public abstract SelectionKey keyFor(Selector selector);

    public abstract SelectionKey register(Selector selector, int i10, Object obj) throws ClosedChannelException;

    public abstract SelectableChannel configureBlocking(boolean z10) throws IOException;

    public abstract boolean isBlocking();

    public abstract Object blockingLock();

    public SelectableChannel() {
        throw new RuntimeException("Stub!");
    }

    public final SelectionKey register(Selector sel, int ops) throws ClosedChannelException {
        throw new RuntimeException("Stub!");
    }
}
