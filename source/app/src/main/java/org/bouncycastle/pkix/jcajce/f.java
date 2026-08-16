package org.bouncycastle.pkix.jcajce;

import hi.C13478B;
import hi.C13481E;
import hi.C13482F;
import hi.C13484a;
import hi.C13486b;
import hi.C13498j;
import hi.C13499k;
import hi.C13500l;
import hi.C13501m;
import hi.C13512y;
import hi.C13513z;
import hi.H;
import hi.L;
import hi.P;
import hi.W;
import ii.C13741d;
import ii.C13742e;
import ii.InterfaceC13739b;
import ii.InterfaceC13743f;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.URL;
import java.security.GeneralSecurityException;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.cert.CertPath;
import java.security.cert.CertPathValidatorException;
import java.security.cert.Certificate;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateFactory;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.PKIXParameters;
import java.security.cert.PolicyNode;
import java.security.cert.TrustAnchor;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLEntry;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.Vector;
import javax.security.auth.x500.X500Principal;
import oh.AbstractC14536q;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14522j;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import oh.M;
import oh.r;
import org.bouncycastle.jce.provider.C14720a;
import org.bouncycastle.pkix.PKIXNameConstraintValidatorException;
import org.bouncycastle.util.o;
import qe.C15075d;
import w2.C15883c;

public class f extends a {

    public static final String f102013E = C13478B.f90520F.J();

    public static final String f102014F = C13478B.f90544t.J();

    public static final String f102015G = C13478B.f90516B.J();

    public static final String f102016H = "org.bouncycastle.pkix.CertPathReviewerMessages";

    public TrustAnchor f102017A;

    public PublicKey f102018B;

    public PolicyNode f102019C;

    public boolean f102020D;

    public CertPath f102021s;

    public PKIXParameters f102022t;

    public Date f102023u;

    public Date f102024v;

    public List f102025w;

    public int f102026x;

    public List[] f102027y;

    public List[] f102028z;

    public f() {
    }

    public static org.bouncycastle.pkix.util.a K(String str) {
        org.bouncycastle.pkix.util.a aVar = new org.bouncycastle.pkix.util.a(f102016H, str);
        aVar.j(f.class.getClassLoader());
        return aVar;
    }

    public static org.bouncycastle.pkix.util.a L(String str, Object[] objArr) {
        org.bouncycastle.pkix.util.a aVar = new org.bouncycastle.pkix.util.a(f102016H, str, objArr);
        aVar.j(f.class.getClassLoader());
        return aVar;
    }

    public void A(org.bouncycastle.pkix.util.a aVar, int i10) {
        if (i10 < -1 || i10 >= this.f102026x) {
            throw new IndexOutOfBoundsException();
        }
        this.f102028z[i10 + 1].add(aVar);
    }

    public void B(org.bouncycastle.pkix.util.a aVar) {
        this.f102027y[0].add(aVar);
    }

    public void C(org.bouncycastle.pkix.util.a aVar, int i10) {
        if (i10 < -1 || i10 >= this.f102026x) {
            throw new IndexOutOfBoundsException();
        }
        this.f102027y[i10 + 1].add(aVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:168:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x021a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void D(PKIXParameters pKIXParameters, X509Certificate x509Certificate, Date date, X509Certificate x509Certificate2, PublicKey publicKey, Vector vector, int i10) throws CertPathReviewerException {
        Iterator it;
        X509CRL x509crl;
        boolean z10;
        boolean z11;
        org.bouncycastle.pkix.util.a K10;
        String str;
        boolean[] keyUsage;
        X509CRL x509crl2;
        Iterator it2;
        org.bouncycastle.pkix.util.a L10;
        k kVar = new k();
        try {
            kVar.addIssuerName(a.e(x509Certificate).getEncoded());
            kVar.setCertificateChecking(x509Certificate);
            try {
                Set c10 = e.c(kVar, pKIXParameters);
                it = c10.iterator();
                if (c10.isEmpty()) {
                    Iterator<E> it3 = e.c(new k(), pKIXParameters).iterator();
                    ArrayList arrayList = new ArrayList();
                    while (it3.hasNext()) {
                        arrayList.add(((X509CRL) it3.next()).getIssuerX500Principal());
                    }
                    C(L("CertPathReviewer.noCrlInCertstore", new Object[]{new Wk.e(kVar.getIssuerNames()), new Wk.e(arrayList), org.bouncycastle.util.k.j(arrayList.size())}), i10);
                }
            } catch (AnnotatedException e10) {
                A(L("CertPathReviewer.crlExtractionError", new Object[]{e10.getCause().getMessage(), e10.getCause(), e10.getCause().getClass().getName()}), i10);
                it = new ArrayList().iterator();
            }
            X509CRL x509crl3 = null;
            while (it.hasNext()) {
                x509crl3 = (X509CRL) it.next();
                Date thisUpdate = x509crl3.getThisUpdate();
                Date nextUpdate = x509crl3.getNextUpdate();
                Object[] objArr = {new Wk.d(thisUpdate), new Wk.d(nextUpdate)};
                if (nextUpdate == null || date.before(nextUpdate)) {
                    C(L("CertPathReviewer.localValidCRL", objArr), i10);
                    x509crl = x509crl3;
                    z10 = true;
                    break;
                }
                C(L("CertPathReviewer.localInvalidCRL", objArr), i10);
            }
            x509crl = x509crl3;
            z10 = false;
            if (!z10) {
                X500Principal issuerX500Principal = x509Certificate.getIssuerX500Principal();
                Iterator it4 = vector.iterator();
                boolean z12 = z10;
                while (true) {
                    if (!it4.hasNext()) {
                        z11 = z12;
                        break;
                    }
                    try {
                        String str2 = (String) it4.next();
                        X509CRL N10 = N(str2);
                        if (N10 != null) {
                            X500Principal issuerX500Principal2 = N10.getIssuerX500Principal();
                            if (issuerX500Principal.equals(issuerX500Principal2)) {
                                x509crl2 = x509crl;
                                it2 = it4;
                                Date thisUpdate2 = N10.getThisUpdate();
                                Date nextUpdate2 = N10.getNextUpdate();
                                Object[] objArr2 = {new Wk.d(thisUpdate2), new Wk.d(nextUpdate2), new Wk.f(str2)};
                                if (nextUpdate2 != null && !date.before(nextUpdate2)) {
                                    L10 = L("CertPathReviewer.onlineInvalidCRL", objArr2);
                                }
                                try {
                                    C(L("CertPathReviewer.onlineValidCRL", objArr2), i10);
                                    x509crl = N10;
                                    z11 = true;
                                    break;
                                } catch (CertPathReviewerException e11) {
                                    e = e11;
                                    z12 = true;
                                    C(e.getErrorMessage(), i10);
                                    it4 = it2;
                                    x509crl = x509crl2;
                                }
                            } else {
                                x509crl2 = x509crl;
                                try {
                                    it2 = it4;
                                    try {
                                        L10 = L("CertPathReviewer.onlineCRLWrongCA", new Object[]{new Wk.e(issuerX500Principal2.getName()), new Wk.e(issuerX500Principal.getName()), new Wk.f(str2)});
                                    } catch (CertPathReviewerException e12) {
                                        e = e12;
                                        C(e.getErrorMessage(), i10);
                                        it4 = it2;
                                        x509crl = x509crl2;
                                    }
                                } catch (CertPathReviewerException e13) {
                                    e = e13;
                                    it2 = it4;
                                    C(e.getErrorMessage(), i10);
                                    it4 = it2;
                                    x509crl = x509crl2;
                                }
                            }
                            C(L10, i10);
                        } else {
                            x509crl2 = x509crl;
                            it2 = it4;
                        }
                    } catch (CertPathReviewerException e14) {
                        e = e14;
                        x509crl2 = x509crl;
                    }
                    it4 = it2;
                    x509crl = x509crl2;
                }
            } else {
                z11 = z10;
            }
            if (x509crl != null) {
                if (x509Certificate2 != null && (keyUsage = x509Certificate2.getKeyUsage()) != null && (keyUsage.length <= 6 || !keyUsage[6])) {
                    throw new CertPathReviewerException(K("CertPathReviewer.noCrlSigningPermited"));
                }
                if (publicKey == null) {
                    throw new CertPathReviewerException(K("CertPathReviewer.crlNoIssuerPublicKey"));
                }
                try {
                    x509crl.verify(publicKey, C14720a.f101701e);
                    X509CRLEntry revokedCertificate = x509crl.getRevokedCertificate(x509Certificate.getSerialNumber());
                    if (revokedCertificate != null) {
                        if (revokedCertificate.hasExtensions()) {
                            try {
                                C14522j F10 = C14522j.F(a.f(revokedCertificate, C13478B.f90537m.J()));
                                if (F10 != null) {
                                    str = a.f102003r[F10.L()];
                                    if (str == null) {
                                        str = a.f102003r[7];
                                    }
                                    org.bouncycastle.pkix.util.b bVar = new org.bouncycastle.pkix.util.b(f102016H, str);
                                    if (date.before(revokedCertificate.getRevocationDate())) {
                                        throw new CertPathReviewerException(L("CertPathReviewer.certRevoked", new Object[]{new Wk.d(revokedCertificate.getRevocationDate()), bVar}));
                                    }
                                    K10 = L("CertPathReviewer.revokedAfterValidation", new Object[]{new Wk.d(revokedCertificate.getRevocationDate()), bVar});
                                }
                            } catch (AnnotatedException e15) {
                                throw new CertPathReviewerException(K("CertPathReviewer.crlReasonExtError"), e15);
                            }
                        }
                        str = null;
                        if (str == null) {
                        }
                        org.bouncycastle.pkix.util.b bVar2 = new org.bouncycastle.pkix.util.b(f102016H, str);
                        if (date.before(revokedCertificate.getRevocationDate())) {
                        }
                    } else {
                        K10 = K("CertPathReviewer.notRevoked");
                    }
                    C(K10, i10);
                    Date nextUpdate3 = x509crl.getNextUpdate();
                    if (nextUpdate3 != null && !date.before(nextUpdate3)) {
                        C(L("CertPathReviewer.crlUpdateAvailable", new Object[]{new Wk.d(nextUpdate3)}), i10);
                    }
                    try {
                        B f10 = a.f(x509crl, a.f101993h);
                        try {
                            B f11 = a.f(x509crl, a.f101994i);
                            if (f11 != null) {
                                k kVar2 = new k();
                                try {
                                    kVar2.addIssuerName(a.g(x509crl).getEncoded());
                                    kVar2.setMinCRLNumber(((C14539s) f11).H());
                                    try {
                                        kVar2.setMaxCRLNumber(((C14539s) a.f(x509crl, a.f102000o)).H().subtract(BigInteger.valueOf(1L)));
                                        try {
                                            Iterator it5 = e.c(kVar2, pKIXParameters).iterator();
                                            while (it5.hasNext()) {
                                                try {
                                                    if (o.a(f10, a.f((X509CRL) it5.next(), a.f101993h))) {
                                                    }
                                                } catch (AnnotatedException e16) {
                                                    throw new CertPathReviewerException(K("CertPathReviewer.distrPtExtError"), e16);
                                                }
                                            }
                                            throw new CertPathReviewerException(K("CertPathReviewer.noBaseCRL"));
                                        } catch (AnnotatedException e17) {
                                            throw new CertPathReviewerException(K("CertPathReviewer.crlExtractionError"), e17);
                                        }
                                    } catch (AnnotatedException e18) {
                                        throw new CertPathReviewerException(K("CertPathReviewer.crlNbrExtError"), e18);
                                    }
                                } catch (IOException e19) {
                                    throw new CertPathReviewerException(K("CertPathReviewer.crlIssuerException"), e19);
                                }
                            }
                            if (f10 != null) {
                                L y10 = L.y(f10);
                                try {
                                    C13500l v10 = C13500l.v(a.f(x509Certificate, a.f101987b));
                                    if (y10.E() && v10 != null && v10.z()) {
                                        throw new CertPathReviewerException(K("CertPathReviewer.crlOnlyUserCert"));
                                    }
                                    if (y10.D() && (v10 == null || !v10.z())) {
                                        throw new CertPathReviewerException(K("CertPathReviewer.crlOnlyCaCert"));
                                    }
                                    if (y10.C()) {
                                        throw new CertPathReviewerException(K("CertPathReviewer.crlOnlyAttrCert"));
                                    }
                                } catch (AnnotatedException e20) {
                                    throw new CertPathReviewerException(K("CertPathReviewer.crlBCExtError"), e20);
                                }
                            }
                        } catch (AnnotatedException unused) {
                            throw new CertPathReviewerException(K("CertPathReviewer.deltaCrlExtError"));
                        }
                    } catch (AnnotatedException unused2) {
                        throw new CertPathReviewerException(K("CertPathReviewer.distrPtExtError"));
                    }
                } catch (Exception e21) {
                    throw new CertPathReviewerException(K("CertPathReviewer.crlVerifyFailed"), e21);
                }
            }
            if (!z11) {
                throw new CertPathReviewerException(K("CertPathReviewer.noValidCrlFound"));
            }
        } catch (IOException e22) {
            throw new CertPathReviewerException(K("CertPathReviewer.crlIssuerException"), e22);
        }
    }

    public final void E() {
        List<PKIXCertPathChecker> certPathCheckers = this.f102022t.getCertPathCheckers();
        Iterator<PKIXCertPathChecker> it = certPathCheckers.iterator();
        while (it.hasNext()) {
            try {
                try {
                    it.next().init(false);
                } catch (CertPathValidatorException e10) {
                    throw new CertPathReviewerException(L("CertPathReviewer.certPathCheckerError", new Object[]{e10.getMessage(), e10, e10.getClass().getName()}), e10);
                }
            } catch (CertPathReviewerException e11) {
                A(e11.getErrorMessage(), e11.getIndex());
                return;
            }
        }
        for (int size = this.f102025w.size() - 1; size >= 0; size--) {
            X509Certificate x509Certificate = (X509Certificate) this.f102025w.get(size);
            Set<String> criticalExtensionOIDs = x509Certificate.getCriticalExtensionOIDs();
            if (criticalExtensionOIDs != null && !criticalExtensionOIDs.isEmpty()) {
                criticalExtensionOIDs.remove(a.f101991f);
                criticalExtensionOIDs.remove(a.f101986a);
                criticalExtensionOIDs.remove(a.f101988c);
                criticalExtensionOIDs.remove(a.f101992g);
                criticalExtensionOIDs.remove(a.f101993h);
                criticalExtensionOIDs.remove(a.f101994i);
                criticalExtensionOIDs.remove(a.f101995j);
                criticalExtensionOIDs.remove(a.f101987b);
                criticalExtensionOIDs.remove(a.f101989d);
                criticalExtensionOIDs.remove(a.f101990e);
                if (size == 0) {
                    criticalExtensionOIDs.remove(C13478B.f90549y.J());
                }
                String str = f102013E;
                if (criticalExtensionOIDs.contains(str) && c0(x509Certificate, size)) {
                    criticalExtensionOIDs.remove(str);
                }
                Iterator<PKIXCertPathChecker> it2 = certPathCheckers.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().check(x509Certificate, criticalExtensionOIDs);
                    } catch (CertPathValidatorException e12) {
                        throw new CertPathReviewerException(L("CertPathReviewer.criticalExtensionError", new Object[]{e12.getMessage(), e12, e12.getClass().getName()}), e12.getCause(), this.f102021s, size);
                    }
                }
                if (!criticalExtensionOIDs.isEmpty()) {
                    Iterator<String> it3 = criticalExtensionOIDs.iterator();
                    while (it3.hasNext()) {
                        A(L("CertPathReviewer.unknownCriticalExt", new Object[]{new C14549x(it3.next())}), size);
                    }
                }
            }
        }
    }

