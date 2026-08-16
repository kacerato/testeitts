package java.nio.channels.spi;

import java.io.IOException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/spi/AbstractSelector.class
 */
public abstract class AbstractSelector extends Selector {
    protected abstract void implCloseSelector() throws IOException;

    protected abstract SelectionKey register(AbstractSelectableChannel abstractSelectableChannel, int i10, Object obj);

    protected AbstractSelector(SelectorProvider provider) {
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

    @Override
    public final SelectorProvider provider() {
        throw new RuntimeException("Stub!");
    }

    protected final Set<SelectionKey> cancelledKeys() {
        throw new RuntimeException("Stub!");
    }

    protected final void deregister(AbstractSelectionKey key) {
        throw new RuntimeException("Stub!");
    }

    protected final void begin() {
        throw new RuntimeException("Stub!");
    }

    protected final void end() {
        throw new RuntimeException("Stub!");
    }
}
