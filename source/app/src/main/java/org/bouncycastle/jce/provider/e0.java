package org.bouncycastle.jce.provider;

import java.util.Collection;

public class e0 extends org.bouncycastle.x509.t {

    public org.bouncycastle.util.e f101761a;

    @Override
    public Collection a(org.bouncycastle.util.r rVar) {
        return this.f101761a.a(rVar);
    }

    @Override
    public void b(org.bouncycastle.x509.s sVar) {
        if (sVar instanceof org.bouncycastle.x509.q) {
            this.f101761a = new org.bouncycastle.util.e(((org.bouncycastle.x509.q) sVar).a());
            return;
        }
        throw new IllegalArgumentException("Initialization parameters must be an instance of " + org.bouncycastle.x509.q.class.getName() + ".");
    }
}
