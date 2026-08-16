package Ng;

import Ng.c;
import Tg.C3089c;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class i implements Closeable {

    public static final Logger f16347h = Logger.getLogger(d.class.getName());

    public final Tg.d f16348b;

    public final boolean f16349c;

    public final C3089c f16350d;

    public int f16351e;

    public boolean f16352f;

    public final c.b f16353g;

    public i(Tg.d dVar, boolean z10) {
        this.f16348b = dVar;
        this.f16349c = z10;
        C3089c c3089c = new C3089c();
        this.f16350d = c3089c;
        this.f16353g = new c.b(c3089c);
        this.f16351e = 16384;
    }

    public static void t(Tg.d dVar, int i10) throws IOException {
        dVar.writeByte((i10 >>> 16) & 255);
        dVar.writeByte((i10 >>> 8) & 255);
        dVar.writeByte(i10 & 255);
    }

    public synchronized void a(l lVar) throws IOException {
        try {
            if (this.f16352f) {
                throw new IOException("closed");
            }
            this.f16351e = lVar.g(this.f16351e);
            if (lVar.d() != -1) {
                this.f16353g.e(lVar.d());
            }
            f(0, 0, (byte) 4, (byte) 1);
            this.f16348b.flush();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void c() throws IOException {
        try {
            if (this.f16352f) {
                throw new IOException("closed");
            }
            if (this.f16349c) {
                Logger logger = f16347h;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(Gg.c.s(">> CONNECTION %s", d.f16204a.s()));
                }
                this.f16348b.write(d.f16204a.a0());
                this.f16348b.flush();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public synchronized void close() throws IOException {
        this.f16352f = true;
        this.f16348b.close();
    }

    public synchronized void d(boolean z10, int i10, C3089c c3089c, int i11) throws IOException {
        if (this.f16352f) {
            throw new IOException("closed");
        }
        e(i10, z10 ? (byte) 1 : (byte) 0, c3089c, i11);
    }

    public void e(int i10, byte b10, C3089c c3089c, int i11) throws IOException {
        f(i10, i11, (byte) 0, b10);
        if (i11 > 0) {
            this.f16348b.h0(c3089c, i11);
        }
    }

    public void f(int i10, int i11, byte b10, byte b11) throws IOException {
        Logger logger = f16347h;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(d.b(false, i10, i11, b10, b11));
        }
        int i12 = this.f16351e;
        if (i11 > i12) {
            throw d.c("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i12), Integer.valueOf(i11));
        }
        if ((Integer.MIN_VALUE & i10) != 0) {
            throw d.c("reserved bit set: %s", Integer.valueOf(i10));
        }
        t(this.f16348b, i11);
        this.f16348b.writeByte(b10 & 255);
        this.f16348b.writeByte(b11 & 255);
        this.f16348b.writeInt(i10 & Integer.MAX_VALUE);
    }

    public synchronized void flush() throws IOException {
        if (this.f16352f) {
            throw new IOException("closed");
        }
        this.f16348b.flush();
    }

    public synchronized void g(int i10, a aVar, byte[] bArr) throws IOException {
        try {
            if (this.f16352f) {
                throw new IOException("closed");
            }
            if (aVar.httpCode == -1) {
                throw d.c("errorCode.httpCode == -1", new Object[0]);
            }
            f(0, bArr.length + 8, (byte) 7, (byte) 0);
            this.f16348b.writeInt(i10);
            this.f16348b.writeInt(aVar.httpCode);
            if (bArr.length > 0) {
                this.f16348b.write(bArr);
            }
            this.f16348b.flush();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void h(int i10, List<b> list) throws IOException {
        if (this.f16352f) {
            throw new IOException("closed");
        }
        j(false, i10, list);
    }

    public void j(boolean z10, int i10, List<b> list) throws IOException {
        if (this.f16352f) {
            throw new IOException("closed");
        }
        this.f16353g.g(list);
        long Q10 = this.f16350d.Q();
        int min = (int) Math.min(this.f16351e, Q10);
        long j10 = min;
        byte b10 = Q10 == j10 ? (byte) 4 : (byte) 0;
        if (z10) {
            b10 = (byte) (b10 | 1);
        }
        f(i10, min, (byte) 1, b10);
        this.f16348b.h0(this.f16350d, j10);
        if (Q10 > j10) {
            s(i10, Q10 - j10);
        }
    }

    public int k() {
        return this.f16351e;
    }

    public synchronized void l(boolean z10, int i10, int i11) throws IOException {
        if (this.f16352f) {
            throw new IOException("closed");
        }
        f(0, 8, (byte) 6, z10 ? (byte) 1 : (byte) 0);
        this.f16348b.writeInt(i10);
        this.f16348b.writeInt(i11);
        this.f16348b.flush();
    }

    public synchronized void m(int i10, int i11, List<b> list) throws IOException {
        if (this.f16352f) {
            throw new IOException("closed");
        }
        this.f16353g.g(list);
        long Q10 = this.f16350d.Q();
        int min = (int) Math.min(this.f16351e - 4, Q10);
        long j10 = min;
        f(i10, min + 4, (byte) 5, Q10 == j10 ? (byte) 4 : (byte) 0);
        this.f16348b.writeInt(i11 & Integer.MAX_VALUE);
        this.f16348b.h0(this.f16350d, j10);
        if (Q10 > j10) {
            s(i10, Q10 - j10);
        }
    }

    public synchronized void n(int i10, a aVar) throws IOException {
        if (this.f16352f) {
            throw new IOException("closed");
        }
        if (aVar.httpCode == -1) {
            throw new IllegalArgumentException();
        }
        f(i10, 4, (byte) 3, (byte) 0);
        this.f16348b.writeInt(aVar.httpCode);
        this.f16348b.flush();
    }

    public synchronized void o(l lVar) throws IOException {
        try {
            if (this.f16352f) {
                throw new IOException("closed");
            }
            int i10 = 0;
            f(0, lVar.l() * 6, (byte) 4, (byte) 0);
            while (i10 < 10) {
                if (lVar.i(i10)) {
                    this.f16348b.writeShort(i10 == 4 ? 3 : i10 == 7 ? 4 : i10);
                    this.f16348b.writeInt(lVar.b(i10));
                }
                i10++;
            }
            this.f16348b.flush();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void p(boolean z10, int i10, List<b> list) throws IOException {
        if (this.f16352f) {
            throw new IOException("closed");
        }
        j(z10, i10, list);
    }

    public synchronized void q(boolean z10, int i10, int i11, List<b> list) throws IOException {
        if (this.f16352f) {
            throw new IOException("closed");
        }
        j(z10, i10, list);
    }

    public synchronized void r(int i10, long j10) throws IOException {
        if (this.f16352f) {
            throw new IOException("closed");
        }
        if (j10 == 0 || j10 > 2147483647L) {
            throw d.c("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j10));
        }
        f(i10, 4, (byte) 8, (byte) 0);
        this.f16348b.writeInt((int) j10);
        this.f16348b.flush();
    }

    public final void s(int i10, long j10) throws IOException {
        while (j10 > 0) {
            int min = (int) Math.min(this.f16351e, j10);
            long j11 = min;
            j10 -= j11;
            f(i10, min, (byte) 9, j10 == 0 ? (byte) 4 : (byte) 0);
            this.f16348b.h0(this.f16350d, j11);
        }
    }
}
