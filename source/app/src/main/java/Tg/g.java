package Tg;

import java.io.IOException;
import java.util.zip.Deflater;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

public final class g implements x {

    public final d f25001b;

    public final Deflater f25002c;

    public boolean f25003d;

    public g(x xVar, Deflater deflater) {
        this(p.c(xVar), deflater);
    }

    @IgnoreJRERequirement
    public final void a(boolean z10) throws IOException {
        u V10;
        int deflate;
        C3089c C10 = this.f25001b.C();
        while (true) {
            V10 = C10.V(1);
            if (z10) {
                Deflater deflater = this.f25002c;
                byte[] bArr = V10.f25061a;
                int i10 = V10.f25063c;
                deflate = deflater.deflate(bArr, i10, 8192 - i10, 2);
            } else {
                Deflater deflater2 = this.f25002c;
                byte[] bArr2 = V10.f25061a;
                int i11 = V10.f25063c;
                deflate = deflater2.deflate(bArr2, i11, 8192 - i11);
            }
            if (deflate > 0) {
                V10.f25063c += deflate;
                C10.f24985c += deflate;
                this.f25001b.W();
            } else if (this.f25002c.needsInput()) {
                break;
            }
        }
        if (V10.f25062b == V10.f25063c) {
            C10.f24984b = V10.b();
            v.a(V10);
        }
    }

    @Override
    public z a0() {
        return this.f25001b.a0();
    }

    public void c() throws IOException {
        this.f25002c.finish();
        a(false);
    }

    @Override
    public void close() throws IOException {
        if (this.f25003d) {
            return;
        }
        try {
            c();
            th = null;
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.f25002c.end();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        try {
            this.f25001b.close();
        } catch (Throwable th4) {
            if (th == null) {
                th = th4;
            }
        }
        this.f25003d = true;
        if (th != null) {
            B.f(th);
        }
    }

    @Override
    public void flush() throws IOException {
        a(true);
        this.f25001b.flush();
    }

    @Override
    public void h0(C3089c c3089c, long j10) throws IOException {
        B.b(c3089c.f24985c, 0L, j10);
        while (j10 > 0) {
            u uVar = c3089c.f24984b;
            int min = (int) Math.min(j10, uVar.f25063c - uVar.f25062b);
            this.f25002c.setInput(uVar.f25061a, uVar.f25062b, min);
            a(false);
            long j11 = min;
            c3089c.f24985c -= j11;
            int i10 = uVar.f25062b + min;
            uVar.f25062b = i10;
            if (i10 == uVar.f25063c) {
                c3089c.f24984b = uVar.b();
                v.a(uVar);
            }
            j10 -= j11;
        }
    }

    public String toString() {
        return "DeflaterSink(" + ((Object) this.f25001b) + ")";
    }

    public g(d dVar, Deflater deflater) {
        if (dVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (deflater != null) {
            this.f25001b = dVar;
            this.f25002c = deflater;
            return;
        }
        throw new IllegalArgumentException("inflater == null");
    }
}
