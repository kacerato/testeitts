package wi;

import hi.C13478B;
import hi.V;
import java.math.BigInteger;
import li.C14146h;
import oh.C14539s;
import oh.C14549x;
import org.bouncycastle.cert.path.CertPathValidationException;
import org.bouncycastle.util.n;
import vi.C15852d;
import vi.InterfaceC15851c;

public class C16007c implements InterfaceC15851c {

    public int f127573a;

    public int f127574b;

    public int f127575c;

    public C16007c(int i10) {
        this(i10, false, false, false);
    }

    public final int a(int i10) {
        if (i10 != 0) {
            return i10 - 1;
        }
        return 0;
    }

    @Override
    public n copy() {
        C16007c c16007c = new C16007c(0);
        c16007c.f127573a = this.f127573a;
        c16007c.f127574b = this.f127574b;
        c16007c.f127575c = this.f127575c;
        return c16007c;
    }

    @Override
    public void g(C15852d c15852d, C14146h c14146h) throws CertPathValidationException {
        int O10;
        c15852d.a(C13478B.f90548x);
        C14549x c14549x = C13478B.f90515A;
        c15852d.a(c14549x);
        if (c15852d.c() || C16011g.a(c14146h)) {
            return;
        }
        this.f127573a = a(this.f127573a);
        this.f127574b = a(this.f127574b);
        this.f127575c = a(this.f127575c);
        V u10 = V.u(c14146h.d());
        if (u10 != null) {
            BigInteger x10 = u10.x();
            if (x10 != null && x10.intValue() < this.f127573a) {
                this.f127573a = x10.intValue();
            }
            BigInteger v10 = u10.v();
            if (v10 != null && v10.intValue() < this.f127574b) {
                this.f127574b = v10.intValue();
            }
        }
        C13478B b10 = c14146h.b(c14549x);
        if (b10 == null || (O10 = C14539s.F(b10.A()).O()) >= this.f127575c) {
            return;
        }
        this.f127575c = O10;
    }

    @Override
    public void j(n nVar) {
        C16007c c16007c = (C16007c) nVar;
        this.f127573a = c16007c.f127573a;
        this.f127574b = c16007c.f127574b;
        this.f127575c = c16007c.f127575c;
    }

    public C16007c(int i10, boolean z10, boolean z11, boolean z12) {
        if (z10) {
            this.f127573a = 0;
        } else {
            this.f127573a = i10 + 1;
        }
        if (z11) {
            this.f127575c = 0;
        } else {
            this.f127575c = i10 + 1;
        }
        if (z12) {
            this.f127574b = 0;
        } else {
            this.f127574b = i10 + 1;
        }
    }
}
