package java.nio.channels.spi;

import java.io.IOException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/spi/AbstractSelectableChannel.class
 */
public abstract class AbstractSelectableChannel extends SelectableChannel {
    protected abstract void implCloseSelectableChannel() throws IOException;

    protected abstract void implConfigureBlocking(boolean z10) throws IOException;

    public AbstractSelectableChannel(SelectorProvider provider) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final SelectorProvider provider() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final boolean isRegistered() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final SelectionKey keyFor(Selector sel) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final SelectionKey register(Selector sel, int ops, Object att) throws ClosedChannelException {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected final void implCloseChannel() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final boolean isBlocking() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final Object blockingLock() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final SelectableChannel configureBlocking(boolean block) throws IOException {
        throw new RuntimeException("Stub!");
    }
}
