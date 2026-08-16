package org.bouncycastle.x509;

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
import kj.C13992d;
import kj.C13993e;
import kj.C13994f;
import oh.AbstractC14536q;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14522j;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import oh.M;
import org.bouncycastle.jce.provider.AnnotatedException;
import org.bouncycastle.jce.provider.C14720a;
import org.bouncycastle.jce.provider.H;
import org.bouncycastle.jce.provider.I;
import org.bouncycastle.jce.provider.PKIXNameConstraintValidatorException;
import qe.C15075d;
import w2.C15883c;

public class i extends c {

    public static final String f102382B = C13478B.f90520F.J();

    public static final String f102383C = C13478B.f90544t.J();

    public static final String f102384D = C13478B.f90516B.J();

    public static final String f102385E = "org.bouncycastle.x509.CertPathReviewerMessages";

    public boolean f102386A;

    public CertPath f102387p;

    public PKIXParameters f102388q;

    public Date f102389r;

    public Date f102390s;

    public List f102391t;

    public int f102392u;

    public List[] f102393v;

    public List[] f102394w;

    public TrustAnchor f102395x;

    public PublicKey f102396y;

    public PolicyNode f102397z;

    public i() {
    }

    public void A(org.bouncycastle.i18n.a aVar, int i10) {
        if (i10 < -1 || i10 >= this.f102392u) {
            throw new IndexOutOfBoundsException();
        }
        this.f102394w[i10 + 1].add(aVar);
    }

    public void B(org.bouncycastle.i18n.a aVar) {
        this.f102393v[0].add(aVar);
    }

