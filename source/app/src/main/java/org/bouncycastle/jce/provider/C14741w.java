package org.bouncycastle.jce.provider;

import java.security.InvalidAlgorithmParameterException;
import java.security.cert.CRL;
import java.security.cert.CRLSelector;
import java.security.cert.CertSelector;
import java.security.cert.CertStore;
import java.security.cert.CertStoreException;
import java.security.cert.CertStoreParameters;
import java.security.cert.CertStoreSpi;
import java.security.cert.Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;

public class C14741w extends CertStoreSpi {

    public org.bouncycastle.jce.d f101844a;

    public C14741w(CertStoreParameters certStoreParameters) throws InvalidAlgorithmParameterException {
        super(certStoreParameters);
        if (certStoreParameters instanceof org.bouncycastle.jce.d) {
            this.f101844a = (org.bouncycastle.jce.d) certStoreParameters;
            return;
        }
        throw new InvalidAlgorithmParameterException("org.bouncycastle.jce.provider.MultiCertStoreSpi: parameter must be a MultiCertStoreParameters object\n" + certStoreParameters.toString());
    }

    @Override
    public Collection engineGetCRLs(CRLSelector cRLSelector) throws CertStoreException {
        boolean b10 = this.f101844a.b();
        Iterator it = this.f101844a.a().iterator();
        Collection arrayList = b10 ? new ArrayList() : Collections.EMPTY_LIST;
        while (it.hasNext()) {
            Collection<? extends CRL> cRLs = ((CertStore) it.next()).getCRLs(cRLSelector);
            if (b10) {
                arrayList.addAll(cRLs);
            } else if (!cRLs.isEmpty()) {
                return cRLs;
            }
        }
        return arrayList;
    }

    @Override
    public Collection engineGetCertificates(CertSelector certSelector) throws CertStoreException {
        boolean b10 = this.f101844a.b();
        Iterator it = this.f101844a.a().iterator();
        Collection arrayList = b10 ? new ArrayList() : Collections.EMPTY_LIST;
        while (it.hasNext()) {
            Collection<? extends Certificate> certificates = ((CertStore) it.next()).getCertificates(certSelector);
            if (b10) {
                arrayList.addAll(certificates);
            } else if (!certificates.isEmpty()) {
                return certificates;
            }
        }
        return arrayList;
    }
}
