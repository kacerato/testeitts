package org.bouncycastle.operator.jcajce;

import Qk.AbstractC3010c;
import Qk.r;
import ck.r;
import dk.C12948d;
import hi.C13486b;
import java.security.PrivateKey;
import java.security.Provider;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.Cipher;
import org.bouncycastle.crypto.util.f;
import org.bouncycastle.operator.OperatorException;
import uh.C15633y;
import uh.T;

public class i extends AbstractC3010c {

    public OperatorHelper f101969b;

    public Map f101970c;

    public PrivateKey f101971d;

    public byte[] f101972e;

    public byte[] f101973f;

    public i(C13486b c13486b, PrivateKey privateKey, byte[] bArr, byte[] bArr2) {
        super(c13486b);
        this.f101969b = new OperatorHelper(new C12948d());
        this.f101970c = new HashMap();
        this.f101971d = privateKey;
        this.f101972e = org.bouncycastle.util.a.p(bArr);
        this.f101973f = org.bouncycastle.util.a.p(bArr2);
    }

    @Override
    public r b(C13486b c13486b, byte[] bArr) throws OperatorException {
        C15633y v10 = C15633y.v(a().x());
        Cipher d10 = this.f101969b.d(a().u(), this.f101970c);
        String p10 = this.f101969b.p(v10.u().u());
        T u10 = T.u(v10.x().x());
        try {
            d10.init(4, this.f101971d, new r.a(p10, u10.x().intValue() * 8, new f.b(v10.u(), this.f101972e, this.f101973f).a().a()).b(u10.v()).a());
            return new g(c13486b, d10.unwrap(bArr, this.f101969b.m(c13486b.u()), 3));
        } catch (Exception e10) {
            throw new OperatorException("Unable to unwrap contents key: " + e10.getMessage(), e10);
        }
    }

    public i c(String str) {
        this.f101969b = new OperatorHelper(new dk.i(str));
        return this;
    }

    public i d(Provider provider) {
        this.f101969b = new OperatorHelper(new dk.k(provider));
        return this;
    }
}
