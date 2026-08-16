package Sk;

import Qk.u;
import Xh.v;
import fm.C13260d;
import hi.C13486b;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import oh.B;
import org.bouncycastle.pkcs.PKCSException;
import org.bouncycastle.pkcs.PKCSIOException;

public class n {

    public Xh.j f23629a;

    public n(Xh.j jVar) {
        this.f23629a = jVar;
    }

    public static Xh.j e(byte[] bArr) throws IOException {
        try {
            return Xh.j.w(B.B(bArr));
        } catch (ClassCastException e10) {
            throw new PKCSIOException("malformed data: " + e10.getMessage(), e10);
        } catch (IllegalArgumentException e11) {
            throw new PKCSIOException("malformed data: " + e11.getMessage(), e11);
        }
    }

    public v a(u uVar) throws PKCSException {
        try {
            return v.v(C13260d.e(uVar.a(this.f23629a.v()).d(new ByteArrayInputStream(this.f23629a.u()))));
        } catch (Exception e10) {
            throw new PKCSException("unable to read encrypted data: " + e10.getMessage(), e10);
        }
    }

    public byte[] b() throws IOException {
        return this.f23629a.getEncoded();
    }

    public byte[] c() {
        return this.f23629a.u();
    }

    public C13486b d() {
        return this.f23629a.v();
    }

    public Xh.j f() {
        return this.f23629a;
    }

    public n(byte[] bArr) throws IOException {
        this(e(bArr));
    }
}
