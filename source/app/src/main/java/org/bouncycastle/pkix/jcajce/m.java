package org.bouncycastle.pkix.jcajce;

import Hj.o;
import Hj.p;
import Hj.v;
import dk.C12948d;
import dk.InterfaceC12950f;
import fi.C13228d;
import hi.C13478B;
import hi.C13481E;
import hi.C13482F;
import hi.C13501m;
import hi.C13512y;
import hi.C13513z;
import j3.C13804a;
import java.net.URI;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.Provider;
import java.security.PublicKey;
import java.security.cert.CRL;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertStore;
import java.security.cert.CertStoreException;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.PKIXParameters;
import java.security.cert.TrustAnchor;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLSelector;
import java.security.cert.X509Certificate;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.security.auth.x500.X500Principal;
import oh.B;
import oh.C14549x;
import oh.J;
import org.bouncycastle.util.r;
import org.bouncycastle.util.t;
import org.eclipse.jdt.internal.core.JavadocConstants;

public class m extends PKIXCertPathChecker {

    public static final int f102051q = 0;

    public static final int f102052r = 1;

    public static Logger f102053s = Logger.getLogger(m.class.getName());

    public static final String[] f102054t = {C13804a.f92557d, "keyCompromise", "cACompromise", "affiliationChanged", "superseded", "cessationOfOperation", "certificateHold", "unknown", "removeFromCRL", "privilegeWithdrawn", "aACompromise"};

    public final Map<X500Principal, Long> f102055b;

    public final Set<TrustAnchor> f102056c;

    public final boolean f102057d;

    public final int f102058e;

    public final List<t<CRL>> f102059f;

    public final List<CertStore> f102060g;

    public final InterfaceC12950f f102061h;

    public final boolean f102062i;

    public final long f102063j;

    public final long f102064k;

    public final Date f102065l;

    public Date f102066m;

    public X500Principal f102067n;

    public PublicKey f102068o;

    public X509Certificate f102069p;

    public class a extends X509CRLSelector {

        public final List f102070b;

        public a(List list) {
            this.f102070b = list;
        }

        @Override
        public boolean match(CRL crl) {
            if (!(crl instanceof X509CRL)) {
                return false;
            }
            this.f102070b.add(((X509CRL) crl).getIssuerX500Principal());
            return false;
        }
    }

    public class b implements r<CRL> {

        public final List f102072b;

        public b(List list) {
            this.f102072b = list;
        }

        @Override
        public Object clone() {
            return this;
        }

        @Override
        public boolean Z2(CRL crl) {
            if (!(crl instanceof X509CRL)) {
                return false;
            }
            this.f102072b.add(((X509CRL) crl).getIssuerX500Principal());
            return false;
        }
    }

    public static class c {

        public Set<TrustAnchor> f102074a;

        public List<CertStore> f102075b;

        public List<t<CRL>> f102076c;

        public boolean f102077d;

        public int f102078e;

        public Provider f102079f;

        public String f102080g;

        public boolean f102081h;

        public long f102082i;

        public long f102083j;

        public Date f102084k;

        public c(KeyStore keyStore) throws KeyStoreException {
            this.f102075b = new ArrayList();
            this.f102076c = new ArrayList();
            this.f102078e = 0;
            this.f102084k = new Date();
            this.f102074a = new HashSet();
            Enumeration<String> aliases = keyStore.aliases();
            while (aliases.hasMoreElements()) {
                String nextElement = aliases.nextElement();
                if (keyStore.isCertificateEntry(nextElement)) {
                    this.f102074a.add(new TrustAnchor((X509Certificate) keyStore.getCertificate(nextElement), null));
                }
            }
        }

        public c l(CertStore certStore) {
            this.f102075b.add(certStore);
            return this;
        }

        public c m(t<CRL> tVar) {
            this.f102076c.add(tVar);
            return this;
        }

        public m n() {
            return new m(this, null);
        }

        public c o(boolean z10) {
            this.f102077d = z10;
            return this;
        }