    public final void F() {
        Vk.c cVar = new Vk.c();
        try {
            for (int size = this.f102025w.size() - 1; size > 0; size--) {
                X509Certificate x509Certificate = (X509Certificate) this.f102025w.get(size);
                if (!a.q(x509Certificate)) {
                    X500Principal l10 = a.l(x509Certificate);
                    try {
                        E e10 = (E) new r(new ByteArrayInputStream(l10.getEncoded())).k();
                        try {
                            cVar.e(e10);
                            try {
                                cVar.c(e10);
                                try {
                                    E e11 = (E) a.f(x509Certificate, a.f101989d);
                                    if (e11 != null) {
                                        for (int i10 = 0; i10 < e11.size(); i10++) {
                                            C13481E v10 = C13481E.v(e11.I(i10));
                                            try {
                                                cVar.d(v10);
                                                cVar.b(v10);
                                            } catch (PKIXNameConstraintValidatorException e12) {
                                                throw new CertPathReviewerException(L("CertPathReviewer.notPermittedEmail", new Object[]{new Wk.e(v10)}), e12, this.f102021s, size);
                                            }
                                        }
                                    }
                                } catch (AnnotatedException e13) {
                                    throw new CertPathReviewerException(K("CertPathReviewer.subjAltNameExtError"), e13, this.f102021s, size);
                                }
                            } catch (PKIXNameConstraintValidatorException e14) {
                                throw new CertPathReviewerException(L("CertPathReviewer.excludedDN", new Object[]{new Wk.e(l10.getName())}), e14, this.f102021s, size);
                            }
                        } catch (PKIXNameConstraintValidatorException e15) {
                            throw new CertPathReviewerException(L("CertPathReviewer.notPermittedDN", new Object[]{new Wk.e(l10.getName())}), e15, this.f102021s, size);
                        }
                    } catch (IOException e16) {
                        throw new CertPathReviewerException(L("CertPathReviewer.ncSubjectNameError", new Object[]{new Wk.e(l10)}), e16, this.f102021s, size);
                    }
                }
                try {
                    E e17 = (E) a.f(x509Certificate, a.f101990e);
                    if (e17 != null) {
                        P y10 = P.y(e17);
                        H[] z10 = y10.z();
                        if (z10 != null) {
                            cVar.h(z10);
                        }
                        H[] x10 = y10.x();
                        if (x10 != null) {
                            for (int i11 = 0; i11 != x10.length; i11++) {
                                cVar.a(x10[i11]);
                            }
                        }
                    }
                } catch (AnnotatedException e18) {
                    throw new CertPathReviewerException(K("CertPathReviewer.ncExtError"), e18, this.f102021s, size);
                }
            }
        } catch (CertPathReviewerException e19) {
            A(e19.getErrorMessage(), e19.getIndex());
        }
    }

    public final void G() {
        C13500l c13500l;
        C14539s y10;
        int i10 = this.f102026x;
        int i11 = 0;
        for (int size = this.f102025w.size() - 1; size > 0; size--) {
            X509Certificate x509Certificate = (X509Certificate) this.f102025w.get(size);
            if (!a.q(x509Certificate)) {
                if (i10 <= 0) {
                    z(K("CertPathReviewer.pathLengthExtended"));
                }
                i10--;
                i11++;
            }
            try {
                c13500l = C13500l.v(a.f(x509Certificate, a.f101987b));
            } catch (AnnotatedException unused) {
                A(K("CertPathReviewer.processLengthConstError"), size);
                c13500l = null;
            }
            if (c13500l != null && c13500l.z() && (y10 = c13500l.y()) != null) {
                i10 = Math.min(i10, y10.M());
            }
        }
        B(L("CertPathReviewer.totalPathLength", new Object[]{org.bouncycastle.util.k.j(i11)}));
    }

