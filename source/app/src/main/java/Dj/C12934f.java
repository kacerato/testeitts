package dj;

import hi.C13481E;
import oh.AbstractC14551y;
import oh.E;
import oh.InterfaceC14516g;
import org.bouncycastle.cms.O;
import org.bouncycastle.dvcs.DVCSConstructionException;
import uh.C15624o;
import uh.V;

public class C12934f extends AbstractC12933e {

    public zh.f f84724b;

    public C12937i f84725c;

    public AbstractC12936h f84726d;

    public C12934f(O o10) throws DVCSConstructionException {
        this(V.B(o10.s().u()).A());
    }

    @Override
    public InterfaceC14516g a() {
        return this.f84724b;
    }

    public AbstractC12936h c() {
        return this.f84726d;
    }

    public C12937i d() {
        return this.f84725c;
    }

    public C13481E e() {
        return this.f84724b.y();
    }

    public C12934f(C15624o c15624o) throws DVCSConstructionException {
        super(c15624o);
        AbstractC12936h c12930b;
        if (!zh.e.f131396e.A(c15624o.v())) {
            throw new DVCSConstructionException("ContentInfo not a DVCS Request");
        }
        try {
            this.f84724b = c15624o.u().r() instanceof E ? zh.f.v(c15624o.u()) : zh.f.v(AbstractC14551y.F(c15624o.u()).H());
            C12937i c12937i = new C12937i(this.f84724b.x());
            this.f84725c = c12937i;
            int h10 = c12937i.h();
            if (h10 == zh.m.f131444c.x().intValue()) {
                c12930b = new C12932d(this.f84724b.u());
            } else if (h10 == zh.m.f131445d.x().intValue()) {
                c12930b = new r(this.f84724b.u());
            } else if (h10 == zh.m.f131446e.x().intValue()) {
                c12930b = new C12944p(this.f84724b.u());
            } else {
                if (h10 != zh.m.f131447f.x().intValue()) {
                    throw new DVCSConstructionException("Unknown service type: " + h10);
                }
                c12930b = new C12930b(this.f84724b.u());
            }
            this.f84726d = c12930b;
        } catch (Exception e10) {
            throw new DVCSConstructionException("Unable to parse content: " + e10.getMessage(), e10);
        }
    }
}
