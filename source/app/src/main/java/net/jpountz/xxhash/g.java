package net.jpountz.xxhash;

import java.io.Closeable;
import java.util.zip.Checksum;

public abstract class g implements Closeable {

    public final long f98134b;

    public class a implements Checksum {
        public a() {
        }

        @Override
        public long getValue() {
            return g.this.d();
        }

        @Override
        public void reset() {
            g.this.e();
        }

        public String toString() {
            return g.this.toString();
        }

        @Override
        public void update(int i10) {
            g.this.f(new byte[]{(byte) i10}, 0, 1);
        }

        @Override
        public void update(byte[] bArr, int i10, int i11) {
            g.this.f(bArr, i10, i11);
        }
    }

    public interface b {
        g a(long j10);
    }

    public g(long j10) {
        this.f98134b = j10;
    }

    public final Checksum c() {
        return new a();
    }

    @Override
    public void close() {
    }

    public abstract long d();

    public abstract void e();

    public abstract void f(byte[] bArr, int i10, int i11);

    public String toString() {
        return getClass().getSimpleName() + "(seed=" + this.f98134b + ")";
    }
}
