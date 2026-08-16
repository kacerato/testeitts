package oi;

import Qk.InterfaceC3013f;
import hi.C13481E;
import hi.h0;
import oh.C14538r0;
import org.bouncycastle.cert.crmf.CRMFException;

public class C14575u {

    public wh.f f99062a;

    public h0 f99063b;

    public C13481E f99064c;

    public wh.q f99065d;

    public C14575u(h0 h0Var) {
        this.f99063b = h0Var;
    }

    public wh.s a(InterfaceC3013f interfaceC3013f) {
        wh.t tVar;
        C13481E c13481e = this.f99064c;
        if (c13481e != null && this.f99065d != null) {
            throw new IllegalStateException("name and publicKeyMAC cannot both be set.");
        }
        wh.f fVar = this.f99062a;
        if (fVar != null) {
            C14556b.b(fVar, interfaceC3013f.getOutputStream());
            tVar = null;
        } else if (c13481e != null) {
            wh.t tVar2 = new wh.t(c13481e, this.f99063b);
            C14556b.b(tVar2, interfaceC3013f.getOutputStream());
            tVar = tVar2;
        } else {
            tVar = new wh.t(this.f99065d, this.f99063b);
            C14556b.b(tVar, interfaceC3013f.getOutputStream());
        }
        return new wh.s(tVar, interfaceC3013f.a(), new C14538r0(interfaceC3013f.getSignature()));
    }

    public C14575u b(C14571q c14571q, char[] cArr) throws CRMFException {
        this.f99065d = AbstractC14572r.a(c14571q, cArr, this.f99063b);
        return this;
    }

    public C14575u c(C13481E c13481e) {
        this.f99064c = c13481e;
        return this;
    }

    public C14575u(wh.f fVar) {
        this.f99062a = fVar;
    }
}
