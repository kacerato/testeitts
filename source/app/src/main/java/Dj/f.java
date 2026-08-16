package Dj;

import Ek.A;
import Ek.w;
import Fk.C2551x;

public class f {

    public final c f5240a;

    public final byte[] f5241b;

    public f(c cVar, byte[] bArr) {
        this.f5240a = cVar;
        this.f5241b = bArr;
    }

    public A a(byte[] bArr) {
        try {
            return A.u(w.u().c(new C2551x(this.f5241b)).b(this.f5240a.a(bArr)).a());
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage(), e10);
        }
    }
}
