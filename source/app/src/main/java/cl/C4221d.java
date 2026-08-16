package cl;

import Bi.A;
import Xi.C3335c;

public class C4221d implements A {

    public C4219b f35001a;

    public j f35002b;

    public C4221d(j jVar) {
        this.f35002b = jVar;
        c(jVar);
    }

    @Override
    public int a() {
        return this.f35001a.d();
    }

    @Override
    public byte[] b(byte[] bArr) {
        return this.f35001a.w(bArr, this.f35002b.getEncoded());
    }

    public final void c(C3335c c3335c) {
        this.f35001a = ((j) c3335c).d().a();
    }
}
