package org.bouncycastle.cms.jcajce;

import hi.C13486b;
import java.security.Key;
import java.security.PrivateKey;
import java.security.Provider;
import java.util.HashMap;
import java.util.Map;
import oh.C14549x;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.InterfaceC14637i0;
import org.bouncycastle.operator.OperatorException;

public abstract class AbstractC14661w implements InterfaceC14637i0 {

    public PrivateKey f100957c;

    public C14642c f100958d;

    public C14642c f100959e;

    public Map f100960f;

    public boolean f100961g;

    public boolean f100962h;

    public AbstractC14661w(PrivateKey privateKey) {
        C14642c c14642c = new C14642c(new C14641b());
        this.f100958d = c14642c;
        this.f100959e = c14642c;
        this.f100960f = new HashMap();
        this.f100961g = false;
        this.f100957c = C14640a.a(privateKey);
    }

    public Key g(C13486b c13486b, C13486b c13486b2, byte[] bArr) throws CMSException {
        uh.C.v(c13486b.x());
        C14654o c14654o = (C14654o) this.f100958d.i(c13486b, this.f100957c);
        if (!this.f100960f.isEmpty()) {
            for (C14549x c14549x : this.f100960f.o()) {
                c14654o.d(c14549x, (String) this.f100960f.get(c14549x));
            }
        }
        try {
            Key x10 = this.f100958d.x(c13486b2, c14654o.b(c13486b2, bArr));
            if (this.f100961g) {
                this.f100958d.A(c13486b2, x10);
            }
            return x10;
        } catch (OperatorException e10) {
            throw new CMSException("exception unwrapping key: " + e10.getMessage(), e10);
        }
    }

    public AbstractC14661w h(C14549x c14549x, String str) {
        this.f100960f.put(c14549x, str);
        return this;
    }

    public AbstractC14661w i(String str) {
        this.f100959e = C14640a.c(str);
        return this;
    }

    public AbstractC14661w j(Provider provider) {
        this.f100959e = C14640a.d(provider);
        return this;
    }

    public AbstractC14661w k(boolean z10) {
        this.f100961g = z10;
        return this;
    }

    public AbstractC14661w l(boolean z10) {
        this.f100962h = z10;
        return this;
    }

    public AbstractC14661w m(String str) {
        C14642c c14642c = new C14642c(new S(str));
        this.f100958d = c14642c;
        this.f100959e = c14642c;
        return this;
    }

    public AbstractC14661w n(Provider provider) {
        C14642c c14642c = new C14642c(new T(provider));
        this.f100958d = c14642c;
        this.f100959e = c14642c;
        return this;
    }
}
