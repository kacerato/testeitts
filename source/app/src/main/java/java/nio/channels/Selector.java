package java.nio.channels;

import java.io.Closeable;
import java.io.IOException;
import java.nio.channels.spi.SelectorProvider;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/Selector.class
 */
public abstract class Selector implements Closeable {
    public abstract boolean isOpen();

    public abstract SelectorProvider provider();

    public abstract Set<SelectionKey> keys();

    public abstract Set<SelectionKey> selectedKeys();

    public abstract int selectNow() throws IOException;

    public abstract int select(long j10) throws IOException;

    public abstract int select() throws IOException;

    public abstract Selector wakeup();

    @Override
    public abstract void close() throws IOException;

    public Selector() {
        throw new RuntimeException("Stub!");
    }

    public static Selector open() throws IOException {
        throw new RuntimeException("Stub!");
    }
}
