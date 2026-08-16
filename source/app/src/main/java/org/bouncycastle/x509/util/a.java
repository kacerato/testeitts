package org.bouncycastle.x509.util;

import hi.C13505q;
import hi.C13506s;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.Principal;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509CRL;
import java.security.cert.X509Certificate;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
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
import oh.r;
import org.bouncycastle.jce.i;
import org.bouncycastle.jce.provider.S;
import org.bouncycastle.jce.provider.V;
import org.bouncycastle.jce.provider.W;
import org.bouncycastle.jce.provider.X;
import org.bouncycastle.util.StoreException;
import org.bouncycastle.util.w;
import org.bouncycastle.x509.k;
import org.bouncycastle.x509.l;
import org.bouncycastle.x509.m;
import org.bouncycastle.x509.n;
import org.bouncycastle.x509.o;
import org.bouncycastle.x509.p;
import org.eclipse.jdt.internal.core.JavadocConstants;

public class a {

    public static String f102423c = "com.sun.jndi.ldap.LdapCtxFactory";

    public static String f102424d = "ignore";

    public static final String f102425e = "none";

    public static final String f102426f = "com.sun.jndi.url";

    public static int f102427g = 32;

    public static long f102428h = 60000;

    public i f102429a;

    public Map f102430b = new HashMap(f102427g);

    public a(i iVar) {
        this.f102429a = iVar;
    }

    public final String[] A(String str) {
        return str.split("\\s+");
    }

