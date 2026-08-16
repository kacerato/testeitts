package Dj;

import Ek.w;
import Fk.C2551x;
import org.bouncycastle.util.r;

public class d implements r<e> {

    public final C2551x f5237b;

    public d(C2551x c2551x) {
        this.f5237b = c2551x;
    }

    @Override
    public boolean Z2(e eVar) {
        if (eVar.c().v() == 2) {
            return org.bouncycastle.util.a.g(w.w(eVar.c().x()).x().u(), this.f5237b.u());
        }
        return false;
    }

    @Override
    public Object clone() {
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C2551x c2551x = this.f5237b;
        C2551x c2551x2 = ((d) obj).f5237b;
        return c2551x != null ? c2551x.equals(c2551x2) : c2551x2 == null;
    }

    public int hashCode() {
        C2551x c2551x = this.f5237b;
        if (c2551x != null) {
            return c2551x.hashCode();
        }
        return 0;
    }

    public d(byte[] bArr) {
        this(new C2551x(bArr));
    }
}
