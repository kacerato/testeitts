package org.bouncycastle.cms.jcajce;

import hi.C13486b;
import java.security.Key;
import java.security.Provider;
import javax.crypto.SecretKey;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.InterfaceC14627d0;
import org.bouncycastle.operator.OperatorException;

public abstract class AbstractC14658t implements InterfaceC14627d0 {

    public SecretKey f100950c;

    public C14642c f100951d;

    public C14642c f100952e;

    public boolean f100953f;

    public AbstractC14658t(SecretKey secretKey) {
        C14642c c14642c = new C14642c(new C14641b());
        this.f100951d = c14642c;
        this.f100952e = c14642c;
        this.f100953f = false;
        this.f100950c = secretKey;
    }

    public Key g(C13486b c13486b, C13486b c13486b2, byte[] bArr) throws CMSException {
        try {
            Key x10 = this.f100951d.x(c13486b2, this.f100951d.q(c13486b, this.f100950c).b(c13486b2, bArr));
            if (this.f100953f) {
                this.f100951d.A(c13486b2, x10);
            }
            return x10;
        } catch (OperatorException e10) {
            throw new CMSException("exception unwrapping key: " + e10.getMessage(), e10);
        }
    }

    public AbstractC14658t h(String str) {
        this.f100952e = new C14642c(new S(str));
        return this;
    }

    public AbstractC14658t i(Provider provider) {
        this.f100952e = new C14642c(new T(provider));
        return this;
    }

    public AbstractC14658t j(boolean z10) {
        this.f100953f = z10;
        return this;
    }

    public AbstractC14658t k(String str) {
        C14642c c14642c = new C14642c(new S(str));
        this.f100951d = c14642c;
        this.f100952e = c14642c;
        return this;
    }

    public AbstractC14658t l(Provider provider) {
        C14642c c14642c = new C14642c(new T(provider));
        this.f100951d = c14642c;
        this.f100952e = c14642c;
        return this;
    }
}
