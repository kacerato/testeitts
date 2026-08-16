package jm;

import fi.C13228d;
import hi.C13478B;
import hi.C13481E;
import java.io.IOException;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import oh.AbstractC14551y;
import oh.B;
import oh.C14549x;
import oh.E;
import oh.J;
import org.bouncycastle.util.k;

public class C13883b {
    public static B a(byte[] bArr) throws IOException {
        return B.B(((AbstractC14551y) B.B(bArr)).H());
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0038. Please report as an issue. */
    public static Collection b(byte[] bArr) throws CertificateParsingException {
        Object r10;
        if (bArr == null) {
            return Collections.EMPTY_LIST;
        }
        try {
            ArrayList arrayList = new ArrayList();
            Enumeration J10 = E.G(a(bArr)).J();
            while (J10.hasMoreElements()) {
                C13481E v10 = C13481E.v(J10.nextElement());
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(k.j(v10.g()));
                switch (v10.g()) {
                    case 0:
                    case 3:
                    case 5:
                        r10 = v10.x().r();
                        arrayList2.add(r10);
                        arrayList.add(arrayList2);
                    case 1:
                    case 2:
                    case 6:
                        r10 = ((J) v10.x()).getString();
                        arrayList2.add(r10);
                        arrayList.add(arrayList2);
                    case 4:
                        r10 = C13228d.x(v10.x()).toString();
                        arrayList2.add(r10);
                        arrayList.add(arrayList2);
                    case 7:
                        arrayList2.add(AbstractC14551y.F(v10.x()).H());
                        arrayList.add(arrayList2);
                    case 8:
                        r10 = C14549x.K(v10.x()).J();
                        arrayList2.add(r10);
                        arrayList.add(arrayList2);
                    default:
                        throw new IOException("Bad tag number: " + v10.g());
                }
            }
            return Collections.unmodifiableCollection(arrayList);
        } catch (Exception e10) {
            throw new CertificateParsingException(e10.getMessage());
        }
    }

    public static Collection c(X509Certificate x509Certificate) throws CertificateParsingException {
        return b(x509Certificate.getExtensionValue(C13478B.f90534j.J()));
    }

    public static Collection d(X509Certificate x509Certificate) throws CertificateParsingException {
        return b(x509Certificate.getExtensionValue(C13478B.f90533i.J()));
    }
}
