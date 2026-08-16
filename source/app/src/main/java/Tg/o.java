package Tg;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

public final class o implements y {

    public final e f25029b;

    public final Inflater f25030c;

    public int f25031d;

    public boolean f25032e;

    public o(y yVar, Inflater inflater) {
        this(p.d(yVar), inflater);
    }

    @Override
    public long K(C3089c c3089c, long j10) throws IOException {
        boolean c10;
        if (j10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
        if (this.f25032e) {
            throw new IllegalStateException("closed");
        }
        if (j10 == 0) {
            return 0L;
        }
        do {
            c10 = c();
            try {
                u V10 = c3089c.V(1);
                int inflate = this.f25030c.inflate(V10.f25061a, V10.f25063c, (int) Math.min(j10, 8192 - V10.f25063c));
                if (inflate > 0) {
                    V10.f25063c += inflate;
                    long j11 = inflate;
                    c3089c.f24985c += j11;
                    return j11;
                }
                if (!this.f25030c.finished() && !this.f25030c.needsDictionary()) {
                }
                d();
                if (V10.f25062b != V10.f25063c) {
                    return -1L;
                }
                c3089c.f24984b = V10.b();
                v.a(V10);
                return -1L;
            } catch (DataFormatException e10) {
                throw new IOException(e10);
            }
        } while (!c10);
        throw new EOFException("source exhausted prematurely");
    }

    @Override
    public z a0() {
        return this.f25029b.a0();
    }

    public final boolean c() throws IOException {
        if (!this.f25030c.needsInput()) {
            return false;
        }
        d();
        if (this.f25030c.getRemaining() != 0) {
            throw new IllegalStateException("?");
        }
        if (this.f25029b.b2()) {
            return true;
        }
        u uVar = this.f25029b.C().f24984b;
        int i10 = uVar.f25063c;
        int i11 = uVar.f25062b;
        int i12 = i10 - i11;
        this.f25031d = i12;
        this.f25030c.setInput(uVar.f25061a, i11, i12);
        return false;
    }

    @Override
    public void close() throws IOException {
        if (this.f25032e) {
            return;
        }
        this.f25030c.end();
        this.f25032e = true;
        this.f25029b.close();
    }

    public final void d() throws IOException {
        int i10 = this.f25031d;
        if (i10 == 0) {
            return;
        }
        int remaining = i10 - this.f25030c.getRemaining();
        this.f25031d -= remaining;
        this.f25029b.skip(remaining);
    }

    public o(e eVar, Inflater inflater) {
        if (eVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (inflater != null) {
            this.f25029b = eVar;
            this.f25030c = inflater;
            return;
        }
        throw new IllegalArgumentException("inflater == null");
    }
}
