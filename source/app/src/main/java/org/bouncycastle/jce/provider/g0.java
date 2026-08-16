package org.bouncycastle.jce.provider;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import org.bouncycastle.util.StoreException;

public class g0 extends org.bouncycastle.x509.t {

    public org.bouncycastle.x509.util.a f101785a;

    @Override
    public Collection a(org.bouncycastle.util.r rVar) throws StoreException {
        Collection s10;
        if (!(rVar instanceof org.bouncycastle.x509.m)) {
            return Collections.EMPTY_SET;
        }
        org.bouncycastle.x509.m mVar = (org.bouncycastle.x509.m) rVar;
        HashSet hashSet = new HashSet();
        if (mVar.f()) {
            s10 = this.f101785a.u(mVar);
        } else {
            hashSet.addAll(this.f101785a.u(mVar));
            hashSet.addAll(this.f101785a.l(mVar));
            hashSet.addAll(this.f101785a.n(mVar));
            hashSet.addAll(this.f101785a.p(mVar));
            s10 = this.f101785a.s(mVar);
        }
        hashSet.addAll(s10);
        return hashSet;
    }

    @Override
    public void b(org.bouncycastle.x509.s sVar) {
        if (sVar instanceof org.bouncycastle.jce.i) {
            this.f101785a = new org.bouncycastle.x509.util.a((org.bouncycastle.jce.i) sVar);
            return;
        }
        throw new IllegalArgumentException("Initialization parameters must be an instance of " + org.bouncycastle.jce.i.class.getName() + ".");
    }
}