    public void C(org.bouncycastle.i18n.a aVar, int i10) {
        if (i10 < -1 || i10 >= this.f102392u) {
            throw new IndexOutOfBoundsException();
        }
        this.f102393v[i10 + 1].add(aVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:172:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x024d  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void D(PKIXParameters pKIXParameters, X509Certificate x509Certificate, Date date, X509Certificate x509Certificate2, PublicKey publicKey, Vector vector, int i10) throws CertPathReviewerException {
        Iterator it;
        X509CRL x509crl;
        boolean z10;
        boolean z11;
        String str;
        boolean[] keyUsage;
        X509CRL x509crl2;
        Iterator it2;
        boolean z12;
        Iterator it3;
        m mVar = new m();
        try {
            mVar.addIssuerName(c.f(x509Certificate).getEncoded());
            mVar.setCertificateChecking(x509Certificate);
            try {
                Set a10 = h.a(mVar, pKIXParameters);
                Iterator it4 = a10.iterator();
                if (a10.isEmpty()) {
                    Iterator<E> it5 = h.a(new m(), pKIXParameters).iterator();
                    ArrayList arrayList = new ArrayList();
                    while (it5.hasNext()) {
                        arrayList.add(((X509CRL) it5.next()).getIssuerX500Principal());
                    }
                    it3 = it4;
                    C(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.noCrlInCertstore", new Object[]{new C13993e(mVar.getIssuerNames()), new C13993e(arrayList), org.bouncycastle.util.k.j(arrayList.size())}), i10);
                } else {
                    it3 = it4;
                }
                it = it3;
            } catch (AnnotatedException e10) {
                A(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.crlExtractionError", new Object[]{e10.getCause().getMessage(), e10.getCause(), e10.getCause().getClass().getName()}), i10);
                it = new ArrayList().iterator();
            }
            X509CRL x509crl3 = null;
            while (it.hasNext()) {
                x509crl3 = (X509CRL) it.next();
                Date thisUpdate = x509crl3.getThisUpdate();
                Date nextUpdate = x509crl3.getNextUpdate();
                Object[] objArr = {new C13992d(thisUpdate), new C13992d(nextUpdate)};
                if (nextUpdate == null || date.before(nextUpdate)) {
                    C(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.localValidCRL", objArr), i10);
                    x509crl = x509crl3;
                    z10 = true;
                    break;
                }
                C(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.localInvalidCRL", objArr), i10);
            }
            x509crl = x509crl3;
            z10 = false;
            if (!z10) {
                X500Principal issuerX500Principal = x509Certificate.getIssuerX500Principal();
                Iterator it6 = vector.iterator();
                boolean z13 = z10;
                while (true) {
                    if (!it6.hasNext()) {
                        z11 = z13;
                        break;
                    }
                    try {
                        String str2 = (String) it6.next();
                        X509CRL L10 = L(str2);
                        if (L10 != null) {
                            X500Principal issuerX500Principal2 = L10.getIssuerX500Principal();
                            if (issuerX500Principal.equals(issuerX500Principal2)) {
                                x509crl2 = x509crl;
                                it2 = it6;
                                z12 = z13;
                                Date thisUpdate2 = L10.getThisUpdate();
                                Date nextUpdate2 = L10.getNextUpdate();
                                Object[] objArr2 = {new C13992d(thisUpdate2), new C13992d(nextUpdate2), new C13994f(str2)};
                                if (nextUpdate2 != null && !date.before(nextUpdate2)) {
                                    C(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.onlineInvalidCRL", objArr2), i10);
                                }
                                try {
                                    C(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.onlineValidCRL", objArr2), i10);
                                    x509crl = L10;
                                    z11 = true;
                                    break;
                                } catch (CertPathReviewerException e11) {
                                    e = e11;
                                    z13 = true;
                                    C(e.getErrorMessage(), i10);
                                    it6 = it2;
                                    x509crl = x509crl2;
                                }
                            } else {
                                x509crl2 = x509crl;
                                try {
                                    it2 = it6;
                                    z12 = z13;
                                } catch (CertPathReviewerException e12) {
                                    e = e12;
                                    it2 = it6;
                                    C(e.getErrorMessage(), i10);
                                    it6 = it2;
                                    x509crl = x509crl2;
                                }
                                try {
                                    C(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.onlineCRLWrongCA", new Object[]{new C13993e(issuerX500Principal2.getName()), new C13993e(issuerX500Principal.getName()), new C13994f(str2)}), i10);
                                } catch (CertPathReviewerException e13) {
                                    e = e13;
                                    z13 = z12;
                                    C(e.getErrorMessage(), i10);
                                    it6 = it2;
                                    x509crl = x509crl2;
                                }
                            }
                        } else {
                            x509crl2 = x509crl;
                            it2 = it6;
                            z12 = z13;
                        }
                        it6 = it2;
                        x509crl = x509crl2;
                        z13 = z12;
                    } catch (CertPathReviewerException e14) {
                        e = e14;
                        x509crl2 = x509crl;
                    }
                }
            } else {
                z11 = z10;
            }
            if (x509crl != null) {
                if (x509Certificate2 != null && (keyUsage = x509Certificate2.getKeyUsage()) != null && (keyUsage.length <= 6 || !keyUsage[6])) {
                    throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.noCrlSigningPermited"));
                }
                if (publicKey == null) {
                    throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.crlNoIssuerPublicKey"));
                }
                try {
                    x509crl.verify(publicKey, C14720a.f101701e);
                    X509CRLEntry revokedCertificate = x509crl.getRevokedCertificate(x509Certificate.getSerialNumber());
                    if (revokedCertificate != null) {
                        if (revokedCertificate.hasExtensions()) {
                            try {
                                C14522j F10 = C14522j.F(c.g(revokedCertificate, C13478B.f90537m.J()));
                                if (F10 != null) {
                                    str = c.f102363o[F10.L()];
                                    if (str == null) {
                                        str = c.f102363o[7];
                                    }
                                    org.bouncycastle.i18n.b bVar = new org.bouncycastle.i18n.b(f102385E, str);
                                    if (date.before(revokedCertificate.getRevocationDate())) {
                                        throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.certRevoked", new Object[]{new C13992d(revokedCertificate.getRevocationDate()), bVar}));
                                    }
                                    C(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.revokedAfterValidation", new Object[]{new C13992d(revokedCertificate.getRevocationDate()), bVar}), i10);
                                }
                            } catch (AnnotatedException e15) {
                                throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.crlReasonExtError"), e15);
                            }
                        }
                        str = null;
                        if (str == null) {
                        }
                        org.bouncycastle.i18n.b bVar2 = new org.bouncycastle.i18n.b(f102385E, str);
                        if (date.before(revokedCertificate.getRevocationDate())) {
                        }
                    } else {
                        C(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.notRevoked"), i10);
                    }
                    Date nextUpdate3 = x509crl.getNextUpdate();
                    if (nextUpdate3 != null && !date.before(nextUpdate3)) {
                        C(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.crlUpdateAvailable", new Object[]{new C13992d(nextUpdate3)}), i10);
                    }
                    try {
                        B g10 = c.g(x509crl, c.f102356h);
                        try {
                            B g11 = c.g(x509crl, c.f102357i);
                            if (g11 != null) {
                                m mVar2 = new m();
                                try {
                                    mVar2.addIssuerName(c.h(x509crl).getEncoded());
                                    mVar2.setMinCRLNumber(((C14539s) g11).H());
                                    try {
                                        mVar2.setMaxCRLNumber(((C14539s) c.g(x509crl, c.f102359k)).H().subtract(BigInteger.valueOf(1L)));
                                        try {
                                            Iterator it7 = h.a(mVar2, pKIXParameters).iterator();
                                            while (it7.hasNext()) {
                                                try {
                                                    if (org.bouncycastle.util.o.a(g10, c.g((X509CRL) it7.next(), c.f102356h))) {
                                                    }
                                                } catch (AnnotatedException e16) {
                                                    throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.distrPtExtError"), e16);
                                                }
                                            }
                                            throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.noBaseCRL"));
                                        } catch (AnnotatedException e17) {
                                            throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.crlExtractionError"), e17);
                                        }
                                    } catch (AnnotatedException e18) {
                                        throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.crlNbrExtError"), e18);
                                    }
                                } catch (IOException e19) {
                                    throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.crlIssuerException"), e19);
                                }
                            }
                            if (g10 != null) {
                                L y10 = L.y(g10);
                                try {
                                    C13500l v10 = C13500l.v(c.g(x509Certificate, c.f102350b));
                                    if (y10.E() && v10 != null && v10.z()) {
                                        throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.crlOnlyUserCert"));
                                    }
                                    if (y10.D() && (v10 == null || !v10.z())) {
                                        throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.crlOnlyCaCert"));
                                    }
                                    if (y10.C()) {
                                        throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.crlOnlyAttrCert"));
                                    }
                                } catch (AnnotatedException e20) {
                                    throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.crlBCExtError"), e20);
                                }
                            }
                        } catch (AnnotatedException unused) {
                            throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.deltaCrlExtError"));
                        }
                    } catch (AnnotatedException unused2) {
                        throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.distrPtExtError"));
                    }
                } catch (Exception e21) {
                    throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.crlVerifyFailed"), e21);
                }
            }
            if (!z11) {
                throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.noValidCrlFound"));
            }
        } catch (IOException e22) {
            throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.crlIssuerException"), e22);
        }
    }

    public final void E() {
        List<PKIXCertPathChecker> certPathCheckers = this.f102388q.getCertPathCheckers();
        Iterator<PKIXCertPathChecker> it = certPathCheckers.iterator();
        while (it.hasNext()) {
            try {
                try {
                    it.next().init(false);
                } catch (CertPathValidatorException e10) {
                    throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.certPathCheckerError", new Object[]{e10.getMessage(), e10, e10.getClass().getName()}), e10);
                }
            } catch (CertPathReviewerException e11) {
                A(e11.getErrorMessage(), e11.getIndex());
                return;
            }
        }
        for (int size = this.f102391t.size() - 1; size >= 0; size--) {
            X509Certificate x509Certificate = (X509Certificate) this.f102391t.get(size);
            Set<String> criticalExtensionOIDs = x509Certificate.getCriticalExtensionOIDs();
            if (criticalExtensionOIDs != null && !criticalExtensionOIDs.isEmpty()) {
                criticalExtensionOIDs.remove(c.f102354f);
                criticalExtensionOIDs.remove(c.f102349a);
                criticalExtensionOIDs.remove(c.f102351c);
                criticalExtensionOIDs.remove(c.f102355g);
                criticalExtensionOIDs.remove(c.f102356h);
                criticalExtensionOIDs.remove(c.f102357i);
                criticalExtensionOIDs.remove(c.f102358j);
                criticalExtensionOIDs.remove(c.f102350b);
                criticalExtensionOIDs.remove(c.f102352d);
                criticalExtensionOIDs.remove(c.f102353e);
                if (size == 0) {
                    criticalExtensionOIDs.remove(C13478B.f90549y.J());
                }
                String str = f102382B;
                if (criticalExtensionOIDs.contains(str) && a0(x509Certificate, size)) {
                    criticalExtensionOIDs.remove(str);
                }
                Iterator<PKIXCertPathChecker> it2 = certPathCheckers.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().check(x509Certificate, criticalExtensionOIDs);
                    } catch (CertPathValidatorException e12) {
                        throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.criticalExtensionError", new Object[]{e12.getMessage(), e12, e12.getClass().getName()}), e12.getCause(), this.f102387p, size);
                    }
                }
                if (!criticalExtensionOIDs.isEmpty()) {
                    Iterator<String> it3 = criticalExtensionOIDs.iterator();
                    while (it3.hasNext()) {
                        A(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.unknownCriticalExt", new Object[]{new C14549x(it3.next())}), size);
                    }
                }
            }
        }
    }

    public final void F() {
        H h10 = new H();
        try {
            for (int size = this.f102391t.size() - 1; size > 0; size--) {
                X509Certificate x509Certificate = (X509Certificate) this.f102391t.get(size);
                if (!c.q(x509Certificate)) {
                    X500Principal m10 = c.m(x509Certificate);
                    try {
                        E e10 = (E) new oh.r(new ByteArrayInputStream(m10.getEncoded())).k();
                        try {
                            h10.e(e10);
                            try {
                                h10.c(e10);
                                try {
                                    E e11 = (E) c.g(x509Certificate, c.f102352d);
                                    if (e11 != null) {
                                        for (int i10 = 0; i10 < e11.size(); i10++) {
                                            C13481E v10 = C13481E.v(e11.I(i10));
                                            try {
                                                h10.d(v10);
                                                h10.b(v10);
                                            } catch (PKIXNameConstraintValidatorException e12) {
                                                throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.notPermittedEmail", new Object[]{new C13993e(v10)}), e12, this.f102387p, size);
                                            }
                                        }
                                    }
                                } catch (AnnotatedException e13) {
                                    throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.subjAltNameExtError"), e13, this.f102387p, size);
                                }
                            } catch (PKIXNameConstraintValidatorException e14) {
                                throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.excludedDN", new Object[]{new C13993e(m10.getName())}), e14, this.f102387p, size);
                            }
                        } catch (PKIXNameConstraintValidatorException e15) {
                            throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.notPermittedDN", new Object[]{new C13993e(m10.getName())}), e15, this.f102387p, size);
                        }
                    } catch (IOException e16) {
                        throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.ncSubjectNameError", new Object[]{new C13993e(m10)}), e16, this.f102387p, size);
                    }
                }
                try {
                    E e17 = (E) c.g(x509Certificate, c.f102353e);
                    if (e17 != null) {
                        P y10 = P.y(e17);
                        hi.H[] z10 = y10.z();
                        if (z10 != null) {
                            h10.h(z10);
                        }
                        hi.H[] x10 = y10.x();
                        if (x10 != null) {
                            for (int i11 = 0; i11 != x10.length; i11++) {
                                h10.a(x10[i11]);
                            }
                        }
                    }
                } catch (AnnotatedException e18) {
                    throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.ncExtError"), e18, this.f102387p, size);
                }
            }
        } catch (CertPathReviewerException e19) {
            A(e19.getErrorMessage(), e19.getIndex());
        }
    }

    public final void G() {
        C13500l c13500l;
        C14539s y10;
        int i10 = this.f102392u;
        int i11 = 0;
        for (int size = this.f102391t.size() - 1; size > 0; size--) {
            X509Certificate x509Certificate = (X509Certificate) this.f102391t.get(size);
            if (!c.q(x509Certificate)) {
                if (i10 <= 0) {
                    z(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.pathLengthExtended"));
                }
                i10--;
                i11++;
            }
            try {
                c13500l = C13500l.v(c.g(x509Certificate, c.f102350b));
            } catch (AnnotatedException unused) {
                A(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.processLengthConstError"), size);
                c13500l = null;
            }
            if (c13500l != null && c13500l.z() && (y10 = c13500l.y()) != null) {
                i10 = Math.min(i10, y10.M());
            }
        }
        B(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.totalPathLength", new Object[]{org.bouncycastle.util.k.j(i11)}));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0140 A[Catch: CertPathReviewerException -> 0x00e0, TRY_LEAVE, TryCatch #8 {CertPathReviewerException -> 0x00e0, blocks: (B:15:0x006f, B:19:0x007f, B:22:0x008c, B:26:0x009c, B:27:0x00a7, B:29:0x00ad, B:32:0x00ce, B:33:0x00d6, B:35:0x00dc, B:41:0x00e4, B:42:0x00f0, B:48:0x00fc, B:51:0x0103, B:52:0x010c, B:54:0x0112, B:57:0x011c, B:63:0x0123, B:65:0x0127, B:69:0x0213, B:71:0x0219, B:72:0x021c, B:74:0x0222, B:76:0x022e, B:83:0x0236, B:81:0x0239, B:87:0x023c, B:89:0x0242, B:90:0x024b, B:92:0x0251, B:101:0x0274, B:102:0x0280, B:103:0x0281, B:109:0x0285, B:111:0x028d, B:112:0x0291, B:114:0x0297, B:117:0x02b9, B:119:0x02c3, B:121:0x02c8, B:122:0x02d4, B:124:0x02d5, B:125:0x02e1, B:128:0x02e4, B:129:0x02f1, B:131:0x02f7, B:133:0x031d, B:135:0x0335, B:136:0x032c, B:139:0x033c, B:140:0x0342, B:142:0x0348, B:151:0x0350, B:146:0x037a, B:157:0x0358, B:158:0x0364, B:160:0x0366, B:161:0x0375, B:164:0x0388, B:173:0x03a5, B:175:0x03af, B:176:0x03b3, B:178:0x03b9, B:192:0x03c9, B:181:0x03d6, B:202:0x03e3, B:204:0x03ed, B:107:0x042b, B:211:0x03f5, B:212:0x0403, B:214:0x0404, B:215:0x0412, B:222:0x0414, B:223:0x0422, B:224:0x0136, B:225:0x013a, B:227:0x0140, B:230:0x0156, B:232:0x0160, B:233:0x0165, B:235:0x016b, B:236:0x0179, B:238:0x017f, B:264:0x018b, B:248:0x0198, B:249:0x019e, B:251:0x01a4, B:259:0x01bd, B:240:0x018e, B:247:0x0192, B:266:0x01f6, B:271:0x0206, B:272:0x0212, B:279:0x043a, B:280:0x0447, B:282:0x0448, B:287:0x0459, B:289:0x0463, B:290:0x0468, B:292:0x046e, B:295:0x047c, B:309:0x0491, B:316:0x05e1, B:317:0x05ed, B:319:0x049c, B:320:0x04a8, B:321:0x04a9, B:323:0x04af, B:325:0x04b7, B:327:0x04bd, B:329:0x04c7, B:330:0x04ca, B:332:0x04d0, B:334:0x04e0, B:335:0x04e4, B:337:0x04ea, B:339:0x04f2, B:342:0x04f5, B:344:0x04f8, B:345:0x04fc, B:347:0x0502, B:349:0x0510, B:351:0x0518, B:352:0x051b, B:354:0x0521, B:356:0x052d, B:358:0x0531, B:361:0x0534, B:363:0x0537, B:364:0x0543, B:366:0x0548, B:368:0x0552, B:369:0x0555, B:371:0x055b, B:373:0x056b, B:374:0x056f, B:376:0x0575, B:379:0x0585, B:384:0x0589, B:387:0x058c, B:389:0x058f, B:390:0x0595, B:392:0x059b, B:394:0x05ad, B:400:0x05b7, B:402:0x05bd, B:403:0x05c0, B:405:0x05c6, B:407:0x05d2, B:409:0x05d6, B:412:0x05d9, B:416:0x05ee, B:417:0x05fa), top: B:14:0x006f, inners: #0, #1, #2, #3, #4, #6, #9, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0123 A[Catch: CertPathReviewerException -> 0x00e0, TryCatch #8 {CertPathReviewerException -> 0x00e0, blocks: (B:15:0x006f, B:19:0x007f, B:22:0x008c, B:26:0x009c, B:27:0x00a7, B:29:0x00ad, B:32:0x00ce, B:33:0x00d6, B:35:0x00dc, B:41:0x00e4, B:42:0x00f0, B:48:0x00fc, B:51:0x0103, B:52:0x010c, B:54:0x0112, B:57:0x011c, B:63:0x0123, B:65:0x0127, B:69:0x0213, B:71:0x0219, B:72:0x021c, B:74:0x0222, B:76:0x022e, B:83:0x0236, B:81:0x0239, B:87:0x023c, B:89:0x0242, B:90:0x024b, B:92:0x0251, B:101:0x0274, B:102:0x0280, B:103:0x0281, B:109:0x0285, B:111:0x028d, B:112:0x0291, B:114:0x0297, B:117:0x02b9, B:119:0x02c3, B:121:0x02c8, B:122:0x02d4, B:124:0x02d5, B:125:0x02e1, B:128:0x02e4, B:129:0x02f1, B:131:0x02f7, B:133:0x031d, B:135:0x0335, B:136:0x032c, B:139:0x033c, B:140:0x0342, B:142:0x0348, B:151:0x0350, B:146:0x037a, B:157:0x0358, B:158:0x0364, B:160:0x0366, B:161:0x0375, B:164:0x0388, B:173:0x03a5, B:175:0x03af, B:176:0x03b3, B:178:0x03b9, B:192:0x03c9, B:181:0x03d6, B:202:0x03e3, B:204:0x03ed, B:107:0x042b, B:211:0x03f5, B:212:0x0403, B:214:0x0404, B:215:0x0412, B:222:0x0414, B:223:0x0422, B:224:0x0136, B:225:0x013a, B:227:0x0140, B:230:0x0156, B:232:0x0160, B:233:0x0165, B:235:0x016b, B:236:0x0179, B:238:0x017f, B:264:0x018b, B:248:0x0198, B:249:0x019e, B:251:0x01a4, B:259:0x01bd, B:240:0x018e, B:247:0x0192, B:266:0x01f6, B:271:0x0206, B:272:0x0212, B:279:0x043a, B:280:0x0447, B:282:0x0448, B:287:0x0459, B:289:0x0463, B:290:0x0468, B:292:0x046e, B:295:0x047c, B:309:0x0491, B:316:0x05e1, B:317:0x05ed, B:319:0x049c, B:320:0x04a8, B:321:0x04a9, B:323:0x04af, B:325:0x04b7, B:327:0x04bd, B:329:0x04c7, B:330:0x04ca, B:332:0x04d0, B:334:0x04e0, B:335:0x04e4, B:337:0x04ea, B:339:0x04f2, B:342:0x04f5, B:344:0x04f8, B:345:0x04fc, B:347:0x0502, B:349:0x0510, B:351:0x0518, B:352:0x051b, B:354:0x0521, B:356:0x052d, B:358:0x0531, B:361:0x0534, B:363:0x0537, B:364:0x0543, B:366:0x0548, B:368:0x0552, B:369:0x0555, B:371:0x055b, B:373:0x056b, B:374:0x056f, B:376:0x0575, B:379:0x0585, B:384:0x0589, B:387:0x058c, B:389:0x058f, B:390:0x0595, B:392:0x059b, B:394:0x05ad, B:400:0x05b7, B:402:0x05bd, B:403:0x05c0, B:405:0x05c6, B:407:0x05d2, B:409:0x05d6, B:412:0x05d9, B:416:0x05ee, B:417:0x05fa), top: B:14:0x006f, inners: #0, #1, #2, #3, #4, #6, #9, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0219 A[Catch: CertPathReviewerException -> 0x00e0, TryCatch #8 {CertPathReviewerException -> 0x00e0, blocks: (B:15:0x006f, B:19:0x007f, B:22:0x008c, B:26:0x009c, B:27:0x00a7, B:29:0x00ad, B:32:0x00ce, B:33:0x00d6, B:35:0x00dc, B:41:0x00e4, B:42:0x00f0, B:48:0x00fc, B:51:0x0103, B:52:0x010c, B:54:0x0112, B:57:0x011c, B:63:0x0123, B:65:0x0127, B:69:0x0213, B:71:0x0219, B:72:0x021c, B:74:0x0222, B:76:0x022e, B:83:0x0236, B:81:0x0239, B:87:0x023c, B:89:0x0242, B:90:0x024b, B:92:0x0251, B:101:0x0274, B:102:0x0280, B:103:0x0281, B:109:0x0285, B:111:0x028d, B:112:0x0291, B:114:0x0297, B:117:0x02b9, B:119:0x02c3, B:121:0x02c8, B:122:0x02d4, B:124:0x02d5, B:125:0x02e1, B:128:0x02e4, B:129:0x02f1, B:131:0x02f7, B:133:0x031d, B:135:0x0335, B:136:0x032c, B:139:0x033c, B:140:0x0342, B:142:0x0348, B:151:0x0350, B:146:0x037a, B:157:0x0358, B:158:0x0364, B:160:0x0366, B:161:0x0375, B:164:0x0388, B:173:0x03a5, B:175:0x03af, B:176:0x03b3, B:178:0x03b9, B:192:0x03c9, B:181:0x03d6, B:202:0x03e3, B:204:0x03ed, B:107:0x042b, B:211:0x03f5, B:212:0x0403, B:214:0x0404, B:215:0x0412, B:222:0x0414, B:223:0x0422, B:224:0x0136, B:225:0x013a, B:227:0x0140, B:230:0x0156, B:232:0x0160, B:233:0x0165, B:235:0x016b, B:236:0x0179, B:238:0x017f, B:264:0x018b, B:248:0x0198, B:249:0x019e, B:251:0x01a4, B:259:0x01bd, B:240:0x018e, B:247:0x0192, B:266:0x01f6, B:271:0x0206, B:272:0x0212, B:279:0x043a, B:280:0x0447, B:282:0x0448, B:287:0x0459, B:289:0x0463, B:290:0x0468, B:292:0x046e, B:295:0x047c, B:309:0x0491, B:316:0x05e1, B:317:0x05ed, B:319:0x049c, B:320:0x04a8, B:321:0x04a9, B:323:0x04af, B:325:0x04b7, B:327:0x04bd, B:329:0x04c7, B:330:0x04ca, B:332:0x04d0, B:334:0x04e0, B:335:0x04e4, B:337:0x04ea, B:339:0x04f2, B:342:0x04f5, B:344:0x04f8, B:345:0x04fc, B:347:0x0502, B:349:0x0510, B:351:0x0518, B:352:0x051b, B:354:0x0521, B:356:0x052d, B:358:0x0531, B:361:0x0534, B:363:0x0537, B:364:0x0543, B:366:0x0548, B:368:0x0552, B:369:0x0555, B:371:0x055b, B:373:0x056b, B:374:0x056f, B:376:0x0575, B:379:0x0585, B:384:0x0589, B:387:0x058c, B:389:0x058f, B:390:0x0595, B:392:0x059b, B:394:0x05ad, B:400:0x05b7, B:402:0x05bd, B:403:0x05c0, B:405:0x05c6, B:407:0x05d2, B:409:0x05d6, B:412:0x05d9, B:416:0x05ee, B:417:0x05fa), top: B:14:0x006f, inners: #0, #1, #2, #3, #4, #6, #9, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0242 A[Catch: CertPathReviewerException -> 0x00e0, TryCatch #8 {CertPathReviewerException -> 0x00e0, blocks: (B:15:0x006f, B:19:0x007f, B:22:0x008c, B:26:0x009c, B:27:0x00a7, B:29:0x00ad, B:32:0x00ce, B:33:0x00d6, B:35:0x00dc, B:41:0x00e4, B:42:0x00f0, B:48:0x00fc, B:51:0x0103, B:52:0x010c, B:54:0x0112, B:57:0x011c, B:63:0x0123, B:65:0x0127, B:69:0x0213, B:71:0x0219, B:72:0x021c, B:74:0x0222, B:76:0x022e, B:83:0x0236, B:81:0x0239, B:87:0x023c, B:89:0x0242, B:90:0x024b, B:92:0x0251, B:101:0x0274, B:102:0x0280, B:103:0x0281, B:109:0x0285, B:111:0x028d, B:112:0x0291, B:114:0x0297, B:117:0x02b9, B:119:0x02c3, B:121:0x02c8, B:122:0x02d4, B:124:0x02d5, B:125:0x02e1, B:128:0x02e4, B:129:0x02f1, B:131:0x02f7, B:133:0x031d, B:135:0x0335, B:136:0x032c, B:139:0x033c, B:140:0x0342, B:142:0x0348, B:151:0x0350, B:146:0x037a, B:157:0x0358, B:158:0x0364, B:160:0x0366, B:161:0x0375, B:164:0x0388, B:173:0x03a5, B:175:0x03af, B:176:0x03b3, B:178:0x03b9, B:192:0x03c9, B:181:0x03d6, B:202:0x03e3, B:204:0x03ed, B:107:0x042b, B:211:0x03f5, B:212:0x0403, B:214:0x0404, B:215:0x0412, B:222:0x0414, B:223:0x0422, B:224:0x0136, B:225:0x013a, B:227:0x0140, B:230:0x0156, B:232:0x0160, B:233:0x0165, B:235:0x016b, B:236:0x0179, B:238:0x017f, B:264:0x018b, B:248:0x0198, B:249:0x019e, B:251:0x01a4, B:259:0x01bd, B:240:0x018e, B:247:0x0192, B:266:0x01f6, B:271:0x0206, B:272:0x0212, B:279:0x043a, B:280:0x0447, B:282:0x0448, B:287:0x0459, B:289:0x0463, B:290:0x0468, B:292:0x046e, B:295:0x047c, B:309:0x0491, B:316:0x05e1, B:317:0x05ed, B:319:0x049c, B:320:0x04a8, B:321:0x04a9, B:323:0x04af, B:325:0x04b7, B:327:0x04bd, B:329:0x04c7, B:330:0x04ca, B:332:0x04d0, B:334:0x04e0, B:335:0x04e4, B:337:0x04ea, B:339:0x04f2, B:342:0x04f5, B:344:0x04f8, B:345:0x04fc, B:347:0x0502, B:349:0x0510, B:351:0x0518, B:352:0x051b, B:354:0x0521, B:356:0x052d, B:358:0x0531, B:361:0x0534, B:363:0x0537, B:364:0x0543, B:366:0x0548, B:368:0x0552, B:369:0x0555, B:371:0x055b, B:373:0x056b, B:374:0x056f, B:376:0x0575, B:379:0x0585, B:384:0x0589, B:387:0x058c, B:389:0x058f, B:390:0x0595, B:392:0x059b, B:394:0x05ad, B:400:0x05b7, B:402:0x05bd, B:403:0x05c0, B:405:0x05c6, B:407:0x05d2, B:409:0x05d6, B:412:0x05d9, B:416:0x05ee, B:417:0x05fa), top: B:14:0x006f, inners: #0, #1, #2, #3, #4, #6, #9, #10 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void H() {
        int i10;
        int i11;
        int i12;
        I i13;
        Set<String> set;
        String str;
        int i14;
        int i15;
        HashSet hashSet;
        String str2;
        int i16;
        int O10;
        int O11;
        String str3;
        HashSet hashSet2;
        Enumeration J10;
        HashSet hashSet3;
        String str4;
        int i17;
        int i18;
        Set<String> criticalExtensionOIDs;
        String str5 = "CertPathReviewer.policyExtError";
        Set<String> initialPolicies = this.f102388q.getInitialPolicies();
        int i19 = this.f102392u + 1;
        ArrayList[] arrayListArr = new ArrayList[i19];
        for (int i20 = 0; i20 < i19; i20++) {
            arrayListArr[i20] = new ArrayList();
        }
        HashSet hashSet4 = new HashSet();
        hashSet4.add("2.5.29.32.0");
        I i21 = new I(new ArrayList(), 0, hashSet4, null, new HashSet(), "2.5.29.32.0", false);
        arrayListArr[0].add(i21);
        if (this.f102388q.isExplicitPolicyRequired()) {
            i11 = 0;
            i10 = 1;
        } else {
            i10 = 1;
            i11 = this.f102392u + 1;
        }
        int i22 = this.f102388q.isAnyPolicyInhibited() ? 0 : this.f102392u + i10;
        int i23 = this.f102388q.isPolicyMappingInhibited() ? 0 : this.f102392u + i10;
        try {
            int size = this.f102391t.size() - i10;
            I i24 = i21;
            X509Certificate x509Certificate = null;
            HashSet hashSet5 = null;
            while (size >= 0) {
                int i25 = this.f102392u - size;
                X509Certificate x509Certificate2 = (X509Certificate) this.f102391t.get(size);
                int i26 = i19;
                try {
                    E e10 = (E) c.g(x509Certificate2, c.f102349a);
                    if (e10 == null || i24 == null) {
                        set = initialPolicies;
                        str = str5;
                        i14 = i22;
                        i15 = i23;
                        i24 = i24;
                    } else {
                        Enumeration J11 = e10.J();
                        set = initialPolicies;
                        HashSet hashSet6 = new HashSet();
                        while (J11.hasMoreElements()) {
                            W u10 = W.u(J11.nextElement());
                            I i27 = i24;
                            C14549x v10 = u10.v();
                            String str6 = str5;
                            hashSet6.add(v10.J());
                            if (!"2.5.29.32.0".equals(v10.J())) {
                                try {
                                    Set k10 = c.k(u10.x());
                                    if (!c.t(i25, arrayListArr, v10, k10)) {
                                        c.u(i25, arrayListArr, v10, k10);
                                    }
                                } catch (CertPathValidatorException e11) {
                                    throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.policyQualifierError"), e11, this.f102387p, size);
                                }
                            }
                            i24 = i27;
                            str5 = str6;
                        }
                        str = str5;
                        I i28 = i24;
                        if (hashSet5 != null && !hashSet5.contains("2.5.29.32.0")) {
                            hashSet2 = new HashSet();
                            for (Object obj : hashSet5) {
                                if (hashSet6.contains(obj)) {
                                    hashSet2.add(obj);
                                }
                            }
                            if (i22 <= 0) {
                                if (i25 < this.f102392u && c.q(x509Certificate2)) {
                                }
                                i14 = i22;
                                i15 = i23;
                                hashSet3 = hashSet2;
                                i24 = i28;
                                for (i18 = i25 - 1; i18 >= 0; i18--) {
                                    ArrayList arrayList = arrayListArr[i18];
                                    for (int i29 = 0; i29 < arrayList.size(); i29++) {
                                        I i30 = (I) arrayList.get(i29);
                                        if (!i30.c()) {
                                            I v11 = c.v(i24, arrayListArr, i30);
                                            i24 = v11;
                                            if (v11 == null) {
                                                break;
                                            }
                                        }
                                    }
                                }
                                criticalExtensionOIDs = x509Certificate2.getCriticalExtensionOIDs();
                                if (criticalExtensionOIDs != null) {
                                    boolean contains = criticalExtensionOIDs.contains(c.f102349a);
                                    ArrayList arrayList2 = arrayListArr[i25];
                                    for (int i31 = 0; i31 < arrayList2.size(); i31++) {
                                        ((I) arrayList2.get(i31)).e(contains);
                                    }
                                }
                                hashSet5 = hashSet3;
                            }
                            J10 = e10.J();
                            while (J10.hasMoreElements()) {
                                W u11 = W.u(J10.nextElement());
                                if ("2.5.29.32.0".equals(u11.v().J())) {
                                    try {
                                        Set k11 = c.k(u11.x());
                                        ArrayList arrayList3 = arrayListArr[i25 - 1];
                                        hashSet3 = hashSet2;
                                        for (int i32 = 0; i32 < arrayList3.size(); i32++) {
                                            I i33 = (I) arrayList3.get(i32);
                                            for (Object obj2 : i33.getExpectedPolicies()) {
                                                ArrayList arrayList4 = arrayList3;
                                                int i34 = i22;
                                                if (obj2 instanceof String) {
                                                    str4 = (String) obj2;
                                                } else if (obj2 instanceof C14549x) {
                                                    str4 = ((C14549x) obj2).J();
                                                } else {
                                                    arrayList3 = arrayList4;
                                                    i22 = i34;
                                                }
                                                Iterator children = i33.getChildren();
                                                boolean z10 = false;
                                                while (children.hasNext()) {
                                                    Iterator it = children;
                                                    if (str4.equals(((I) children.next()).getValidPolicy())) {
                                                        z10 = true;
                                                    }
                                                    children = it;
                                                }
                                                if (z10) {
                                                    i17 = i23;
                                                } else {
                                                    HashSet hashSet7 = new HashSet();
                                                    hashSet7.add(str4);
                                                    i17 = i23;
                                                    I i35 = new I(new ArrayList(), i25, hashSet7, i33, k11, str4, false);
                                                    i33.a(i35);
                                                    arrayListArr[i25].add(i35);
                                                }
                                                arrayList3 = arrayList4;
                                                i22 = i34;
                                                i23 = i17;
                                            }
                                        }
                                        i14 = i22;
                                        i15 = i23;
                                        i24 = i28;
                                        while (i18 >= 0) {
                                        }
                                        criticalExtensionOIDs = x509Certificate2.getCriticalExtensionOIDs();
                                        if (criticalExtensionOIDs != null) {
                                        }
                                        hashSet5 = hashSet3;
                                    } catch (CertPathValidatorException e12) {
                                        throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.policyQualifierError"), e12, this.f102387p, size);
                                    }
                                }
                            }
                            i14 = i22;
                            i15 = i23;
                            hashSet3 = hashSet2;
                            i24 = i28;
                            while (i18 >= 0) {
                            }
                            criticalExtensionOIDs = x509Certificate2.getCriticalExtensionOIDs();
                            if (criticalExtensionOIDs != null) {
                            }
                            hashSet5 = hashSet3;
                        }
                        hashSet2 = hashSet6;
                        if (i22 <= 0) {
                        }
                        J10 = e10.J();
                        while (J10.hasMoreElements()) {
                        }
                        i14 = i22;
                        i15 = i23;
                        hashSet3 = hashSet2;
                        i24 = i28;
                        while (i18 >= 0) {
                        }
                        criticalExtensionOIDs = x509Certificate2.getCriticalExtensionOIDs();
                        if (criticalExtensionOIDs != null) {
                        }
                        hashSet5 = hashSet3;
                    }
                    if (e10 == null) {
                        i24 = null;
                    }
                    if (i11 <= 0 && i24 == null) {
                        throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.noValidPolicyTree"));
                    }
                    if (i25 != this.f102392u) {
                        try {
                            B g10 = c.g(x509Certificate2, c.f102351c);
                            if (g10 != null) {
                                E e13 = (E) g10;
                                int i36 = 0;
                                while (i36 < e13.size()) {
                                    E e14 = (E) e13.I(i36);
                                    C14549x c14549x = (C14549x) e14.I(0);
                                    C14549x c14549x2 = (C14549x) e14.I(1);
                                    boolean equals = "2.5.29.32.0".equals(c14549x.J());
                                    E e15 = e13;
                                    if (equals) {
                                        throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.invalidPolicyMapping"), this.f102387p, size);
                                    }
                                    if ("2.5.29.32.0".equals(c14549x2.J())) {
                                        throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.invalidPolicyMapping"), this.f102387p, size);
                                    }
                                    i36++;
                                    e13 = e15;
                                }
                            }
                            if (g10 != null) {
                                E e16 = (E) g10;
                                HashMap hashMap = new HashMap();
                                HashSet<String> hashSet8 = new HashSet();
                                int i37 = 0;
                                while (i37 < e16.size()) {
                                    E e17 = (E) e16.I(i37);
                                    E e18 = e16;
                                    String J12 = ((C14549x) e17.I(0)).J();
                                    HashSet hashSet9 = hashSet5;
                                    String J13 = ((C14549x) e17.I(1)).J();
                                    if (hashMap.containsKey(J12)) {
                                        ((Set) hashMap.get(J12)).add(J13);
                                    } else {
                                        HashSet hashSet10 = new HashSet();
                                        hashSet10.add(J13);
                                        hashMap.put(J12, hashSet10);
                                        hashSet8.add(J12);
                                    }
                                    i37++;
                                    e16 = e18;
                                    hashSet5 = hashSet9;
                                }
                                hashSet = hashSet5;
                                for (String str7 : hashSet8) {
                                    if (i15 > 0) {
                                        try {
                                            c.r(i25, arrayListArr, str7, hashMap, x509Certificate2);
                                            str3 = str;
                                        } catch (CertPathValidatorException e19) {
                                            throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.policyQualifierError"), e19, this.f102387p, size);
                                        } catch (AnnotatedException e20) {
                                            throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, str), e20, this.f102387p, size);
                                        }
                                    } else {
                                        str3 = str;
                                        if (i15 <= 0) {
                                            i24 = c.s(i25, arrayListArr, str7, i24);
                                        }
                                    }
                                    str = str3;
                                }
                            } else {
                                hashSet = hashSet5;
                            }
                            str2 = str;
                            if (c.q(x509Certificate2)) {
                                i16 = i14;
                                i23 = i15;
                            } else {
                                if (i11 != 0) {
                                    i11--;
                                }
                                i23 = i15 != 0 ? i15 - 1 : i15;
                                i16 = i14 != 0 ? i14 - 1 : i14;
                            }
                            try {
                                E e21 = (E) c.g(x509Certificate2, c.f102358j);
                                if (e21 != null) {
                                    Enumeration J14 = e21.J();
                                    while (J14.hasMoreElements()) {
                                        M m10 = (M) J14.nextElement();
                                        int g11 = m10.g();
                                        if (g11 == 0) {
                                            int O12 = C14539s.G(m10, false).O();
                                            if (O12 < i11) {
                                                i11 = O12;
                                            }
                                        } else if (g11 == 1 && (O11 = C14539s.G(m10, false).O()) < i23) {
                                            i23 = O11;
                                        }
                                    }
                                }
                                try {
                                    C14539s c14539s = (C14539s) c.g(x509Certificate2, c.f102355g);
                                    if (c14539s != null && (O10 = c14539s.O()) < i16) {
                                        i16 = O10;
                                    }
                                } catch (AnnotatedException unused) {
                                    throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.policyInhibitExtError"), this.f102387p, size);
                                }
                            } catch (AnnotatedException unused2) {
                                throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.policyConstExtError"), this.f102387p, size);
                            }
                        } catch (AnnotatedException e22) {
                            throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.policyMapExtError"), e22, this.f102387p, size);
                        }
                    } else {
                        hashSet = hashSet5;
                        str2 = str;
                        i16 = i14;
                        i23 = i15;
                    }
                    size--;
                    x509Certificate = x509Certificate2;
                    str5 = str2;
                    hashSet5 = hashSet;
                    i19 = i26;
                    i22 = i16;
                    initialPolicies = set;
                } catch (AnnotatedException e23) {
                    throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, str5), e23, this.f102387p, size);
                }
            }
            Set<String> set2 = initialPolicies;
            int i38 = i19;
            I i39 = i24;
            if (!c.q(x509Certificate) && i11 > 0) {
                i11--;
            }
            try {
                E e24 = (E) c.g(x509Certificate, c.f102358j);
                if (e24 != null) {
                    Enumeration J15 = e24.J();
                    int i40 = i11;
                    while (J15.hasMoreElements()) {
                        M m11 = (M) J15.nextElement();
                        if (m11.g() == 0 && C14539s.G(m11, false).O() == 0) {
                            i40 = 0;
                        }
                    }
                    i12 = 0;
                    i11 = i40;
                } else {
                    i12 = 0;
                }
                if (i39 == null) {
                    if (this.f102388q.isExplicitPolicyRequired()) {
                        throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.explicitPolicy"), this.f102387p, size);
                    }
                    i13 = null;
                } else if (!c.o(set2)) {
                    HashSet<I> hashSet11 = new HashSet();
                    for (int i41 = i12; i41 < i38; i41++) {
                        ArrayList arrayList5 = arrayListArr[i41];
                        for (int i42 = i12; i42 < arrayList5.size(); i42++) {
                            I i43 = (I) arrayList5.get(i42);
                            if ("2.5.29.32.0".equals(i43.getValidPolicy())) {
                                Iterator children2 = i43.getChildren();
                                while (children2.hasNext()) {
                                    I i44 = (I) children2.next();
                                    if (!"2.5.29.32.0".equals(i44.getValidPolicy())) {
                                        hashSet11.add(i44);
                                    }
                                }
                            }
                        }
                    }
                    i13 = i39;
                    for (I i45 : hashSet11) {
                        Set<String> set3 = set2;
                        if (!set3.contains(i45.getValidPolicy())) {
                            i13 = c.v(i13, arrayListArr, i45);
                        }
                        set2 = set3;
                    }
                    if (i13 != null) {
                        for (int i46 = this.f102392u - 1; i46 >= 0; i46--) {
                            ArrayList arrayList6 = arrayListArr[i46];
                            for (int i47 = i12; i47 < arrayList6.size(); i47++) {
                                I i48 = (I) arrayList6.get(i47);
                                if (!i48.c()) {
                                    i13 = c.v(i13, arrayListArr, i48);
                                }
                            }
                        }
                    }
                } else if (!this.f102388q.isExplicitPolicyRequired()) {
                    i13 = i39;
                } else {
                    if (hashSet5.isEmpty()) {
                        throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.explicitPolicy"), this.f102387p, size);
                    }
                    HashSet hashSet12 = new HashSet();
                    for (int i49 = i12; i49 < i38; i49++) {
                        ArrayList arrayList7 = arrayListArr[i49];
                        for (int i50 = i12; i50 < arrayList7.size(); i50++) {
                            I i51 = (I) arrayList7.get(i50);
                            if ("2.5.29.32.0".equals(i51.getValidPolicy())) {
                                Iterator children3 = i51.getChildren();
                                while (children3.hasNext()) {
                                    hashSet12.add(children3.next());
                                }
                            }
                        }
                    }
                    Iterator<E> it2 = hashSet12.iterator();
                    while (it2.hasNext()) {
                        hashSet5.contains(((I) it2.next()).getValidPolicy());
                    }
                    i13 = i39;
                    for (int i52 = this.f102392u - 1; i52 >= 0; i52--) {
                        ArrayList arrayList8 = arrayListArr[i52];
                        for (int i53 = i12; i53 < arrayList8.size(); i53++) {
                            I i54 = (I) arrayList8.get(i53);
                            if (!i54.c()) {
                                i13 = c.v(i13, arrayListArr, i54);
                            }
                        }
                    }
                }
                if (i11 <= 0 && i13 == null) {
                    throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.invalidPolicy"));
                }
            } catch (AnnotatedException unused3) {
                throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.policyConstExtError"), this.f102387p, size);
            }
        } catch (CertPathReviewerException e25) {
            A(e25.getErrorMessage(), e25.getIndex());
        }
    }

    public void I(PKIXParameters pKIXParameters, X509Certificate x509Certificate, Date date, X509Certificate x509Certificate2, PublicKey publicKey, Vector vector, Vector vector2, int i10) throws CertPathReviewerException {
        D(pKIXParameters, x509Certificate, date, x509Certificate2, publicKey, vector, i10);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:(2:90|91)|(4:(16:93|94|95|(12:97|98|(2:101|99)|102|103|(2:106|104)|107|108|109|110|111|112)|119|98|(1:99)|102|103|(1:104)|107|108|109|110|111|112)|110|111|112)|122|94|95|(0)|119|98|(1:99)|102|103|(1:104)|107|108|109) */
    /* JADX WARN: Can't wrap try/catch for region: R(16:31|(2:135|136)(2:33|(2:129|130)(3:35|(2:39|(1:41))|42))|(2:43|44)|45|(19:90|91|(16:93|94|95|(12:97|98|(2:101|99)|102|103|(2:106|104)|107|108|109|110|111|112)|119|98|(1:99)|102|103|(1:104)|107|108|109|110|111|112)|122|94|95|(0)|119|98|(1:99)|102|103|(1:104)|107|108|109|110|111|112)(1:47)|(1:51)|52|(7:54|(1:58)|59|60|(2:62|(1:64))(1:86)|65|(9:67|(1:84)|71|72|73|75|76|78|79))(1:89)|85|71|72|73|75|76|78|79) */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0304, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0305, code lost:
    
        r17 = r4;
        r15 = r6;
        r18 = r7;
        r24 = r8;
        r13 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x028f, code lost:
    
        A(new org.bouncycastle.i18n.a(org.bouncycastle.x509.i.f102385E, "CertPathReviewer.crlAuthInfoAccError"), r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x03c1, code lost:
    
        A(new org.bouncycastle.i18n.a(org.bouncycastle.x509.i.f102385E, "CertPathReviewer.pubKeyError"), r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x03bf, code lost:
    
        r8 = r24;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x02ac A[LOOP:1: B:99:0x02a6->B:101:0x02ac, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02cf A[LOOP:2: B:104:0x02c9->B:106:0x02cf, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:10:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0317  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0348  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x03a7  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x026a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x028a A[Catch: AnnotatedException -> 0x028f, TRY_LEAVE, TryCatch #3 {AnnotatedException -> 0x028f, blocks: (B:95:0x0282, B:97:0x028a), top: B:94:0x0282 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void J() {
        TrustAnchor trustAnchor;
        TrustAnchor trustAnchor2;
        X500Principal x500Principal;
        X509Certificate x509Certificate;
        PublicKey publicKey;
        int size;
        org.bouncycastle.i18n.a aVar;
        org.bouncycastle.i18n.a aVar2;
        C13501m c13501m;
        C13498j c13498j;
        Iterator it;
        Iterator it2;
        X509Certificate x509Certificate2;
        int i10;
        int i11;
        PublicKey publicKey2;
        X500Principal x500Principal2;
        int i12;
        B g10;
        B g11;
        X509Certificate x509Certificate3;
        char c10;
        C13499k y10;
        C13482F v10;
        boolean[] keyUsage;
        B(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.certPathValidDate", new Object[]{new C13992d(this.f102390s), new C13992d(this.f102389r)}));
        try {
            List list = this.f102391t;
            X509Certificate x509Certificate4 = (X509Certificate) list.get(list.size() - 1);
            Collection X10 = X(x509Certificate4, this.f102388q.getTrustAnchors());
            if (X10.size() > 1) {
                z(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.conflictingTrustAnchors", new Object[]{org.bouncycastle.util.k.j(X10.size()), new C13993e(x509Certificate4.getIssuerX500Principal())}));
            } else if (X10.isEmpty()) {
                z(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.noTrustAnchorFound", new Object[]{new C13993e(x509Certificate4.getIssuerX500Principal()), org.bouncycastle.util.k.j(this.f102388q.getTrustAnchors().size())}));
            } else {
                trustAnchor = (TrustAnchor) X10.iterator().next();
                try {
                    try {
                        try {
                            c.x(x509Certificate4, trustAnchor.getTrustedCert() != null ? trustAnchor.getTrustedCert().getPublicKey() : trustAnchor.getCAPublicKey(), this.f102388q.getSigProvider());
                        } catch (SignatureException unused) {
                            z(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.trustButInvalidCert"));
                        } catch (Exception unused2) {
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        z(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.unknown", new Object[]{new C13993e(th.getMessage()), new C13993e(th)}));
                        trustAnchor2 = trustAnchor;
                        if (trustAnchor2 != null) {
                        }
                        if (trustAnchor2 != null) {
                        }
                        X509Certificate x509Certificate5 = x509Certificate;
                        X500Principal x500Principal3 = x500Principal;
                        PublicKey publicKey3 = publicKey;
                        size = this.f102391t.size() - 1;
                        while (size >= 0) {
                        }
                        this.f102395x = trustAnchor2;
                        this.f102396y = publicKey3;
                    }
                } catch (CertPathReviewerException e10) {
                    e = e10;
                    z(e.getErrorMessage());
                    trustAnchor2 = trustAnchor;
                    if (trustAnchor2 != null) {
                    }
                    if (trustAnchor2 != null) {
                    }
                    X509Certificate x509Certificate52 = x509Certificate;
                    X500Principal x500Principal32 = x500Principal;
                    PublicKey publicKey32 = publicKey;
                    size = this.f102391t.size() - 1;
                    while (size >= 0) {
                    }
                    this.f102395x = trustAnchor2;
                    this.f102396y = publicKey32;
                }
            }
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
                x500Principal = trustedCert != null ? c.m(trustedCert) : new X500Principal(trustAnchor2.getCAName());
            } catch (IllegalArgumentException unused3) {
                z(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.trustDNInvalid", new Object[]{new C13993e(trustAnchor2.getCAName())}));
                x500Principal = null;
            }
            if (trustedCert != null && (keyUsage = trustedCert.getKeyUsage()) != null && (keyUsage.length <= 5 || !keyUsage[5])) {
                B(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.trustKeyUsage"));
            }
        } else {
            x500Principal = null;
        }
        if (trustAnchor2 != null) {
            x509Certificate = trustAnchor2.getTrustedCert();
            publicKey = x509Certificate != null ? x509Certificate.getPublicKey() : trustAnchor2.getCAPublicKey();
            try {
                C13486b d10 = c.d(publicKey);
                d10.u();
                d10.x();
            } catch (CertPathValidatorException unused4) {
                z(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.trustPubKeyError"));
            }
        } else {
            x509Certificate = null;
            publicKey = null;
        }
        X509Certificate x509Certificate522 = x509Certificate;
        X500Principal x500Principal322 = x500Principal;
        PublicKey publicKey322 = publicKey;
        size = this.f102391t.size() - 1;
        while (size >= 0) {
            int i13 = this.f102392u - size;
            X509Certificate x509Certificate6 = (X509Certificate) this.f102391t.get(size);
            if (publicKey322 != null) {
                try {
                    c.x(x509Certificate6, publicKey322, this.f102388q.getSigProvider());
                } catch (GeneralSecurityException e12) {
                    aVar = new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.signatureNotVerified", new Object[]{e12.getMessage(), e12, e12.getClass().getName()});
                    A(aVar, size);
                    x509Certificate6.checkValidity(this.f102390s);
                    if (this.f102388q.isRevocationEnabled()) {
                    }
                    if (x500Principal2 != null) {
                    }
                    if (i10 == this.f102392u) {
                    }
                    c10 = 5;
                    x500Principal322 = x509Certificate3.getSubjectX500Principal();
                    publicKey322 = c.i(this.f102391t, i12);
                    C13486b d11 = c.d(publicKey322);
                    d11.u();
                    d11.x();
                    size = i12 - 1;
                    x509Certificate522 = x509Certificate3;
                }
            } else if (c.q(x509Certificate6)) {
                try {
                    c.x(x509Certificate6, x509Certificate6.getPublicKey(), this.f102388q.getSigProvider());
                    A(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.rootKeyIsValidButNotATrustAnchor"), size);
                } catch (GeneralSecurityException e13) {
                    aVar = new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.signatureNotVerified", new Object[]{e13.getMessage(), e13, e13.getClass().getName()});
                    A(aVar, size);
                    x509Certificate6.checkValidity(this.f102390s);
                    if (this.f102388q.isRevocationEnabled()) {
                    }
                    if (x500Principal2 != null) {
                        A(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.certWrongIssuer", new Object[]{x500Principal2.getName(), x509Certificate2.getIssuerX500Principal().getName()}), i12);
                    }
                    if (i10 == this.f102392u) {
                    }
                    c10 = 5;
                    x500Principal322 = x509Certificate3.getSubjectX500Principal();
                    publicKey322 = c.i(this.f102391t, i12);
                    C13486b d112 = c.d(publicKey322);
                    d112.u();
                    d112.x();
                    size = i12 - 1;
                    x509Certificate522 = x509Certificate3;
                }
            } else {
                org.bouncycastle.i18n.a aVar3 = new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.NoIssuerPublicKey");
                byte[] extensionValue = x509Certificate6.getExtensionValue(C13478B.f90547w.J());
                if (extensionValue != null && (v10 = (y10 = C13499k.y(AbstractC14551y.F(extensionValue).H())).v()) != null) {
                    C13481E c13481e = v10.y()[0];
                    BigInteger x10 = y10.x();
                    if (x10 != null) {
                        aVar3.l(new Object[]{new org.bouncycastle.i18n.b(f102385E, "missingIssuer"), " \"", c13481e, "\" ", new org.bouncycastle.i18n.b(f102385E, "missingSerial"), " ", x10});
                    }
                }
                A(aVar3, size);
            }
            try {
                x509Certificate6.checkValidity(this.f102390s);
            } catch (CertificateExpiredException unused5) {
                aVar2 = new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.certificateExpired", new Object[]{new C13992d(x509Certificate6.getNotAfter())});
                A(aVar2, size);
                if (this.f102388q.isRevocationEnabled()) {
                }
                if (x500Principal2 != null) {
                }
                if (i10 == this.f102392u) {
                }
                c10 = 5;
                x500Principal322 = x509Certificate3.getSubjectX500Principal();
                publicKey322 = c.i(this.f102391t, i12);
                C13486b d1122 = c.d(publicKey322);
                d1122.u();
                d1122.x();
                size = i12 - 1;
                x509Certificate522 = x509Certificate3;
            } catch (CertificateNotYetValidException unused6) {
                aVar2 = new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.certificateNotYetValid", new Object[]{new C13992d(x509Certificate6.getNotBefore())});
                A(aVar2, size);
                if (this.f102388q.isRevocationEnabled()) {
                }
                if (x500Principal2 != null) {
                }
                if (i10 == this.f102392u) {
                }
                c10 = 5;
                x500Principal322 = x509Certificate3.getSubjectX500Principal();
                publicKey322 = c.i(this.f102391t, i12);
                C13486b d11222 = c.d(publicKey322);
                d11222.u();
                d11222.x();
                size = i12 - 1;
                x509Certificate522 = x509Certificate3;
            }
            if (this.f102388q.isRevocationEnabled()) {
                try {
                    g11 = c.g(x509Certificate6, f102383C);
                } catch (AnnotatedException unused7) {
                    A(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.crlDistPtExtError"), size);
                }
                try {
                    if (g11 != null) {
                        c13501m = C13501m.w(g11);
                        g10 = c.g(x509Certificate6, f102384D);
                        if (g10 != null) {
                            c13498j = C13498j.y(g10);
                            Vector M10 = M(c13501m);
                            Vector T10 = T(c13498j);
                            it = M10.iterator();
                            while (it.hasNext()) {
                                C(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.crlDistPoint", new Object[]{new C13994f(it.next())}), size);
                            }
                            it2 = T10.iterator();
                            while (it2.hasNext()) {
                                C(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.ocspLocation", new Object[]{new C13994f(it2.next())}), size);
                            }
                            x509Certificate2 = x509Certificate6;
                            i10 = i13;
                            i11 = size;
                            publicKey2 = publicKey322;
                            x500Principal2 = x500Principal322;
                            I(this.f102388q, x509Certificate6, this.f102390s, x509Certificate522, publicKey322, M10, T10, i11);
                            i12 = i11;
                        }
                        c13498j = null;
                        Vector M102 = M(c13501m);
                        Vector T102 = T(c13498j);
                        it = M102.iterator();
                        while (it.hasNext()) {
                        }
                        it2 = T102.iterator();
                        while (it2.hasNext()) {
                        }
                        x509Certificate2 = x509Certificate6;
                        i10 = i13;
                        i11 = size;
                        publicKey2 = publicKey322;
                        x500Principal2 = x500Principal322;
                        I(this.f102388q, x509Certificate6, this.f102390s, x509Certificate522, publicKey322, M102, T102, i11);
                        i12 = i11;
                    }
                    I(this.f102388q, x509Certificate6, this.f102390s, x509Certificate522, publicKey322, M102, T102, i11);
                    i12 = i11;
                } catch (CertPathReviewerException e14) {
                    e = e14;
                    i12 = i11;
                    A(e.getErrorMessage(), i12);
                    if (x500Principal2 != null) {
                    }
                    if (i10 == this.f102392u) {
                    }
                    c10 = 5;
                    x500Principal322 = x509Certificate3.getSubjectX500Principal();
                    publicKey322 = c.i(this.f102391t, i12);
                    C13486b d112222 = c.d(publicKey322);
                    d112222.u();
                    d112222.x();
                    size = i12 - 1;
                    x509Certificate522 = x509Certificate3;
                }
                c13501m = null;
                g10 = c.g(x509Certificate6, f102384D);
                if (g10 != null) {
                }
                c13498j = null;
                Vector M1022 = M(c13501m);
                Vector T1022 = T(c13498j);
                it = M1022.iterator();
                while (it.hasNext()) {
                }
                it2 = T1022.iterator();
                while (it2.hasNext()) {
                }
                x509Certificate2 = x509Certificate6;
                i10 = i13;
                i11 = size;
                publicKey2 = publicKey322;
                x500Principal2 = x500Principal322;
            } else {
                x509Certificate2 = x509Certificate6;
                i10 = i13;
                i12 = size;
                publicKey2 = publicKey322;
                x500Principal2 = x500Principal322;
            }
            if (x500Principal2 != null && !x509Certificate2.getIssuerX500Principal().equals(x500Principal2)) {
                A(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.certWrongIssuer", new Object[]{x500Principal2.getName(), x509Certificate2.getIssuerX500Principal().getName()}), i12);
            }
            if (i10 == this.f102392u) {
                x509Certificate3 = x509Certificate2;
                if (x509Certificate3 != null && x509Certificate3.getVersion() == 1) {
                    A(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.noCACert"), i12);
                }
                try {
                    C13500l v11 = C13500l.v(c.g(x509Certificate3, c.f102350b));
                    if (v11 == null) {
                        A(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.noBasicConstraints"), i12);
                    } else if (!v11.z()) {
                        A(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.noCACert"), i12);
                    }
                } catch (AnnotatedException unused8) {
                    A(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.errorProcesingBC"), i12);
                }
                boolean[] keyUsage2 = x509Certificate3.getKeyUsage();
                if (keyUsage2 != null) {
                    c10 = 5;
                    if (keyUsage2.length <= 5 || !keyUsage2[5]) {
                        A(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.noCertSign"), i12);
                    }
                    x500Principal322 = x509Certificate3.getSubjectX500Principal();
                    publicKey322 = c.i(this.f102391t, i12);
                    C13486b d1122222 = c.d(publicKey322);
                    d1122222.u();
                    d1122222.x();
                    size = i12 - 1;
                    x509Certificate522 = x509Certificate3;
                }
            } else {
                x509Certificate3 = x509Certificate2;
            }
            c10 = 5;
            x500Principal322 = x509Certificate3.getSubjectX500Principal();
            publicKey322 = c.i(this.f102391t, i12);
            C13486b d11222222 = c.d(publicKey322);
            d11222222.u();
            d11222222.x();
            size = i12 - 1;
            x509Certificate522 = x509Certificate3;
        }
        this.f102395x = trustAnchor2;
        this.f102396y = publicKey322;
    }

    public void K() {
        if (!this.f102386A) {
            throw new IllegalStateException("Object not initialized. Call init() first.");
        }
        if (this.f102393v != null) {
            return;
        }
        int i10 = this.f102392u;
        this.f102393v = new List[i10 + 1];
        this.f102394w = new List[i10 + 1];
        int i11 = 0;
        while (true) {
            List[] listArr = this.f102393v;
            if (i11 >= listArr.length) {
                J();
                F();
                G();
                H();
                E();
                return;
            }
            listArr[i11] = new ArrayList();
            this.f102394w[i11] = new ArrayList();
            i11++;
        }
    }

    public final X509CRL L(String str) throws CertPathReviewerException {
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
            throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.loadCrlDistPointError", new Object[]{new C13993e(str), e10.getMessage(), e10, e10.getClass().getName()}));
        }
    }

    public Vector M(C13501m c13501m) {
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

    public CertPath N() {
        return this.f102387p;
    }

    public int O() {
        return this.f102392u;
    }

    public List P(int i10) {
        K();
        return this.f102394w[i10 + 1];
    }

    public List[] Q() {
        K();
        return this.f102394w;
    }

    public List R(int i10) {
        K();
        return this.f102393v[i10 + 1];
    }

    public List[] S() {
        K();
        return this.f102393v;
    }

    public Vector T(C13498j c13498j) {
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

    public PolicyNode U() {
        K();
        return this.f102397z;
    }

    public PublicKey V() {
        K();
        return this.f102396y;
    }

    public TrustAnchor W() {
        K();
        return this.f102395x;
    }

    public Collection X(X509Certificate x509Certificate, Set set) throws CertPathReviewerException {
        ArrayList arrayList = new ArrayList();
        Iterator it = set.iterator();
        X509CertSelector x509CertSelector = new X509CertSelector();
        try {
            x509CertSelector.setSubject(c.f(x509Certificate).getEncoded());
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
                } else if (trustAnchor.getCAName() != null && trustAnchor.getCAPublicKey() != null && c.f(x509Certificate).equals(new X500Principal(trustAnchor.getCAName()))) {
                    arrayList.add(trustAnchor);
                }
            }
            return arrayList;
        } catch (IOException unused) {
            throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.trustAnchorIssuerError"));
        }
    }

    public void Y(CertPath certPath, PKIXParameters pKIXParameters) throws CertPathReviewerException {
        if (this.f102386A) {
            throw new IllegalStateException("object is already initialized!");
        }
        this.f102386A = true;
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
                this.f102387p = CertificateFactory.getInstance("X.509", C14720a.f101701e).generateCertPath(arrayList);
                this.f102391t = arrayList;
            } catch (GeneralSecurityException unused) {
                throw new IllegalStateException("unable to rebuild certpath");
            }
        } else {
            this.f102387p = certPath;
            this.f102391t = certPath.getCertificates();
        }
        this.f102392u = this.f102391t.size();
        if (this.f102391t.isEmpty()) {
            throw new CertPathReviewerException(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.emptyCertPath"));
        }
        this.f102388q = (PKIXParameters) pKIXParameters.clone();
        Date date = new Date();
        this.f102389r = date;
        this.f102390s = c.n(this.f102388q, date);
        this.f102393v = null;
        this.f102394w = null;
        this.f102395x = null;
        this.f102396y = null;
        this.f102397z = null;
    }

    public boolean Z() {
        K();
        int i10 = 0;
        while (true) {
            List[] listArr = this.f102394w;
            if (i10 >= listArr.length) {
                return true;
            }
            if (!listArr[i10].isEmpty()) {
                return false;
            }
            i10++;
        }
    }

    public final boolean a0(X509Certificate x509Certificate, int i10) {
        org.bouncycastle.i18n.a aVar;
        try {
            E e10 = (E) c.g(x509Certificate, f102382B);
            boolean z10 = false;
            for (int i11 = 0; i11 < e10.size(); i11++) {
                C13742e u10 = C13742e.u(e10.I(i11));
                if (InterfaceC13739b.f92274k5.A(u10.v())) {
                    aVar = new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.QcEuCompliance");
                } else {
                    if (!InterfaceC13743f.f92293t5.A(u10.v())) {
                        if (InterfaceC13739b.f92277n5.A(u10.v())) {
                            aVar = new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.QcSSCD");
                        } else if (InterfaceC13739b.f92275l5.A(u10.v())) {
                            C13741d y10 = C13741d.y(u10.x());
                            y10.v();
                            double doubleValue = y10.u().doubleValue() * Math.pow(10.0d, y10.x().doubleValue());
                            C(y10.v().y() ? new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.QcLimitValueAlpha", new Object[]{y10.v().u(), new C13992d(new Double(doubleValue)), y10}) : new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.QcLimitValueNum", new Object[]{org.bouncycastle.util.k.j(y10.v().x()), new C13992d(new Double(doubleValue)), y10}), i10);
                        } else {
                            C(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.QcUnknownStatement", new Object[]{u10.v(), new C13993e(u10)}), i10);
                            z10 = true;
                        }
                    }
                }
                C(aVar, i10);
            }
            return !z10;
        } catch (AnnotatedException unused) {
            A(new org.bouncycastle.i18n.a(f102385E, "CertPathReviewer.QcStatementExtError"), i10);
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

    public void z(org.bouncycastle.i18n.a aVar) {
        this.f102394w[0].add(aVar);
    }

    public i(CertPath certPath, PKIXParameters pKIXParameters) throws CertPathReviewerException {
        Y(certPath, pKIXParameters);
    }
}
