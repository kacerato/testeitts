package ti;

import Qk.InterfaceC3013f;
import Vh.q;
import fi.C13228d;
import hi.C13479C;
import hi.C13481E;
import hi.C13486b;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import li.C14146h;
import oh.C14518h;
import oh.C14538r0;
import oh.G0;
import oh.InterfaceC14520i;
import org.bouncycastle.cert.ocsp.OCSPException;

public class C15453f {

    public List f117667a = new ArrayList();

    public C13481E f117668b = null;

    public C13479C f117669c = null;

    public static class a {

        public C15450c f117670a;

        public C13479C f117671b;

        public a(C15450c c15450c, C13479C c13479c) {
            this.f117670a = c15450c;
            this.f117671b = c13479c;
        }

        public Vh.i a() throws Exception {
            return new Vh.i(this.f117670a.h(), this.f117671b);
        }
    }

    public C15453f a(C15450c c15450c) {
        this.f117667a.add(new a(c15450c, null));
        return this;
    }

    public C15453f b(C15450c c15450c, C13479C c13479c) {
        this.f117667a.add(new a(c15450c, c13479c));
        return this;
    }

    public C15452e c() throws OCSPException {
        return e(null, null);
    }

    public C15452e d(InterfaceC3013f interfaceC3013f, C14146h[] c14146hArr) throws OCSPException, IllegalArgumentException {
        if (interfaceC3013f != null) {
            return e(interfaceC3013f, c14146hArr);
        }
        throw new IllegalArgumentException("no signer specified");
    }

    public final C15452e e(InterfaceC3013f interfaceC3013f, C14146h[] c14146hArr) throws OCSPException {
        Vh.o oVar;
        Iterator it = this.f117667a.iterator();
        C14518h c14518h = new C14518h();
        while (it.hasNext()) {
            try {
                c14518h.a(((a) it.next()).a());
            } catch (Exception e10) {
                throw new OCSPException("exception creating Request", e10);
            }
        }
        q qVar = new q(this.f117668b, new G0(c14518h), this.f117669c);
        if (interfaceC3013f == null) {
            oVar = null;
        } else {
            if (this.f117668b == null) {
                throw new OCSPException("requestorName must be specified if request is signed.");
            }
            try {
                OutputStream outputStream = interfaceC3013f.getOutputStream();
                outputStream.write(qVar.s(InterfaceC14520i.f98892a));
                outputStream.close();
                C14538r0 c14538r0 = new C14538r0(interfaceC3013f.getSignature());
                C13486b a10 = interfaceC3013f.a();
                if (c14146hArr == null || c14146hArr.length <= 0) {
                    oVar = new Vh.o(a10, c14538r0);
                } else {
                    C14518h c14518h2 = new C14518h();
                    for (int i10 = 0; i10 != c14146hArr.length; i10++) {
                        c14518h2.a(c14146hArr[i10].x());
                    }
                    oVar = new Vh.o(a10, c14538r0, new G0(c14518h2));
                }
            } catch (Exception e11) {
                throw new OCSPException("exception processing TBSRequest: " + ((Object) e11), e11);
            }
        }
        return new C15452e(new Vh.f(qVar, oVar));
    }

    public C15453f f(C13479C c13479c) {
        this.f117669c = c13479c;
        return this;
    }

    public C15453f g(C13228d c13228d) {
        this.f117668b = new C13481E(4, c13228d);
        return this;
    }

    public C15453f h(C13481E c13481e) {
        this.f117668b = c13481e;
        return this;
    }
}
