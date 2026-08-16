package org.bouncycastle.cms.jcajce;

import ck.C4206D;
import hi.C13486b;
import java.security.Key;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import javax.crypto.SecretKey;
import oh.C14549x;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.InterfaceC14673p0;
import org.bouncycastle.operator.OperatorException;
import uh.InterfaceC15621l;
import yh.InterfaceC16192a;

public abstract class J implements InterfaceC14673p0 {

    public PrivateKey f100840c;

    public C14642c f100841d;

    public C14642c f100842e;

    public Map f100843f;

    public boolean f100844g;

    public boolean f100845h;

    public J(PrivateKey privateKey) {
        C14642c c14642c = new C14642c(new C14641b());
        this.f100841d = c14642c;
        this.f100842e = c14642c;
        this.f100843f = new HashMap();
        this.f100844g = false;
        this.f100840c = C14640a.a(privateKey);
    }

    public Key g(C13486b c13486b, C13486b c13486b2, byte[] bArr) throws CMSException {
        C14642c c14642c;
        if (C14640a.l(c13486b.u())) {
            try {
                yh.j u10 = yh.j.u(bArr);
                yh.k x10 = u10.x();
                PublicKey generatePublic = this.f100841d.k(c13486b.u()).generatePublic(new X509EncodedKeySpec(x10.v().getEncoded()));
                KeyAgreement j10 = this.f100841d.j(c13486b.u());
                j10.init(this.f100840c, new C4206D(x10.y()));
                j10.doPhase(generatePublic, true);
                C14549x c14549x = InterfaceC16192a.f130273e;
                SecretKey generateSecret = j10.generateSecret(c14549x.J());
                Cipher f10 = this.f100841d.f(c14549x);
                f10.init(4, generateSecret, new ck.k(x10.u(), x10.y()));
                yh.h v10 = u10.v();
                return f10.unwrap(org.bouncycastle.util.a.B(v10.u(), v10.x()), this.f100841d.v(c13486b2.u()), 3);
            } catch (Exception e10) {
                throw new CMSException("exception unwrapping key: " + e10.getMessage(), e10);
            }
        }
        if (InterfaceC15621l.f120703H8.A(c13486b.u())) {
            org.bouncycastle.operator.jcajce.e d10 = this.f100841d.d(uh.C.v(c13486b.x()).y(), this.f100840c).d(this.f100845h);
            if (!this.f100843f.isEmpty()) {
                for (C14549x c14549x2 : this.f100843f.o()) {
                    d10.c(c14549x2, (String) this.f100843f.get(c14549x2));
                }
            }
            try {
                Key x11 = this.f100841d.x(c13486b2, d10.b(c13486b2, bArr));
                if (this.f100844g) {
                    this.f100841d.A(c13486b2, x11);
                }
                return x11;
            } catch (OperatorException e11) {
                throw new CMSException("exception unwrapping key: " + e11.getMessage(), e11);
            }
        }
        org.bouncycastle.operator.jcajce.e d11 = this.f100841d.d(c13486b, this.f100840c).d(this.f100845h);
        if (!this.f100843f.isEmpty()) {
            for (C14549x c14549x3 : this.f100843f.o()) {
                d11.c(c14549x3, (String) this.f100843f.get(c14549x3));
            }
        }
        try {
            Key x12 = this.f100841d.x(c13486b2, d11.b(c13486b2, bArr));
            if (this.f100844g) {
                if (bArr.equals(InterfaceC15621l.f120704I8)) {
                    c14642c = this.f100841d;
                    c13486b2 = C13486b.v(c13486b2.x());
                } else {
                    c14642c = this.f100841d;
                }
                c14642c.A(c13486b2, x12);
            }
            return x12;
        } catch (OperatorException e12) {
            throw new CMSException("exception unwrapping key: " + e12.getMessage(), e12);
        }
    }

    public J h(C14549x c14549x, String str) {
        this.f100843f.put(c14549x, str);
        return this;
    }

    public J i(String str) {
        this.f100842e = C14640a.c(str);
        return this;
    }

    public J j(Provider provider) {
        this.f100842e = C14640a.d(provider);
        return this;
    }

    public J k(boolean z10) {
        this.f100844g = z10;
        return this;
    }

    public J l(boolean z10) {
        this.f100845h = z10;
        return this;
    }

    public J m(String str) {
        C14642c c14642c = new C14642c(new S(str));
        this.f100841d = c14642c;
        this.f100842e = c14642c;
        return this;
    }

    public J n(Provider provider) {
        C14642c c14642c = new C14642c(new T(provider));
        this.f100841d = c14642c;
        this.f100842e = c14642c;
        return this;
    }
}
