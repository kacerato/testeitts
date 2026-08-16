package org.bouncycastle.x509;

import hi.C13478B;
import hi.C13479C;
import hi.C13496h;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Set;
import oh.AbstractC14508c;
import oh.C14549x;
import oh.E;
import oh.InterfaceC14520i;

public class y implements l {

    public C13496h f102442b;

    public Date f102443c;

    public Date f102444d;

    public y(C13496h c13496h) throws IOException {
        this.f102442b = c13496h;
        try {
            this.f102444d = c13496h.u().u().v().I();
            this.f102443c = c13496h.u().u().x().I();
        } catch (ParseException unused) {
            throw new IOException("invalid data structure in certificate!");
        }
    }

    public static C13496h c(InputStream inputStream) throws IOException {
        try {
            return C13496h.v(new oh.r(inputStream).k());
        } catch (IOException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new IOException("exception decoding certificate structure: " + e11.toString());
        }
    }

    public final Set a(boolean z10) {
        C13479C x10 = this.f102442b.u().x();
        if (x10 == null) {
            return null;
        }
        HashSet hashSet = new HashSet();
        Enumeration F10 = x10.F();
        while (F10.hasMoreElements()) {
            C14549x c14549x = (C14549x) F10.nextElement();
            if (x10.x(c14549x).B() == z10) {
                hashSet.add(c14549x.J());
            }
        }
        return hashSet;
    }

    @Override
    public j[] b(String str) {
        E v10 = this.f102442b.u().v();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 != v10.size(); i10++) {
            j jVar = new j(v10.I(i10));
            if (jVar.u().equals(str)) {
                arrayList.add(jVar);
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return (j[]) arrayList.toArray(new j[arrayList.size()]);
    }

    @Override
    public void checkValidity() throws CertificateExpiredException, CertificateNotYetValidException {
        checkValidity(new Date());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        try {
            return org.bouncycastle.util.a.g(getEncoded(), ((l) obj).getEncoded());
        } catch (IOException unused) {
            return false;
        }
    }

    @Override
    public b f() {
        return new b(this.f102442b.u().B());
    }

    @Override
    public j[] getAttributes() {
        E v10 = this.f102442b.u().v();
        j[] jVarArr = new j[v10.size()];
        for (int i10 = 0; i10 != v10.size(); i10++) {
            jVarArr[i10] = new j(v10.I(i10));
        }
        return jVarArr;
    }

    @Override
    public Set getCriticalExtensionOIDs() {
        return a(true);
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return this.f102442b.getEncoded();
    }

    @Override
    public byte[] getExtensionValue(String str) {
        C13478B x10;
        C13479C x11 = this.f102442b.u().x();
        if (x11 == null || (x10 = x11.x(new C14549x(str))) == null) {
            return null;
        }
        try {
            return x10.y().s(InterfaceC14520i.f98892a);
        } catch (Exception e10) {
            throw new RuntimeException("error encoding " + e10.toString());
        }
    }

    @Override
    public a getHolder() {
        return new a((E) this.f102442b.u().y().r());
    }

    @Override
    public boolean[] getIssuerUniqueID() {
        AbstractC14508c C10 = this.f102442b.u().C();
        if (C10 == null) {
            return null;
        }
        byte[] F10 = C10.F();
        int length = (F10.length * 8) - C10.n();
        boolean[] zArr = new boolean[length];
        for (int i10 = 0; i10 != length; i10++) {
            zArr[i10] = (F10[i10 / 8] & (128 >>> (i10 % 8))) != 0;
        }
        return zArr;
    }

    @Override
    public Set getNonCriticalExtensionOIDs() {
        return a(false);
    }

    @Override
    public Date getNotAfter() {
        return this.f102444d;
    }

    @Override
    public Date getNotBefore() {
        return this.f102443c;
    }

    @Override
    public BigInteger getSerialNumber() {
        return this.f102442b.u().D().I();
    }

    @Override
    public byte[] getSignature() {
        return this.f102442b.y().J();
    }

    @Override
    public int getVersion() {
        return this.f102442b.u().F().O() + 1;
    }

    @Override
    public boolean hasUnsupportedCriticalExtension() {
        Set criticalExtensionOIDs = getCriticalExtensionOIDs();
        return (criticalExtensionOIDs == null || criticalExtensionOIDs.isEmpty()) ? false : true;
    }

    public int hashCode() {
        try {
            return org.bouncycastle.util.a.t0(getEncoded());
        } catch (IOException unused) {
            return 0;
        }
    }

    @Override
    public final void verify(PublicKey publicKey, String str) throws CertificateException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, SignatureException {
        if (!this.f102442b.x().equals(this.f102442b.u().E())) {
            throw new CertificateException("Signature algorithm in certificate info not same as outer certificate");
        }
        Signature signature = Signature.getInstance(this.f102442b.x().u().J(), str);
        signature.initVerify(publicKey);
        try {
            signature.update(this.f102442b.u().getEncoded());
            if (!signature.verify(getSignature())) {
                throw new InvalidKeyException("Public key presented not for certificate signature");
            }
        } catch (IOException unused) {
            throw new SignatureException("Exception encoding certificate info object");
        }
    }

    public y(InputStream inputStream) throws IOException {
        this(c(inputStream));
    }

    @Override
    public void checkValidity(Date date) throws CertificateExpiredException, CertificateNotYetValidException {
        if (date.after(getNotAfter())) {
            throw new CertificateExpiredException("certificate expired on " + ((Object) getNotAfter()));
        }
        if (date.before(getNotBefore())) {
            throw new CertificateNotYetValidException("certificate not valid till " + ((Object) getNotBefore()));
        }
    }

    public y(byte[] bArr) throws IOException {
        this(new ByteArrayInputStream(bArr));
    }
}
