package org.bouncycastle.jce.provider;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import org.bouncycastle.util.StoreException;

public class i0 extends org.bouncycastle.x509.t {

    public org.bouncycastle.x509.util.a f101791a;

    @Override
    public Collection a(org.bouncycastle.util.r rVar) throws StoreException {
        Collection x10;
        if (!(rVar instanceof org.bouncycastle.x509.o)) {
            return Collections.EMPTY_SET;
        }
        org.bouncycastle.x509.o oVar = (org.bouncycastle.x509.o) rVar;
        HashSet hashSet = new HashSet();
        if (oVar.getBasicConstraints() <= 0) {
            if (oVar.getBasicConstraints() == -2) {
                x10 = this.f101791a.x(oVar);
                hashSet.addAll(x10);
                return hashSet;
            }
            hashSet.addAll(this.f101791a.x(oVar));
        }
        hashSet.addAll(this.f101791a.q(oVar));
        x10 = c(oVar);
        hashSet.addAll(x10);
        return hashSet;
    }

    @Override
    public void b(org.bouncycastle.x509.s sVar) {
        if (sVar instanceof org.bouncycastle.jce.i) {
            this.f101791a = new org.bouncycastle.x509.util.a((org.bouncycastle.jce.i) sVar);
            return;
        }
        throw new IllegalArgumentException("Initialization parameters must be an instance of " + org.bouncycastle.jce.i.class.getName() + ".");
    }

    public final Collection c(org.bouncycastle.x509.o oVar) throws StoreException {
        HashSet hashSet = new HashSet();
        org.bouncycastle.x509.n nVar = new org.bouncycastle.x509.n();
        nVar.e(oVar);
        nVar.f(new org.bouncycastle.x509.o());
        HashSet<org.bouncycastle.x509.p> hashSet2 = new HashSet(this.f101791a.t(nVar));
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        for (org.bouncycastle.x509.p pVar : hashSet2) {
            if (pVar.b() != null) {
                hashSet3.add(pVar.b());
            }
            if (pVar.c() != null) {
                hashSet4.add(pVar.c());
            }
        }
        hashSet.addAll(hashSet3);
        hashSet.addAll(hashSet4);
        return hashSet;
    }
}
