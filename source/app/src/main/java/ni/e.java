package ni;

import Qk.o;
import Qk.q;
import hi.C13486b;
import java.math.BigInteger;
import li.C14146h;
import org.bouncycastle.cert.cmp.CMPException;
import th.C15426b;
import th.C15437m;
import th.L;

public class e {

    public o f98242a;

    public C15437m f98243b;

    public e(o oVar, C15437m c15437m) {
        this.f98242a = oVar;
        this.f98243b = c15437m;
    }

    public BigInteger a() {
        return this.f98243b.v().I();
    }

    public L b() {
        return this.f98243b.z();
    }

    public boolean c(C14146h c14146h, q qVar) throws CMPException {
        return d(new C15426b(c14146h.x()), c14146h.k(), qVar);
    }

    public boolean d(C15426b c15426b, C13486b c13486b, q qVar) throws CMPException {
        return org.bouncycastle.util.a.I(this.f98243b.u().H(), C14448a.a(c15426b, c13486b, qVar, this.f98242a));
    }
}
