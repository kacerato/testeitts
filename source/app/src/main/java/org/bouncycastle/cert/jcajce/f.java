package org.bouncycastle.cert.jcajce;

import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.cert.CRLException;
import java.security.cert.CertStore;
import java.security.cert.CertificateException;
import java.security.cert.CollectionCertStoreParameters;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import li.C14145g;
import li.C14146h;
import org.bouncycastle.util.t;

public class f {

    public Object f100439c;

    public List f100437a = new ArrayList();

    public List f100438b = new ArrayList();

    public JcaX509CertificateConverter f100440d = new JcaX509CertificateConverter();

    public JcaX509CRLConverter f100441e = new JcaX509CRLConverter();

    public String f100442f = "Collection";

    public f a(C14145g c14145g) {
        this.f100438b.add(c14145g);
        return this;
    }

    public f b(t tVar) {
        this.f100438b.addAll(tVar.a(null));
        return this;
    }

    public f c(C14146h c14146h) {
        this.f100437a.add(c14146h);
        return this;
    }

    public f d(t tVar) {
        this.f100437a.addAll(tVar.a(null));
        return this;
    }

    public CertStore e() throws GeneralSecurityException {
        CollectionCertStoreParameters f10 = f(this.f100440d, this.f100441e);
        Object obj = this.f100439c;
        return obj instanceof String ? CertStore.getInstance(this.f100442f, f10, (String) obj) : obj instanceof Provider ? CertStore.getInstance(this.f100442f, f10, (Provider) obj) : CertStore.getInstance(this.f100442f, f10);
    }

    public final CollectionCertStoreParameters f(JcaX509CertificateConverter jcaX509CertificateConverter, JcaX509CRLConverter jcaX509CRLConverter) throws CertificateException, CRLException {
        ArrayList arrayList = new ArrayList(this.f100437a.size() + this.f100438b.size());
        Iterator it = this.f100437a.iterator();
        while (it.hasNext()) {
            arrayList.add(jcaX509CertificateConverter.a((C14146h) it.next()));
        }
        Iterator it2 = this.f100438b.iterator();
        while (it2.hasNext()) {
            arrayList.add(jcaX509CRLConverter.a((C14145g) it2.next()));
        }
        return new CollectionCertStoreParameters(arrayList);
    }

    public f g(String str) {
        this.f100440d.b(str);
        this.f100441e.b(str);
        this.f100439c = str;
        return this;
    }

    public f h(Provider provider) {
        this.f100440d.c(provider);
        this.f100441e.c(provider);
        this.f100439c = provider;
        return this;
    }

    public f i(String str) {
        this.f100442f = str;
        return this;
    }
}
