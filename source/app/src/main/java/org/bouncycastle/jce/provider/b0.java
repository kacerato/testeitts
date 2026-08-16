package org.bouncycastle.jce.provider;

import java.util.Collection;

public class b0 extends org.bouncycastle.x509.t {

    public org.bouncycastle.util.e f101739a;

    @Override
    public Collection a(org.bouncycastle.util.r rVar) {
        return this.f101739a.a(rVar);
    }

    @Override
    public void b(org.bouncycastle.x509.s sVar) {
        if (!(sVar instanceof org.bouncycastle.x509.q)) {
            throw new IllegalArgumentException(sVar.toString());
        }
        this.f101739a = new org.bouncycastle.util.e(((org.bouncycastle.x509.q) sVar).a());
    }
}
