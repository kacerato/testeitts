package net.jpountz.xxhash;

import java.io.Closeable;
import java.util.zip.Checksum;

public abstract class c implements Closeable {

    public final int f98128b;

    public class a implements Checksum {
        public a() {
        }

        @Override
        public long getValue() {
            return c.this.d() & 268435455;
        }

        @Override
        public void reset() {
            c.this.e();
        }

        public String toString() {
            return c.this.toString();
        }

        @Override
        public void update(int i10) {
            c.this.f(new byte[]{(byte) i10}, 0, 1);
        }

        @Override
        public void update(byte[] bArr, int i10, int i11) {
            c.this.f(bArr, i10, i11);
        }
    }

    public interface b {
        c a(int i10);
    }

    public c(int i10) {
        this.f98128b = i10;
    }

    public final Checksum c() {
        return new a();
    }

    @Override
    public void close() {
    }

    public abstract int d();

    public abstract void e();

    public abstract void f(byte[] bArr, int i10, int i11);

    public String toString() {
        return getClass().getSimpleName() + "(seed=" + this.f98128b + ")";
    }
}
