package ni;

import Qk.C3017j;
import Qk.o;
import Qk.q;
import hi.C13486b;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import li.C14146h;
import oh.C14518h;
import oh.C14539s;
import oh.G0;
import org.bouncycastle.cert.cmp.CMPException;
import th.C15426b;
import th.C15432h;
import th.C15437m;

public class C14451d {

    public o f98238a;

    public List<C15426b> f98239b;

    public List<C13486b> f98240c;

    public List<C14539s> f98241d;

    public C14451d() {
        this(new C3017j());
    }

    public C14451d a(C14146h c14146h, BigInteger bigInteger) {
        return b(c14146h, new C14539s(bigInteger));
    }

    public C14451d b(C14146h c14146h, C14539s c14539s) {
        return c(new C15426b(c14146h.x()), c14146h.k(), c14539s);
    }

    public C14451d c(C15426b c15426b, C13486b c13486b, C14539s c14539s) {
        this.f98239b.add(c15426b);
        this.f98240c.add(c13486b);
        this.f98241d.add(c14539s);
        return this;
    }

    public C14450c d(q qVar) throws CMPException {
        C14518h c14518h = new C14518h(this.f98239b.size());
        for (int i10 = 0; i10 != this.f98239b.size(); i10++) {
            c14518h.a(new C15437m(C14448a.a(this.f98239b.get(i10), this.f98240c.get(i10), qVar, this.f98238a), this.f98241d.get(i10)));
        }
        return new C14450c(C15432h.u(new G0(c14518h)), this.f98238a);
    }

    public C14451d(o oVar) {
        this.f98239b = new ArrayList();
        this.f98240c = new ArrayList();
        this.f98241d = new ArrayList();
        this.f98238a = oVar;
    }
}
