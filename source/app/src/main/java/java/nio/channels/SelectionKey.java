package java.nio.channels;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/SelectionKey.class
 */
public abstract class SelectionKey {
    public static final int OP_ACCEPT = 16;
    public static final int OP_CONNECT = 8;
    public static final int OP_READ = 1;
    public static final int OP_WRITE = 4;

    public abstract SelectableChannel channel();

    public abstract Selector selector();

    public abstract boolean isValid();

    public abstract void cancel();

    public abstract int interestOps();

    public abstract SelectionKey interestOps(int i10);

    public abstract int readyOps();

    public SelectionKey() {
        throw new RuntimeException("Stub!");
    }

    public final boolean isReadable() {
        throw new RuntimeException("Stub!");
    }

    public final boolean isWritable() {
        throw new RuntimeException("Stub!");
    }

    public final boolean isConnectable() {
        throw new RuntimeException("Stub!");
    }

    public final boolean isAcceptable() {
        throw new RuntimeException("Stub!");
    }

    public final Object attach(Object ob2) {
        throw new RuntimeException("Stub!");
    }

    public final Object attachment() {
        throw new RuntimeException("Stub!");
    }
}
