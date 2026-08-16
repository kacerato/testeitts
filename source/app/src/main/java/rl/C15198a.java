package rl;

import Bi.A;
import Ci.n;
import Ii.N;
import Xi.O0;
import cl.C4221d;
import org.bouncycastle.util.w;

public class C15198a implements A {

    public final C15203f f109083a;

    public final C4221d f109084b;

    public C15198a(C15203f c15203f) {
        this.f109083a = c15203f;
        this.f109084b = new C4221d(c15203f.d());
    }

    @Override
    public int a() {
        return this.f109084b.a() + 32;
    }

    @Override
    public byte[] b(byte[] bArr) {
        byte[] b10 = this.f109084b.b(org.bouncycastle.util.a.X(bArr, 0, bArr.length - 32));
        n nVar = new n();
        int length = b10.length + nVar.c();
        byte[] bArr2 = new byte[length];
        System.arraycopy(b10, 0, bArr2, 0, b10.length);
        org.bouncycastle.util.a.n(b10);
        nVar.a(this.f109083a.e());
        O0 o02 = new O0(org.bouncycastle.util.a.X(bArr, bArr.length - 32, bArr.length));
        nVar.b(o02, bArr2, b10.length);
        N n10 = new N(256);
        n10.update(w.j("\\.//^\\"), 0, 6);
        n10.update(bArr2, 0, length);
        n10.update(o02.getEncoded(), 0, 32);
        n10.update(this.f109083a.e().e().getEncoded(), 0, 32);
        byte[] bArr3 = new byte[32];
        n10.c(bArr3, 0);
        return bArr3;
    }
}
