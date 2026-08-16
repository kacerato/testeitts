package k1;

import java.io.Closeable;

public class C13912a implements Closeable {
    @Override
    public void close() {
        throw null;
    }

    public synchronized void finalize() {
    }
}
