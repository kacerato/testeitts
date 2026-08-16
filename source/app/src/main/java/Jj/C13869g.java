package jj;

import fi.C13225a;
import fi.C13227c;
import fi.C13228d;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.InetAddress;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLSession;
import org.bouncycastle.est.ESTException;
import org.bouncycastle.util.w;
import org.eclipse.jdt.internal.core.ClasspathEntry;

public class C13869g implements i {

    public static Logger f93807b = Logger.getLogger(C13869g.class.getName());

    public final Set<String> f93808a;

    public C13869g(Set<String> set) {
        this.f93808a = set;
    }

    public static boolean b(String str, String str2, Set<String> set) throws IOException {
        if (!str2.contains("*")) {
            return str.equalsIgnoreCase(str2);
        }
        int indexOf = str2.indexOf(42);
        if (indexOf != str2.lastIndexOf("*") || str2.contains(ClasspathEntry.DOT_DOT) || str2.charAt(str2.length() - 1) == '*') {
            return false;
        }
        int indexOf2 = str2.indexOf(46, indexOf);
        if (set != null && set.contains(w.l(str2.substring(indexOf2)))) {
            throw new IOException("Wildcard `" + str2 + "` matches known public suffix.");
        }
        String l10 = w.l(str2.substring(indexOf + 1));
        String l11 = w.l(str);
        if (l11.equals(l10) || l10.length() > l11.length()) {
            return false;
        }
        if (indexOf > 0) {
            return l11.startsWith(str2.substring(0, indexOf)) && l11.endsWith(l10) && l11.substring(indexOf, l11.length() - l10.length()).indexOf(46) < 0;
        }
        if (l11.substring(0, l11.length() - l10.length()).indexOf(46) > 0) {
            return false;
        }
        return l11.endsWith(l10);
    }

    @Override
    public boolean a(String str, SSLSession sSLSession) throws IOException {
        try {
            return c(str, (X509Certificate) CertificateFactory.getInstance("X509").generateCertificate(new ByteArrayInputStream(sSLSession.getPeerCertificates()[0].getEncoded())));
        } catch (Exception e10) {
            if (e10 instanceof ESTException) {
                throw ((ESTException) e10);
            }
            throw new ESTException(e10.getMessage(), e10);
        }
    }

    public boolean c(String str, X509Certificate x509Certificate) throws IOException {
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                if (x509Certificate.getSubjectX500Principal() == null) {
                    return false;
                }
                C13227c[] z10 = C13228d.x(x509Certificate.getSubjectX500Principal().getEncoded()).z();
                for (int length = z10.length - 1; length >= 0; length--) {
                    C13225a[] A10 = z10[length].A();
                    for (int i10 = 0; i10 != A10.length; i10++) {
                        C13225a c13225a = A10[i10];
                        if (c13225a.v().A(gi.c.f89953g)) {
                            return b(str, c13225a.x().toString(), this.f93808a);
                        }
                    }
                }
                return false;
            }
            for (List<?> list : subjectAlternativeNames) {
                int intValue = ((Number) list.get(0)).intValue();
                if (intValue == 2) {
                    if (b(str, list.get(1).toString(), this.f93808a)) {
                        return true;
                    }
                } else if (intValue != 7) {
                    Logger logger = f93807b;
                    Level level = Level.INFO;
                    if (logger.isLoggable(level)) {
                        String j10 = list.get(1) instanceof byte[] ? em.h.j((byte[]) list.get(1)) : list.get(1).toString();
                        f93807b.log(level, "ignoring type " + intValue + " value = " + j10);
                    }
                } else if (InetAddress.getByName(str).equals(InetAddress.getByName(list.get(1).toString()))) {
                    return true;
                }
            }
            return false;
        } catch (Exception e10) {
            throw new ESTException(e10.getMessage(), e10);
        }
    }
}
