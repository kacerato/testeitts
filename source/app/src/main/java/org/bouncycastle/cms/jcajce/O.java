package org.bouncycastle.cms.jcajce;

import hi.C13486b;
import java.security.GeneralSecurityException;
import java.security.Key;
import java.security.Provider;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import oh.AbstractC14551y;
import org.bouncycastle.cms.A0;
import org.bouncycastle.cms.CMSException;

public abstract class O implements A0 {

    public int f100854c = 1;

    public C14642c f100855d = new C14642c(new C14641b());

    public char[] f100856e;

    public O(char[] cArr) {
        this.f100856e = cArr;
    }

    @Override
    public byte[] c(int i10, C13486b c13486b, int i11) throws CMSException {
        return this.f100855d.a(i10, this.f100856e, c13486b, i11);
    }

    @Override
    public int e() {
        return this.f100854c;
    }

    public Key g(C13486b c13486b, C13486b c13486b2, byte[] bArr, byte[] bArr2) throws CMSException {
        Cipher o10 = this.f100855d.o(c13486b.u());
        try {
            o10.init(4, new SecretKeySpec(bArr, o10.getAlgorithm()), new IvParameterSpec(AbstractC14551y.F(c13486b.x()).H()));
            return o10.unwrap(bArr2, c13486b2.u().J(), 3);
        } catch (GeneralSecurityException e10) {
            throw new CMSException("cannot process content encryption key: " + e10.getMessage(), e10);
        }
    }

    @Override
    public char[] getPassword() {
        return this.f100856e;
    }

    public O h(int i10) {
        this.f100854c = i10;
        return this;
    }

    public O i(String str) {
        this.f100855d = new C14642c(new S(str));
        return this;
    }

    public O j(Provider provider) {
        this.f100855d = new C14642c(new T(provider));
        return this;
    }
}
