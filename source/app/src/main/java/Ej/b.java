package Ej;

import Bi.D;
import Bi.InterfaceC2392y;
import Dj.j;
import Fk.T;
import Qk.InterfaceC3014g;
import Xi.M;
import bj.C3893a;
import hi.C13486b;
import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.operator.OperatorCreationException;
import yk.C16205g;

public class b implements Gj.e {

    public final j f5852a;

    public final byte[] f5853b;

    public final C13486b f5854c;

    public final M f5855d;

    public final int f5856e;

    public class a extends OutputStream {

        public final InterfaceC2392y f5857b;

        public a(InterfaceC2392y interfaceC2392y) {
            this.f5857b = interfaceC2392y;
        }

        @Override
        public void write(int i10) throws IOException {
            this.f5857b.update((byte) i10);
        }

        @Override
        public void write(byte[] bArr) throws IOException {
            this.f5857b.update(bArr, 0, bArr.length);
        }

        @Override
        public void write(byte[] bArr, int i10, int i11) throws IOException {
            this.f5857b.update(bArr, i10, i11);
        }
    }

    public class C0112b implements InterfaceC3014g {

        public final C3893a f5859a;

        public final OutputStream f5860b;

        public final InterfaceC2392y f5861c;

        public final byte[] f5862d;

        public final byte[] f5863e;

        public C0112b(OutputStream outputStream, InterfaceC2392y interfaceC2392y, byte[] bArr, byte[] bArr2) throws OperatorCreationException {
            this.f5860b = outputStream;
            this.f5861c = interfaceC2392y;
            this.f5862d = bArr;
            this.f5863e = bArr2;
            this.f5859a = new C3893a(new bj.f(), Rk.j.f22854b.a(b.this.f5854c));
        }

        @Override
        public C13486b a() {
            return null;
        }

        @Override
        public OutputStream getOutputStream() {
            return this.f5860b;
        }

        @Override
        public boolean verify(byte[] bArr) {
            int f10 = this.f5861c.f();
            byte[] bArr2 = new byte[f10];
            this.f5861c.c(bArr2, 0);
            this.f5859a.a(false, b.this.f5855d);
            this.f5859a.update(bArr2, 0, f10);
            byte[] bArr3 = this.f5862d;
            if (bArr3 == null || !org.bouncycastle.util.a.g(bArr2, bArr3)) {
                C3893a c3893a = this.f5859a;
                byte[] bArr4 = this.f5863e;
                c3893a.update(bArr4, 0, bArr4.length);
            } else {
                int f11 = this.f5861c.f();
                byte[] bArr5 = new byte[f11];
                this.f5861c.c(bArr5, 0);
                this.f5859a.update(bArr5, 0, f11);
            }
            return this.f5859a.b(bArr);
        }
    }

    public b(j jVar) throws IOException {
        C13486b c13486b;
        this.f5852a = jVar;
        this.f5853b = jVar.getEncoded();
        Ek.M U10 = jVar.e().z().U();
        if (!(U10.x() instanceof T)) {
            throw new IllegalStateException("not public verification key");
        }
        T z10 = T.z(U10.x());
        this.f5856e = z10.y();
        int y10 = z10.y();
        if (y10 == 0) {
            c13486b = new C13486b(Sh.d.f23337c);
        } else if (y10 == 1) {
            c13486b = new C13486b(Sh.d.f23337c);
        } else {
            if (y10 != 2) {
                throw new IllegalStateException("unknown key type");
            }
            c13486b = new C13486b(Sh.d.f23339d);
        }
        this.f5854c = c13486b;
        this.f5855d = (M) new f(z10).c();
    }

    @Override
    public j b() {
        return this.f5852a;
    }

    @Override
    public boolean c() {
        return this.f5852a != null;
    }

    @Override
    public InterfaceC3014g get(int i10) throws OperatorCreationException {
        if (this.f5856e != i10) {
            throw new OperatorCreationException("wrong verifier for algorithm: " + i10);
        }
        D a10 = Rk.j.f22854b.a(this.f5854c);
        byte[] bArr = new byte[a10.f()];
        byte[] bArr2 = this.f5853b;
        a10.update(bArr2, 0, bArr2.length);
        a10.c(bArr, 0);
        byte[] bArr3 = this.f5852a.a().y() ? new byte[a10.f()] : null;
        if (bArr3 != null) {
            byte[] a11 = C16205g.a(this.f5852a.e().z(), Lk.a.f14391A.f());
            a10.update(a11, 0, a11.length);
            a10.c(bArr3, 0);
        }
        return new C0112b(new a(a10), a10, bArr3, bArr);
    }
}
