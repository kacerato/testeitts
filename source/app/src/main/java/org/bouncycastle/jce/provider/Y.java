package org.bouncycastle.jce.provider;

import ei.C13155a;
import fi.C13228d;
import fk.InterfaceC13250p;
import hi.C13478B;
import hi.C13479C;
import hi.C13481E;
import hi.C13486b;
import hi.C13500l;
import hi.C13505q;
import java.io.IOException;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Principal;
import java.security.Provider;
import java.security.PublicKey;
import java.security.Security;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import oh.A0;
import oh.AbstractC14508c;
import oh.AbstractC14536q;
import oh.AbstractC14551y;
import oh.C14539s;
import oh.C14549x;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import yj.InterfaceC16198c;

public class Y extends X509Certificate implements InterfaceC13250p {

    public C13505q f101687b;

    public C13500l f101688c;

    public boolean[] f101689d;

    public boolean f101690e;

    public int f101691f;

    public InterfaceC13250p f101692g = new org.bouncycastle.jcajce.provider.asymmetric.util.m();

    public Y(C13505q c13505q) throws CertificateParsingException {
        this.f101687b = c13505q;
        try {
            byte[] i10 = i("2.5.29.19");
            if (i10 != null) {
                this.f101688c = C13500l.v(oh.B.B(i10));
            }
            try {
                byte[] i11 = i("2.5.29.15");
                if (i11 == null) {
                    this.f101689d = null;
                    return;
                }
                AbstractC14508c H10 = AbstractC14508c.H(oh.B.B(i11));
                byte[] F10 = H10.F();
                int length = (F10.length * 8) - H10.n();
                int i12 = 9;
                if (length >= 9) {
                    i12 = length;
                }
                this.f101689d = new boolean[i12];
                for (int i13 = 0; i13 != length; i13++) {
                    this.f101689d[i13] = (F10[i13 / 8] & (128 >>> (i13 % 8))) != 0;
                }
            } catch (Exception e10) {
                throw new CertificateParsingException("cannot construct KeyUsage: " + ((Object) e10));
            }
        } catch (Exception e11) {
            throw new CertificateParsingException("cannot construct BasicConstraints: " + ((Object) e11));
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0033. Please report as an issue. */
    public static Collection h(byte[] bArr) throws CertificateParsingException {
        String string;
        if (bArr == null) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            Enumeration J10 = oh.E.G(bArr).J();
            while (J10.hasMoreElements()) {
                C13481E v10 = C13481E.v(J10.nextElement());
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(org.bouncycastle.util.k.j(v10.g()));
                switch (v10.g()) {
                    case 0:
                    case 3:
                    case 5:
                        arrayList2.add(v10.getEncoded());
                        arrayList.add(Collections.unmodifiableList(arrayList2));
                    case 1:
                    case 2:
                    case 6:
                        string = ((oh.J) v10.x()).getString();
                        arrayList2.add(string);
                        arrayList.add(Collections.unmodifiableList(arrayList2));
                    case 4:
                        string = C13228d.w(gi.e.f89996V, v10.x()).toString();
                        arrayList2.add(string);
                        arrayList.add(Collections.unmodifiableList(arrayList2));
                    case 7:
                        try {
                            string = InetAddress.getByAddress(AbstractC14551y.F(v10.x()).H()).getHostAddress();
                            arrayList2.add(string);
                            arrayList.add(Collections.unmodifiableList(arrayList2));
                        } catch (UnknownHostException unused) {
                        }
                    case 8:
                        string = C14549x.K(v10.x()).J();
                        arrayList2.add(string);
                        arrayList.add(Collections.unmodifiableList(arrayList2));
                    default:
                        throw new IOException("Bad tag number: " + v10.g());
                }
            }
            if (arrayList.size() == 0) {
                return null;
            }
            return Collections.unmodifiableCollection(arrayList);
        } catch (Exception e10) {
            throw new CertificateParsingException(e10.getMessage());
        }
    }

    @Override
    public void a(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f101692g.a(c14549x, interfaceC14516g);
    }

    @Override
    public InterfaceC14516g c(C14549x c14549x) {
        return this.f101692g.c(c14549x);
    }

    @Override
    public void checkValidity() throws CertificateExpiredException, CertificateNotYetValidException {
        checkValidity(new Date());
    }

    @Override
    public Enumeration d() {
        return this.f101692g.d();
    }

    public final int e() {
        try {
            byte[] encoded = getEncoded();
            int i10 = 0;
            for (int i11 = 1; i11 < encoded.length; i11++) {
                i10 += encoded[i11] * i11;
            }
            return i10;
        } catch (CertificateEncodingException unused) {
            return 0;
        }
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Certificate)) {
            return false;
        }
        try {
            return org.bouncycastle.util.a.g(getEncoded(), ((Certificate) obj).getEncoded());
        } catch (CertificateEncodingException unused) {
            return false;
        }
    }

    public final void g(PublicKey publicKey, Signature signature) throws CertificateException, NoSuchAlgorithmException, SignatureException, InvalidKeyException {
        if (!j(this.f101687b.A(), this.f101687b.E().B())) {
            throw new CertificateException("signature algorithm in TBS cert not same as outer cert");
        }
        a0.c(signature, this.f101687b.A().x());
        signature.initVerify(publicKey);
        signature.update(getTBSCertificate());
        if (!signature.verify(getSignature())) {
            throw new SignatureException("certificate does not verify with supplied key");
        }
    }

    @Override
    public int getBasicConstraints() {
        C13500l c13500l = this.f101688c;
        if (c13500l == null || !c13500l.z()) {
            return -1;
        }
        C14539s y10 = this.f101688c.y();
        if (y10 == null) {
            return Integer.MAX_VALUE;
        }
        return y10.M();
    }

    @Override
    public Set getCriticalExtensionOIDs() {
        if (getVersion() != 3) {
            return null;
        }
        HashSet hashSet = new HashSet();
        C13479C v10 = this.f101687b.E().v();
        if (v10 == null) {
            return null;
        }
        Enumeration F10 = v10.F();
        while (F10.hasMoreElements()) {
            C14549x c14549x = (C14549x) F10.nextElement();
            if (v10.x(c14549x).B()) {
                hashSet.add(c14549x.J());
            }
        }
        return hashSet;
    }

    @Override
    public byte[] getEncoded() throws CertificateEncodingException {
        try {
            return this.f101687b.s(InterfaceC14520i.f98892a);
        } catch (IOException e10) {
            throw new CertificateEncodingException(e10.toString());
        }
    }

    @Override
    public List getExtendedKeyUsage() throws CertificateParsingException {
        byte[] i10 = i("2.5.29.37");
        if (i10 == null) {
            return null;
        }
        try {
            oh.E e10 = (oh.E) new oh.r(i10).k();
            ArrayList arrayList = new ArrayList();
            for (int i11 = 0; i11 != e10.size(); i11++) {
                arrayList.add(((C14549x) e10.I(i11)).J());
            }
            return Collections.unmodifiableList(arrayList);
        } catch (Exception unused) {
            throw new CertificateParsingException("error processing extended key usage extension");
        }
    }

    @Override
    public byte[] getExtensionValue(String str) {
        C13478B x10;
        C13479C v10 = this.f101687b.E().v();
        if (v10 == null || (x10 = v10.x(new C14549x(str))) == null) {
            return null;
        }
        try {
            return x10.y().getEncoded();
        } catch (Exception e10) {
            throw new IllegalStateException("error parsing " + e10.toString());
        }
    }

    @Override
    public Collection getIssuerAlternativeNames() throws CertificateParsingException {
        return h(i(C13478B.f90534j.J()));
    }

    @Override
    public Principal getIssuerDN() {
        return new org.bouncycastle.jce.j(this.f101687b.x());
    }

    @Override
    public boolean[] getIssuerUniqueID() {
        AbstractC14508c z10 = this.f101687b.E().z();
        if (z10 == null) {
            return null;
        }
        byte[] F10 = z10.F();
        int length = (F10.length * 8) - z10.n();
        boolean[] zArr = new boolean[length];
        for (int i10 = 0; i10 != length; i10++) {
            zArr[i10] = (F10[i10 / 8] & (128 >>> (i10 % 8))) != 0;
        }
        return zArr;
    }

    @Override
    public X500Principal getIssuerX500Principal() {
        try {
            return new X500Principal(this.f101687b.x().getEncoded());
        } catch (IOException unused) {
            throw new IllegalStateException("can't encode issuer DN");
        }
    }

    @Override
    public boolean[] getKeyUsage() {
        return this.f101689d;
    }

    @Override
    public Set getNonCriticalExtensionOIDs() {
        if (getVersion() != 3) {
            return null;
        }
        HashSet hashSet = new HashSet();
        C13479C v10 = this.f101687b.E().v();
        if (v10 == null) {
            return null;
        }
        Enumeration F10 = v10.F();
        while (F10.hasMoreElements()) {
            C14549x c14549x = (C14549x) F10.nextElement();
            if (!v10.x(c14549x).B()) {
                hashSet.add(c14549x.J());
            }
        }
        return hashSet;
    }

    @Override
    public Date getNotAfter() {
        return this.f101687b.u().u();
    }

    @Override
    public Date getNotBefore() {
        return this.f101687b.B().u();
    }

    @Override
    public PublicKey getPublicKey() {
        try {
            return C14720a.q(this.f101687b.D());
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public BigInteger getSerialNumber() {
        return this.f101687b.y().I();
    }

    @Override
    public String getSigAlgName() {
        Provider provider = Security.getProvider(C14720a.f101701e);
        if (provider != null) {
            String property = provider.getProperty("Alg.Alias.Signature." + getSigAlgOID());
            if (property != null) {
                return property;
            }
        }
        Provider[] providers = Security.getProviders();
        for (int i10 = 0; i10 != providers.length; i10++) {
            String property2 = providers[i10].getProperty("Alg.Alias.Signature." + getSigAlgOID());
            if (property2 != null) {
                return property2;
            }
        }
        return getSigAlgOID();
    }

    @Override
    public String getSigAlgOID() {
        return this.f101687b.A().u().J();
    }

    @Override
    public byte[] getSigAlgParams() {
        if (this.f101687b.A().x() != null) {
            try {
                return this.f101687b.A().x().r().s(InterfaceC14520i.f98892a);
            } catch (IOException unused) {
            }
        }
        return null;
    }

    @Override
    public byte[] getSignature() {
        return this.f101687b.z().J();
    }

    @Override
    public Collection getSubjectAlternativeNames() throws CertificateParsingException {
        return h(i(C13478B.f90533i.J()));
    }

    @Override
    public Principal getSubjectDN() {
        return new org.bouncycastle.jce.j(this.f101687b.C());
    }

    @Override
    public boolean[] getSubjectUniqueID() {
        AbstractC14508c F10 = this.f101687b.E().F();
        if (F10 == null) {
            return null;
        }
        byte[] F11 = F10.F();
        int length = (F11.length * 8) - F10.n();
        boolean[] zArr = new boolean[length];
        for (int i10 = 0; i10 != length; i10++) {
            zArr[i10] = (F11[i10 / 8] & (128 >>> (i10 % 8))) != 0;
        }
        return zArr;
    }

    @Override
    public X500Principal getSubjectX500Principal() {
        try {
            return new X500Principal(this.f101687b.C().getEncoded());
        } catch (IOException unused) {
            throw new IllegalStateException("can't encode issuer DN");
        }
    }

    @Override
    public byte[] getTBSCertificate() throws CertificateEncodingException {
        try {
            return this.f101687b.E().s(InterfaceC14520i.f98892a);
        } catch (IOException e10) {
            throw new CertificateEncodingException(e10.toString());
        }
    }

    @Override
    public int getVersion() {
        return this.f101687b.G();
    }

    @Override
    public boolean hasUnsupportedCriticalExtension() {
        C13479C v10;
        if (getVersion() != 3 || (v10 = this.f101687b.E().v()) == null) {
            return false;
        }
        Enumeration F10 = v10.F();
        while (F10.hasMoreElements()) {
            C14549x c14549x = (C14549x) F10.nextElement();
            String J10 = c14549x.J();
            if (!J10.equals(N.f101651n) && !J10.equals(N.f101639b) && !J10.equals(N.f101640c) && !J10.equals(N.f101641d) && !J10.equals(N.f101647j) && !J10.equals(N.f101642e) && !J10.equals(N.f101644g) && !J10.equals(N.f101645h) && !J10.equals(N.f101646i) && !J10.equals(N.f101648k) && !J10.equals(N.f101649l) && v10.x(c14549x).B()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public synchronized int hashCode() {
        try {
            if (!this.f101690e) {
                this.f101691f = e();
                this.f101690e = true;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f101691f;
    }

    public final byte[] i(String str) {
        C13478B x10;
        C13479C v10 = this.f101687b.E().v();
        if (v10 == null || (x10 = v10.x(new C14549x(str))) == null) {
            return null;
        }
        return x10.y().H();
    }

    public final boolean j(C13486b c13486b, C13486b c13486b2) {
        if (c13486b.u().A(c13486b2.u())) {
            return c13486b.x() == null ? c13486b2.x() == null || c13486b2.x().equals(A0.f98776c) : c13486b2.x() == null ? c13486b.x() == null || c13486b.x().equals(A0.f98776c) : c13486b.x().equals(c13486b2.x());
        }
        return false;
    }

    @Override
    public String toString() {
        Object gVar;
        StringBuffer stringBuffer = new StringBuffer();
        String f10 = org.bouncycastle.util.w.f();
        stringBuffer.append("  [0]         Version: ");
        stringBuffer.append(getVersion());
        stringBuffer.append(f10);
        stringBuffer.append("         SerialNumber: ");
        stringBuffer.append((Object) getSerialNumber());
        stringBuffer.append(f10);
        stringBuffer.append("             IssuerDN: ");
        stringBuffer.append((Object) getIssuerDN());
        stringBuffer.append(f10);
        stringBuffer.append("           Start Date: ");
        stringBuffer.append((Object) getNotBefore());
        stringBuffer.append(f10);
        stringBuffer.append("           Final Date: ");
        stringBuffer.append((Object) getNotAfter());
        stringBuffer.append(f10);
        stringBuffer.append("            SubjectDN: ");
        stringBuffer.append((Object) getSubjectDN());
        stringBuffer.append(f10);
        stringBuffer.append("           Public Key: ");
        stringBuffer.append((Object) getPublicKey());
        stringBuffer.append(f10);
        stringBuffer.append("  Signature Algorithm: ");
        stringBuffer.append(getSigAlgName());
        stringBuffer.append(f10);
        byte[] signature = getSignature();
        stringBuffer.append("            Signature: ");
        stringBuffer.append(new String(em.h.i(signature, 0, 20)));
        stringBuffer.append(f10);
        int i10 = 20;
        while (i10 < signature.length) {
            int length = signature.length - 20;
            stringBuffer.append("                       ");
            stringBuffer.append(i10 < length ? new String(em.h.i(signature, i10, 20)) : new String(em.h.i(signature, i10, signature.length - i10)));
            stringBuffer.append(f10);
            i10 += 20;
        }
        C13479C v10 = this.f101687b.E().v();
        if (v10 != null) {
            Enumeration F10 = v10.F();
            if (F10.hasMoreElements()) {
                stringBuffer.append("       Extensions: \n");
            }
            while (F10.hasMoreElements()) {
                C14549x c14549x = (C14549x) F10.nextElement();
                C13478B x10 = v10.x(c14549x);
                if (x10.y() != null) {
                    oh.r rVar = new oh.r(x10.y().H());
                    stringBuffer.append("                       critical(");
                    stringBuffer.append(x10.B());
                    stringBuffer.append(") ");
                    try {
                    } catch (Exception unused) {
                        stringBuffer.append(c14549x.J());
                        stringBuffer.append(" value = ");
                        stringBuffer.append("*****");
                    }
                    if (c14549x.A(C13478B.f90535k)) {
                        gVar = C13500l.v(rVar.k());
                    } else if (c14549x.A(C13478B.f90531g)) {
                        gVar = hi.N.w(rVar.k());
                    } else if (c14549x.A(InterfaceC16198c.f130367b)) {
                        gVar = new yj.d((AbstractC14508c) rVar.k());
                    } else if (c14549x.A(InterfaceC16198c.f130371d)) {
                        gVar = new yj.e((AbstractC14536q) rVar.k());
                    } else if (c14549x.A(InterfaceC16198c.f130384k)) {
                        gVar = new yj.g((AbstractC14536q) rVar.k());
                    } else {
                        stringBuffer.append(c14549x.J());
                        stringBuffer.append(" value = ");
                        stringBuffer.append(C13155a.c(rVar.k()));
                        stringBuffer.append(f10);
                    }
                    stringBuffer.append(gVar);
                    stringBuffer.append(f10);
                }
                stringBuffer.append(f10);
            }
        }
        return stringBuffer.toString();
    }

    @Override
    public final void verify(PublicKey publicKey) throws CertificateException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, SignatureException {
        Signature signature;
        String b10 = a0.b(this.f101687b.A());
        try {
            signature = Signature.getInstance(b10, C14720a.f101701e);
        } catch (Exception unused) {
            signature = Signature.getInstance(b10);
        }
        g(publicKey, signature);
    }

    @Override
    public void checkValidity(Date date) throws CertificateExpiredException, CertificateNotYetValidException {
        if (date.getTime() > getNotAfter().getTime()) {
            throw new CertificateExpiredException("certificate expired on " + this.f101687b.u().x());
        }
        if (date.getTime() >= getNotBefore().getTime()) {
            return;
        }
        throw new CertificateNotYetValidException("certificate not valid till " + this.f101687b.B().x());
    }

    @Override
    public final void verify(PublicKey publicKey, String str) throws CertificateException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, SignatureException {
        String b10 = a0.b(this.f101687b.A());
        g(publicKey, str != null ? Signature.getInstance(b10, str) : Signature.getInstance(b10));
    }

    @Override
    public final void verify(PublicKey publicKey, Provider provider) throws CertificateException, NoSuchAlgorithmException, InvalidKeyException, SignatureException {
        String b10 = a0.b(this.f101687b.A());
        g(publicKey, provider != null ? Signature.getInstance(b10, provider) : Signature.getInstance(b10));
    }
}
