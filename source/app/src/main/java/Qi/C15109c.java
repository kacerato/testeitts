package qi;

import dk.C12948d;
import dk.k;
import fi.C13228d;
import hi.h0;
import java.io.IOException;
import java.security.Provider;
import java.security.PublicKey;
import javax.security.auth.x500.X500Principal;
import oh.InterfaceC14520i;
import oi.C14561g;
import org.bouncycastle.cert.crmf.CRMFException;

public class C15109c extends C14561g {

    public C15107a f108186h;

    public C15109c(C14561g c14561g) {
        this(c14561g.m());
    }

    public PublicKey o() throws CRMFException {
        h0 z10 = c().z();
        if (z10 != null) {
            return this.f108186h.l(z10);
        }
        return null;
    }

    public X500Principal p() {
        C13228d C10 = c().C();
        if (C10 == null) {
            return null;
        }
        try {
            return new X500Principal(C10.s(InterfaceC14520i.f98892a));
        } catch (IOException e10) {
            throw new IllegalStateException("unable to construct DER encoding of name: " + e10.getMessage());
        }
    }

    public C15109c q(String str) {
        this.f108186h = new C15107a(new dk.i(str));
        return this;
    }

    public C15109c r(Provider provider) {
        this.f108186h = new C15107a(new k(provider));
        return this;
    }

    public C15109c(wh.e eVar) {
        super(eVar);
        this.f108186h = new C15107a(new C12948d());
    }

    public C15109c(byte[] bArr) {
        this(wh.e.w(bArr));
    }
}