    public final synchronized void a(String str, List list) {
        Map map;
        try {
            Date date = new Date(System.currentTimeMillis());
            ArrayList arrayList = new ArrayList();
            arrayList.add(date);
            arrayList.add(list);
            if (this.f102430b.containsKey(str)) {
                map = this.f102430b;
            } else {
                if (this.f102430b.size() >= f102427g) {
                    long time = date.getTime();
                    Object obj = null;
                    for (Map.Entry entry : this.f102430b.entrySet()) {
                        long time2 = ((Date) ((List) entry.getValue()).get(0)).getTime();
                        if (time2 < time) {
                            obj = entry.getKey();
                            time = time2;
                        }
                    }
                    this.f102430b.remove(obj);
                }
                map = this.f102430b;
            }
            map.put(str, arrayList);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0098 A[LOOP:0: B:26:0x0098->B:28:0x009b, LOOP_START, PHI: r4
  0x0098: PHI (r4v5 int) = (r4v1 int), (r4v6 int) binds: [B:25:0x0096, B:28:0x009b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d5 A[LOOP:1: B:35:0x00cf->B:37:0x00d5, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List b(k kVar, String[] strArr, String[] strArr2, String[] strArr3) throws StoreException {
        Principal[] principalArr;
        Iterator<E> it;
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        String str = null;
        if (kVar.h() != null) {
            if (kVar.h().j() != null) {
                hashSet.add(kVar.h().j().toString());
            }
            if (kVar.h().d() != null) {
                principalArr = kVar.h().d();
                if (kVar.f() != null) {
                    if (kVar.f().getHolder().d() != null) {
                        principalArr = kVar.f().getHolder().d();
                    }
                    hashSet.add(kVar.f().getSerialNumber().toString());
                }
                if (principalArr != null) {
                    Principal principal = principalArr[0];
                    str = principal instanceof X500Principal ? ((X500Principal) principal).getName(X500Principal.RFC1779) : principal.getName();
                }
                if (kVar.j() != null) {
                    hashSet.add(kVar.j().toString());
                }
                if (str != null) {
                    for (String str2 : strArr3) {
                        arrayList.addAll(z(strArr2, "*" + y(str, str2) + "*", strArr));
                    }
                }
                if (hashSet.size() > 0 && this.f102429a.L() != null) {
                    it = hashSet.iterator();
                    while (it.hasNext()) {
                        arrayList.addAll(z(A(this.f102429a.L()), (String) it.next(), strArr));
                    }
                }
                if (hashSet.size() == 0 && str == null) {
                    arrayList.addAll(z(strArr2, "*", strArr));
                }
                return arrayList;
            }
        }
        principalArr = null;
        if (kVar.f() != null) {
        }
        if (principalArr != null) {
        }
        if (kVar.j() != null) {
        }
        if (str != null) {
        }
        if (hashSet.size() > 0) {
            it = hashSet.iterator();
            while (it.hasNext()) {
            }
        }
        if (hashSet.size() == 0) {
            arrayList.addAll(z(strArr2, "*", strArr));
        }
        return arrayList;
    }

    public final List c(m mVar, String[] strArr, String[] strArr2, String[] strArr3) throws StoreException {
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        if (mVar.getIssuers() != null) {
            hashSet.addAll(mVar.getIssuers());
        }
        if (mVar.getCertificateChecking() != null) {
            hashSet.add(r(mVar.getCertificateChecking()));
        }
        if (mVar.a() != null) {
            for (Principal principal : mVar.a().f().b()) {
                if (principal instanceof X500Principal) {
                    hashSet.add(principal);
                }
            }
        }
        Iterator<E> it = hashSet.iterator();
        String str = null;
        while (it.hasNext()) {
            str = ((X500Principal) it.next()).getName(X500Principal.RFC1779);
            for (String str2 : strArr3) {
                arrayList.addAll(z(strArr2, "*" + y(str, str2) + "*", strArr));
            }
        }
        if (str == null) {
            arrayList.addAll(z(strArr2, "*", strArr));
        }
        return arrayList;
    }

    public final List d(o oVar, String[] strArr, String[] strArr2, String[] strArr3) throws StoreException {
        ArrayList arrayList = new ArrayList();
        String w10 = w(oVar);
        String bigInteger = oVar.getSerialNumber() != null ? oVar.getSerialNumber().toString() : null;
        if (oVar.getCertificate() != null) {
            w10 = oVar.getCertificate().getSubjectX500Principal().getName(X500Principal.RFC1779);
            bigInteger = oVar.getCertificate().getSerialNumber().toString();
        }
        if (w10 != null) {
            for (String str : strArr3) {
                arrayList.addAll(z(strArr2, "*" + y(w10, str) + "*", strArr));
            }
        }
        if (bigInteger != null && this.f102429a.L() != null) {
            arrayList.addAll(z(A(this.f102429a.L()), bigInteger, strArr));
        }
        if (bigInteger == null && w10 == null) {
            arrayList.addAll(z(strArr2, "*", strArr));
        }
        return arrayList;
    }

    public final DirContext e() throws NamingException {
        Properties properties = new Properties();
        properties.setProperty("java.naming.factory.initial", f102423c);
        properties.setProperty("java.naming.batchsize", "0");
        properties.setProperty("java.naming.provider.url", this.f102429a.J());
        properties.setProperty("java.naming.factory.url.pkgs", "com.sun.jndi.url");
        properties.setProperty("java.naming.referral", f102424d);
        properties.setProperty("java.naming.security.authentication", "none");
        return new InitialDirContext(properties);
    }

    public final Set f(List list, k kVar) throws StoreException {
        HashSet hashSet = new HashSet();
        Iterator it = list.iterator();
        S s10 = new S();
        while (it.hasNext()) {
            try {
                s10.a(new ByteArrayInputStream((byte[]) it.next()));
                l lVar = (l) s10.b();
                if (kVar.Z2(lVar)) {
                    hashSet.add(lVar);
                }
            } catch (StreamParsingException unused) {
            }
        }
        return hashSet;
    }

    public final Set g(List list, m mVar) throws StoreException {
        HashSet hashSet = new HashSet();
        V v10 = new V();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                v10.a(new ByteArrayInputStream((byte[]) it.next()));
                X509CRL x509crl = (X509CRL) v10.b();
                if (mVar.Z2(x509crl)) {
                    hashSet.add(x509crl);
                }
            } catch (StreamParsingException unused) {
            }
        }
        return hashSet;
    }

    public final Set h(List list, o oVar) throws StoreException {
        HashSet hashSet = new HashSet();
        Iterator it = list.iterator();
        X x10 = new X();
        while (it.hasNext()) {
            try {
                x10.a(new ByteArrayInputStream((byte[]) it.next()));
                X509Certificate x509Certificate = (X509Certificate) x10.b();
                if (oVar.Z2(x509Certificate)) {
                    hashSet.add(x509Certificate);
                }
            } catch (Exception unused) {
            }
        }
        return hashSet;
    }

    public final Set i(List list, n nVar) throws StoreException {
        p pVar;
        HashSet hashSet = new HashSet();
        int i10 = 0;
        while (i10 < list.size()) {
            try {
                try {
                    W w10 = new W();
                    w10.a(new ByteArrayInputStream((byte[]) list.get(i10)));
                    pVar = (p) w10.b();
                } catch (IOException | CertificateParsingException unused) {
                }
            } catch (StreamParsingException unused2) {
                int i11 = i10 + 1;
                i10 = i11;
                pVar = new p(new C13506s(C13505q.v(new r((byte[]) list.get(i10)).k()), C13505q.v(new r((byte[]) list.get(i11)).k())));
            }
            if (nVar.Z2(pVar)) {
                hashSet.add(pVar);
            }
            i10++;
        }
        return hashSet;
    }

    public final List j(n nVar, String[] strArr, String[] strArr2, String[] strArr3) throws StoreException {
        ArrayList arrayList = new ArrayList();
        String w10 = nVar.b() != null ? w(nVar.b()) : null;
        if (nVar.a() != null && nVar.a().b() != null) {
            w10 = nVar.a().b().getSubjectX500Principal().getName(X500Principal.RFC1779);
        }
        if (w10 != null) {
            for (String str : strArr3) {
                arrayList.addAll(z(strArr2, "*" + y(w10, str) + "*", strArr));
            }
        }
        if (w10 == null) {
            arrayList.addAll(z(strArr2, "*", strArr));
        }
        return arrayList;
    }

    public Collection k(k kVar) throws StoreException {
        String[] A10 = A(this.f102429a.d());
        String[] A11 = A(this.f102429a.z());
        String[] A12 = A(this.f102429a.e());
        Set f10 = f(b(kVar, A10, A11, A12), kVar);
        if (f10.size() == 0) {
            f10.addAll(f(b(new k(), A10, A11, A12), kVar));
        }
        return f10;
    }

    public Collection l(m mVar) throws StoreException {
        String[] A10 = A(this.f102429a.f());
        String[] A11 = A(this.f102429a.A());
        String[] A12 = A(this.f102429a.g());
        Set g10 = g(c(mVar, A10, A11, A12), mVar);
        if (g10.size() == 0) {
            g10.addAll(g(c(new m(), A10, A11, A12), mVar));
        }
        return g10;
    }

    public Collection m(k kVar) throws StoreException {
        String[] A10 = A(this.f102429a.h());
        String[] A11 = A(this.f102429a.B());
        String[] A12 = A(this.f102429a.i());
        Set f10 = f(b(kVar, A10, A11, A12), kVar);
        if (f10.size() == 0) {
            f10.addAll(f(b(new k(), A10, A11, A12), kVar));
        }
        return f10;
    }

    public Collection n(m mVar) throws StoreException {
        String[] A10 = A(this.f102429a.j());
        String[] A11 = A(this.f102429a.C());
        String[] A12 = A(this.f102429a.k());
        Set g10 = g(c(mVar, A10, A11, A12), mVar);
        if (g10.size() == 0) {
            g10.addAll(g(c(new m(), A10, A11, A12), mVar));
        }
        return g10;
    }

    public Collection o(k kVar) throws StoreException {
        String[] A10 = A(this.f102429a.l());
        String[] A11 = A(this.f102429a.D());
        String[] A12 = A(this.f102429a.m());
        Set f10 = f(b(kVar, A10, A11, A12), kVar);
        if (f10.size() == 0) {
            f10.addAll(f(b(new k(), A10, A11, A12), kVar));
        }
        return f10;
    }

    public Collection p(m mVar) throws StoreException {
        String[] A10 = A(this.f102429a.n());
        String[] A11 = A(this.f102429a.E());
        String[] A12 = A(this.f102429a.o());
        Set g10 = g(c(mVar, A10, A11, A12), mVar);
        if (g10.size() == 0) {
            g10.addAll(g(c(new m(), A10, A11, A12), mVar));
        }
        return g10;
    }

    public Collection q(o oVar) throws StoreException {
        String[] A10 = A(this.f102429a.q());
        String[] A11 = A(this.f102429a.F());
        String[] A12 = A(this.f102429a.r());
        Set h10 = h(d(oVar, A10, A11, A12), oVar);
        if (h10.size() == 0) {
            h10.addAll(h(d(new o(), A10, A11, A12), oVar));
        }
        return h10;
    }

    public final X500Principal r(X509Certificate x509Certificate) {
        return x509Certificate.getIssuerX500Principal();
    }

    public Collection s(m mVar) throws StoreException {
        String[] A10 = A(this.f102429a.s());
        String[] A11 = A(this.f102429a.G());
        String[] A12 = A(this.f102429a.t());
        Set g10 = g(c(mVar, A10, A11, A12), mVar);
        if (g10.size() == 0) {
            g10.addAll(g(c(new m(), A10, A11, A12), mVar));
        }
        return g10;
    }

    public Collection t(n nVar) throws StoreException {
        String[] A10 = A(this.f102429a.u());
        String[] A11 = A(this.f102429a.H());
        String[] A12 = A(this.f102429a.v());
        Set i10 = i(j(nVar, A10, A11, A12), nVar);
        if (i10.size() == 0) {
            o oVar = new o();
            n nVar2 = new n();
            nVar2.e(oVar);
            nVar2.f(oVar);
            i10.addAll(i(j(nVar2, A10, A11, A12), nVar));
        }
        return i10;
    }

    public Collection u(m mVar) throws StoreException {
        String[] A10 = A(this.f102429a.w());
        String[] A11 = A(this.f102429a.I());
        String[] A12 = A(this.f102429a.x());
        Set g10 = g(c(mVar, A10, A11, A12), mVar);
        if (g10.size() == 0) {
            g10.addAll(g(c(new m(), A10, A11, A12), mVar));
        }
        return g10;
    }

    public final List v(String str) {
        List list = (List) this.f102430b.get(str);
        long currentTimeMillis = System.currentTimeMillis();
        if (list == null || ((Date) list.get(0)).getTime() < currentTimeMillis - f102428h) {
            return null;
        }
        return (List) list.get(1);
    }

    public final String w(o oVar) {
        try {
            byte[] subjectAsBytes = oVar.getSubjectAsBytes();
            if (subjectAsBytes != null) {
                return new X500Principal(subjectAsBytes).getName(X500Principal.RFC1779);
            }
            return null;
        } catch (IOException e10) {
            throw new StoreException("exception processing name: " + e10.getMessage(), e10);
        }
    }

    public Collection x(o oVar) throws StoreException {
        String[] A10 = A(this.f102429a.M());
        String[] A11 = A(this.f102429a.K());
        String[] A12 = A(this.f102429a.N());
        Set h10 = h(d(oVar, A10, A11, A12), oVar);
        if (h10.size() == 0) {
            h10.addAll(h(d(new o(), A10, A11, A12), oVar));
        }
        return h10;
    }

    public final String y(String str, String str2) {
        int indexOf = w.l(str).indexOf(w.l(str2) + "=");
        if (indexOf == -1) {
            return "";
        }
        String substring = str.substring(indexOf + str2.length());
        int indexOf2 = substring.indexOf(44);
        if (indexOf2 == -1) {
            indexOf2 = substring.length();
        }
        while (substring.charAt(indexOf2 - 1) == '\\') {
            indexOf2 = substring.indexOf(44, indexOf2 + 1);
            if (indexOf2 == -1) {
                indexOf2 = substring.length();
            }
        }
        String substring2 = substring.substring(0, indexOf2);
        String substring3 = substring2.substring(substring2.indexOf(61) + 1);
        if (substring3.charAt(0) == ' ') {
            substring3 = substring3.substring(1);
        }
        if (substring3.startsWith(JavadocConstants.ANCHOR_PREFIX_END)) {
            substring3 = substring3.substring(1);
        }
        return substring3.endsWith(JavadocConstants.ANCHOR_PREFIX_END) ? substring3.substring(0, substring3.length() - 1) : substring3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0107, code lost:
    
        if (r3 != null) goto L45;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List z(String[] strArr, String str, String[] strArr2) throws StoreException {
        String str2;
        DirContext dirContext = null;
        if (strArr == null) {
            str2 = null;
        } else {
            if (str.equals("**")) {
                str = "*";
            }
            String str3 = "";
            for (String str4 : strArr) {
                str3 = str3 + "(" + str4 + "=" + str + ")";
            }
            str2 = "(|" + str3 + ")";
        }
        String str5 = "";
        for (String str6 : strArr2) {
            str5 = str5 + "(" + str6 + "=*)";
        }
        String str7 = "(|" + str5 + ")";
        String str8 = "(&" + str2 + "" + str7 + ")";
        if (str2 != null) {
            str7 = str8;
        }
        List v10 = v(str7);
        if (v10 != null) {
            return v10;
        }
        ArrayList arrayList = new ArrayList();
        try {
            dirContext = e();
            SearchControls searchControls = new SearchControls();
            searchControls.setSearchScope(2);
            searchControls.setCountLimit(0L);
            searchControls.setReturningAttributes(strArr2);
            NamingEnumeration search = dirContext.search(this.f102429a.p(), str7, searchControls);
            while (search.hasMoreElements()) {
                NamingEnumeration all = ((Attribute) ((SearchResult) search.next()).getAttributes().getAll().next()).getAll();
                while (all.hasMore()) {
                    arrayList.add(all.next());
                }
            }
            a(str7, arrayList);
        } catch (NamingException unused) {
        } catch (Throwable th2) {
            if (dirContext != null) {
                try {
                    dirContext.close();
                } catch (Exception unused2) {
                }
            }
            throw th2;
        }
        try {
            dirContext.close();
        } catch (Exception unused3) {
            return arrayList;
        }
    }
}
