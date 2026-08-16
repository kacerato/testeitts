package Rl;

import Bi.InterfaceC2379k;
import Wl.x;
import Wl.y;
import Xi.x0;
import java.security.SecureRandom;
import org.bouncycastle.crypto.InvalidCipherTextException;

public class i implements Yk.f {

    public static final String f22895i = "1.3.6.1.4.1.8301.3.1.3.4.1";

    public SecureRandom f22896a;

    public int f22897b;

    public int f22898c;

    public int f22899d;

    public int f22900e;

    public int f22901f;

    public m f22902g;

    public boolean f22903h;

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        this.f22903h = z10;
        if (!z10) {
            q qVar = (q) interfaceC2379k;
            this.f22902g = qVar;
            g(qVar);
        } else {
            if (!(interfaceC2379k instanceof x0)) {
                this.f22896a = Bi.r.h();
                r rVar = (r) interfaceC2379k;
                this.f22902g = rVar;
                h(rVar);
                return;
            }
            x0 x0Var = (x0) interfaceC2379k;
            this.f22896a = x0Var.b();
            r rVar2 = (r) x0Var.a();
            this.f22902g = rVar2;
            h(rVar2);
        }
    }

    @Override
    public byte[] b(byte[] bArr) throws InvalidCipherTextException {
        if (this.f22903h) {
            throw new IllegalStateException("cipher initialised for decryption");
        }
        Wl.g f10 = Wl.g.f(this.f22897b, bArr);
        q qVar = (q) this.f22902g;
        Wl.h e10 = qVar.e();
        y f11 = qVar.f();
        Wl.e m10 = qVar.m();
        x j10 = qVar.j();
        x k10 = qVar.k();
        Wl.e g10 = qVar.g();
        y[] l10 = qVar.l();
        x e11 = j10.e(k10);
        Wl.g gVar = (Wl.g) f10.e(e11.a());
        Wl.g c10 = Wl.s.c((Wl.g) g10.i(gVar), e10, f11, l10);
        Wl.g gVar2 = (Wl.g) ((Wl.g) gVar.a(c10)).e(j10);
        return d((Wl.g) m10.f(gVar2.h(this.f22898c)));
    }

    @Override
    public byte[] c(byte[] bArr) {
        if (!this.f22903h) {
            throw new IllegalStateException("cipher initialised for decryption");
        }
        Wl.g e10 = e(bArr);
        return ((Wl.g) ((r) this.f22902g).e().f(e10).a(new Wl.g(this.f22897b, this.f22899d, this.f22896a))).b();
    }

    public final byte[] d(Wl.g gVar) throws InvalidCipherTextException {
        byte[] b10 = gVar.b();
        int length = b10.length - 1;
        while (length >= 0 && b10[length] == 0) {
            length--;
        }
        if (length < 0 || b10[length] != 1) {
            throw new InvalidCipherTextException("Bad Padding: invalid ciphertext");
        }
        byte[] bArr = new byte[length];
        System.arraycopy(b10, 0, bArr, 0, length);
        return bArr;
    }

    public final Wl.g e(byte[] bArr) {
        byte[] bArr2 = new byte[this.f22900e + ((this.f22898c & 7) != 0 ? 1 : 0)];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        bArr2[bArr.length] = 1;
        return Wl.g.f(this.f22898c, bArr2);
    }

    public int f(m mVar) {
        if (mVar instanceof r) {
            return ((r) mVar).g();
        }
        if (mVar instanceof q) {
            return ((q) mVar).i();
        }
        throw new IllegalArgumentException("unsupported type");
    }

    public final void g(q qVar) {
        this.f22897b = qVar.i();
        int h10 = qVar.h();
        this.f22898c = h10;
        this.f22900e = h10 >> 3;
        this.f22901f = this.f22897b >> 3;
    }

    public final void h(r rVar) {
        this.f22897b = rVar.g();
        this.f22898c = rVar.f();
        this.f22899d = rVar.h();
        this.f22901f = this.f22897b >> 3;
        this.f22900e = this.f22898c >> 3;
    }
}
