package org.bouncycastle.jce.provider;

import java.security.cert.CertStore;
import java.security.cert.CertStoreException;
import java.security.cert.X509CRL;
import java.security.cert.X509Certificate;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.bouncycastle.util.StoreException;

public abstract class C {
    public static Set a(Hj.p pVar, Date date, List list, List list2) throws AnnotatedException {
        HashSet<X509CRL> hashSet = new HashSet();
        try {
            b(hashSet, pVar, list2);
            b(hashSet, pVar, list);
            HashSet hashSet2 = new HashSet();
            for (X509CRL x509crl : hashSet) {
                Date nextUpdate = x509crl.getNextUpdate();
                if (nextUpdate == null || nextUpdate.after(date)) {
                    X509Certificate c10 = pVar.c();
                    if (c10 == null || x509crl.getThisUpdate().before(c10.getNotAfter())) {
                        hashSet2.add(x509crl);
                    }
                }
            }
            return hashSet2;
        } catch (AnnotatedException e10) {
            throw new AnnotatedException("Exception obtaining complete CRLs.", e10);
        }
    }

    public static void b(Set set, Hj.p pVar, List list) throws AnnotatedException {
        AnnotatedException annotatedException;
        AnnotatedException annotatedException2 = null;
        boolean z10 = false;
        for (Object obj : list) {
            if (obj instanceof org.bouncycastle.util.t) {
                try {
                    set.addAll(((org.bouncycastle.util.t) obj).a(pVar));
                } catch (StoreException e10) {
                    annotatedException = new AnnotatedException("Exception searching in X.509 CRL store.", e10);
                    annotatedException2 = annotatedException;
                }
            } else {
                try {
                    set.addAll(Hj.p.b(pVar, (CertStore) obj));
                } catch (CertStoreException e11) {
                    annotatedException = new AnnotatedException("Exception searching in X.509 CRL store.", e11);
                    annotatedException2 = annotatedException;
                }
            }
            z10 = true;
        }
        if (!z10 && annotatedException2 != null) {
            throw annotatedException2;
        }
    }
}
