package org.bouncycastle.jce.provider;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import org.bouncycastle.util.StoreException;

public class h0 extends org.bouncycastle.x509.t {

    public org.bouncycastle.x509.util.a f101787a;

    @Override
    public Collection a(org.bouncycastle.util.r rVar) throws StoreException {
        if (!(rVar instanceof org.bouncycastle.x509.n)) {
            return Collections.EMPTY_SET;
        }
        HashSet hashSet = new HashSet();
        hashSet.addAll(this.f101787a.t((org.bouncycastle.x509.n) rVar));
        return hashSet;
    }

    @Override
    public void b(org.bouncycastle.x509.s sVar) {
        if (sVar instanceof org.bouncycastle.jce.i) {
            this.f101787a = new org.bouncycastle.x509.util.a((org.bouncycastle.jce.i) sVar);
            return;
        }
        throw new IllegalArgumentException("Initialization parameters must be an instance of " + org.bouncycastle.jce.i.class.getName() + ".");
    }
}
