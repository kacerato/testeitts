package org.bouncycastle.jcajce.provider.asymmetric.x509;

import dk.InterfaceC12950f;
import ei.C13155a;
import fi.C13228d;
import hi.C13478B;
import hi.C13479C;
import hi.C13481E;
import hi.C13486b;
import hi.C13500l;
import hi.C13505q;
import hi.N;
import hi.j0;
import java.io.BufferedOutputStream;
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
import java.security.Signature;
import java.security.SignatureException;
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
import oh.AbstractC14508c;
import oh.AbstractC14536q;
import oh.AbstractC14551y;
import oh.B;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import oh.J;
import oh.r;
import org.bouncycastle.jce.provider.C14720a;
import org.bouncycastle.util.k;
import org.bouncycastle.util.w;
import yj.InterfaceC16198c;

public abstract class h extends X509Certificate implements Ij.a {

    public InterfaceC12950f f101381b;

    public C13505q f101382c;

    public C13500l f101383d;

    public boolean[] f101384e;

    public String f101385f;

    public byte[] f101386g;

    public class a implements d {
        public a() {
        }

        @Override
        public Signature a(String str) throws NoSuchAlgorithmException {
            try {
                return h.this.f101381b.a(str);
            } catch (Exception unused) {
                return Signature.getInstance(str);
            }
        }
    }

    public class b implements d {

        public final String f101388a;

        public b(String str) {
            this.f101388a = str;
        }

        @Override
        public Signature a(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
            String str2 = this.f101388a;
            return str2 != null ? Signature.getInstance(str, str2) : Signature.getInstance(str);
        }
    }

    public class c implements d {

        public final Provider f101390a;

        public c(Provider provider) {
            this.f101390a = provider;
        }

        @Override
        public Signature a(String str) throws NoSuchAlgorithmException {
            Provider provider = this.f101390a;
            return provider != null ? Signature.getInstance(str, provider) : Signature.getInstance(str);
        }
    }

