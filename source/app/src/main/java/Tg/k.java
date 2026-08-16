package Tg;

import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Deflater;

public final class k implements x {

    public final d f25007b;

    public final Deflater f25008c;

    public final g f25009d;

    public boolean f25010e;

    public final CRC32 f25011f = new CRC32();

    public k(x xVar) {
        if (xVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        Deflater deflater = new Deflater(-1, true);
        this.f25008c = deflater;
        d c10 = p.c(xVar);
        this.f25007b = c10;
        this.f25009d = new g(c10, deflater);
        f();
    }

    @Override
    public z a0() {
        return this.f25007b.a0();
    }

    public final Deflater c() {
        return this.f25008c;
    }

    @Override
    public void close() throws IOException {
        if (this.f25010e) {
            return;
        }
        try {
            this.f25009d.c();
            e();
            th = null;
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.f25008c.end();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        try {
            this.f25007b.close();
        } catch (Throwable th4) {
            if (th == null) {
                th = th4;
            }
        }
        this.f25010e = true;
        if (th != null) {
            B.f(th);
        }
    }

    public final void d(C3089c c3089c, long j10) {
        u uVar = c3089c.f24984b;
        while (j10 > 0) {
            int min = (int) Math.min(j10, uVar.f25063c - uVar.f25062b);
            this.f25011f.update(uVar.f25061a, uVar.f25062b, min);
            j10 -= min;
            uVar = uVar.f25066f;
        }
    }

    public final void e() throws IOException {
        this.f25007b.M((int) this.f25011f.getValue());
        this.f25007b.M((int) this.f25008c.getBytesRead());
    }

    public final void f() {
        C3089c C10 = this.f25007b.C();
        C10.writeShort(8075);
        C10.writeByte(8);
        C10.writeByte(0);
        C10.writeInt(0);
        C10.writeByte(0);
        C10.writeByte(0);
    }

    @Override
    public void flush() throws IOException {
        this.f25009d.flush();
    }

    @Override
    public void h0(C3089c c3089c, long j10) throws IOException {
        if (j10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
        if (j10 == 0) {
            return;
        }
        d(c3089c, j10);
        this.f25009d.h0(c3089c, j10);
    }
}
