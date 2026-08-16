package Tg;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

public final class l implements y {

    public static final byte f25012g = 1;

    public static final byte f25013h = 2;

    public static final byte f25014i = 3;

    public static final byte f25015j = 4;

    public static final byte f25016k = 0;

    public static final byte f25017l = 1;

    public static final byte f25018m = 2;

    public static final byte f25019n = 3;

    public final e f25021c;

    public final Inflater f25022d;

    public final o f25023e;

    public int f25020b = 0;

    public final CRC32 f25024f = new CRC32();

    public l(y yVar) {
        if (yVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        Inflater inflater = new Inflater(true);
        this.f25022d = inflater;
        e d10 = p.d(yVar);
        this.f25021c = d10;
        this.f25023e = new o(d10, inflater);
    }

    @Override
    public long K(C3089c c3089c, long j10) throws IOException {
        if (j10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
        if (j10 == 0) {
            return 0L;
        }
        if (this.f25020b == 0) {
            c();
            this.f25020b = 1;
        }
        if (this.f25020b == 1) {
            long j11 = c3089c.f24985c;
            long K10 = this.f25023e.K(c3089c, j10);
            if (K10 != -1) {
                e(c3089c, j11, K10);
                return K10;
            }
            this.f25020b = 2;
        }
        if (this.f25020b == 2) {
            d();
            this.f25020b = 3;
            if (!this.f25021c.b2()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    public final void a(String str, int i10, int i11) throws IOException {
        if (i11 != i10) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i11), Integer.valueOf(i10)));
        }
    }

    @Override
    public z a0() {
        return this.f25021c.a0();
    }

    public final void c() throws IOException {
        this.f25021c.X1(10L);
        byte l10 = this.f25021c.C().l(3L);
        boolean z10 = ((l10 >> 1) & 1) == 1;
        if (z10) {
            e(this.f25021c.C(), 0L, 10L);
        }
        a("ID1ID2", 8075, this.f25021c.readShort());
        this.f25021c.skip(8L);
        if (((l10 >> 2) & 1) == 1) {
            this.f25021c.X1(2L);
            if (z10) {
                e(this.f25021c.C(), 0L, 2L);
            }
            long u12 = this.f25021c.C().u1();
            this.f25021c.X1(u12);
            if (z10) {
                e(this.f25021c.C(), 0L, u12);
            }
            this.f25021c.skip(u12);
        }
        if (((l10 >> 3) & 1) == 1) {
            long p12 = this.f25021c.p1((byte) 0);
            if (p12 == -1) {
                throw new EOFException();
            }
            if (z10) {
                e(this.f25021c.C(), 0L, p12 + 1);
            }
            this.f25021c.skip(p12 + 1);
        }
        if (((l10 >> 4) & 1) == 1) {
            long p13 = this.f25021c.p1((byte) 0);
            if (p13 == -1) {
                throw new EOFException();
            }
            if (z10) {
                e(this.f25021c.C(), 0L, p13 + 1);
            }
            this.f25021c.skip(p13 + 1);
        }
        if (z10) {
            a("FHCRC", this.f25021c.u1(), (short) this.f25024f.getValue());
            this.f25024f.reset();
        }
    }

    @Override
    public void close() throws IOException {
        this.f25023e.close();
    }

    public final void d() throws IOException {
        a("CRC", this.f25021c.h2(), (int) this.f25024f.getValue());
        a("ISIZE", this.f25021c.h2(), (int) this.f25022d.getBytesWritten());
    }

    public final void e(C3089c c3089c, long j10, long j11) {
        u uVar = c3089c.f24984b;
        while (true) {
            int i10 = uVar.f25063c;
            int i11 = uVar.f25062b;
            if (j10 < i10 - i11) {
                break;
            }
            j10 -= i10 - i11;
            uVar = uVar.f25066f;
        }
        while (j11 > 0) {
            int min = (int) Math.min(uVar.f25063c - r6, j11);
            this.f25024f.update(uVar.f25061a, (int) (uVar.f25062b + j10), min);
            j11 -= min;
            uVar = uVar.f25066f;
            j10 = 0;
        }
    }
}
