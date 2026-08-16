package org.bouncycastle.cms.jcajce;

import hi.C13486b;
import java.security.GeneralSecurityException;
import java.security.Key;
import java.security.Provider;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import oh.AbstractC14551y;
import oh.C14549x;
import org.bouncycastle.cms.C0;
import org.bouncycastle.cms.CMSException;

public class P extends C0 {

    public C14642c f100857k;

    public P(C14549x c14549x, char[] cArr) {
        super(c14549x, cArr);
        this.f100857k = new C14642c(new C14641b());
    }

    @Override
    public byte[] b(int i10, C13486b c13486b, int i11) throws CMSException {
        return this.f100857k.a(i10, this.f100500a, c13486b, i11);
    }

    @Override
    public byte[] c(C13486b c13486b, byte[] bArr, Qk.r rVar) throws CMSException {
        Key w10 = this.f100857k.w(rVar);
        Cipher o10 = this.f100857k.o(c13486b.u());
        try {
            o10.init(3, new SecretKeySpec(bArr, o10.getAlgorithm()), new IvParameterSpec(AbstractC14551y.F(c13486b.x()).H()));
            return o10.wrap(w10);
        } catch (GeneralSecurityException e10) {
            throw new CMSException("cannot process content encryption key: " + e10.getMessage(), e10);
        }
    }

    public P i(String str) {
        this.f100857k = new C14642c(new S(str));
        return this;
    }

    public P j(Provider provider) {
        this.f100857k = new C14642c(new T(provider));
        return this;
    }
}
