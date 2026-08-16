package wk;

import Qk.InterfaceC3014g;
import Qk.InterfaceC3015h;
import Rh.b;
import hi.h0;
import java.io.IOException;
import java.io.OutputStream;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.X509EncodedKeySpec;
import oh.B;
import oh.C14538r0;
import oh.InterfaceC14520i;
import org.bouncycastle.operator.OperatorCreationException;
import org.bouncycastle.util.g;

public class C16013a implements g {

    public final b f127589b;

    public C16013a(b bVar) {
        this.f127589b = bVar;
    }

    public String a() {
        return this.f127589b.v().u().getString();
    }

    public PublicKey b(String str) throws NoSuchAlgorithmException, NoSuchProviderException, InvalidKeyException {
        h0 x10 = this.f127589b.v().x();
        try {
            return KeyFactory.getInstance(x10.u().u().J(), str).generatePublic(new X509EncodedKeySpec(new C14538r0(x10).J()));
        } catch (Exception unused) {
            throw new InvalidKeyException("error encoding public key");
        }
    }

    public Rh.a c() {
        return this.f127589b.v();
    }

    public h0 d() {
        return this.f127589b.v().x();
    }

    public boolean e(InterfaceC3015h interfaceC3015h) throws OperatorCreationException, IOException {
        InterfaceC3014g a10 = interfaceC3015h.a(this.f127589b.y());
        OutputStream outputStream = a10.getOutputStream();
        this.f127589b.v().f(outputStream, InterfaceC14520i.f98892a);
        outputStream.close();
        return a10.verify(this.f127589b.x().J());
    }

    public B f() {
        return this.f127589b.r();
    }

    public b g() {
        return this.f127589b;
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return g().getEncoded();
    }

    public boolean h() throws NoSuchAlgorithmException, SignatureException, NoSuchProviderException, InvalidKeyException {
        return i(null);
    }

    public boolean i(String str) throws NoSuchAlgorithmException, SignatureException, NoSuchProviderException, InvalidKeyException {
        String J10 = this.f127589b.y().u().J();
        Signature signature = str == null ? Signature.getInstance(J10) : Signature.getInstance(J10, str);
        signature.initVerify(b(str));
        try {
            signature.update(this.f127589b.v().getEncoded());
            return signature.verify(this.f127589b.x().J());
        } catch (Exception unused) {
            throw new InvalidKeyException("error encoding public key");
        }
    }

    public C16013a(byte[] bArr) {
        this.f127589b = b.u(bArr);
    }
}
