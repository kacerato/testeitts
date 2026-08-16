package org.bouncycastle.cms.jcajce;

import Qk.AbstractC3010c;
import ck.r;
import hi.C13486b;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.interfaces.RSAPrivateKey;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.Cipher;
import oh.C14549x;
import org.bouncycastle.operator.OperatorException;
import uh.C15620k;

public class C14654o extends AbstractC3010c {

    public final C13486b f100920b;

    public final int f100921c;

    public InterfaceC14643d f100922d;

    public Map f100923e;

    public PrivateKey f100924f;

    public C14654o(C13486b c13486b, PrivateKey privateKey) {
        super(Xh.v.v(privateKey.getEncoded()).y());
        this.f100922d = new C14641b();
        this.f100923e = new HashMap();
        uh.C v10 = uh.C.v(c13486b.x());
        this.f100924f = privateKey;
        this.f100920b = c13486b;
        this.f100921c = C14640a.h(v10.C().u());
    }

    @Override
    public Qk.r b(C13486b c13486b, byte[] bArr) throws OperatorException {
        uh.C v10 = uh.C.v(this.f100920b.x());
        C13486b C10 = v10.C();
        try {
            byte[] encoded = new C15620k(C10, this.f100921c, v10.B()).getEncoded();
            if (!(this.f100924f instanceof RSAPrivateKey)) {
                Cipher b10 = C14640a.b(this.f100922d, v10.y().u(), new HashMap());
                String j10 = C14640a.j(C10.u());
                b10.init(4, this.f100924f, new r.a(j10, this.f100921c * 8, encoded).b(v10.x()).a());
                return new org.bouncycastle.operator.jcajce.g(c13486b, b10.unwrap(org.bouncycastle.util.a.B(v10.z().H(), v10.u().H()), j10, 3));
            }
            Cipher b11 = C14640a.b(this.f100922d, v10.y().u(), new HashMap());
            try {
                String j11 = C14640a.j(C10.u());
                b11.init(4, this.f100924f, new r.a(j11, this.f100921c * 8, encoded).b(v10.x()).a());
                return new org.bouncycastle.operator.jcajce.g(c13486b, b11.unwrap(org.bouncycastle.util.a.B(v10.z().H(), v10.u().H()), j11, 3));
            } catch (Exception e10) {
                throw new OperatorException("Unable to wrap contents key: " + e10.getMessage(), e10);
            }
        } catch (Exception e11) {
            throw new OperatorException("exception encrypting key: " + e11.getMessage(), e11);
        }
    }

    public int c() {
        return this.f100921c;
    }

    public C14654o d(C14549x c14549x, String str) {
        this.f100923e.put(c14549x, str);
        return this;
    }

    public C14654o e(String str) {
        this.f100922d = new S(str);
        return this;
    }

    public C14654o f(Provider provider) {
        this.f100922d = new T(provider);
        return this;
    }
}