    /* JADX WARN: Code restructure failed: missing block: B:279:0x0415, code lost:
    
        r27 = r0;
        r26 = r3;
        r28 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:280:0x0421, code lost:
    
        if (org.bouncycastle.pkix.jcajce.a.q(r4) != false) goto L327;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x0423, code lost:
    
        if (r8 <= 0) goto L327;
     */
    /* JADX WARN: Code restructure failed: missing block: B:282:0x0425, code lost:
    
        r8 = r8 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x0427, code lost:
    
        r0 = (oh.E) org.bouncycastle.pkix.jcajce.a.f(r4, org.bouncycastle.pkix.jcajce.a.f101995j);
     */
    /* JADX WARN: Code restructure failed: missing block: B:285:0x042f, code lost:
    
        if (r0 == null) goto L225;
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x0431, code lost:
    
        r0 = r0.J();
        r14 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x043a, code lost:
    
        if (r0.hasMoreElements() == false) goto L391;
     */
    /* JADX WARN: Code restructure failed: missing block: B:289:0x043c, code lost:
    
        r2 = (oh.M) r0.nextElement();
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x0446, code lost:
    
        if (r2.g() == 0) goto L390;
     */
    /* JADX WARN: Code restructure failed: missing block: B:293:0x0453, code lost:
    
        if (oh.C14539s.G(r2, false).O() != 0) goto L395;
     */
    /* JADX WARN: Code restructure failed: missing block: B:295:0x0455, code lost:
    
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:303:0x0457, code lost:
    
        r3 = 0;
        r8 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:305:0x045d, code lost:
    
        if (r28 != null) goto L233;
     */
    /* JADX WARN: Code restructure failed: missing block: B:307:0x0465, code lost:
    
        if (r34.f102022t.isExplicitPolicyRequired() != false) goto L231;
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x0467, code lost:
    
        r9 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:309:0x05ab, code lost:
    
        if (r8 > 0) goto L422;
     */
    /* JADX WARN: Code restructure failed: missing block: B:310:0x05ad, code lost:
    
        if (r9 == null) goto L306;
     */
    /* JADX WARN: Code restructure failed: missing block: B:312:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:314:0x05bb, code lost:
    
        throw new org.bouncycastle.pkix.jcajce.CertPathReviewerException(K("CertPathReviewer.invalidPolicy"));
     */
    /* JADX WARN: Code restructure failed: missing block: B:315:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:317:0x0475, code lost:
    
        throw new org.bouncycastle.pkix.jcajce.CertPathReviewerException(K("CertPathReviewer.explicitPolicy"), r34.f102021s, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:319:0x047a, code lost:
    
        if (org.bouncycastle.pkix.jcajce.a.o(r27) == false) goto L270;
     */
    /* JADX WARN: Code restructure failed: missing block: B:321:0x0482, code lost:
    
        if (r34.f102022t.isExplicitPolicyRequired() == false) goto L269;
     */
    /* JADX WARN: Code restructure failed: missing block: B:323:0x0488, code lost:
    
        if (r13.isEmpty() != false) goto L267;
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x048a, code lost:
    
        r0 = new java.util.HashSet();
        r14 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:325:0x0492, code lost:
    
        if (r14 >= r26) goto L398;
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x0494, code lost:
    
        r4 = r5[r14];
        r6 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:328:0x049b, code lost:
    
        if (r6 >= r4.size()) goto L399;
     */
    /* JADX WARN: Code restructure failed: missing block: B:329:0x049d, code lost:
    
        r9 = (org.bouncycastle.pkix.jcajce.g) r4.get(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:330:0x04ab, code lost:
    
        if ("2.5.29.32.0".equals(r9.getValidPolicy()) == false) goto L400;
     */
    /* JADX WARN: Code restructure failed: missing block: B:331:0x04ad, code lost:
    
        r9 = r9.getChildren();
     */
    /* JADX WARN: Code restructure failed: missing block: B:333:0x04b5, code lost:
    
        if (r9.hasNext() == false) goto L401;
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x04b7, code lost:
    
        r0.add(r9.next());
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:0x04bf, code lost:
    
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:339:0x04c2, code lost:
    
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:341:0x04c5, code lost:
    
        r0 = r0.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:343:0x04cd, code lost:
    
        if (r0.hasNext() == false) goto L402;
     */
    /* JADX WARN: Code restructure failed: missing block: B:344:0x04cf, code lost:
    
        r13.contains(((org.bouncycastle.pkix.jcajce.g) r0.next()).getValidPolicy());
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x04dd, code lost:
    
        r0 = r34.f102026x - 1;
        r15 = r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x04e3, code lost:
    
        if (r0 < 0) goto L403;
     */
    /* JADX WARN: Code restructure failed: missing block: B:348:0x04e5, code lost:
    
        r2 = r5[r0];
        r14 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x04ec, code lost:
    
        if (r14 >= r2.size()) goto L404;
     */
    /* JADX WARN: Code restructure failed: missing block: B:351:0x04ee, code lost:
    
        r4 = (org.bouncycastle.pkix.jcajce.g) r2.get(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x04f8, code lost:
    
        if (r4.c() != false) goto L406;
     */
    /* JADX WARN: Code restructure failed: missing block: B:353:0x04fa, code lost:
    
        r15 = org.bouncycastle.pkix.jcajce.a.v(r15, r5, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:355:0x04fe, code lost:
    
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x0501, code lost:
    
        r0 = r0 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:360:0x0504, code lost:
    
        r9 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x0512, code lost:
    
        throw new org.bouncycastle.pkix.jcajce.CertPathReviewerException(K("CertPathReviewer.explicitPolicy"), r34.f102021s, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:363:0x0513, code lost:
    
        r9 = r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x0517, code lost:
    
        r0 = new java.util.HashSet();
        r14 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:365:0x051f, code lost:
    
        if (r14 >= r26) goto L407;
     */
    /* JADX WARN: Code restructure failed: missing block: B:366:0x0521, code lost:
    
        r4 = r5[r14];
        r6 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:368:0x0528, code lost:
    
        if (r6 >= r4.size()) goto L408;
     */
    /* JADX WARN: Code restructure failed: missing block: B:369:0x052a, code lost:
    
        r9 = (org.bouncycastle.pkix.jcajce.g) r4.get(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x0538, code lost:
    
        if ("2.5.29.32.0".equals(r9.getValidPolicy()) == false) goto L409;
     */
    /* JADX WARN: Code restructure failed: missing block: B:371:0x053a, code lost:
    
        r9 = r9.getChildren();
     */
    /* JADX WARN: Code restructure failed: missing block: B:373:0x0542, code lost:
    
        if (r9.hasNext() == false) goto L410;
     */
    /* JADX WARN: Code restructure failed: missing block: B:374:0x0544, code lost:
    
        r10 = (org.bouncycastle.pkix.jcajce.g) r9.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:375:0x0552, code lost:
    
        if ("2.5.29.32.0".equals(r10.getValidPolicy()) != false) goto L413;
     */
    /* JADX WARN: Code restructure failed: missing block: B:377:0x0554, code lost:
    
        r0.add(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:382:0x0558, code lost:
    
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:385:0x055b, code lost:
    
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:387:0x055e, code lost:
    
        r0 = r0.iterator();
        r15 = r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:389:0x0568, code lost:
    
        if (r0.hasNext() == false) goto L415;
     */
    /* JADX WARN: Code restructure failed: missing block: B:390:0x056a, code lost:
    
        r2 = (org.bouncycastle.pkix.jcajce.g) r0.next();
        r6 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:391:0x057a, code lost:
    
        if (r6.contains(r2.getValidPolicy()) != false) goto L417;
     */
    /* JADX WARN: Code restructure failed: missing block: B:392:0x057c, code lost:
    
        r15 = org.bouncycastle.pkix.jcajce.a.v(r15, r5, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:394:0x0581, code lost:
    
        r27 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:397:0x0584, code lost:
    
        if (r15 == null) goto L266;
     */
    /* JADX WARN: Code restructure failed: missing block: B:398:0x0586, code lost:
    
        r0 = r34.f102026x - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:399:0x058a, code lost:
    
        if (r0 < 0) goto L418;
     */
    /* JADX WARN: Code restructure failed: missing block: B:400:0x058c, code lost:
    
        r2 = r5[r0];
        r14 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:402:0x0593, code lost:
    
        if (r14 >= r2.size()) goto L419;
     */
    /* JADX WARN: Code restructure failed: missing block: B:403:0x0595, code lost:
    
        r4 = (org.bouncycastle.pkix.jcajce.g) r2.get(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:404:0x059f, code lost:
    
        if (r4.c() != false) goto L421;
     */
    /* JADX WARN: Code restructure failed: missing block: B:405:0x05a1, code lost:
    
        r15 = org.bouncycastle.pkix.jcajce.a.v(r15, r5, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:407:0x05a5, code lost:
    
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:410:0x05a8, code lost:
    
        r0 = r0 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:413:0x045a, code lost:
    
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:415:0x05c7, code lost:
    
        throw new org.bouncycastle.pkix.jcajce.CertPathReviewerException(K("CertPathReviewer.policyConstExtError"), r34.f102021s, r12);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0389 A[Catch: CertPathReviewerException -> 0x00da, AnnotatedException -> 0x03dd, TryCatch #8 {AnnotatedException -> 0x03dd, blocks: (B:172:0x037f, B:174:0x0389, B:175:0x038d, B:177:0x0393, B:191:0x03a3, B:180:0x03b0), top: B:171:0x037f, outer: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0139 A[Catch: CertPathReviewerException -> 0x00da, TRY_LEAVE, TryCatch #4 {CertPathReviewerException -> 0x00da, blocks: (B:15:0x006f, B:19:0x007d, B:21:0x0088, B:25:0x0096, B:26:0x00a1, B:28:0x00a7, B:31:0x00c8, B:32:0x00d0, B:34:0x00d6, B:40:0x00de, B:41:0x00e9, B:47:0x00f5, B:50:0x00fc, B:51:0x0105, B:53:0x010b, B:56:0x0115, B:62:0x011c, B:64:0x0120, B:69:0x020a, B:71:0x0210, B:72:0x0213, B:74:0x0219, B:76:0x0225, B:83:0x022d, B:81:0x0230, B:87:0x0233, B:89:0x0239, B:90:0x0242, B:92:0x0248, B:101:0x026b, B:102:0x0276, B:103:0x0277, B:109:0x027b, B:111:0x0283, B:112:0x0287, B:114:0x028d, B:117:0x02ad, B:119:0x02b7, B:121:0x02ba, B:122:0x02c5, B:124:0x02c6, B:125:0x02d1, B:128:0x02d4, B:129:0x02e1, B:131:0x02e7, B:133:0x030d, B:135:0x0325, B:136:0x031c, B:139:0x032c, B:140:0x0332, B:142:0x0338, B:145:0x0340, B:159:0x0362, B:154:0x0346, B:155:0x0351, B:150:0x0353, B:151:0x035f, B:163:0x036a, B:172:0x037f, B:174:0x0389, B:175:0x038d, B:177:0x0393, B:191:0x03a3, B:180:0x03b0, B:201:0x03bd, B:203:0x03c7, B:107:0x03fc, B:210:0x03cf, B:211:0x03dc, B:213:0x03dd, B:214:0x03e8, B:219:0x03ea, B:220:0x03f7, B:221:0x012f, B:222:0x0133, B:224:0x0139, B:227:0x014f, B:229:0x0159, B:230:0x015e, B:232:0x0164, B:233:0x0172, B:235:0x0178, B:261:0x0184, B:245:0x0191, B:246:0x0197, B:248:0x019d, B:256:0x01b6, B:237:0x0187, B:244:0x018b, B:263:0x01ef, B:268:0x01fe, B:269:0x0209, B:276:0x0409, B:277:0x0414, B:279:0x0415, B:284:0x0427, B:286:0x0431, B:287:0x0436, B:289:0x043c, B:292:0x044a, B:306:0x045f, B:313:0x05b0, B:314:0x05bb, B:316:0x046a, B:317:0x0475, B:318:0x0476, B:320:0x047c, B:322:0x0484, B:324:0x048a, B:326:0x0494, B:327:0x0497, B:329:0x049d, B:331:0x04ad, B:332:0x04b1, B:334:0x04b7, B:336:0x04bf, B:339:0x04c2, B:341:0x04c5, B:342:0x04c9, B:344:0x04cf, B:346:0x04dd, B:348:0x04e5, B:349:0x04e8, B:351:0x04ee, B:353:0x04fa, B:355:0x04fe, B:358:0x0501, B:361:0x0507, B:362:0x0512, B:364:0x0517, B:366:0x0521, B:367:0x0524, B:369:0x052a, B:371:0x053a, B:372:0x053e, B:374:0x0544, B:377:0x0554, B:382:0x0558, B:385:0x055b, B:387:0x055e, B:388:0x0564, B:390:0x056a, B:392:0x057c, B:398:0x0586, B:400:0x058c, B:401:0x058f, B:403:0x0595, B:405:0x05a1, B:407:0x05a5, B:410:0x05a8, B:414:0x05bc, B:415:0x05c7), top: B:14:0x006f, inners: #0, #1, #2, #3, #5, #6, #7, #8, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x011c A[Catch: CertPathReviewerException -> 0x00da, TryCatch #4 {CertPathReviewerException -> 0x00da, blocks: (B:15:0x006f, B:19:0x007d, B:21:0x0088, B:25:0x0096, B:26:0x00a1, B:28:0x00a7, B:31:0x00c8, B:32:0x00d0, B:34:0x00d6, B:40:0x00de, B:41:0x00e9, B:47:0x00f5, B:50:0x00fc, B:51:0x0105, B:53:0x010b, B:56:0x0115, B:62:0x011c, B:64:0x0120, B:69:0x020a, B:71:0x0210, B:72:0x0213, B:74:0x0219, B:76:0x0225, B:83:0x022d, B:81:0x0230, B:87:0x0233, B:89:0x0239, B:90:0x0242, B:92:0x0248, B:101:0x026b, B:102:0x0276, B:103:0x0277, B:109:0x027b, B:111:0x0283, B:112:0x0287, B:114:0x028d, B:117:0x02ad, B:119:0x02b7, B:121:0x02ba, B:122:0x02c5, B:124:0x02c6, B:125:0x02d1, B:128:0x02d4, B:129:0x02e1, B:131:0x02e7, B:133:0x030d, B:135:0x0325, B:136:0x031c, B:139:0x032c, B:140:0x0332, B:142:0x0338, B:145:0x0340, B:159:0x0362, B:154:0x0346, B:155:0x0351, B:150:0x0353, B:151:0x035f, B:163:0x036a, B:172:0x037f, B:174:0x0389, B:175:0x038d, B:177:0x0393, B:191:0x03a3, B:180:0x03b0, B:201:0x03bd, B:203:0x03c7, B:107:0x03fc, B:210:0x03cf, B:211:0x03dc, B:213:0x03dd, B:214:0x03e8, B:219:0x03ea, B:220:0x03f7, B:221:0x012f, B:222:0x0133, B:224:0x0139, B:227:0x014f, B:229:0x0159, B:230:0x015e, B:232:0x0164, B:233:0x0172, B:235:0x0178, B:261:0x0184, B:245:0x0191, B:246:0x0197, B:248:0x019d, B:256:0x01b6, B:237:0x0187, B:244:0x018b, B:263:0x01ef, B:268:0x01fe, B:269:0x0209, B:276:0x0409, B:277:0x0414, B:279:0x0415, B:284:0x0427, B:286:0x0431, B:287:0x0436, B:289:0x043c, B:292:0x044a, B:306:0x045f, B:313:0x05b0, B:314:0x05bb, B:316:0x046a, B:317:0x0475, B:318:0x0476, B:320:0x047c, B:322:0x0484, B:324:0x048a, B:326:0x0494, B:327:0x0497, B:329:0x049d, B:331:0x04ad, B:332:0x04b1, B:334:0x04b7, B:336:0x04bf, B:339:0x04c2, B:341:0x04c5, B:342:0x04c9, B:344:0x04cf, B:346:0x04dd, B:348:0x04e5, B:349:0x04e8, B:351:0x04ee, B:353:0x04fa, B:355:0x04fe, B:358:0x0501, B:361:0x0507, B:362:0x0512, B:364:0x0517, B:366:0x0521, B:367:0x0524, B:369:0x052a, B:371:0x053a, B:372:0x053e, B:374:0x0544, B:377:0x0554, B:382:0x0558, B:385:0x055b, B:387:0x055e, B:388:0x0564, B:390:0x056a, B:392:0x057c, B:398:0x0586, B:400:0x058c, B:401:0x058f, B:403:0x0595, B:405:0x05a1, B:407:0x05a5, B:410:0x05a8, B:414:0x05bc, B:415:0x05c7), top: B:14:0x006f, inners: #0, #1, #2, #3, #5, #6, #7, #8, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0210 A[Catch: CertPathReviewerException -> 0x00da, TryCatch #4 {CertPathReviewerException -> 0x00da, blocks: (B:15:0x006f, B:19:0x007d, B:21:0x0088, B:25:0x0096, B:26:0x00a1, B:28:0x00a7, B:31:0x00c8, B:32:0x00d0, B:34:0x00d6, B:40:0x00de, B:41:0x00e9, B:47:0x00f5, B:50:0x00fc, B:51:0x0105, B:53:0x010b, B:56:0x0115, B:62:0x011c, B:64:0x0120, B:69:0x020a, B:71:0x0210, B:72:0x0213, B:74:0x0219, B:76:0x0225, B:83:0x022d, B:81:0x0230, B:87:0x0233, B:89:0x0239, B:90:0x0242, B:92:0x0248, B:101:0x026b, B:102:0x0276, B:103:0x0277, B:109:0x027b, B:111:0x0283, B:112:0x0287, B:114:0x028d, B:117:0x02ad, B:119:0x02b7, B:121:0x02ba, B:122:0x02c5, B:124:0x02c6, B:125:0x02d1, B:128:0x02d4, B:129:0x02e1, B:131:0x02e7, B:133:0x030d, B:135:0x0325, B:136:0x031c, B:139:0x032c, B:140:0x0332, B:142:0x0338, B:145:0x0340, B:159:0x0362, B:154:0x0346, B:155:0x0351, B:150:0x0353, B:151:0x035f, B:163:0x036a, B:172:0x037f, B:174:0x0389, B:175:0x038d, B:177:0x0393, B:191:0x03a3, B:180:0x03b0, B:201:0x03bd, B:203:0x03c7, B:107:0x03fc, B:210:0x03cf, B:211:0x03dc, B:213:0x03dd, B:214:0x03e8, B:219:0x03ea, B:220:0x03f7, B:221:0x012f, B:222:0x0133, B:224:0x0139, B:227:0x014f, B:229:0x0159, B:230:0x015e, B:232:0x0164, B:233:0x0172, B:235:0x0178, B:261:0x0184, B:245:0x0191, B:246:0x0197, B:248:0x019d, B:256:0x01b6, B:237:0x0187, B:244:0x018b, B:263:0x01ef, B:268:0x01fe, B:269:0x0209, B:276:0x0409, B:277:0x0414, B:279:0x0415, B:284:0x0427, B:286:0x0431, B:287:0x0436, B:289:0x043c, B:292:0x044a, B:306:0x045f, B:313:0x05b0, B:314:0x05bb, B:316:0x046a, B:317:0x0475, B:318:0x0476, B:320:0x047c, B:322:0x0484, B:324:0x048a, B:326:0x0494, B:327:0x0497, B:329:0x049d, B:331:0x04ad, B:332:0x04b1, B:334:0x04b7, B:336:0x04bf, B:339:0x04c2, B:341:0x04c5, B:342:0x04c9, B:344:0x04cf, B:346:0x04dd, B:348:0x04e5, B:349:0x04e8, B:351:0x04ee, B:353:0x04fa, B:355:0x04fe, B:358:0x0501, B:361:0x0507, B:362:0x0512, B:364:0x0517, B:366:0x0521, B:367:0x0524, B:369:0x052a, B:371:0x053a, B:372:0x053e, B:374:0x0544, B:377:0x0554, B:382:0x0558, B:385:0x055b, B:387:0x055e, B:388:0x0564, B:390:0x056a, B:392:0x057c, B:398:0x0586, B:400:0x058c, B:401:0x058f, B:403:0x0595, B:405:0x05a1, B:407:0x05a5, B:410:0x05a8, B:414:0x05bc, B:415:0x05c7), top: B:14:0x006f, inners: #0, #1, #2, #3, #5, #6, #7, #8, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0239 A[Catch: CertPathReviewerException -> 0x00da, TryCatch #4 {CertPathReviewerException -> 0x00da, blocks: (B:15:0x006f, B:19:0x007d, B:21:0x0088, B:25:0x0096, B:26:0x00a1, B:28:0x00a7, B:31:0x00c8, B:32:0x00d0, B:34:0x00d6, B:40:0x00de, B:41:0x00e9, B:47:0x00f5, B:50:0x00fc, B:51:0x0105, B:53:0x010b, B:56:0x0115, B:62:0x011c, B:64:0x0120, B:69:0x020a, B:71:0x0210, B:72:0x0213, B:74:0x0219, B:76:0x0225, B:83:0x022d, B:81:0x0230, B:87:0x0233, B:89:0x0239, B:90:0x0242, B:92:0x0248, B:101:0x026b, B:102:0x0276, B:103:0x0277, B:109:0x027b, B:111:0x0283, B:112:0x0287, B:114:0x028d, B:117:0x02ad, B:119:0x02b7, B:121:0x02ba, B:122:0x02c5, B:124:0x02c6, B:125:0x02d1, B:128:0x02d4, B:129:0x02e1, B:131:0x02e7, B:133:0x030d, B:135:0x0325, B:136:0x031c, B:139:0x032c, B:140:0x0332, B:142:0x0338, B:145:0x0340, B:159:0x0362, B:154:0x0346, B:155:0x0351, B:150:0x0353, B:151:0x035f, B:163:0x036a, B:172:0x037f, B:174:0x0389, B:175:0x038d, B:177:0x0393, B:191:0x03a3, B:180:0x03b0, B:201:0x03bd, B:203:0x03c7, B:107:0x03fc, B:210:0x03cf, B:211:0x03dc, B:213:0x03dd, B:214:0x03e8, B:219:0x03ea, B:220:0x03f7, B:221:0x012f, B:222:0x0133, B:224:0x0139, B:227:0x014f, B:229:0x0159, B:230:0x015e, B:232:0x0164, B:233:0x0172, B:235:0x0178, B:261:0x0184, B:245:0x0191, B:246:0x0197, B:248:0x019d, B:256:0x01b6, B:237:0x0187, B:244:0x018b, B:263:0x01ef, B:268:0x01fe, B:269:0x0209, B:276:0x0409, B:277:0x0414, B:279:0x0415, B:284:0x0427, B:286:0x0431, B:287:0x0436, B:289:0x043c, B:292:0x044a, B:306:0x045f, B:313:0x05b0, B:314:0x05bb, B:316:0x046a, B:317:0x0475, B:318:0x0476, B:320:0x047c, B:322:0x0484, B:324:0x048a, B:326:0x0494, B:327:0x0497, B:329:0x049d, B:331:0x04ad, B:332:0x04b1, B:334:0x04b7, B:336:0x04bf, B:339:0x04c2, B:341:0x04c5, B:342:0x04c9, B:344:0x04cf, B:346:0x04dd, B:348:0x04e5, B:349:0x04e8, B:351:0x04ee, B:353:0x04fa, B:355:0x04fe, B:358:0x0501, B:361:0x0507, B:362:0x0512, B:364:0x0517, B:366:0x0521, B:367:0x0524, B:369:0x052a, B:371:0x053a, B:372:0x053e, B:374:0x0544, B:377:0x0554, B:382:0x0558, B:385:0x055b, B:387:0x055e, B:388:0x0564, B:390:0x056a, B:392:0x057c, B:398:0x0586, B:400:0x058c, B:401:0x058f, B:403:0x0595, B:405:0x05a1, B:407:0x05a5, B:410:0x05a8, B:414:0x05bc, B:415:0x05c7), top: B:14:0x006f, inners: #0, #1, #2, #3, #5, #6, #7, #8, #9 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void H() {
        int i10;
        int i11;
        int size;
        g gVar;
        X509Certificate x509Certificate;
        HashSet hashSet;
        Set<String> set;
        int i12;
        int i13;
        String str;
        HashSet hashSet2;
        E e10;
        C14539s c14539s;
        int O10;
        int O11;
        HashSet hashSet3;
        Enumeration J10;
        HashSet hashSet4;
        String str2;
        int i14;
        int i15;
        Set<String> criticalExtensionOIDs;
        Set<String> initialPolicies = this.f102022t.getInitialPolicies();
        int i16 = this.f102026x + 1;
        ArrayList[] arrayListArr = new ArrayList[i16];
        for (int i17 = 0; i17 < i16; i17++) {
            arrayListArr[i17] = new ArrayList();
        }
        HashSet hashSet5 = new HashSet();
        hashSet5.add("2.5.29.32.0");
        g gVar2 = new g(new ArrayList(), 0, hashSet5, null, new HashSet(), "2.5.29.32.0", false);
        arrayListArr[0].add(gVar2);
        if (this.f102022t.isExplicitPolicyRequired()) {
            i11 = 0;
            i10 = 1;
        } else {
            i10 = 1;
            i11 = this.f102026x + 1;
        }
        int i18 = this.f102022t.isAnyPolicyInhibited() ? 0 : this.f102026x + i10;
        int i19 = this.f102022t.isPolicyMappingInhibited() ? 0 : this.f102026x + i10;
        try {
            size = this.f102025w.size() - i10;
            gVar = gVar2;
            x509Certificate = null;
            hashSet = null;
        } catch (CertPathReviewerException e11) {
            A(e11.getErrorMessage(), e11.getIndex());
            return;
        }
        while (true) {
            String str3 = "CertPathReviewer.policyConstExtError";
            if (size < 0) {
                break;
            }
            int i20 = this.f102026x - size;
            X509Certificate x509Certificate2 = (X509Certificate) this.f102025w.get(size);
            try {
                E e12 = (E) a.f(x509Certificate2, a.f101986a);
                if (e12 == null || gVar == null) {
                    set = initialPolicies;
                    i12 = i16;
                    i13 = i18;
                    str = "CertPathReviewer.policyConstExtError";
                    gVar = gVar;
                } else {
                    Enumeration J11 = e12.J();
                    i12 = i16;
                    HashSet hashSet6 = new HashSet();
                    while (J11.hasMoreElements()) {
                        W u10 = W.u(J11.nextElement());
                        Set<String> set2 = initialPolicies;
                        C14549x v10 = u10.v();
                        g gVar3 = gVar;
                        hashSet6.add(v10.J());
                        if (!"2.5.29.32.0".equals(v10.J())) {
                            try {
                                Set j10 = a.j(u10.x());
                                if (!a.t(i20, arrayListArr, v10, j10)) {
                                    a.u(i20, arrayListArr, v10, j10);
                                }
                            } catch (CertPathValidatorException e13) {
                                throw new CertPathReviewerException(K("CertPathReviewer.policyQualifierError"), e13, this.f102021s, size);
                            }
                        }
                        initialPolicies = set2;
                        gVar = gVar3;
                    }
                    set = initialPolicies;
                    g gVar4 = gVar;
                    if (hashSet != null && !hashSet.contains("2.5.29.32.0")) {
                        hashSet3 = new HashSet();
                        for (Object obj : hashSet) {
                            if (hashSet6.contains(obj)) {
                                hashSet3.add(obj);
                            }
                        }
                        if (i18 <= 0) {
                            if (i20 < this.f102026x && a.q(x509Certificate2)) {
                            }
                            i13 = i18;
                            hashSet4 = hashSet3;
                            str = str3;
                            gVar = gVar4;
                            for (i15 = i20 - 1; i15 >= 0; i15--) {
                                ArrayList arrayList = arrayListArr[i15];
                                for (int i21 = 0; i21 < arrayList.size(); i21++) {
                                    g gVar5 = (g) arrayList.get(i21);
                                    if (!gVar5.c()) {
                                        g v11 = a.v(gVar, arrayListArr, gVar5);
                                        gVar = v11;
                                        if (v11 == null) {
                                            break;
                                        }
                                    }
                                }
                            }
                            criticalExtensionOIDs = x509Certificate2.getCriticalExtensionOIDs();
                            if (criticalExtensionOIDs != null) {
                                boolean contains = criticalExtensionOIDs.contains(a.f101986a);
                                ArrayList arrayList2 = arrayListArr[i20];
                                for (int i22 = 0; i22 < arrayList2.size(); i22++) {
                                    ((g) arrayList2.get(i22)).e(contains);
                                }
                            }
                            hashSet = hashSet4;
                        }
                        J10 = e12.J();
                        while (J10.hasMoreElements()) {
                            W u11 = W.u(J10.nextElement());
                            if ("2.5.29.32.0".equals(u11.v().J())) {
                                try {
                                    Set j11 = a.j(u11.x());
                                    ArrayList arrayList3 = arrayListArr[i20 - 1];
                                    hashSet4 = hashSet3;
                                    for (int i23 = 0; i23 < arrayList3.size(); i23++) {
                                        g gVar6 = (g) arrayList3.get(i23);
                                        for (Object obj2 : gVar6.getExpectedPolicies()) {
                                            ArrayList arrayList4 = arrayList3;
                                            String str4 = str3;
                                            if (obj2 instanceof String) {
                                                str2 = (String) obj2;
                                            } else if (obj2 instanceof C14549x) {
                                                str2 = ((C14549x) obj2).J();
                                            } else {
                                                arrayList3 = arrayList4;
                                                str3 = str4;
                                            }
                                            Iterator children = gVar6.getChildren();
                                            boolean z10 = false;
                                            while (children.hasNext()) {
                                                Iterator it = children;
                                                if (str2.equals(((g) children.next()).getValidPolicy())) {
                                                    z10 = true;
                                                }
                                                children = it;
                                            }
                                            if (z10) {
                                                i14 = i18;
                                            } else {
                                                HashSet hashSet7 = new HashSet();
                                                hashSet7.add(str2);
                                                i14 = i18;
                                                g gVar7 = new g(new ArrayList(), i20, hashSet7, gVar6, j11, str2, false);
                                                gVar6.a(gVar7);
                                                arrayListArr[i20].add(gVar7);
                                            }
                                            arrayList3 = arrayList4;
                                            str3 = str4;
                                            i18 = i14;
                                        }
                                    }
                                    i13 = i18;
                                    str = str3;
                                    gVar = gVar4;
                                    while (i15 >= 0) {
                                    }
                                    criticalExtensionOIDs = x509Certificate2.getCriticalExtensionOIDs();
                                    if (criticalExtensionOIDs != null) {
                                    }
                                    hashSet = hashSet4;
                                } catch (CertPathValidatorException e14) {
                                    throw new CertPathReviewerException(K("CertPathReviewer.policyQualifierError"), e14, this.f102021s, size);
                                }
                            }
                        }
                        i13 = i18;
                        hashSet4 = hashSet3;
                        str = str3;
                        gVar = gVar4;
                        while (i15 >= 0) {
                        }
                        criticalExtensionOIDs = x509Certificate2.getCriticalExtensionOIDs();
                        if (criticalExtensionOIDs != null) {
                        }
                        hashSet = hashSet4;
                    }
                    hashSet3 = hashSet6;
                    if (i18 <= 0) {
                    }
                    J10 = e12.J();
                    while (J10.hasMoreElements()) {
                    }
                    i13 = i18;
                    hashSet4 = hashSet3;
                    str = str3;
                    gVar = gVar4;
                    while (i15 >= 0) {
                    }
                    criticalExtensionOIDs = x509Certificate2.getCriticalExtensionOIDs();
                    if (criticalExtensionOIDs != null) {
                    }
                    hashSet = hashSet4;
                }
                if (e12 == null) {
                    gVar = null;
                }
                if (i11 <= 0 && gVar == null) {
                    throw new CertPathReviewerException(K("CertPathReviewer.noValidPolicyTree"));
                }
                if (i20 != this.f102026x) {
                    try {
                        B f10 = a.f(x509Certificate2, a.f101988c);
                        if (f10 != null) {
                            E e15 = (E) f10;
                            for (int i24 = 0; i24 < e15.size(); i24++) {
                                E e16 = (E) e15.I(i24);
                                C14549x c14549x = (C14549x) e16.I(0);
                                C14549x c14549x2 = (C14549x) e16.I(1);
                                if ("2.5.29.32.0".equals(c14549x.J())) {
                                    throw new CertPathReviewerException(K("CertPathReviewer.invalidPolicyMapping"), this.f102021s, size);
                                }
                                if ("2.5.29.32.0".equals(c14549x2.J())) {
                                    throw new CertPathReviewerException(K("CertPathReviewer.invalidPolicyMapping"), this.f102021s, size);
                                }
                            }
                        }
                        if (f10 != null) {
                            E e17 = (E) f10;
                            HashMap hashMap = new HashMap();
                            HashSet<String> hashSet8 = new HashSet();
                            int i25 = 0;
                            while (i25 < e17.size()) {
                                E e18 = (E) e17.I(i25);
                                E e19 = e17;
                                String J12 = ((C14549x) e18.I(0)).J();
                                HashSet hashSet9 = hashSet;
                                String J13 = ((C14549x) e18.I(1)).J();
                                if (hashMap.containsKey(J12)) {
                                    ((Set) hashMap.get(J12)).add(J13);
                                } else {
                                    HashSet hashSet10 = new HashSet();
                                    hashSet10.add(J13);
                                    hashMap.put(J12, hashSet10);
                                    hashSet8.add(J12);
                                }
                                i25++;
                                e17 = e19;
                                hashSet = hashSet9;
                            }
                            hashSet2 = hashSet;
                            for (String str5 : hashSet8) {
                                if (i19 > 0) {
                                    try {
                                        try {
                                            a.r(i20, arrayListArr, str5, hashMap, x509Certificate2);
                                        } catch (AnnotatedException e20) {
                                            throw new CertPathReviewerException(K("CertPathReviewer.policyExtError"), e20, this.f102021s, size);
                                        }
                                    } catch (CertPathValidatorException e21) {
                                        throw new CertPathReviewerException(K("CertPathReviewer.policyQualifierError"), e21, this.f102021s, size);
                                    }
                                } else if (i19 <= 0) {
                                    gVar = a.s(i20, arrayListArr, str5, gVar);
                                }
                            }
                        } else {
                            hashSet2 = hashSet;
                        }
                        try {
                            try {
                                if (!a.q(x509Certificate2)) {
                                    if (i11 != 0) {
                                        i11--;
                                    }
                                    if (i19 != 0) {
                                        i19--;
                                    }
                                    if (i13 != 0) {
                                        i18 = i13 - 1;
                                        e10 = (E) a.f(x509Certificate2, a.f101995j);
                                        if (e10 != null) {
                                            Enumeration J14 = e10.J();
                                            while (J14.hasMoreElements()) {
                                                M m10 = (M) J14.nextElement();
                                                int g10 = m10.g();
                                                if (g10 == 0) {
                                                    int O12 = C14539s.G(m10, false).O();
                                                    if (O12 < i11) {
                                                        i11 = O12;
                                                    }
                                                } else if (g10 == 1 && (O11 = C14539s.G(m10, false).O()) < i19) {
                                                    i19 = O11;
                                                }
                                            }
                                        }
                                        c14539s = (C14539s) a.f(x509Certificate2, a.f101992g);
                                        if (c14539s != null && (O10 = c14539s.O()) < i18) {
                                            i18 = O10;
                                        }
                                    }
                                }
                                c14539s = (C14539s) a.f(x509Certificate2, a.f101992g);
                                if (c14539s != null) {
                                    i18 = O10;
                                }
                            } catch (AnnotatedException unused) {
                                throw new CertPathReviewerException(K("CertPathReviewer.policyInhibitExtError"), this.f102021s, size);
                            }
                            e10 = (E) a.f(x509Certificate2, a.f101995j);
                            if (e10 != null) {
                            }
                        } catch (AnnotatedException unused2) {
                            throw new CertPathReviewerException(K(str), this.f102021s, size);
                        }
                        i18 = i13;
                    } catch (AnnotatedException e22) {
                        throw new CertPathReviewerException(K("CertPathReviewer.policyMapExtError"), e22, this.f102021s, size);
                    }
                } else {
                    hashSet2 = hashSet;
                    i18 = i13;
                }
                size--;
                x509Certificate = x509Certificate2;
                hashSet = hashSet2;
                i16 = i12;
                initialPolicies = set;
            } catch (AnnotatedException e23) {
                throw new CertPathReviewerException(K("CertPathReviewer.policyExtError"), e23, this.f102021s, size);
            }
            A(e11.getErrorMessage(), e11.getIndex());
            return;
        }
    }

    public void I(PKIXParameters pKIXParameters, X509Certificate x509Certificate, Date date, X509Certificate x509Certificate2, PublicKey publicKey, Vector vector, Vector vector2, int i10) throws CertPathReviewerException {
        D(pKIXParameters, x509Certificate, date, x509Certificate2, publicKey, vector, i10);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:(2:85|86)|(4:(16:88|89|90|(12:92|93|(2:96|94)|97|98|(2:101|99)|102|103|104|105|106|107)|114|93|(1:94)|97|98|(1:99)|102|103|104|105|106|107)|105|106|107)|117|89|90|(0)|114|93|(1:94)|97|98|(1:99)|102|103|104) */
    /* JADX WARN: Can't wrap try/catch for region: R(15:32|(2:134|135)(3:34|(2:129|130)(2:36|(2:126|(1:128)))|38)|(2:39|40)|41|(19:85|86|(16:88|89|90|(12:92|93|(2:96|94)|97|98|(2:101|99)|102|103|104|105|106|107)|114|93|(1:94)|97|98|(1:99)|102|103|104|105|106|107)|117|89|90|(0)|114|93|(1:94)|97|98|(1:99)|102|103|104|105|106|107)(1:43)|(1:47)|48|(8:50|(1:54)|55|56|(1:58)(1:81)|60|61|(1:67))(1:84)|68|69|70|72|73|75|76) */
    /* JADX WARN: Can't wrap try/catch for region: R(16:85|86|(4:(16:88|89|90|(12:92|93|(2:96|94)|97|98|(2:101|99)|102|103|104|105|106|107)|114|93|(1:94)|97|98|(1:99)|102|103|104|105|106|107)|105|106|107)|117|89|90|(0)|114|93|(1:94)|97|98|(1:99)|102|103|104) */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x02ea, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x02eb, code lost:
    
