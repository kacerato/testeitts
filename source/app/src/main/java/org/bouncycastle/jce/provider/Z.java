package org.bouncycastle.jce.provider;

import hi.C13506s;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.cert.CRL;
import java.security.cert.CRLSelector;
import java.security.cert.CertSelector;
import java.security.cert.CertStoreException;
import java.security.cert.CertStoreParameters;
import java.security.cert.CertStoreSpi;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.X509CRLSelector;
import java.security.cert.X509CertSelector;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Properties;
import java.util.Set;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import javax.naming.directory.DirContext;
import javax.naming.directory.InitialDirContext;
import javax.naming.directory.SearchControls;
import javax.naming.directory.SearchResult;
import javax.security.auth.x500.X500Principal;
import org.eclipse.jdt.internal.core.JavadocConstants;

public class Z extends CertStoreSpi {

    public static String[] f101693b = new String[93];

    public static String f101694c = null;

    public static String f101695d = null;

    public static final String f101696e = "none";

    public static final String f101697f = "com.sun.jndi.url";

    public org.bouncycastle.jce.i f101698a;

    static {
        char c10 = 0;
        while (true) {
            String[] strArr = f101693b;
            if (c10 >= strArr.length) {
                strArr[42] = "\\2a";
                strArr[40] = "\\28";
                strArr[41] = "\\29";
                strArr[92] = "\\5c";
                strArr[0] = "\\00";
                f101694c = "com.sun.jndi.ldap.LdapCtxFactory";
                f101695d = "ignore";
                return;
            }
            strArr[c10] = String.valueOf(c10);
            c10 = (char) (c10 + 1);
        }
    }

    public Z(CertStoreParameters certStoreParameters) throws InvalidAlgorithmParameterException {
        super(certStoreParameters);
        if (certStoreParameters instanceof org.bouncycastle.jce.i) {
            this.f101698a = (org.bouncycastle.jce.i) certStoreParameters;
            return;
        }
        throw new InvalidAlgorithmParameterException(Z.class.getName() + ": parameter must be a " + org.bouncycastle.jce.i.class.getName() + " object\n" + certStoreParameters.toString());
    }

    public final Set a(X509CertSelector x509CertSelector, String[] strArr, String str, String str2) throws CertStoreException {
        String name;
        String str3;
        Set h10;
        HashSet hashSet = new HashSet();
        try {
            if (x509CertSelector.getSubjectAsBytes() == null && x509CertSelector.getSubjectAsString() == null && x509CertSelector.getCertificate() == null) {
                h10 = h(str, "*", strArr);
                hashSet.addAll(h10);
                return hashSet;
            }
            if (x509CertSelector.getCertificate() != null) {
                name = x509CertSelector.getCertificate().getSubjectX500Principal().getName(X500Principal.RFC1779);
                str3 = x509CertSelector.getCertificate().getSerialNumber().toString();
            } else {
                name = x509CertSelector.getSubjectAsBytes() != null ? new X500Principal(x509CertSelector.getSubjectAsBytes()).getName(X500Principal.RFC1779) : x509CertSelector.getSubjectAsString();
                str3 = null;
            }
            hashSet.addAll(h(str, "*" + g(name, str2) + "*", strArr));
            if (str3 != null && this.f101698a.L() != null) {
                h10 = h(this.f101698a.L(), "*" + str3 + "*", strArr);
                hashSet.addAll(h10);
            }
            return hashSet;
        } catch (IOException e10) {
            throw new CertStoreException("exception processing selector: " + ((Object) e10));
        }
    }

    public final DirContext b() throws NamingException {
        Properties properties = new Properties();
        properties.setProperty("java.naming.factory.initial", f101694c);
        properties.setProperty("java.naming.batchsize", "0");
        properties.setProperty("java.naming.provider.url", this.f101698a.J());
        properties.setProperty("java.naming.factory.url.pkgs", "com.sun.jndi.url");
        properties.setProperty("java.naming.referral", f101695d);
        properties.setProperty("java.naming.security.authentication", "none");
        return new InitialDirContext(properties);
    }

    public final String c(String str) {
        if (str == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder(str.length() * 2);
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = str.charAt(i10);
            String[] strArr = f101693b;
            if (charAt < strArr.length) {
                sb2.append(strArr[charAt]);
            } else {
                sb2.append(charAt);
            }
        }
        return sb2.toString();
    }

    public final Set d(X509CertSelector x509CertSelector) throws CertStoreException {
        String[] strArr = {this.f101698a.q()};
        Set a10 = a(x509CertSelector, strArr, this.f101698a.F(), this.f101698a.r());
        if (a10.isEmpty()) {
            a10.addAll(h(null, "*", strArr));
        }
        return a10;
    }

    public final Set e(X509CertSelector x509CertSelector) throws CertStoreException {
        String[] strArr = {this.f101698a.u()};
        Set a10 = a(x509CertSelector, strArr, this.f101698a.H(), this.f101698a.v());
        if (a10.isEmpty()) {
            a10.addAll(h(null, "*", strArr));
        }
        return a10;
    }

