package org.bouncycastle.cms.jcajce;

import Qk.AbstractC3010c;
import hi.C13486b;
import java.security.PrivateKey;
import javax.crypto.SecretKey;

public class S extends dk.i implements InterfaceC14643d {
    public S(String str) {
        super(str);
    }

    @Override
    public org.bouncycastle.operator.jcajce.i c(C13486b c13486b, PrivateKey privateKey, byte[] bArr, byte[] bArr2) {
        return new org.bouncycastle.operator.jcajce.i(c13486b, C14640a.a(privateKey), bArr, bArr2).c(this.f84747a);
    }

    @Override
    public org.bouncycastle.operator.jcajce.e d(C13486b c13486b, PrivateKey privateKey) {
        return new org.bouncycastle.operator.jcajce.e(c13486b, C14640a.a(privateKey)).e(this.f84747a);
    }

    @Override
    public AbstractC3010c h(C13486b c13486b, PrivateKey privateKey) {
        return new C14654o(c13486b, privateKey).e(this.f84747a);
    }

    @Override
    public Qk.K q(C13486b c13486b, SecretKey secretKey) {
        return new org.bouncycastle.operator.jcajce.k(c13486b, secretKey).c(this.f84747a);
    }
}