        r17 = r6;
        r12 = r7;
        r19 = r8;
        r23 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x027a, code lost:
    
        A(K("CertPathReviewer.crlAuthInfoAccError"), r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x034e, code lost:
    
        if (r2.z() == false) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0394, code lost:
    
        A(K("CertPathReviewer.pubKeyError"), r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0392, code lost:
    
        r9 = r23;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x02b7 A[LOOP:2: B:99:0x02b1->B:101:0x02b7, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0304  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x037b  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0256 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0275 A[Catch: AnnotatedException -> 0x027a, TRY_LEAVE, TryCatch #8 {AnnotatedException -> 0x027a, blocks: (B:90:0x026d, B:92:0x0275), top: B:89:0x026d }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0296 A[LOOP:1: B:94:0x0290->B:96:0x0296, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void J() {
        TrustAnchor trustAnchor;
        org.bouncycastle.pkix.util.a errorMessage;
        TrustAnchor trustAnchor2;
        X500Principal x500Principal;
        X509Certificate x509Certificate;
        PublicKey publicKey;
        int size;
        org.bouncycastle.pkix.util.a L10;
        org.bouncycastle.pkix.util.a L11;
        C13501m c13501m;
        C13498j c13498j;
        Iterator it;
        Iterator it2;
        X509Certificate x509Certificate2;
        int i10;
        int i11;
        PublicKey publicKey2;
        int i12;
        B f10;
        B f11;
        X509Certificate x509Certificate3;
        C13499k y10;
        C13482F v10;
        boolean[] keyUsage;
        org.bouncycastle.pkix.util.a L12;
        B(L("CertPathReviewer.certPathValidDate", new Object[]{new Wk.d(this.f102024v), new Wk.d(this.f102023u)}));
        try {
            List list = this.f102025w;
            X509Certificate x509Certificate4 = (X509Certificate) list.get(list.size() - 1);
            Collection Z10 = Z(x509Certificate4, this.f102022t.getTrustAnchors());
            if (Z10.size() > 1) {
                L12 = L("CertPathReviewer.conflictingTrustAnchors", new Object[]{org.bouncycastle.util.k.j(Z10.size()), new Wk.e(x509Certificate4.getIssuerX500Principal())});
            } else if (Z10.isEmpty()) {
                L12 = L("CertPathReviewer.noTrustAnchorFound", new Object[]{new Wk.e(x509Certificate4.getIssuerX500Principal()), org.bouncycastle.util.k.j(this.f102022t.getTrustAnchors().size())});
            } else {
                trustAnchor = (TrustAnchor) Z10.iterator().next();
                try {
                    try {
                        try {
                            a.x(x509Certificate4, trustAnchor.getTrustedCert() != null ? trustAnchor.getTrustedCert().getPublicKey() : trustAnchor.getCAPublicKey(), this.f102022t.getSigProvider());
                        } catch (SignatureException unused) {
                            z(K("CertPathReviewer.trustButInvalidCert"));
                        } catch (Exception unused2) {
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        errorMessage = L("CertPathReviewer.unknown", new Object[]{new Wk.e(th.getMessage()), new Wk.e(th)});
                        z(errorMessage);
                        trustAnchor2 = trustAnchor;
                        if (trustAnchor2 != null) {
                        }
                        if (trustAnchor2 != null) {
                        }
                        X509Certificate x509Certificate5 = x509Certificate;
                        X500Principal x500Principal2 = x500Principal;
                        PublicKey publicKey3 = publicKey;
                        size = this.f102025w.size() - 1;
                        while (size >= 0) {
                        }
                        this.f102017A = trustAnchor2;
                        this.f102018B = publicKey3;
                    }
                } catch (CertPathReviewerException e10) {
                    e = e10;
                    errorMessage = e.getErrorMessage();
                    z(errorMessage);
                    trustAnchor2 = trustAnchor;
                    if (trustAnchor2 != null) {
                    }
                    if (trustAnchor2 != null) {
                    }
                    X509Certificate x509Certificate52 = x509Certificate;
                    X500Principal x500Principal22 = x500Principal;
                    PublicKey publicKey32 = publicKey;
                    size = this.f102025w.size() - 1;
                    while (size >= 0) {
                    }
                    this.f102017A = trustAnchor2;
                    this.f102018B = publicKey32;
                }
            }
            z(L12);
            trustAnchor = null;
        } catch (CertPathReviewerException e11) {
            e = e11;
            trustAnchor = null;
        } catch (Throwable th3) {
            th = th3;
            trustAnchor = null;
        }
        trustAnchor2 = trustAnchor;
        if (trustAnchor2 != null) {
            X509Certificate trustedCert = trustAnchor2.getTrustedCert();
            try {
                x500Principal = trustedCert != null ? a.l(trustedCert) : new X500Principal(trustAnchor2.getCAName());
            } catch (IllegalArgumentException unused3) {
                z(L("CertPathReviewer.trustDNInvalid", new Object[]{new Wk.e(trustAnchor2.getCAName())}));
                x500Principal = null;
            }
            if (trustedCert != null && (keyUsage = trustedCert.getKeyUsage()) != null && (keyUsage.length <= 5 || !keyUsage[5])) {
                B(K("CertPathReviewer.trustKeyUsage"));
            }
        } else {
            x500Principal = null;
        }
        if (trustAnchor2 != null) {
            x509Certificate = trustAnchor2.getTrustedCert();
            publicKey = x509Certificate != null ? x509Certificate.getPublicKey() : trustAnchor2.getCAPublicKey();
            try {
                C13486b c10 = a.c(publicKey);
                c10.u();
                c10.x();
            } catch (CertPathValidatorException unused4) {
                z(K("CertPathReviewer.trustPubKeyError"));
            }
        } else {
            x509Certificate = null;
            publicKey = null;
        }
        X509Certificate x509Certificate522 = x509Certificate;
        X500Principal x500Principal222 = x500Principal;
        PublicKey publicKey322 = publicKey;
        size = this.f102025w.size() - 1;
        while (size >= 0) {
            int i13 = this.f102026x - size;
            X509Certificate x509Certificate6 = (X509Certificate) this.f102025w.get(size);
            if (publicKey322 != null) {
                try {
                    a.x(x509Certificate6, publicKey322, this.f102022t.getSigProvider());
                } catch (GeneralSecurityException e12) {
                    L10 = L("CertPathReviewer.signatureNotVerified", new Object[]{e12.getMessage(), e12, e12.getClass().getName()});
                }
            } else {
                if (a.q(x509Certificate6)) {
                    try {
                        a.x(x509Certificate6, x509Certificate6.getPublicKey(), this.f102022t.getSigProvider());
                        A(K("CertPathReviewer.rootKeyIsValidButNotATrustAnchor"), size);
                    } catch (GeneralSecurityException e13) {
                        L10 = L("CertPathReviewer.signatureNotVerified", new Object[]{e13.getMessage(), e13, e13.getClass().getName()});
                    }
                } else {
                    L10 = K("CertPathReviewer.NoIssuerPublicKey");
                    byte[] extensionValue = x509Certificate6.getExtensionValue(C13478B.f90547w.J());
                    if (extensionValue != null && (v10 = (y10 = C13499k.y(AbstractC14551y.F(extensionValue).H())).v()) != null) {
                        C13481E c13481e = v10.y()[0];
                        BigInteger x10 = y10.x();
                        if (x10 != null) {
                            L10.l(new Object[]{new org.bouncycastle.pkix.util.b(f102016H, "missingIssuer"), " \"", c13481e, "\" ", new org.bouncycastle.pkix.util.b(f102016H, "missingSerial"), " ", x10});
                        }
                    }
                }
                A(L10, size);
            }
            try {
                x509Certificate6.checkValidity(this.f102024v);
            } catch (CertificateExpiredException unused5) {
                L11 = L("CertPathReviewer.certificateExpired", new Object[]{new Wk.d(x509Certificate6.getNotAfter())});
                A(L11, size);
                if (this.f102022t.isRevocationEnabled()) {
                }
                if (x500Principal222 != null) {
                }
                if (i10 == this.f102026x) {
                }
                x500Principal222 = x509Certificate3.getSubjectX500Principal();
                publicKey322 = a.h(this.f102025w, i12);
                C13486b c11 = a.c(publicKey322);
                c11.u();
                c11.x();
                size = i12 - 1;
                x509Certificate522 = x509Certificate3;
            } catch (CertificateNotYetValidException unused6) {
                L11 = L("CertPathReviewer.certificateNotYetValid", new Object[]{new Wk.d(x509Certificate6.getNotBefore())});
                A(L11, size);
                if (this.f102022t.isRevocationEnabled()) {
                }
                if (x500Principal222 != null) {
                }
                if (i10 == this.f102026x) {
                }
                x500Principal222 = x509Certificate3.getSubjectX500Principal();
                publicKey322 = a.h(this.f102025w, i12);
                C13486b c112 = a.c(publicKey322);
                c112.u();
                c112.x();
                size = i12 - 1;
                x509Certificate522 = x509Certificate3;
            }
            if (this.f102022t.isRevocationEnabled()) {
                try {
                    f11 = a.f(x509Certificate6, f102014F);
                } catch (AnnotatedException unused7) {
                    A(K("CertPathReviewer.crlDistPtExtError"), size);
                }
                try {
                    if (f11 != null) {
                        c13501m = C13501m.w(f11);
                        f10 = a.f(x509Certificate6, f102015G);
                        if (f10 != null) {
                            c13498j = C13498j.y(f10);
                            Vector O10 = O(c13501m);
                            Vector V10 = V(c13498j);
                            it = O10.iterator();
                            while (it.hasNext()) {
                                C(L("CertPathReviewer.crlDistPoint", new Object[]{new Wk.f(it.next())}), size);
                            }
                            it2 = V10.iterator();
                            while (it2.hasNext()) {
                                C(L("CertPathReviewer.ocspLocation", new Object[]{new Wk.f(it2.next())}), size);
                            }
                            x509Certificate2 = x509Certificate6;
                            i10 = i13;
                            i11 = size;
                            publicKey2 = publicKey322;
                            I(this.f102022t, x509Certificate6, this.f102024v, x509Certificate522, publicKey322, O10, V10, i11);
                            i12 = i11;
                        }
                        c13498j = null;
                        Vector O102 = O(c13501m);
                        Vector V102 = V(c13498j);
                        it = O102.iterator();
                        while (it.hasNext()) {
                        }
                        it2 = V102.iterator();
                        while (it2.hasNext()) {
                        }
                        x509Certificate2 = x509Certificate6;
                        i10 = i13;
                        i11 = size;
                        publicKey2 = publicKey322;
                        I(this.f102022t, x509Certificate6, this.f102024v, x509Certificate522, publicKey322, O102, V102, i11);
                        i12 = i11;
                    }
                    I(this.f102022t, x509Certificate6, this.f102024v, x509Certificate522, publicKey322, O102, V102, i11);
                    i12 = i11;
                } catch (CertPathReviewerException e14) {
                    e = e14;
                    i12 = i11;
                    A(e.getErrorMessage(), i12);
                    if (x500Principal222 != null) {
                        A(L("CertPathReviewer.certWrongIssuer", new Object[]{x500Principal222.getName(), x509Certificate2.getIssuerX500Principal().getName()}), i12);
                    }
                    if (i10 == this.f102026x) {
                    }
                    x500Principal222 = x509Certificate3.getSubjectX500Principal();
                    publicKey322 = a.h(this.f102025w, i12);
                    C13486b c1122 = a.c(publicKey322);
                    c1122.u();
                    c1122.x();
                    size = i12 - 1;
                    x509Certificate522 = x509Certificate3;
                }
                c13501m = null;
                f10 = a.f(x509Certificate6, f102015G);
                if (f10 != null) {
                }
                c13498j = null;
                Vector O1022 = O(c13501m);
                Vector V1022 = V(c13498j);
                it = O1022.iterator();
                while (it.hasNext()) {
                }
                it2 = V1022.iterator();
                while (it2.hasNext()) {
                }
                x509Certificate2 = x509Certificate6;
                i10 = i13;
                i11 = size;
                publicKey2 = publicKey322;
            } else {
                x509Certificate2 = x509Certificate6;
                i10 = i13;
                i12 = size;
                publicKey2 = publicKey322;
            }
            if (x500Principal222 != null && !x509Certificate2.getIssuerX500Principal().equals(x500Principal222)) {
                A(L("CertPathReviewer.certWrongIssuer", new Object[]{x500Principal222.getName(), x509Certificate2.getIssuerX500Principal().getName()}), i12);
            }
            if (i10 == this.f102026x) {
                String str = "CertPathReviewer.noCACert";
                x509Certificate3 = x509Certificate2;
                if (x509Certificate3 != null && x509Certificate3.getVersion() == 1) {
                    A(K("CertPathReviewer.noCACert"), i12);
                }
                try {
                    C13500l v11 = C13500l.v(a.f(x509Certificate3, a.f101987b));
                    if (v11 == null) {
                        str = "CertPathReviewer.noBasicConstraints";
                    }
                    A(K(str), i12);
                } catch (AnnotatedException unused8) {
                    A(K("CertPathReviewer.errorProcesingBC"), i12);
                }
                boolean[] keyUsage2 = x509Certificate3.getKeyUsage();
                if (keyUsage2 != null && (keyUsage2.length <= 5 || !keyUsage2[5])) {
                    A(K("CertPathReviewer.noCertSign"), i12);
                }
            } else {
                x509Certificate3 = x509Certificate2;
            }
            x500Principal222 = x509Certificate3.getSubjectX500Principal();
            publicKey322 = a.h(this.f102025w, i12);
            C13486b c11222 = a.c(publicKey322);
            c11222.u();
            c11222.x();
            size = i12 - 1;
            x509Certificate522 = x509Certificate3;
        }
        this.f102017A = trustAnchor2;
        this.f102018B = publicKey322;
    }

    public void M() {
        if (!this.f102020D) {
            throw new IllegalStateException("Object not initialized. Call init() first.");
        }
        if (this.f102027y != null) {
            return;
        }
        int i10 = this.f102026x;
        this.f102027y = new List[i10 + 1];
        this.f102028z = new List[i10 + 1];
        int i11 = 0;
        while (true) {
            List[] listArr = this.f102027y;
            if (i11 >= listArr.length) {
                J();
                F();
                G();
                H();
                E();
                return;
            }
            listArr[i11] = new ArrayList();
            this.f102028z[i11] = new ArrayList();
            i11++;
        }
    }

    public final X509CRL N(String str) throws CertPathReviewerException {
        try {
            URL url = new URL(str);
            if (!url.getProtocol().equals("http") && !url.getProtocol().equals(C15075d.f106134a)) {
                return null;
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.connect();
            if (httpURLConnection.getResponseCode() == 200) {
                return (X509CRL) CertificateFactory.getInstance("X.509", C14720a.f101701e).generateCRL(httpURLConnection.getInputStream());
            }
            throw new Exception(httpURLConnection.getResponseMessage());
        } catch (Exception e10) {
            throw new CertPathReviewerException(L("CertPathReviewer.loadCrlDistPointError", new Object[]{new Wk.e(str), e10.getMessage(), e10, e10.getClass().getName()}));
        }
    }

    public Vector O(C13501m c13501m) {
        Vector vector = new Vector();
        if (c13501m != null) {
            for (C13512y c13512y : c13501m.v()) {
                C13513z x10 = c13512y.x();
                if (x10.y() == 0) {
                    C13481E[] y10 = C13482F.w(x10.x()).y();
                    for (int i10 = 0; i10 < y10.length; i10++) {
                        if (y10[i10].g() == 6) {
                            vector.add(((AbstractC14536q) y10[i10].x()).getString());
                        }
                    }
                }
            }
        }
        return vector;
    }

    public CertPath P() {
        return this.f102021s;
    }

    public int Q() {
        return this.f102026x;
    }

    public List R(int i10) {
        M();
        return this.f102028z[i10 + 1];
    }

    public List[] S() {
        M();
        return this.f102028z;
    }

    public List T(int i10) {
        M();
        return this.f102027y[i10 + 1];
    }

    public List[] U() {
        M();
        return this.f102027y;
    }

    public Vector V(C13498j c13498j) {
        Vector vector = new Vector();
        if (c13498j != null) {
            C13484a[] x10 = c13498j.x();
            for (int i10 = 0; i10 < x10.length; i10++) {
                if (x10[i10].v().A(C13484a.f90754e)) {
                    C13481E u10 = x10[i10].u();
                    if (u10.g() == 6) {
                        vector.add(((AbstractC14536q) u10.x()).getString());
                    }
                }
            }
        }
        return vector;
    }

    public PolicyNode W() {
        M();
        return this.f102019C;
    }

    public PublicKey X() {
        M();
        return this.f102018B;
    }

    public TrustAnchor Y() {
        M();
        return this.f102017A;
    }

    public Collection Z(X509Certificate x509Certificate, Set set) throws CertPathReviewerException {
        ArrayList arrayList = new ArrayList();
        Iterator it = set.iterator();
        X509CertSelector x509CertSelector = new X509CertSelector();
        try {
            x509CertSelector.setSubject(a.e(x509Certificate).getEncoded());
            byte[] extensionValue = x509Certificate.getExtensionValue(C13478B.f90547w.J());
            if (extensionValue != null) {
                C13499k y10 = C13499k.y(B.B(((AbstractC14551y) B.B(extensionValue)).H()));
                if (y10.x() != null) {
                    x509CertSelector.setSerialNumber(y10.x());
                } else {
                    byte[] A10 = y10.A();
                    if (A10 != null) {
                        x509CertSelector.setSubjectKeyIdentifier(new C0(A10).getEncoded());
                    }
                }
            }
            while (it.hasNext()) {
                TrustAnchor trustAnchor = (TrustAnchor) it.next();
                if (trustAnchor.getTrustedCert() != null) {
                    if (x509CertSelector.match(trustAnchor.getTrustedCert())) {
                        arrayList.add(trustAnchor);
                    }
                } else if (trustAnchor.getCAName() != null && trustAnchor.getCAPublicKey() != null && a.e(x509Certificate).equals(new X500Principal(trustAnchor.getCAName()))) {
                    arrayList.add(trustAnchor);
                }
            }
            return arrayList;
        } catch (IOException unused) {
            throw new CertPathReviewerException(K("CertPathReviewer.trustAnchorIssuerError"));
        }
    }

    public void a0(CertPath certPath, PKIXParameters pKIXParameters) throws CertPathReviewerException {
        if (this.f102020D) {
            throw new IllegalStateException("object is already initialized!");
        }
        this.f102020D = true;
        if (certPath == null) {
            throw new NullPointerException("certPath was null");
        }
        List<? extends Certificate> certificates = certPath.getCertificates();
        if (certificates.size() != 1) {
            HashSet hashSet = new HashSet();
            Iterator<TrustAnchor> it = pKIXParameters.getTrustAnchors().iterator();
            while (it.hasNext()) {
                hashSet.add(it.next().getTrustedCert());
            }
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 != certificates.size(); i10++) {
                if (!hashSet.contains(certificates.get(i10))) {
                    arrayList.add(certificates.get(i10));
                }
            }
            try {
                this.f102021s = CertificateFactory.getInstance("X.509", C14720a.f101701e).generateCertPath(arrayList);
                this.f102025w = arrayList;
            } catch (GeneralSecurityException unused) {
                throw new IllegalStateException("unable to rebuild certpath");
            }
        } else {
            this.f102021s = certPath;
            this.f102025w = certPath.getCertificates();
        }
        this.f102026x = this.f102025w.size();
        if (this.f102025w.isEmpty()) {
            throw new CertPathReviewerException(K("CertPathReviewer.emptyCertPath"));
        }
        this.f102022t = (PKIXParameters) pKIXParameters.clone();
        Date date = new Date();
        this.f102023u = date;
        this.f102024v = a.n(this.f102022t, date);
        this.f102027y = null;
        this.f102028z = null;
        this.f102017A = null;
        this.f102018B = null;
        this.f102019C = null;
    }

    public boolean b0() {
        M();
        int i10 = 0;
        while (true) {
            List[] listArr = this.f102028z;
            if (i10 >= listArr.length) {
                return true;
            }
            if (!listArr[i10].isEmpty()) {
                return false;
            }
            i10++;
        }
    }

    public final boolean c0(X509Certificate x509Certificate, int i10) {
        org.bouncycastle.pkix.util.a L10;
        String str;
        try {
            E e10 = (E) a.f(x509Certificate, f102013E);
            boolean z10 = false;
            for (int i11 = 0; i11 < e10.size(); i11++) {
                C13742e u10 = C13742e.u(e10.I(i11));
                if (InterfaceC13739b.f92274k5.A(u10.v())) {
                    str = "CertPathReviewer.QcEuCompliance";
                } else {
                    if (!InterfaceC13743f.f92293t5.A(u10.v())) {
                        if (InterfaceC13739b.f92277n5.A(u10.v())) {
                            str = "CertPathReviewer.QcSSCD";
                        } else if (InterfaceC13739b.f92275l5.A(u10.v())) {
                            C13741d y10 = C13741d.y(u10.x());
                            y10.v();
                            double doubleValue = y10.u().doubleValue() * Math.pow(10.0d, y10.x().doubleValue());
                            L10 = y10.v().y() ? L("CertPathReviewer.QcLimitValueAlpha", new Object[]{y10.v().u(), new Wk.d(new Double(doubleValue)), y10}) : L("CertPathReviewer.QcLimitValueNum", new Object[]{org.bouncycastle.util.k.j(y10.v().x()), new Wk.d(new Double(doubleValue)), y10});
                            C(L10, i10);
                        } else {
                            C(L("CertPathReviewer.QcUnknownStatement", new Object[]{u10.v(), new Wk.e(u10)}), i10);
                            z10 = true;
                        }
                    }
                }
                L10 = K(str);
                C(L10, i10);
            }
            return !z10;
        } catch (AnnotatedException unused) {
            A(K("CertPathReviewer.QcStatementExtError"), i10);
            return false;
        }
    }

    public final String y(byte[] bArr) {
        try {
            return InetAddress.getByAddress(bArr).getHostAddress();
        } catch (Exception unused) {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i10 = 0; i10 != bArr.length; i10++) {
                stringBuffer.append(Integer.toHexString(bArr[i10] & 255));
                stringBuffer.append(C15883c.f126249O);
            }
            return stringBuffer.toString();
        }
    }

    public void z(org.bouncycastle.pkix.util.a aVar) {
        this.f102028z[0].add(aVar);
    }

    public f(CertPath certPath, PKIXParameters pKIXParameters) throws CertPathReviewerException {
        a0(certPath, pKIXParameters);
    }
}
