package gk;

import hi.C13486b;
import hi.h0;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import oh.AbstractC14536q;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14538r0;
import oh.C14554z0;
import oh.E;
import oh.G0;
import oh.InterfaceC14520i;
import oh.r;
import org.bouncycastle.jce.provider.C14720a;

public class C13387a extends AbstractC14545v {

    public C13486b f90026b;

    public C13486b f90027c;

    public byte[] f90028d;

    public String f90029e;

    public C14538r0 f90030f;

    public PublicKey f90031g;

    public C13387a(String str, C13486b c13486b, PublicKey publicKey) throws NoSuchAlgorithmException, InvalidKeySpecException, NoSuchProviderException {
        this.f90029e = str;
        this.f90026b = c13486b;
        this.f90031g = publicKey;
        C14518h c14518h = new C14518h();
        c14518h.a(x());
        c14518h.a(new C14554z0(str));
        try {
            this.f90030f = new C14538r0(new G0(c14518h));
        } catch (IOException e10) {
            throw new InvalidKeySpecException("exception encoding key: " + e10.toString());
        }
    }

    public static E z(byte[] bArr) throws IOException {
        return E.G(new r(new ByteArrayInputStream(bArr)).k());
    }

    public C13486b A() {
        return this.f90026b;
    }

    public void B(String str) {
        this.f90029e = str;
    }

    public void C(C13486b c13486b) {
        this.f90027c = c13486b;
    }

    public void D(PublicKey publicKey) {
        this.f90031g = publicKey;
    }

    public void E(C13486b c13486b) {
        this.f90026b = c13486b;
    }

    public void F(PrivateKey privateKey) throws NoSuchAlgorithmException, InvalidKeyException, SignatureException, NoSuchProviderException, InvalidKeySpecException {
        G(privateKey, null);
    }

    public void G(PrivateKey privateKey, SecureRandom secureRandom) throws NoSuchAlgorithmException, InvalidKeyException, SignatureException, NoSuchProviderException, InvalidKeySpecException {
        Signature signature = Signature.getInstance(this.f90026b.u().J(), C14720a.f101701e);
        if (secureRandom != null) {
            signature.initSign(privateKey, secureRandom);
        } else {
            signature.initSign(privateKey);
        }
        C14518h c14518h = new C14518h();
        c14518h.a(x());
        c14518h.a(new C14554z0(this.f90029e));
        try {
            signature.update(new G0(c14518h).s(InterfaceC14520i.f98892a));
            this.f90028d = signature.sign();
        } catch (IOException e10) {
            throw new SignatureException(e10.getMessage());
        }
    }

    public boolean H(String str) throws NoSuchAlgorithmException, InvalidKeyException, SignatureException, NoSuchProviderException {
        if (!str.equals(this.f90029e)) {
            return false;
        }
        Signature signature = Signature.getInstance(this.f90026b.u().J(), C14720a.f101701e);
        signature.initVerify(this.f90031g);
        signature.update(this.f90030f.J());
        return signature.verify(this.f90028d);
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h();
        C14518h c14518h2 = new C14518h();
        try {
            c14518h2.a(x());
        } catch (Exception unused) {
        }
        c14518h2.a(new C14554z0(this.f90029e));
        c14518h.a(new G0(c14518h2));
        c14518h.a(this.f90026b);
        c14518h.a(new C14538r0(this.f90028d));
        return new G0(c14518h);
    }

    public String u() {
        return this.f90029e;
    }

    public C13486b v() {
        return this.f90027c;
    }

    public final B x() throws NoSuchAlgorithmException, InvalidKeySpecException, NoSuchProviderException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byteArrayOutputStream.write(this.f90031g.getEncoded());
            byteArrayOutputStream.close();
            return new r(new ByteArrayInputStream(byteArrayOutputStream.toByteArray())).k();
        } catch (IOException e10) {
            throw new InvalidKeySpecException(e10.getMessage());
        }
    }

    public PublicKey y() {
        return this.f90031g;
    }

    public C13387a(E e10) {
        try {
            if (e10.size() != 3) {
                throw new IllegalArgumentException("invalid SPKAC (size):" + e10.size());
            }
            this.f90026b = C13486b.v(e10.I(1));
            this.f90028d = ((C14538r0) e10.I(2)).J();
            E e11 = (E) e10.I(0);
            if (e11.size() != 2) {
                throw new IllegalArgumentException("invalid PKAC (len): " + e11.size());
            }
            this.f90029e = ((AbstractC14536q) e11.I(1)).getString();
            this.f90030f = new C14538r0(e11);
            h0 w10 = h0.w(e11.I(0));
            X509EncodedKeySpec x509EncodedKeySpec = new X509EncodedKeySpec(w10.s(InterfaceC14520i.f98892a));
            C13486b u10 = w10.u();
            this.f90027c = u10;
            this.f90031g = KeyFactory.getInstance(u10.u().J(), C14720a.f101701e).generatePublic(x509EncodedKeySpec);
        } catch (Exception e12) {
            throw new IllegalArgumentException(e12.toString());
        }
    }

    public C13387a(byte[] bArr) throws IOException {
        this(z(bArr));
    }
}
