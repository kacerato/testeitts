package Fj;

import Qk.p;
import Xh.v;
import bi.InterfaceC3890b;
import dk.C12948d;
import dk.InterfaceC12950f;
import hi.C13486b;
import java.io.IOException;
import java.io.OutputStream;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.Signature;
import java.security.interfaces.ECPrivateKey;
import oh.C14549x;
import org.bouncycastle.operator.OperatorCreationException;

public class d implements Gj.d {

    public final ECPrivateKey f6962a;

    public final Dj.j f6963b;

    public final C13486b f6964c;

    public final p f6965d;

    public final byte[] f6966e;

    public final C14549x f6967f;

    public final byte[] f6968g;

    public final String f6969h;

    public final InterfaceC12950f f6970i;

    public static class b {

        public InterfaceC12950f f6971a = new C12948d();

        /* JADX WARN: Multi-variable type inference failed */
        public d a(PrivateKey privateKey) {
            return new d((ECPrivateKey) privateKey, null, this.f6971a);
        }

        public d b(PrivateKey privateKey, Dj.j jVar) {
            return new d((ECPrivateKey) privateKey, jVar, this.f6971a);
        }

        public b c(String str) {
            this.f6971a = new dk.i(str);
            return this;
        }

        public b d(Provider provider) {
            this.f6971a = new dk.k(provider);
            return this;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0071 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public d(ECPrivateKey eCPrivateKey, Dj.j jVar, InterfaceC12950f interfaceC12950f) {
        C13486b c13486b;
        this.f6962a = eCPrivateKey;
        this.f6963b = jVar;
        this.f6970i = interfaceC12950f;
        C14549x K10 = C14549x.K(v.v(eCPrivateKey.getEncoded()).y().x());
        this.f6967f = K10;
        try {
            try {
                if (K10.A(Zh.d.f31273H)) {
                    c13486b = new C13486b(Sh.d.f23337c);
                } else {
                    if (!K10.A(InterfaceC3890b.f33255u)) {
                        if (!K10.A(InterfaceC3890b.f33259y)) {
                            throw new IllegalArgumentException("unknown key type");
                        }
                        this.f6964c = new C13486b(Sh.d.f23339d);
                        this.f6969h = "SHA384withECDSA";
                        p a10 = new org.bouncycastle.operator.jcajce.d().c(interfaceC12950f).b().a(this.f6964c);
                        this.f6965d = a10;
                        if (jVar != null) {
                            this.f6966e = null;
                            this.f6968g = a10.b();
                            return;
                        }
                        try {
                            byte[] encoded = jVar.getEncoded();
                            this.f6966e = encoded;
                            OutputStream outputStream = a10.getOutputStream();
                            outputStream.write(encoded, 0, encoded.length);
                            outputStream.close();
                            this.f6968g = a10.b();
                            return;
                        } catch (IOException e10) {
                            throw new IllegalStateException("signer certificate encoding failed: " + e10.getMessage());
                        }
                    }
                    c13486b = new C13486b(Sh.d.f23337c);
                }
                p a102 = new org.bouncycastle.operator.jcajce.d().c(interfaceC12950f).b().a(this.f6964c);
                this.f6965d = a102;
                if (jVar != null) {
                }
            } catch (OperatorCreationException e11) {
                throw new IllegalStateException("cannot recognise digest type: " + ((Object) this.f6964c.u()), e11);
            }
        } catch (Exception e12) {
            throw new IllegalStateException(e12.getMessage(), e12);
        }
        this.f6964c = c13486b;
        this.f6969h = "SHA256withECDSA";
    }

    @Override
    public Dj.j b() {
        return this.f6963b;
    }

    @Override
    public byte[] c() {
        return org.bouncycastle.util.a.p(this.f6968g);
    }

    @Override
    public boolean d() {
        return this.f6966e == null;
    }

    @Override
    public C14549x e() {
        return this.f6967f;
    }

    @Override
    public C13486b f() {
        return this.f6964c;
    }

    @Override
    public OutputStream getOutputStream() {
        return this.f6965d.getOutputStream();
    }

    @Override
    public byte[] getSignature() {
        byte[] b10 = this.f6965d.b();
        try {
            Signature a10 = this.f6970i.a(this.f6969h);
            a10.initSign(this.f6962a);
            a10.update(b10, 0, b10.length);
            byte[] bArr = this.f6968g;
            a10.update(bArr, 0, bArr.length);
            return a10.sign();
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage(), e10);
        }
    }
}
