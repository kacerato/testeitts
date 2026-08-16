package Tl;

import Bi.InterfaceC2379k;
import Bi.r;
import Xi.x0;
import java.security.SecureRandom;

public class h implements Yk.g {

    public f f25450a;

    public e f25451b;

    public SecureRandom f25452c;

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        int e10;
        if (z10) {
            if (interfaceC2379k instanceof x0) {
                x0 x0Var = (x0) interfaceC2379k;
                this.f25452c = x0Var.b();
                this.f25451b = (e) x0Var.a();
            } else {
                this.f25452c = r.h();
                this.f25451b = (e) interfaceC2379k;
            }
            this.f25450a = null;
            e10 = this.f25451b.e();
        } else {
            this.f25451b = null;
            f fVar = (f) interfaceC2379k;
            this.f25450a = fVar;
            e10 = fVar.e();
        }
        g.e(e10);
    }

    @Override
    public byte[] b(byte[] bArr) {
        byte[] bArr2 = new byte[g.d(this.f25451b.e())];
        int e10 = this.f25451b.e();
        if (e10 == 5) {
            i.m(bArr2, bArr, 0, bArr.length, this.f25451b.d(), this.f25452c);
        } else {
            if (e10 != 6) {
                throw new IllegalArgumentException("unknown security category: " + this.f25451b.e());
            }
            j.n(bArr2, bArr, 0, bArr.length, this.f25451b.d(), this.f25452c);
        }
        return bArr2;
    }

    @Override
    public boolean d(byte[] bArr, byte[] bArr2) {
        int u10;
        int e10 = this.f25450a.e();
        if (e10 == 5) {
            u10 = i.u(bArr, bArr2, 0, bArr2.length, this.f25450a.d());
        } else {
            if (e10 != 6) {
                throw new IllegalArgumentException("unknown security category: " + this.f25450a.e());
            }
            u10 = j.v(bArr, bArr2, 0, bArr2.length, this.f25450a.d());
        }
        return u10 == 0;
    }
}
