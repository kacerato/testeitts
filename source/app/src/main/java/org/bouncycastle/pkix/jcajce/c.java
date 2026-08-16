package org.bouncycastle.pkix.jcajce;

import Hj.o;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URI;
import java.security.cert.CRL;
import java.security.cert.CRLException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509CRL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import javax.naming.NamingException;
import javax.naming.directory.InitialDirContext;
import org.bouncycastle.util.r;
import org.bouncycastle.util.t;

public class c {

    public static final int f102008a = 15000;

    public static Map<URI, WeakReference<o>> f102009b = Collections.synchronizedMap(new WeakHashMap());

    public static class a<T extends CRL> implements o, org.bouncycastle.util.l<CRL> {

        public Collection<CRL> f102010b;

        public a(t<CRL> tVar) {
            this.f102010b = new ArrayList(tVar.a(null));
        }

        @Override
        public Collection a(r rVar) {
            if (rVar == null) {
                return new ArrayList(this.f102010b);
            }
            ArrayList arrayList = new ArrayList();
            for (CRL crl : this.f102010b) {
                if (rVar.Z2(crl)) {
                    arrayList.add(crl);
                }
            }
            return arrayList;
        }

        @Override
        public Iterator<CRL> iterator() {
            return a(null).iterator();
        }
    }

    public static synchronized o a(CertificateFactory certificateFactory, Date date, URI uri) throws IOException, CRLException {
        synchronized (c.class) {
            try {
                WeakReference<o> weakReference = f102009b.get(uri);
                o oVar = weakReference != null ? weakReference.get() : null;
                if (oVar != null) {
                    Iterator it = oVar.a(null).iterator();
                    while (it.hasNext()) {
                        Date nextUpdate = ((X509CRL) it.next()).getNextUpdate();
                        if (nextUpdate == null || !nextUpdate.before(date)) {
                        }
                    }
                    return oVar;
                }
                a aVar = new a(new org.bouncycastle.util.e(uri.getScheme().equals("ldap") ? c(certificateFactory, uri) : b(certificateFactory, uri)));
                f102009b.put(uri, new WeakReference<>(aVar));
                return aVar;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static Collection b(CertificateFactory certificateFactory, URI uri) throws IOException, CRLException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) uri.toURL().openConnection();
        httpURLConnection.setConnectTimeout(15000);
        httpURLConnection.setReadTimeout(15000);
        InputStream inputStream = httpURLConnection.getInputStream();
        Collection<? extends CRL> generateCRLs = certificateFactory.generateCRLs(inputStream);
        inputStream.close();
        return generateCRLs;
    }

    public static Collection c(CertificateFactory certificateFactory, URI uri) throws IOException, CRLException {
        Hashtable hashtable = new Hashtable();
        hashtable.put("java.naming.factory.initial", "com.sun.jndi.ldap.LdapCtxFactory");
        hashtable.put("java.naming.provider.url", uri.toString());
        try {
            byte[] bArr = (byte[]) new InitialDirContext(hashtable).getAttributes("").get("certificateRevocationList;binary").get();
            if (bArr != null && bArr.length != 0) {
                return certificateFactory.generateCRLs(new ByteArrayInputStream(bArr));
            }
            throw new CRLException("no CRL returned from: " + ((Object) uri));
        } catch (NamingException e10) {
            throw new CRLException("issue connecting to: " + uri.toString(), e10);
        }
    }
}
