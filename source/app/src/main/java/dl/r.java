package dl;

import Bi.InterfaceC2379k;
import Xi.x0;

public class r implements Yk.g {

    public byte[] f84832a;

    public C12962l f84833b;

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        C12962l c12962l;
        if (!z10) {
            C12965o c12965o = (C12965o) interfaceC2379k;
            this.f84832a = c12965o.e();
            c12962l = new C12962l(c12965o.d().a(), c12965o.d().c(), Bi.r.h());
        } else {
            if (interfaceC2379k instanceof x0) {
                x0 x0Var = (x0) interfaceC2379k;
                C12964n c12964n = (C12964n) x0Var.a();
                this.f84832a = c12964n.getEncoded();
                this.f84833b = new C12962l(c12964n.d().a(), c12964n.d().c(), x0Var.b());
                return;
            }
            C12964n c12964n2 = (C12964n) interfaceC2379k;
            this.f84832a = c12964n2.getEncoded();
            c12962l = new C12962l(c12964n2.d().a(), c12964n2.d().c(), Bi.r.h());
        }
        this.f84833b = c12962l;
    }

    @Override
    public byte[] b(byte[] bArr) {
        C12962l c12962l = this.f84833b;
        return c12962l.a(false, new byte[c12962l.f84810g], bArr, 0, bArr.length, this.f84832a, 0);
    }

    @Override
    public boolean d(byte[] bArr, byte[] bArr2) {
        byte b10 = bArr2[0];
        C12962l c12962l = this.f84833b;
        if (b10 != ((byte) (c12962l.f84805b + 48))) {
            return false;
        }
        int i10 = c12962l.f84804a;
        byte[] bArr3 = new byte[i10];
        byte[] bArr4 = new byte[(bArr2.length - i10) - 1];
        System.arraycopy(bArr2, 1, bArr3, 0, i10);
        int i11 = this.f84833b.f84804a;
        System.arraycopy(bArr2, i11 + 1, bArr4, 0, (bArr2.length - i11) - 1);
        return this.f84833b.c(false, bArr4, bArr3, bArr, this.f84832a, 0) == 0;
    }
}
