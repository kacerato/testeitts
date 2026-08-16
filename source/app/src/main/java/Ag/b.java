package Ag;

import Bg.s;
import java.io.IOException;
import java.io.OutputStream;
import vg.e;

public abstract class b<T extends vg.e> extends OutputStream {

    public j f544b;

    public T f545c;

    public b(j jVar, s sVar, char[] cArr, boolean z10) throws IOException {
        this.f544b = jVar;
        this.f545c = f(jVar, sVar, cArr, z10);
    }

    public void c() throws IOException {
        this.f544b.c();
    }

    @Override
    public void close() throws IOException {
        this.f544b.close();
    }

    public T d() {
        return this.f545c;
    }

    public long e() {
        return this.f544b.d();
    }

    public abstract T f(OutputStream outputStream, s sVar, char[] cArr, boolean z10) throws IOException;

    public void g(byte[] bArr) throws IOException {
        this.f544b.write(bArr);
    }

    @Override
    public void write(int i10) throws IOException {
        this.f544b.write(i10);
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        this.f544b.write(bArr);
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.f545c.a(bArr, i10, i11);
        this.f544b.write(bArr, i10, i11);
    }
}
