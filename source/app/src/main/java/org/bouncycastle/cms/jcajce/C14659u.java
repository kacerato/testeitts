package org.bouncycastle.cms.jcajce;

import java.security.Provider;
import java.security.SecureRandom;
import javax.crypto.SecretKey;
import org.bouncycastle.cms.AbstractC14631f0;
import uh.C15609A;

public class C14659u extends AbstractC14631f0 {
    public C14659u(C15609A c15609a, SecretKey secretKey) {
        super(c15609a, new org.bouncycastle.operator.jcajce.l(secretKey));
    }

    public C14659u b(String str) {
        ((org.bouncycastle.operator.jcajce.l) this.f100750b).e(str);
        return this;
    }

    public C14659u c(Provider provider) {
        ((org.bouncycastle.operator.jcajce.l) this.f100750b).f(provider);
        return this;
    }

    public C14659u d(SecureRandom secureRandom) {
        ((org.bouncycastle.operator.jcajce.l) this.f100750b).g(secureRandom);
        return this;
    }

    public C14659u(byte[] bArr, SecretKey secretKey) {
        this(new C15609A(bArr, null, null), secretKey);
    }
}
