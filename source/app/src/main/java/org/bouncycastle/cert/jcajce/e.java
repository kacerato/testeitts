package org.bouncycastle.cert.jcajce;

import java.io.IOException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import li.C14146h;

public class e extends org.bouncycastle.util.e {
    public e(Collection collection) throws CertificateEncodingException {
        super(b(collection));
    }

    public static Collection b(Collection collection) throws CertificateEncodingException {
        ArrayList arrayList = new ArrayList(collection.size());
        for (Object obj : collection) {
            if (obj instanceof X509Certificate) {
                try {
                    arrayList.add(new C14146h(((X509Certificate) obj).getEncoded()));
                } catch (IOException e10) {
                    throw new CertificateEncodingException("unable to read encoding: " + e10.getMessage());
                }
            } else {
                arrayList.add((C14146h) obj);
            }
        }
        return arrayList;
    }
}