    @Override
    public Collection engineGetCRLs(CRLSelector cRLSelector) throws CertStoreException {
        String t10;
        String name;
        String[] strArr = {this.f101698a.s()};
        if (!(cRLSelector instanceof X509CRLSelector)) {
            throw new CertStoreException("selector is not a X509CRLSelector");
        }
        X509CRLSelector x509CRLSelector = (X509CRLSelector) cRLSelector;
        HashSet hashSet = new HashSet();
        String G10 = this.f101698a.G();
        HashSet hashSet2 = new HashSet();
        if (x509CRLSelector.getIssuerNames() != null) {
            for (Object obj : x509CRLSelector.getIssuerNames()) {
                if (obj instanceof String) {
                    t10 = this.f101698a.t();
                    name = (String) obj;
                } else {
                    t10 = this.f101698a.t();
                    name = new X500Principal((byte[]) obj).getName(X500Principal.RFC1779);
                }
                hashSet2.addAll(h(G10, "*" + g(name, t10) + "*", strArr));
            }
        } else {
            hashSet2.addAll(h(G10, "*", strArr));
        }
        hashSet2.addAll(h(null, "*", strArr));
        Iterator<E> it = hashSet2.iterator();
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509", C14720a.f101701e);
            while (it.hasNext()) {
                CRL generateCRL = certificateFactory.generateCRL(new ByteArrayInputStream((byte[]) it.next()));
                if (x509CRLSelector.match(generateCRL)) {
                    hashSet.add(generateCRL);
                }
            }
            return hashSet;
        } catch (Exception e10) {
            throw new CertStoreException("CRL cannot be constructed from LDAP result " + ((Object) e10));
        }
    }

    @Override
    public Collection engineGetCertificates(CertSelector certSelector) throws CertStoreException {
        if (!(certSelector instanceof X509CertSelector)) {
            throw new CertStoreException("selector is not a X509CertSelector");
        }
        X509CertSelector x509CertSelector = (X509CertSelector) certSelector;
        HashSet hashSet = new HashSet();
        Set<byte[]> f10 = f(x509CertSelector);
        f10.addAll(d(x509CertSelector));
        f10.addAll(e(x509CertSelector));
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509", C14720a.f101701e);
            for (byte[] bArr : f10) {
                if (bArr != null && bArr.length != 0) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(bArr);
                    try {
                        C13506s v10 = C13506s.v(new oh.r(bArr).k());
                        arrayList.clear();
                        if (v10.u() != null) {
                            arrayList.add(v10.u().getEncoded());
                        }
                        if (v10.x() != null) {
                            arrayList.add(v10.x().getEncoded());
                        }
                    } catch (IOException | IllegalArgumentException unused) {
                    }
                    Iterator<E> it = arrayList.iterator();
                    while (it.hasNext()) {
                        try {
                            Certificate generateCertificate = certificateFactory.generateCertificate(new ByteArrayInputStream((byte[]) it.next()));
                            if (x509CertSelector.match(generateCertificate)) {
                                hashSet.add(generateCertificate);
                            }
                        } catch (Exception unused2) {
                        }
                    }
                }
            }
            return hashSet;
        } catch (Exception e10) {
            throw new CertStoreException("certificate cannot be constructed from LDAP result: " + ((Object) e10));
        }
    }

    public final Set f(X509CertSelector x509CertSelector) throws CertStoreException {
        return a(x509CertSelector, new String[]{this.f101698a.M()}, this.f101698a.K(), this.f101698a.N());
    }

    public final String g(String str, String str2) {
        String substring = str.substring(org.bouncycastle.util.w.l(str).indexOf(org.bouncycastle.util.w.l(str2)) + str2.length());
        int indexOf = substring.indexOf(44);
        if (indexOf == -1) {
            indexOf = substring.length();
        }
        while (substring.charAt(indexOf - 1) == '\\') {
            indexOf = substring.indexOf(44, indexOf + 1);
            if (indexOf == -1) {
                indexOf = substring.length();
            }
        }
        String substring2 = substring.substring(0, indexOf);
        String substring3 = substring2.substring(substring2.indexOf(61) + 1);
        if (substring3.charAt(0) == ' ') {
            substring3 = substring3.substring(1);
        }
        if (substring3.startsWith(JavadocConstants.ANCHOR_PREFIX_END)) {
            substring3 = substring3.substring(1);
        }
        if (substring3.endsWith(JavadocConstants.ANCHOR_PREFIX_END)) {
            substring3 = substring3.substring(0, substring3.length() - 1);
        }
        return c(substring3);
    }

    public final Set h(String str, String str2, String[] strArr) throws CertStoreException {
        String str3 = str + "=" + str2;
        DirContext dirContext = null;
        if (str == null) {
            str3 = null;
        }
        HashSet hashSet = new HashSet();
        try {
            try {
                dirContext = b();
                SearchControls searchControls = new SearchControls();
                searchControls.setSearchScope(2);
                searchControls.setCountLimit(0L);
                for (String str4 : strArr) {
                    String[] strArr2 = {str4};
                    searchControls.setReturningAttributes(strArr2);
                    String str5 = "(&(" + str3 + ")(" + strArr2[0] + "=*))";
                    if (str3 == null) {
                        str5 = "(" + strArr2[0] + "=*)";
                    }
                    NamingEnumeration search = dirContext.search(this.f101698a.p(), str5, searchControls);
                    while (search.hasMoreElements()) {
                        NamingEnumeration all = ((Attribute) ((SearchResult) search.next()).getAttributes().getAll().next()).getAll();
                        while (all.hasMore()) {
                            hashSet.add(all.next());
                        }
                    }
                }
                if (dirContext != null) {
                    try {
                        dirContext.close();
                    } catch (Exception unused) {
                    }
                }
                return hashSet;
            } catch (Exception e10) {
                throw new CertStoreException("Error getting results from LDAP directory " + ((Object) e10));
            }
        } catch (Throwable th2) {
            if (dirContext != null) {
                try {
                    dirContext.close();
                } catch (Exception unused2) {
                }
            }
            throw th2;
        }
    }
}
