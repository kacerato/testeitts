package org.bouncycastle.jce.provider;

import java.util.Collection;

public class d0 extends org.bouncycastle.x509.t {

    public org.bouncycastle.util.e f101753a;

    @Override
    public Collection a(org.bouncycastle.util.r rVar) {
        return this.f101753a.a(rVar);
    }

    @Override
    public void b(org.bouncycastle.x509.s sVar) {
        if (!(sVar instanceof org.bouncycastle.x509.q)) {
            throw new IllegalArgumentException(sVar.toString());
        }
        this.f101753a = new org.bouncycastle.util.e(((org.bouncycastle.x509.q) sVar).a());
    }
}