    public h(InterfaceC12950f interfaceC12950f, C13505q c13505q, C13500l c13500l, boolean[] zArr, String str, byte[] bArr) {
        this.f101381b = interfaceC12950f;
        this.f101382c = c13505q;
        this.f101383d = c13500l;
        this.f101384e = zArr;
        this.f101385f = str;
        this.f101386g = bArr;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0037. Please report as an issue. */
    public static Collection k(C13505q c13505q, String str) throws CertificateParsingException {
        String string;
        byte[] l10 = l(c13505q, str);
        if (l10 == null) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            Enumeration J10 = E.G(l10).J();
            while (J10.hasMoreElements()) {
                C13481E v10 = C13481E.v(J10.nextElement());
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(k.j(v10.g()));
                switch (v10.g()) {
                    case 0:
                    case 3:
                    case 5:
                        arrayList2.add(v10.getEncoded());
                        arrayList.add(Collections.unmodifiableList(arrayList2));
                    case 1:
                    case 2:
                    case 6:
                        string = ((J) v10.x()).getString();
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

    public static byte[] l(C13505q c13505q, String str) {
        AbstractC14551y m10 = m(c13505q, str);
        if (m10 != null) {
            return m10.H();
        }
        return null;
    }

    public static AbstractC14551y m(C13505q c13505q, String str) {
        C13478B x10;
        C13479C v10 = c13505q.E().v();
        if (v10 == null || (x10 = v10.x(new C14549x(str))) == null) {
            return null;
        }
        return x10.y();
    }

    @Override
    public void checkValidity() throws CertificateExpiredException, CertificateNotYetValidException {
        checkValidity(new Date());
    }

    @Override
    public j0 e() {
        return this.f101382c.E();
    }

    @Override
    public C13228d g() {
        return this.f101382c.x();
    }

    @Override
    public int getBasicConstraints() {
        C13500l c13500l = this.f101383d;
        if (c13500l == null || !c13500l.z()) {
            return -1;
        }
        C14539s y10 = this.f101383d.y();
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
        C13479C v10 = this.f101382c.E().v();
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
    public List getExtendedKeyUsage() throws CertificateParsingException {
        byte[] l10 = l(this.f101382c, "2.5.29.37");
        if (l10 == null) {
            return null;
        }
        try {
            E G10 = E.G(B.B(l10));
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 != G10.size(); i10++) {
                arrayList.add(((C14549x) G10.I(i10)).J());
            }
            return Collections.unmodifiableList(arrayList);
        } catch (Exception unused) {
            throw new CertificateParsingException("error processing extended key usage extension");
        }
    }

    @Override
    public byte[] getExtensionValue(String str) {
        AbstractC14551y m10 = m(this.f101382c, str);
        if (m10 == null) {
            return null;
        }
        try {
            return m10.getEncoded();
        } catch (Exception e10) {
            throw org.bouncycastle.util.h.b("error parsing " + e10.getMessage(), e10);
        }
    }

    @Override
    public Collection getIssuerAlternativeNames() throws CertificateParsingException {
        return k(this.f101382c, C13478B.f90534j.J());
    }

    @Override
    public Principal getIssuerDN() {
        return new org.bouncycastle.jce.j(this.f101382c.x());
    }

    @Override
    public boolean[] getIssuerUniqueID() {
        AbstractC14508c z10 = this.f101382c.E().z();
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
            return new X500Principal(this.f101382c.x().s(InterfaceC14520i.f98892a));
        } catch (IOException unused) {
            throw new IllegalStateException("can't encode issuer DN");
        }
    }

    @Override
    public boolean[] getKeyUsage() {
        return org.bouncycastle.util.a.x(this.f101384e);
    }

    @Override
    public Set getNonCriticalExtensionOIDs() {
        if (getVersion() != 3) {
            return null;
        }
        HashSet hashSet = new HashSet();
        C13479C v10 = this.f101382c.E().v();
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
        return this.f101382c.u().u();
    }

    @Override
    public Date getNotBefore() {
        return this.f101382c.B().u();
    }

    @Override
    public PublicKey getPublicKey() {
        try {
            return C14720a.q(this.f101382c.D());
        } catch (IOException e10) {
            throw org.bouncycastle.util.h.b("failed to recover public key: " + e10.getMessage(), e10);
        }
    }

    @Override
    public BigInteger getSerialNumber() {
        return this.f101382c.y().I();
    }

    @Override
    public String getSigAlgName() {
        return this.f101385f;
    }

    @Override
    public String getSigAlgOID() {
        return this.f101382c.A().u().J();
    }

    @Override
    public byte[] getSigAlgParams() {
        return org.bouncycastle.util.a.p(this.f101386g);
    }

    @Override
    public byte[] getSignature() {
        return this.f101382c.z().J();
    }

    @Override
    public Collection getSubjectAlternativeNames() throws CertificateParsingException {
        return k(this.f101382c, C13478B.f90533i.J());
    }

    @Override
    public Principal getSubjectDN() {
        return new org.bouncycastle.jce.j(this.f101382c.C());
    }

    @Override
    public boolean[] getSubjectUniqueID() {
        AbstractC14508c F10 = this.f101382c.E().F();
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
            return new X500Principal(this.f101382c.C().s(InterfaceC14520i.f98892a));
        } catch (IOException unused) {
            throw new IllegalStateException("can't encode subject DN");
        }
    }

    @Override
    public byte[] getTBSCertificate() throws CertificateEncodingException {
        try {
            return this.f101382c.E().s(InterfaceC14520i.f98892a);
        } catch (IOException e10) {
            throw new CertificateEncodingException(e10.toString());
        }
    }

    @Override
    public int getVersion() {
        return this.f101382c.G();
    }

    @Override
    public C13228d h() {
        return this.f101382c.C();
    }

    @Override
    public boolean hasUnsupportedCriticalExtension() {
        C13479C v10;
        if (getVersion() != 3 || (v10 = this.f101382c.E().v()) == null) {
            return false;
        }
        Enumeration F10 = v10.F();
        while (F10.hasMoreElements()) {
            C14549x c14549x = (C14549x) F10.nextElement();
            if (!c14549x.A(C13478B.f90531g) && !c14549x.A(C13478B.f90545u) && !c14549x.A(C13478B.f90546v) && !c14549x.A(C13478B.f90515A) && !c14549x.A(C13478B.f90544t) && !c14549x.A(C13478B.f90541q) && !c14549x.A(C13478B.f90540p) && !c14549x.A(C13478B.f90548x) && !c14549x.A(C13478B.f90535k) && !c14549x.A(C13478B.f90533i) && !c14549x.A(C13478B.f90543s) && v10.x(c14549x).B()) {
                return true;
            }
        }
        return false;
    }

    public final void i(PublicKey publicKey, Signature signature, InterfaceC14516g interfaceC14516g, byte[] bArr) throws CertificateException, InvalidKeyException, NoSuchAlgorithmException, SignatureException {
        if (!j.a(this.f101382c.A(), this.f101382c.E().B())) {
            throw new CertificateException("signature algorithm in TBS cert not same as outer cert");
        }
        j.i(signature, interfaceC14516g);
        signature.initVerify(publicKey);
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(Jj.f.b(signature), 512);
            this.f101382c.E().f(bufferedOutputStream, InterfaceC14520i.f98892a);
            bufferedOutputStream.close();
            if (!signature.verify(bArr)) {
                throw new SignatureException("certificate does not verify with supplied key");
            }
        } catch (IOException e10) {
            throw new CertificateEncodingException(e10.toString());
        }
    }

    public final void j(PublicKey publicKey, d dVar) throws CertificateException, NoSuchAlgorithmException, InvalidKeyException, SignatureException, NoSuchProviderException {
        boolean z10 = publicKey instanceof Hj.e;
        int i10 = 0;
        if (z10 && j.f(this.f101382c.A())) {
            List<PublicKey> b10 = ((Hj.e) publicKey).b();
            E G10 = E.G(this.f101382c.A().x());
            E G11 = E.G(this.f101382c.z().J());
            boolean z11 = false;
            while (i10 != b10.size()) {
                if (b10.get(i10) != null) {
                    C13486b v10 = C13486b.v(G10.I(i10));
                    try {
                        i(b10.get(i10), dVar.a(j.d(v10)), v10.x(), AbstractC14508c.H(G11.I(i10)).J());
                        e = null;
                        z11 = true;
                    } catch (SignatureException e10) {
                        e = e10;
                    }
                    if (e != null) {
                        throw e;
                    }
                }
                i10++;
            }
            if (!z11) {
                throw new InvalidKeyException("no matching key found");
            }
            return;
        }
        if (!j.f(this.f101382c.A())) {
            Signature a10 = dVar.a(getSigAlgName());
            if (z10) {
                Hj.e eVar = (Hj.e) publicKey;
                if (InterfaceC16198c.f130355Q.A(eVar.a())) {
                    List<PublicKey> b11 = eVar.b();
                    while (i10 != b11.size()) {
                        try {
                            i(b11.get(i10), a10, this.f101382c.A().x(), getSignature());
                            return;
                        } catch (InvalidKeyException unused) {
                            i10++;
                        }
                    }
                    throw new InvalidKeyException("no matching signature found");
                }
            }
            i(publicKey, a10, this.f101382c.A().x(), getSignature());
            return;
        }
        E G12 = E.G(this.f101382c.A().x());
        E G13 = E.G(this.f101382c.z().J());
        boolean z12 = false;
        while (i10 != G13.size()) {
            C13486b v11 = C13486b.v(G12.I(i10));
            try {
                i(publicKey, dVar.a(j.d(v11)), v11.x(), AbstractC14508c.H(G13.I(i10)).J());
                e = null;
                z12 = true;
            } catch (InvalidKeyException | NoSuchAlgorithmException unused2) {
                e = null;
            } catch (SignatureException e11) {
                e = e11;
            }
            if (e != null) {
                throw e;
            }
            i10++;
        }
        if (!z12) {
            throw new InvalidKeyException("no matching key found");
        }
    }

    @Override
    public String toString() {
        Object gVar;
        StringBuffer stringBuffer = new StringBuffer();
        String f10 = w.f();
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
        j.h(getSignature(), stringBuffer, f10);
        C13479C v10 = this.f101382c.E().v();
        if (v10 != null) {
            Enumeration F10 = v10.F();
            if (F10.hasMoreElements()) {
                stringBuffer.append("       Extensions: \n");
            }
            while (F10.hasMoreElements()) {
                C14549x c14549x = (C14549x) F10.nextElement();
                C13478B x10 = v10.x(c14549x);
                if (x10.y() != null) {
                    r rVar = new r(x10.y().H());
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
                        gVar = N.w(rVar.k());
                    } else if (c14549x.A(InterfaceC16198c.f130367b)) {
                        gVar = new yj.d(AbstractC14508c.H(rVar.k()));
                    } else if (c14549x.A(InterfaceC16198c.f130371d)) {
                        gVar = new yj.e(AbstractC14536q.F(rVar.k()));
                    } else if (c14549x.A(InterfaceC16198c.f130384k)) {
                        gVar = new yj.g(AbstractC14536q.F(rVar.k()));
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
        j(publicKey, new a());
    }

    @Override
    public void checkValidity(Date date) throws CertificateExpiredException, CertificateNotYetValidException {
        if (date.getTime() > getNotAfter().getTime()) {
            throw new CertificateExpiredException("certificate expired on " + this.f101382c.u().x());
        }
        if (date.getTime() >= getNotBefore().getTime()) {
            return;
        }
        throw new CertificateNotYetValidException("certificate not valid till " + this.f101382c.B().x());
    }

    @Override
    public final void verify(PublicKey publicKey, String str) throws CertificateException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, SignatureException {
        j(publicKey, new b(str));
    }

    @Override
    public final void verify(PublicKey publicKey, Provider provider) throws CertificateException, NoSuchAlgorithmException, InvalidKeyException, SignatureException {
        try {
            j(publicKey, new c(provider));
        } catch (NoSuchProviderException e10) {
            throw new NoSuchAlgorithmException("provider issue: " + e10.getMessage());
        }
    }
}
