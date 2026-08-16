package ti;

import Qk.InterfaceC3013f;
import Vh.p;
import hi.C13479C;
import hi.C13486b;
import hi.C13503o;
import hi.h0;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import li.C14146h;
import oh.A0;
import oh.C14518h;
import oh.C14530n;
import oh.C14538r0;
import oh.C14548w0;
import oh.G0;
import oh.InterfaceC14520i;
import org.bouncycastle.cert.ocsp.OCSPException;

public class C15449b {

    public List f117653a = new ArrayList();

    public C13479C f117654b = null;

    public C15459l f117655c;

    public static class a {

        public C15450c f117656a;

        public Vh.c f117657b;

        public C14530n f117658c;

        public C14530n f117659d;

        public C13479C f117660e;

        /* JADX WARN: Removed duplicated region for block: B:7:0x0060  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public a(C15450c c15450c, InterfaceC15451d interfaceC15451d, Date date, Date date2, C13479C c13479c) {
            Vh.c cVar;
            this.f117656a = c15450c;
            if (interfaceC15451d == null) {
                cVar = new Vh.c();
            } else {
                if (!(interfaceC15451d instanceof C15462o)) {
                    C15460m c15460m = (C15460m) interfaceC15451d;
                    this.f117657b = c15460m.c() ? new Vh.c(new Vh.m(new C14530n(c15460m.b()), C13503o.w(c15460m.a()))) : new Vh.c(new Vh.m(new C14530n(c15460m.b()), null));
                    this.f117658c = new C14548w0(date);
                    this.f117659d = date2 != null ? new C14548w0(date2) : null;
                    this.f117660e = c13479c;
                }
                cVar = new Vh.c(2, A0.f98776c);
            }
            this.f117657b = cVar;
            this.f117658c = new C14548w0(date);
            this.f117659d = date2 != null ? new C14548w0(date2) : null;
            this.f117660e = c13479c;
        }

        public p a() throws Exception {
            return new p(this.f117656a.h(), this.f117657b, this.f117658c, this.f117659d, this.f117660e);
        }
    }

    public C15449b(h0 h0Var, Qk.p pVar) throws OCSPException {
        this.f117655c = new C15459l(h0Var, pVar);
    }

    public C15449b a(C15450c c15450c, InterfaceC15451d interfaceC15451d) {
        e(c15450c, interfaceC15451d, new Date(), null, null);
        return this;
    }

    public C15449b b(C15450c c15450c, InterfaceC15451d interfaceC15451d, C13479C c13479c) {
        e(c15450c, interfaceC15451d, new Date(), null, c13479c);
        return this;
    }

    public C15449b c(C15450c c15450c, InterfaceC15451d interfaceC15451d, Date date, C13479C c13479c) {
        e(c15450c, interfaceC15451d, new Date(), date, c13479c);
        return this;
    }

    public C15449b d(C15450c c15450c, InterfaceC15451d interfaceC15451d, Date date, Date date2) {
        e(c15450c, interfaceC15451d, date, date2, null);
        return this;
    }

    public C15449b e(C15450c c15450c, InterfaceC15451d interfaceC15451d, Date date, Date date2, C13479C c13479c) {
        this.f117653a.add(new a(c15450c, interfaceC15451d, date, date2, c13479c));
        return this;
    }

    public C15448a f(InterfaceC3013f interfaceC3013f, C14146h[] c14146hArr, Date date) throws OCSPException {
        G0 g02;
        Iterator it = this.f117653a.iterator();
        C14518h c14518h = new C14518h();
        while (it.hasNext()) {
            try {
                c14518h.a(((a) it.next()).a());
            } catch (Exception e10) {
                throw new OCSPException("exception creating Request", e10);
            }
        }
        Vh.l lVar = new Vh.l(this.f117655c.a(), new C14530n(date), new G0(c14518h), this.f117654b);
        try {
            OutputStream outputStream = interfaceC3013f.getOutputStream();
            outputStream.write(lVar.s(InterfaceC14520i.f98892a));
            outputStream.close();
            C14538r0 c14538r0 = new C14538r0(interfaceC3013f.getSignature());
            C13486b a10 = interfaceC3013f.a();
            if (c14146hArr == null || c14146hArr.length <= 0) {
                g02 = null;
            } else {
                C14518h c14518h2 = new C14518h();
                for (int i10 = 0; i10 != c14146hArr.length; i10++) {
                    c14518h2.a(c14146hArr[i10].x());
                }
                g02 = new G0(c14518h2);
            }
            return new C15448a(new Vh.a(lVar, a10, c14538r0, g02));
        } catch (Exception e11) {
            throw new OCSPException("exception processing TBSRequest: " + e11.getMessage(), e11);
        }
    }

    public C15449b g(C13479C c13479c) {
        this.f117654b = c13479c;
        return this;
    }

    public C15449b(C15459l c15459l) {
        this.f117655c = c15459l;
    }
}