        public c p(Date date) {
            this.f102084k = new Date(date.getTime());
            return this;
        }

        public c q(boolean z10, long j10) {
            this.f102081h = z10;
            this.f102082i = j10;
            this.f102083j = -1L;
            return this;
        }

        public c r(boolean z10, long j10) {
            this.f102081h = z10;
            this.f102082i = (3 * j10) / 4;
            this.f102083j = j10;
            return this;
        }

        public c s(int i10) {
            this.f102078e = i10;
            return this;
        }

        public c t(String str) {
            this.f102080g = str;
            return this;
        }

        public c u(Provider provider) {
            this.f102079f = provider;
            return this;
        }

        public c(TrustAnchor trustAnchor) {
            this.f102075b = new ArrayList();
            this.f102076c = new ArrayList();
            this.f102078e = 0;
            this.f102084k = new Date();
            this.f102074a = Collections.singleton(trustAnchor);
        }

        public c(Set<TrustAnchor> set) {
            this.f102075b = new ArrayList();
            this.f102076c = new ArrayList();
            this.f102078e = 0;
            this.f102084k = new Date();
            this.f102074a = new HashSet(set);
        }
    }

    public static class d implements o<CRL>, org.bouncycastle.util.l<CRL> {

        public Collection<CRL> f102085b;

        public d(t<CRL> tVar) {
            this.f102085b = new ArrayList(tVar.a(null));
        }

