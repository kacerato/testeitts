package org.bouncycastle.jce.provider;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import org.bouncycastle.util.StoreException;

public class f0 extends org.bouncycastle.x509.t {

    public org.bouncycastle.x509.util.a f101780a;

    @Override
    public Collection a(org.bouncycastle.util.r rVar) throws StoreException {
        if (!(rVar instanceof org.bouncycastle.x509.k)) {
            return Collections.EMPTY_SET;
        }
        org.bouncycastle.x509.k kVar = (org.bouncycastle.x509.k) rVar;
        HashSet hashSet = new HashSet();
        hashSet.addAll(this.f101780a.k(kVar));
        hashSet.addAll(this.f101780a.m(kVar));
        hashSet.addAll(this.f101780a.o(kVar));
        return hashSet;
    }

    @Override
    public void b(org.bouncycastle.x509.s sVar) {
        if (sVar instanceof org.bouncycastle.jce.i) {
            this.f101780a = new org.bouncycastle.x509.util.a((org.bouncycastle.jce.i) sVar);
            return;
        }
        throw new IllegalArgumentException("Initialization parameters must be an instance of " + org.bouncycastle.jce.i.class.getName() + ".");
    }
}
