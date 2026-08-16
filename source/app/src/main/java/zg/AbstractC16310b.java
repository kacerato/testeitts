package zg;

import java.io.IOException;
import java.io.InputStream;
import vg.d;

public abstract class AbstractC16310b<T extends vg.d> extends InputStream {

    public j f131306b;

    public T f131307c;

    public byte[] f131308d;

    public byte[] f131309e = new byte[1];

    public Bg.k f131310f;

    public AbstractC16310b(j jVar, Bg.k kVar, char[] cArr, int i10, boolean z10) throws IOException {
        this.f131306b = jVar;
        this.f131307c = g(kVar, cArr, z10);
        this.f131310f = kVar;
        if (Fg.h.i(kVar).equals(Cg.d.DEFLATE)) {
            this.f131308d = new byte[i10];
        }
    }

    public final void a(byte[] bArr, int i10) {
        byte[] bArr2 = this.f131308d;
        if (bArr2 != null) {
            System.arraycopy(bArr, 0, bArr2, 0, i10);
        }
    }

    public void b(InputStream inputStream, int i10) throws IOException {
    }

    public T c() {
        return this.f131307c;
    }

    @Override
    public void close() throws IOException {
        this.f131306b.close();
    }

    public byte[] d() {
        return this.f131308d;
    }

    public Bg.k e() {
        return this.f131310f;
    }

    public long f() {
        return this.f131306b.c();
    }

    public abstract T g(Bg.k kVar, char[] cArr, boolean z10) throws IOException;

    public int h(byte[] bArr) throws IOException {
        return this.f131306b.d(bArr);
    }

    @Override
    public int read() throws IOException {
        if (read(this.f131309e) == -1) {
            return -1;
        }
        return this.f131309e[0] & 255;
    }

    @Override
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int m10 = Fg.h.m(this.f131306b, bArr, i10, i11);
        if (m10 > 0) {
            a(bArr, m10);
            this.f131307c.a(bArr, i10, m10);
        }
        return m10;
    }
}
