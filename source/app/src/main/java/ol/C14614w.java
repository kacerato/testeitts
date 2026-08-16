package ol;

import Bi.InterfaceC2379k;
import Xi.x0;
import java.security.SecureRandom;

public class C14614w implements Yk.g {

    public C14612u f99698a;

    public C14613v f99699b;

    public SecureRandom f99700c;

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (!z10) {
            this.f99699b = (C14613v) interfaceC2379k;
        } else {
            if (!(interfaceC2379k instanceof x0)) {
                this.f99698a = (C14612u) interfaceC2379k;
                return;
            }
            x0 x0Var = (x0) interfaceC2379k;
            this.f99698a = (C14612u) x0Var.a();
            this.f99700c = x0Var.b();
        }
    }

    @Override
    public byte[] b(byte[] bArr) {
        AbstractC14606o b10 = this.f99698a.d().b();
        b10.g(this.f99698a.f99696e.f99591a);
        int i10 = b10.f99603b;
        byte[] bArr2 = new byte[i10];
        SecureRandom secureRandom = this.f99700c;
        int i11 = 0;
        if (secureRandom != null) {
            secureRandom.nextBytes(bArr2);
        } else {
            System.arraycopy(this.f99698a.f99696e.f99591a, 0, bArr2, 0, i10);
        }
        C14593b c14593b = new C14593b(b10);
        byte[] e10 = b10.e(this.f99698a.f99695d.f99601b, bArr2, bArr);
        C14601j c14601j = this.f99698a.f99696e;
        C14599h c10 = b10.c(e10, c14601j.f99591a, c14601j.f99592b, bArr);
        byte[] bArr3 = c10.f99588c;
        long j10 = c10.f99586a;
        int i12 = c10.f99587b;
        C14592a c14592a = new C14592a();
        c14592a.o(3);
        c14592a.l(j10);
        c14592a.j(i12);
        C14612u c14612u = this.f99698a;
        C14603l[] c11 = c14593b.c(bArr3, c14612u.f99695d.f99600a, c14612u.f99696e.f99591a, c14592a);
        C14592a c14592a2 = new C14592a();
        c14592a2.o(3);
        c14592a2.l(j10);
        c14592a2.j(i12);
        byte[] b11 = c14593b.b(c11, bArr3, this.f99698a.f99696e.f99591a, c14592a2);
        new C14592a().o(2);
        byte[] a10 = new C14594c(b10, this.f99698a.j(), this.f99698a.h()).a(b11, j10, i12);
        int length = c11.length;
        byte[][] bArr4 = new byte[length + 2];
        bArr4[0] = e10;
        while (i11 != c11.length) {
            int i13 = i11 + 1;
            C14603l c14603l = c11[i11];
            bArr4[i13] = org.bouncycastle.util.a.B(c14603l.f99597b, org.bouncycastle.util.a.E(c14603l.f99596a));
            i11 = i13;
        }
        bArr4[length + 1] = a10;
        return org.bouncycastle.util.a.E(bArr4);
    }

    @Override
    public boolean d(byte[] bArr, byte[] bArr2) {
        AbstractC14606o b10 = this.f99699b.d().b();
        b10.g(this.f99699b.f());
        C14592a c14592a = new C14592a();
        C14602k c14602k = new C14602k(b10.f99603b, b10.f99611j, b10.f99610i, b10.f99609h, b10.f99613l, b10.f99606e, bArr2);
        byte[] a10 = c14602k.a();
        C14603l[] b11 = c14602k.b();
        C14604m[] c10 = c14602k.c();
        C14599h c11 = b10.c(a10, this.f99699b.f(), this.f99699b.e(), bArr);
        byte[] bArr3 = c11.f99588c;
        long j10 = c11.f99586a;
        int i10 = c11.f99587b;
        c14592a.o(3);
        c14592a.k(0);
        c14592a.l(j10);
        c14592a.j(i10);
        byte[] b12 = new C14593b(b10).b(b11, bArr3, this.f99699b.f(), c14592a);
        c14592a.o(2);
        c14592a.k(0);
        c14592a.l(j10);
        c14592a.j(i10);
        return new C14594c(b10, null, this.f99699b.f()).c(b12, c10, this.f99699b.f(), j10, i10, this.f99699b.e());
    }
}
