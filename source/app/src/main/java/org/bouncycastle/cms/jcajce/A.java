package org.bouncycastle.cms.jcajce;

import hi.C13486b;
import java.io.IOException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.Provider;
import java.util.HashMap;
import java.util.Map;
import oh.C0;
import oh.C14549x;
import oh.InterfaceC14520i;
import org.bouncycastle.cms.C14675q0;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.InterfaceC14673p0;
import org.bouncycastle.operator.OperatorException;
import uh.C15634z;

public abstract class A implements InterfaceC14673p0 {

    public static final byte[] f100793j = em.h.b("0c14416e6f6e796d6f75732053656e64657220202020");

    public final byte[] f100794c;

    public PrivateKey f100795d;

    public C14642c f100796e;

    public C14642c f100797f;

    public Map f100798g;

    public boolean f100799h;

    public boolean f100800i;

    public A(PrivateKey privateKey, byte[] bArr) {
        C14642c c14642c = new C14642c(new C14641b());
        this.f100796e = c14642c;
        this.f100797f = c14642c;
        this.f100798g = new HashMap();
        this.f100799h = false;
        this.f100795d = C14640a.a(privateKey);
        this.f100794c = bArr;
    }

    public static byte[] h(C14675q0 c14675q0) throws IOException {
        return c14675q0.c() != null ? new C15634z(c14675q0.b(), c14675q0.c()).s(InterfaceC14520i.f98892a) : new C0(c14675q0.d()).getEncoded();
    }

    public Key g(C13486b c13486b, C13486b c13486b2, byte[] bArr) throws CMSException {
        try {
            Key x10 = this.f100796e.x(c13486b2, this.f100796e.e(c13486b, this.f100795d, f100793j, this.f100794c).b(c13486b2, bArr));
            if (this.f100799h) {
                this.f100796e.A(c13486b2, x10);
            }
            return x10;
        } catch (OperatorException e10) {
            throw new CMSException("exception unwrapping key: " + e10.getMessage(), e10);
        }
    }

    public A i(C14549x c14549x, String str) {
        this.f100798g.put(c14549x, str);
        return this;
    }

    public A j(String str) {
        this.f100797f = C14640a.c(str);
        return this;
    }

    public A k(Provider provider) {
        this.f100797f = C14640a.d(provider);
        return this;
    }

    public A l(boolean z10) {
        this.f100799h = z10;
        return this;
    }

    public A m(String str) {
        C14642c c14642c = new C14642c(new S(str));
        this.f100796e = c14642c;
        this.f100797f = c14642c;
        return this;
    }

    public A n(Provider provider) {
        C14642c c14642c = new C14642c(new T(provider));
        this.f100796e = c14642c;
        this.f100797f = c14642c;
        return this;
    }
}
