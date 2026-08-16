package Y;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

public class d extends InputStream {

    public static final Queue<d> f29666d = m.f(0);

    public InputStream f29667b;

    public IOException f29668c;

    public static void c() {
        while (true) {
            Queue<d> queue = f29666d;
            if (queue.isEmpty()) {
                return;
            } else {
                queue.remove();
            }
        }
    }

    @NonNull
    public static d e(@NonNull InputStream inputStream) {
        d poll;
        Queue<d> queue = f29666d;
        synchronized (queue) {
            poll = queue.poll();
        }
        if (poll == null) {
            poll = new d();
        }
        poll.f(inputStream);
        return poll;
    }

    @Override
    public int available() throws IOException {
        return this.f29667b.available();
    }

    @Override
    public void close() throws IOException {
        this.f29667b.close();
    }

    @Nullable
    public IOException d() {
        return this.f29668c;
    }

    public void f(@NonNull InputStream inputStream) {
        this.f29667b = inputStream;
    }

    @Override
    public void mark(int i10) {
        this.f29667b.mark(i10);
    }

    @Override
    public boolean markSupported() {
        return this.f29667b.markSupported();
    }

    @Override
    public int read(byte[] bArr) {
        try {
            return this.f29667b.read(bArr);
        } catch (IOException e10) {
            this.f29668c = e10;
            return -1;
        }
    }

    public void release() {
        this.f29668c = null;
        this.f29667b = null;
        Queue<d> queue = f29666d;
        synchronized (queue) {
            queue.offer(this);
        }
    }

    @Override
    public synchronized void reset() throws IOException {
        this.f29667b.reset();
    }

    @Override
    public long skip(long j10) {
        try {
            return this.f29667b.skip(j10);
        } catch (IOException e10) {
            this.f29668c = e10;
            return 0L;
        }
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) {
        try {
            return this.f29667b.read(bArr, i10, i11);
        } catch (IOException e10) {
            this.f29668c = e10;
            return -1;
        }
    }

    @Override
    public int read() {
        try {
            return this.f29667b.read();
        } catch (IOException e10) {
            this.f29668c = e10;
            return -1;
        }
    }
}
