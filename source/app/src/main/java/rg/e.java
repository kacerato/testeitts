package Rg;

import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import okhttp3.C14587g;
import org.eclipse.jdt.internal.core.ClasspathEntry;

public final class e implements HostnameVerifier {

    public static final e f22793a = new e();

    public static final int f22794b = 2;

    public static final int f22795c = 7;

    public static List<String> a(X509Certificate x509Certificate) {
        List<String> b10 = b(x509Certificate, 7);
        List<String> b11 = b(x509Certificate, 2);
        ArrayList arrayList = new ArrayList(b10.size() + b11.size());
        arrayList.addAll(b10);
        arrayList.addAll(b11);
        return arrayList;
    }

    public static List<String> b(X509Certificate x509Certificate, int i10) {
        Integer num;
        String str;
        ArrayList arrayList = new ArrayList();
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return Collections.emptyList();
            }
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && (num = (Integer) list.get(0)) != null && num.intValue() == i10 && (str = (String) list.get(1)) != null) {
                    arrayList.add(str);
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return Collections.emptyList();
        }
    }

    public boolean c(String str, X509Certificate x509Certificate) {
        return Gg.c.K(str) ? f(str, x509Certificate) : e(str, x509Certificate);
    }

    public boolean d(String str, String str2) {
        if (str != null && str.length() != 0 && !str.startsWith(".") && !str.endsWith(ClasspathEntry.DOT_DOT) && str2 != null && str2.length() != 0 && !str2.startsWith(".") && !str2.endsWith(ClasspathEntry.DOT_DOT)) {
            if (!str.endsWith(".")) {
                str = str + '.';
            }
            if (!str2.endsWith(".")) {
                str2 = str2 + '.';
            }
            String lowerCase = str2.toLowerCase(Locale.US);
            if (!lowerCase.contains("*")) {
                return str.equals(lowerCase);
            }
            if (!lowerCase.startsWith(C14587g.b.f99238e) || lowerCase.indexOf(42, 1) != -1 || str.length() < lowerCase.length() || C14587g.b.f99238e.equals(lowerCase)) {
                return false;
            }
            String substring = lowerCase.substring(1);
            if (!str.endsWith(substring)) {
                return false;
            }
            int length = str.length() - substring.length();
            return length <= 0 || str.lastIndexOf(46, length - 1) == -1;
        }
        return false;
    }

    public final boolean e(String str, X509Certificate x509Certificate) {
        String lowerCase = str.toLowerCase(Locale.US);
        Iterator<String> it = b(x509Certificate, 2).iterator();
        while (it.hasNext()) {
            if (d(lowerCase, it.next())) {
                return true;
            }
        }
        return false;
    }

    public final boolean f(String str, X509Certificate x509Certificate) {
        List<String> b10 = b(x509Certificate, 7);
        int size = b10.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (str.equalsIgnoreCase(b10.get(i10))) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean verify(String str, SSLSession sSLSession) {
        try {
            return c(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
        } catch (SSLException unused) {
            return false;
        }
    }
}
