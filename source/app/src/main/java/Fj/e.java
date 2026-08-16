package Fj;

import Dj.o;
import Ek.M;
import Fk.T;
import Qk.InterfaceC3014g;
import Qk.p;
import dk.C12948d;
import dk.InterfaceC12950f;
import hi.C13486b;
import java.io.IOException;
import java.io.OutputStream;
import java.security.Provider;
import java.security.Signature;
import java.security.interfaces.ECPublicKey;
import org.bouncycastle.operator.OperatorCreationException;
import yk.C16205g;

public class e implements Gj.e {

    public final Dj.j f6972a;

    public final byte[] f6973b;

    public final InterfaceC12950f f6974c;

    public C13486b f6975d;

    public ECPublicKey f6976e;

    public int f6977f;

    public class a implements InterfaceC3014g {

        public final OutputStream f6978a;

        public final p f6979b;

        public final Signature f6980c;

        public final byte[] f6981d;

        public final byte[] f6982e;

        public a(OutputStream outputStream, p pVar, Signature signature, byte[] bArr, byte[] bArr2) {
            this.f6978a = outputStream;
            this.f6979b = pVar;
            this.f6980c = signature;
            this.f6981d = bArr;
            this.f6982e = bArr2;
        }

        @Override
        public C13486b a() {
            return null;
        }

        @Override
        public OutputStream getOutputStream() {
            return this.f6978a;
        }

        @Override
        public boolean verify(byte[] bArr) {
            byte[] b10 = this.f6979b.b();
            try {
                this.f6980c.initVerify(e.this.f6976e);
                this.f6980c.update(b10);
                byte[] bArr2 = this.f6981d;
                if (bArr2 == null || !org.bouncycastle.util.a.g(b10, bArr2)) {
                    this.f6980c.update(this.f6982e);
                } else {
                    this.f6980c.update(this.f6979b.b());
                }
                return this.f6980c.verify(bArr);
            } catch (Exception e10) {
                throw new RuntimeException(e10.getMessage(), e10);
            }
        }
    }

    public static class b {

        public InterfaceC12950f f6984a = new C12948d();

        public e a(Dj.j jVar) {
            return new e(jVar, this.f6984a, (a) null);
        }

        public e b(o oVar) {
            return new e(oVar, this.f6984a, (a) null);
        }

        public b c(String str) {
            this.f6984a = new dk.i(str);
            return this;
        }

        public b d(Provider provider) {
            this.f6984a = new dk.k(provider);
            return this;
        }
    }

    public e(Dj.j jVar, InterfaceC12950f interfaceC12950f) {
        this.f6972a = jVar;
        this.f6974c = interfaceC12950f;
        try {
            this.f6973b = jVar.getEncoded();
            M U10 = jVar.e().z().U();
            if (!(U10.x() instanceof T)) {
                throw new IllegalArgumentException("not public verification key");
            }
            d(T.z(U10.x()), interfaceC12950f);
        } catch (IOException e10) {
            throw new IllegalStateException("unable to extract parent data: " + e10.getMessage());
        }
    }

    @Override
    public Dj.j b() {
        return this.f6972a;
    }

    @Override
    public boolean c() {
        return this.f6972a != null;
    }

    public final void d(T t10, InterfaceC12950f interfaceC12950f) {
        C13486b c13486b;
        this.f6977f = t10.y();
        int y10 = t10.y();
        if (y10 == 0) {
            c13486b = new C13486b(Sh.d.f23337c);
        } else if (y10 == 1) {
            c13486b = new C13486b(Sh.d.f23337c);
        } else {
            if (y10 != 2) {
                throw new IllegalArgumentException("unknown key type");
            }
            c13486b = new C13486b(Sh.d.f23339d);
        }
        this.f6975d = c13486b;
        this.f6976e = (ECPublicKey) new h(t10, interfaceC12950f).c();
    }

    @Override
    public InterfaceC3014g get(int i10) throws OperatorCreationException {
        byte[] bArr;
        InterfaceC12950f interfaceC12950f;
        String str;
        if (this.f6977f != i10) {
            throw new OperatorCreationException("wrong verifier for algorithm: " + i10);
        }
        try {
            p a10 = new org.bouncycastle.operator.jcajce.d().c(this.f6974c).b().a(this.f6975d);
            try {
                OutputStream outputStream = a10.getOutputStream();
                byte[] bArr2 = this.f6973b;
                if (bArr2 != null) {
                    outputStream.write(bArr2, 0, bArr2.length);
                }
                byte[] b10 = a10.b();
                Dj.j jVar = this.f6972a;
                if (jVar == null || !jVar.a().y()) {
                    bArr = null;
                } else {
                    byte[] a11 = C16205g.a(this.f6972a.e().z(), Lk.a.f14391A.f());
                    outputStream.write(a11, 0, a11.length);
                    bArr = a10.b();
                }
                byte[] bArr3 = bArr;
                int i11 = this.f6977f;
                if (i11 == 0 || i11 == 1) {
                    interfaceC12950f = this.f6974c;
                    str = "SHA256withECDSA";
                } else {
                    if (i11 != 2) {
                        throw new IllegalArgumentException("choice " + this.f6977f + " not supported");
                    }
                    interfaceC12950f = this.f6974c;
                    str = "SHA384withECDSA";
                }
                return new a(outputStream, a10, interfaceC12950f.a(str), bArr3, b10);
            } catch (Exception e10) {
                throw new IllegalStateException(e10.getMessage(), e10);
            }
        } catch (Exception e11) {
            throw new IllegalStateException(e11.getMessage(), e11);
        }
    }

    public e(Dj.j jVar, InterfaceC12950f interfaceC12950f, a aVar) {
        this(jVar, interfaceC12950f);
    }

    public e(o oVar, InterfaceC12950f interfaceC12950f) {
        this.f6972a = null;
        this.f6973b = null;
        this.f6974c = interfaceC12950f;
        d(oVar.a(), interfaceC12950f);
    }

    public e(o oVar, InterfaceC12950f interfaceC12950f, a aVar) {
        this(oVar, interfaceC12950f);
    }
}
