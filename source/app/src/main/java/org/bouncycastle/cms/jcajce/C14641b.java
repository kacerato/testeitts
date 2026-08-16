package org.bouncycastle.cms.jcajce;

import Qk.AbstractC3010c;
import dk.C12948d;
import hi.C13486b;
import java.security.PrivateKey;
import javax.crypto.SecretKey;

public class C14641b extends C12948d implements InterfaceC14643d {
    @Override
    public org.bouncycastle.operator.jcajce.i c(C13486b c13486b, PrivateKey privateKey, byte[] bArr, byte[] bArr2) {
        return new org.bouncycastle.operator.jcajce.i(c13486b, C14640a.a(privateKey), bArr, bArr2);
    }

    @Override
    public org.bouncycastle.operator.jcajce.e d(C13486b c13486b, PrivateKey privateKey) {
        return new org.bouncycastle.operator.jcajce.e(c13486b, C14640a.a(privateKey));
    }

    @Override
    public AbstractC3010c h(C13486b c13486b, PrivateKey privateKey) {
        return new C14654o(c13486b, privateKey);
    }

    @Override
    public Qk.K q(C13486b c13486b, SecretKey secretKey) {
        return new org.bouncycastle.operator.jcajce.k(c13486b, secretKey);
    }
}
