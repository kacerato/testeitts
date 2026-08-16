package Y;

import androidx.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class i extends FilterInputStream {

    public static final int f29678c = Integer.MIN_VALUE;

    public static final int f29679d = -1;

    public int f29680b;

    public i(@NonNull InputStream inputStream) {
        super(inputStream);
        this.f29680b = Integer.MIN_VALUE;
    }

    public final long a(long j10) {
        int i10 = this.f29680b;
        if (i10 == 0) {
            return -1L;
        }
        return (i10 == Integer.MIN_VALUE || j10 <= ((long) i10)) ? j10 : i10;
    }

    @Override
    public int available() throws IOException {
        int i10 = this.f29680b;
        return i10 == Integer.MIN_VALUE ? super.available() : Math.min(i10, super.available());
    }

    public final void b(long j10) {
        int i10 = this.f29680b;
        if (i10 == Integer.MIN_VALUE || j10 == -1) {
            return;
        }
        this.f29680b = (int) (i10 - j10);
    }

    @Override
    public synchronized void mark(int i10) {
        super.mark(i10);
        this.f29680b = i10;
    }

    @Override
    public int read() throws IOException {
        if (a(1L) == -1) {
            return -1;
        }
        int read = super.read();
        b(1L);
        return read;
    }

    @Override
    public synchronized void reset() throws IOException {
        super.reset();
        this.f29680b = Integer.MIN_VALUE;
    }

    @Override
    public long skip(long j10) throws IOException {
        long a10 = a(j10);
        if (a10 == -1) {
            return 0L;
        }
        long skip = super.skip(a10);
        b(skip);
        return skip;
    }

    @Override
    public int read(@NonNull byte[] bArr, int i10, int i11) throws IOException {
        int a10 = (int) a(i11);
        if (a10 == -1) {
            return -1;
        }
        int read = super.read(bArr, i10, a10);
        b(read);
        return read;
    }
}
