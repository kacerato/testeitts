package dj;

import oh.AbstractC14551y;
import oh.E;
import oh.InterfaceC14516g;
import org.bouncycastle.cms.O;
import org.bouncycastle.dvcs.DVCSConstructionException;
import uh.C15624o;
import uh.V;

public class C12938j extends AbstractC12933e {

    public zh.i f84732b;

    public C12938j(O o10) throws DVCSConstructionException {
        this(V.B(o10.s().u()).A());
    }

    @Override
    public InterfaceC14516g a() {
        return this.f84732b;
    }

    public C12938j(C15624o c15624o) throws DVCSConstructionException {
        super(c15624o);
        if (!zh.e.f131397f.A(c15624o.v())) {
            throw new DVCSConstructionException("ContentInfo not a DVCS Response");
        }
        try {
            this.f84732b = c15624o.u().r() instanceof E ? zh.i.w(c15624o.u()) : zh.i.w(AbstractC14551y.F(c15624o.u()).H());
        } catch (Exception e10) {
            throw new DVCSConstructionException("Unable to parse content: " + e10.getMessage(), e10);
        }
    }
}