        @Override
        public Collection<CRL> a(r<CRL> rVar) {
            if (rVar == null) {
                return new ArrayList(this.f102085b);
            }
            ArrayList arrayList = new ArrayList();
            for (CRL crl : this.f102085b) {
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

    public m(c cVar) {
        InterfaceC12950f iVar;
        this.f102055b = new HashMap();
        this.f102059f = new ArrayList(cVar.f102076c);
        this.f102060g = new ArrayList(cVar.f102075b);
        this.f102057d = cVar.f102077d;
        this.f102058e = cVar.f102078e;
        this.f102056c = cVar.f102074a;
        this.f102062i = cVar.f102081h;
        this.f102063j = cVar.f102082i;
        this.f102064k = cVar.f102083j;
        this.f102065l = cVar.f102084k;
        if (cVar.f102079f != null) {
            iVar = new dk.k(cVar.f102079f);
        } else {
            if (cVar.f102080g == null) {
                this.f102061h = new C12948d();
                return;
            }
            iVar = new dk.i(cVar.f102080g);
        }
        this.f102061h = iVar;
    }

    public static List<o> e(C13501m c13501m, Map<C13481E, o> map) throws AnnotatedException {
        if (c13501m == null) {
            return Collections.emptyList();
        }
        try {
            C13512y[] v10 = c13501m.v();
            ArrayList arrayList = new ArrayList();
            for (C13512y c13512y : v10) {
                C13513z x10 = c13512y.x();
                if (x10 != null && x10.y() == 0) {
                    for (C13481E c13481e : C13482F.w(x10.x()).y()) {
                        o oVar = map.get(c13481e);
                        if (oVar != null) {
                            arrayList.add(oVar);
                        }
                    }
                }
            }
            return arrayList;
        } catch (Exception e10) {
            throw new AnnotatedException("could not read distribution points could not be read", e10);
        }
    }

    public final void a(List<X500Principal> list, CertStore certStore) throws CertStoreException {
        certStore.getCRLs(new a(list));
    }

    public final void b(List<X500Principal> list, t<CRL> tVar) {
        tVar.a(new b(list));
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0117  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void c(v vVar, Date date, Date date2, X509Certificate x509Certificate, X509Certificate x509Certificate2, PublicKey publicKey, List list, InterfaceC12950f interfaceC12950f) throws AnnotatedException, CertPathValidatorException {
        AnnotatedException e10;
        boolean z10;
        int i10;
        int i11;
        v vVar2;
        C13512y[] c13512yArr;
        int i12;
        try {
            C13501m w10 = C13501m.w(j.h(x509Certificate, C13478B.f90544t));
            org.bouncycastle.pkix.jcajce.b bVar = new org.bouncycastle.pkix.jcajce.b();
            i iVar = new i();
            int i13 = 11;
            if (w10 != null) {
                try {
                    C13512y[] v10 = w10.v();
                    if (v10 != null) {
                        v.b bVar2 = new v.b(vVar);
                        try {
                            Iterator<o> it = e(w10, vVar.q()).iterator();
                            while (it.hasNext()) {
                                bVar2.m(it.next());
                            }
                            v q10 = bVar2.q();
                            Date m10 = j.m(q10, date);
                            e10 = null;
                            int i14 = 0;
                            z10 = false;
                            while (i14 < v10.length && bVar.a() == i13 && !iVar.e()) {
                                try {
                                    i11 = i14;
                                    vVar2 = q10;
                                    c13512yArr = v10;
                                    i12 = i13;
                                    try {
                                        h.a(v10[i14], q10, date, m10, x509Certificate, x509Certificate2, publicKey, bVar, iVar, list, interfaceC12950f);
                                        z10 = true;
                                    } catch (AnnotatedException e11) {
                                        e10 = e11;
                                    }
                                } catch (AnnotatedException e12) {
                                    e10 = e12;
                                    i11 = i14;
                                    vVar2 = q10;
                                    c13512yArr = v10;
                                    i12 = i13;
                                }
                                i14 = i11 + 1;
                                i13 = i12;
                                q10 = vVar2;
                                v10 = c13512yArr;
                            }
                            i10 = i13;
                            if (bVar.a() == i10 && !iVar.e()) {
                                try {
                                    h.a(new C13512y(new C13513z(0, new C13482F(new C13481E(4, C13228d.x(x509Certificate.getIssuerX500Principal().getEncoded())))), null, null), (v) vVar.clone(), date, date2, x509Certificate, x509Certificate2, publicKey, bVar, iVar, list, interfaceC12950f);
                                    z10 = true;
                                } catch (AnnotatedException e13) {
                                    e10 = e13;
                                }
                            }
                            if (z10) {
                                if (e10 == null) {
                                    throw new CRLNotFoundException("no valid CRL found");
                                }
                                throw new CRLNotFoundException("no valid CRL found", e10);
                            }
                            if (bVar.a() == i10) {
                                if (!iVar.e() && bVar.a() == i10) {
                                    bVar.c(12);
                                }
                                if (bVar.a() == 12) {
                                    throw new AnnotatedException("certificate status could not be determined");
                                }
                                return;
                            }
                            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss Z");
                            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                            throw new AnnotatedException(("certificate [issuer=\"" + ((Object) x509Certificate.getIssuerX500Principal()) + "\",serialNumber=" + ((Object) x509Certificate.getSerialNumber()) + ",subject=\"" + ((Object) x509Certificate.getSubjectX500Principal()) + "\"] revoked after " + simpleDateFormat.format(bVar.b())) + ", reason: " + f102054t[bVar.a()]);
                        } catch (AnnotatedException e14) {
                            throw new AnnotatedException("no additional CRL locations could be decoded from CRL distribution point extension", e14);
                        }
                    }
                } catch (Exception e15) {
                    throw new AnnotatedException("cannot read distribution points", e15);
                }
            }
            i10 = 11;
            e10 = null;
            z10 = false;
            if (bVar.a() == i10) {
                h.a(new C13512y(new C13513z(0, new C13482F(new C13481E(4, C13228d.x(x509Certificate.getIssuerX500Principal().getEncoded())))), null, null), (v) vVar.clone(), date, date2, x509Certificate, x509Certificate2, publicKey, bVar, iVar, list, interfaceC12950f);
                z10 = true;
            }
            if (z10) {
            }
        } catch (Exception e16) {
            throw new AnnotatedException("cannot read CRL distribution point extension", e16);
        }
    }

    @Override
    public void check(Certificate certificate, Collection<String> collection) throws CertPathValidatorException {
        Logger logger;
        Level level;
        StringBuilder sb2;
        X509Certificate x509Certificate = (X509Certificate) certificate;
        if (this.f102057d && x509Certificate.getBasicConstraints() != -1) {
            this.f102067n = x509Certificate.getSubjectX500Principal();
            this.f102068o = x509Certificate.getPublicKey();
            this.f102069p = x509Certificate;
            return;
        }
        if (this.f102067n == null) {
            this.f102067n = x509Certificate.getIssuerX500Principal();
            TrustAnchor trustAnchor = null;
            for (TrustAnchor trustAnchor2 : this.f102056c) {
                if (this.f102067n.equals(trustAnchor2.getCA()) || this.f102067n.equals(trustAnchor2.getTrustedCert().getSubjectX500Principal())) {
                    trustAnchor = trustAnchor2;
                }
            }
            if (trustAnchor == null) {
                throw new CertPathValidatorException("no trust anchor found for " + ((Object) this.f102067n));
            }
            X509Certificate trustedCert = trustAnchor.getTrustedCert();
            this.f102069p = trustedCert;
            this.f102068o = trustedCert.getPublicKey();
        }
        ArrayList arrayList = new ArrayList();
        try {
            PKIXParameters pKIXParameters = new PKIXParameters(this.f102056c);
            pKIXParameters.setRevocationEnabled(false);
            pKIXParameters.setDate(this.f102065l);
            for (int i10 = 0; i10 != this.f102060g.size(); i10++) {
                if (f102053s.isLoggable(Level.INFO)) {
                    a(arrayList, this.f102060g.get(i10));
                }
                pKIXParameters.addCertStore(this.f102060g.get(i10));
            }
            v.b bVar = new v.b(pKIXParameters);
            bVar.w(this.f102058e);
            for (int i11 = 0; i11 != this.f102059f.size(); i11++) {
                if (f102053s.isLoggable(Level.INFO)) {
                    b(arrayList, this.f102059f.get(i11));
                }
                bVar.m(new d(this.f102059f.get(i11)));
            }
            if (arrayList.isEmpty()) {
                f102053s.log(Level.INFO, "configured with 0 pre-loaded CRLs");
            } else if (f102053s.isLoggable(Level.FINE)) {
                for (int i12 = 0; i12 != arrayList.size(); i12++) {
                    f102053s.log(Level.FINE, "configuring with CRL for issuer \"" + ((Object) arrayList.get(i12)) + JavadocConstants.ANCHOR_PREFIX_END);
                }
            } else {
                f102053s.log(Level.INFO, "configured with " + arrayList.size() + " pre-loaded CRLs");
            }
            v q10 = bVar.q();
            Date m10 = j.m(q10, this.f102065l);
            try {
                c(q10, this.f102066m, m10, x509Certificate, this.f102069p, this.f102068o, new ArrayList(), this.f102061h);
            } catch (AnnotatedException e10) {
                throw new CertPathValidatorException(e10.getMessage(), e10.getCause());
            } catch (CRLNotFoundException e11) {
                C14549x c14549x = C13478B.f90544t;
                if (x509Certificate.getExtensionValue(c14549x.J()) == null) {
                    throw e11;
                }
                try {
                    Set<CRL> d10 = d(x509Certificate.getIssuerX500Principal(), m10, j.h(x509Certificate, c14549x), this.f102061h);
                    if (!d10.isEmpty()) {
                        try {
                            bVar.m(new d(new org.bouncycastle.util.e(d10)));
                            v q11 = bVar.q();
                            c(q11, this.f102066m, j.m(q11, this.f102065l), x509Certificate, this.f102069p, this.f102068o, new ArrayList(), this.f102061h);
                        } catch (AnnotatedException e12) {
                            throw new CertPathValidatorException(e12.getMessage(), e12.getCause());
                        }
                    } else {
                        if (!this.f102062i) {
                            throw e11;
                        }
                        X500Principal issuerX500Principal = x509Certificate.getIssuerX500Principal();
                        Long l10 = this.f102055b.get(issuerX500Principal);
                        if (l10 != null) {
                            long currentTimeMillis = System.currentTimeMillis() - l10.longValue();
                            long j10 = this.f102064k;
                            if (j10 != -1 && j10 < currentTimeMillis) {
                                throw e11;
                            }
                            if (currentTimeMillis < this.f102063j) {
                                logger = f102053s;
                                level = Level.WARNING;
                                sb2 = new StringBuilder();
                            } else {
                                logger = f102053s;
                                level = Level.SEVERE;
                                sb2 = new StringBuilder();
                            }
                            sb2.append("soft failing for issuer: \"");
                            sb2.append((Object) issuerX500Principal);
                            sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
                            logger.log(level, sb2.toString());
                        } else {
                            this.f102055b.put(issuerX500Principal, Long.valueOf(System.currentTimeMillis()));
                        }
                    }
                } catch (AnnotatedException e13) {
                    throw new CertPathValidatorException(e13.getMessage(), e13.getCause());
                }
            }
            this.f102069p = x509Certificate;
            this.f102068o = x509Certificate.getPublicKey();
            this.f102067n = x509Certificate.getSubjectX500Principal();
        } catch (GeneralSecurityException e14) {
            throw new RuntimeException("error setting up baseParams: " + e14.getMessage());
        }
    }

    @Override
    public Object clone() {
        return this;
    }

    public final Set<CRL> d(X500Principal x500Principal, Date date, B b10, InterfaceC12950f interfaceC12950f) {
        URI uri;
        o a10;
        C13512y[] v10 = C13501m.w(b10).v();
        try {
            CertificateFactory r10 = interfaceC12950f.r("X.509");
            X509CRLSelector x509CRLSelector = new X509CRLSelector();
            x509CRLSelector.addIssuer(x500Principal);
            p<? extends CRL> g10 = new p.b(x509CRLSelector).g();
            HashSet hashSet = new HashSet();
            for (int i10 = 0; i10 != v10.length; i10++) {
                C13513z x10 = v10[i10].x();
                if (x10 != null && x10.y() == 0) {
                    C13481E[] y10 = C13482F.w(x10.x()).y();
                    for (int i11 = 0; i11 != y10.length; i11++) {
                        C13481E c13481e = y10[i11];
                        if (c13481e.g() == 6) {
                            try {
                                uri = new URI(((J) c13481e.x()).getString());
                                try {
                                    a10 = org.bouncycastle.pkix.jcajce.c.a(r10, this.f102065l, uri);
                                } catch (Exception e10) {
                                    e = e10;
                                }
                            } catch (Exception e11) {
                                e = e11;
                                uri = null;
                            }
                            if (a10 != null) {
                                try {
                                    hashSet.addAll(e.b(g10, date, Collections.EMPTY_LIST, Collections.singletonList(a10)));
                                } catch (Exception e12) {
                                    e = e12;
                                    Logger logger = f102053s;
                                    Level level = Level.FINE;
                                    if (logger.isLoggable(level)) {
                                        f102053s.log(level, "CrlDP " + ((Object) uri) + " ignored: " + e.getMessage(), (Throwable) e);
                                    } else {
                                        f102053s.log(Level.INFO, "CrlDP " + ((Object) uri) + " ignored: " + e.getMessage());
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return hashSet;
        } catch (Exception e13) {
            Logger logger2 = f102053s;
            Level level2 = Level.FINE;
            if (logger2.isLoggable(level2)) {
                f102053s.log(level2, "could not create certFact: " + e13.getMessage(), (Throwable) e13);
                return null;
            }
            f102053s.log(Level.INFO, "could not create certFact: " + e13.getMessage());
            return null;
        }
    }

    @Override
    public Set<String> getSupportedExtensions() {
        return null;
    }

    @Override
    public void init(boolean z10) throws CertPathValidatorException {
        if (z10) {
            throw new IllegalArgumentException("forward processing not supported");
        }
        this.f102066m = new Date();
        this.f102067n = null;
    }

    @Override
    public boolean isForwardCheckingSupported() {
        return false;
    }

    public m(c cVar, a aVar) {
        this(cVar);
    }
}
