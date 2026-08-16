package Pl;

import Bi.C2371c;
import Bi.G;
import Bi.InterfaceC2372d;
import Bi.InterfaceC2392y;
import Xi.C3335c;
import java.lang.reflect.Array;
import java.security.SecureRandom;
import java.util.Vector;

public class c implements InterfaceC2372d {

    public static final String f21616u = "1.3.6.1.4.1.8301.3.1.3.3";

    public Ql.a f21617g;

    public InterfaceC2392y f21618h;

    public byte[][] f21619i;

    public byte[][] f21620j;

    public byte[][] f21621k;

    public a f21622l;

    public int f21623m;

    public int f21624n;

    public boolean f21625o = false;

    public f f21626p;

    public int[] f21627q;

    public int[] f21628r;

    public int[] f21629s;

    public b f21630t;

    public c(a aVar) {
        this.f21622l = aVar;
        InterfaceC2392y interfaceC2392y = aVar.get();
        this.f21618h = interfaceC2392y;
        this.f21623m = interfaceC2392y.f();
        this.f21617g = new Ql.a(this.f21618h);
    }

    private C2371c c() {
        int i10;
        int i11;
        if (!this.f21625o) {
            h();
        }
        int i12 = this.f21624n;
        byte[][][] bArr = new byte[i12][];
        byte[][][] bArr2 = new byte[i12 - 1][];
        n[][] nVarArr = new n[i12];
        n[][] nVarArr2 = new n[i12 - 1];
        Vector[] vectorArr = new Vector[i12];
        Vector[] vectorArr2 = new Vector[i12 - 1];
        Vector[][] vectorArr3 = new Vector[i12];
        int i13 = 1;
        Vector[][] vectorArr4 = new Vector[i12 - 1];
        char c10 = 0;
        int i14 = 0;
        while (true) {
            i10 = this.f21624n;
            if (i14 >= i10) {
                break;
            }
            int i15 = this.f21627q[i14];
            int[] iArr = new int[2];
            iArr[1] = this.f21623m;
            iArr[c10] = i15;
            Class<Byte> cls = Byte.TYPE;
            bArr[i14] = (byte[][]) Array.newInstance(cls, iArr);
            int i16 = this.f21627q[i14];
            nVarArr[i14] = new n[i16 - this.f21629s[i14]];
            if (i14 > 0) {
                int i17 = i14 - 1;
                bArr2[i17] = (byte[][]) Array.newInstance(cls, i16, this.f21623m);
                nVarArr2[i17] = new n[this.f21627q[i14] - this.f21629s[i14]];
            }
            vectorArr[i14] = new Vector();
            if (i14 > 0) {
                vectorArr2[i14 - 1] = new Vector();
            }
            i14++;
            c10 = 0;
        }
        int[] iArr2 = {i10, this.f21623m};
        Class<Byte> cls2 = Byte.TYPE;
        byte[][] bArr3 = (byte[][]) Array.newInstance(cls2, iArr2);
        byte[][] bArr4 = (byte[][]) Array.newInstance(cls2, this.f21624n - 1, this.f21623m);
        byte[][] bArr5 = (byte[][]) Array.newInstance(cls2, this.f21624n, this.f21623m);
        int i18 = 0;
        while (true) {
            i11 = this.f21624n;
            if (i18 >= i11) {
                break;
            }
            System.arraycopy(this.f21619i[i18], 0, bArr5[i18], 0, this.f21623m);
            i18++;
        }
        this.f21621k = (byte[][]) Array.newInstance(Byte.TYPE, i11 - 1, this.f21623m);
        int i19 = this.f21624n - 1;
        while (i19 >= 0) {
            i d10 = i19 == this.f21624n - i13 ? d(null, vectorArr[i19], bArr5[i19], i19) : d(bArr3[i19 + 1], vectorArr[i19], bArr5[i19], i19);
            int i20 = 0;
            while (i20 < this.f21627q[i19]) {
                System.arraycopy(d10.a()[i20], 0, bArr[i19][i20], 0, this.f21623m);
                i20++;
                vectorArr = vectorArr;
            }
            vectorArr3[i19] = d10.b();
            nVarArr[i19] = d10.g();
            System.arraycopy(d10.c(), 0, bArr3[i19], 0, this.f21623m);
            i19--;
            vectorArr = vectorArr;
            i13 = 1;
        }
        Vector[] vectorArr5 = vectorArr;
        int i21 = this.f21624n - 2;
        while (i21 >= 0) {
            int i22 = i21 + 1;
            i e10 = e(vectorArr2[i21], bArr5[i22], i22);
            int i23 = 0;
            while (i23 < this.f21627q[i22]) {
                System.arraycopy(e10.a()[i23], 0, bArr2[i21][i23], 0, this.f21623m);
                i23++;
                vectorArr3 = vectorArr3;
            }
            vectorArr4[i21] = e10.b();
            nVarArr2[i21] = e10.g();
            System.arraycopy(e10.c(), 0, bArr4[i21], 0, this.f21623m);
            System.arraycopy(bArr5[i22], 0, this.f21620j[i21], 0, this.f21623m);
            i21--;
            vectorArr3 = vectorArr3;
        }
        return new C2371c((C3335c) new h(bArr3[0], this.f21626p), (C3335c) new g(this.f21619i, this.f21620j, bArr, bArr2, nVarArr, nVarArr2, vectorArr5, vectorArr2, vectorArr3, vectorArr4, bArr4, this.f21621k, this.f21626p, this.f21622l));
    }

    @Override
    public C2371c a() {
        return c();
    }

    @Override
    public void b(G g10) {
        g(g10);
    }

    public final i d(byte[] bArr, Vector vector, byte[] bArr2, int i10) {
        byte[] a10;
        int i11 = this.f21623m;
        byte[] bArr3 = new byte[i11];
        byte[] bArr4 = new byte[i11];
        byte[] c10 = this.f21617g.c(bArr2);
        i iVar = new i(this.f21627q[i10], this.f21629s[i10], this.f21622l);
        iVar.h(vector);
        if (i10 == this.f21624n - 1) {
            a10 = new Ql.d(c10, this.f21622l.get(), this.f21628r[i10]).c();
        } else {
            this.f21621k[i10] = new Ql.d(c10, this.f21622l.get(), this.f21628r[i10]).d(bArr);
            a10 = new Ql.c(this.f21622l.get(), this.f21628r[i10]).a(bArr, this.f21621k[i10]);
        }
        iVar.j(a10);
        int i12 = 3;
        int i13 = 0;
        int i14 = 1;
        while (true) {
            int i15 = this.f21627q[i10];
            if (i14 >= (1 << i15)) {
                break;
            }
            if (i14 == i12 && i13 < i15 - this.f21629s[i10]) {
                iVar.i(bArr2, i13);
                i12 *= 2;
                i13++;
            }
            iVar.j(new Ql.d(this.f21617g.c(bArr2), this.f21622l.get(), this.f21628r[i10]).c());
            i14++;
        }
        if (iVar.l()) {
            return iVar;
        }
        System.err.println("Baum noch nicht fertig konstruiert!!!");
        return null;
    }

    public final i e(Vector vector, byte[] bArr, int i10) {
        byte[] bArr2 = new byte[this.f21624n];
        i iVar = new i(this.f21627q[i10], this.f21629s[i10], this.f21622l);
        iVar.h(vector);
        int i11 = 3;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int i14 = this.f21627q[i10];
            if (i12 >= (1 << i14)) {
                break;
            }
            if (i12 == i11 && i13 < i14 - this.f21629s[i10]) {
                iVar.i(bArr, i13);
                i11 *= 2;
                i13++;
            }
            iVar.j(new Ql.d(this.f21617g.c(bArr), this.f21622l.get(), this.f21628r[i10]).c());
            i12++;
        }
        if (iVar.l()) {
            return iVar;
        }
        System.err.println("N\ufffdchster Baum noch nicht fertig konstruiert!!!");
        return null;
    }

    public void f(int i10, SecureRandom secureRandom) {
        g(i10 <= 10 ? new b(secureRandom, new f(1, new int[]{10}, new int[]{3}, new int[]{2})) : i10 <= 20 ? new b(secureRandom, new f(2, new int[]{10, 10}, new int[]{5, 4}, new int[]{2, 2})) : new b(secureRandom, new f(4, new int[]{10, 10, 10, 10}, new int[]{9, 9, 9, 3}, new int[]{2, 2, 2, 2})));
    }

    public void g(G g10) {
        b bVar = (b) g10;
        this.f21630t = bVar;
        f fVar = new f(bVar.c().c(), this.f21630t.c().a(), this.f21630t.c().d(), this.f21630t.c().b());
        this.f21626p = fVar;
        this.f21624n = fVar.c();
        this.f21627q = this.f21626p.a();
        this.f21628r = this.f21626p.d();
        this.f21629s = this.f21626p.b();
        int[] iArr = {this.f21624n, this.f21623m};
        Class<Byte> cls = Byte.TYPE;
        this.f21619i = (byte[][]) Array.newInstance(cls, iArr);
        this.f21620j = (byte[][]) Array.newInstance(cls, this.f21624n - 1, this.f21623m);
        SecureRandom a10 = g10.a();
        for (int i10 = 0; i10 < this.f21624n; i10++) {
            a10.nextBytes(this.f21619i[i10]);
            this.f21617g.c(this.f21619i[i10]);
        }
        this.f21625o = true;
    }

    public final void h() {
        g(new b(null, new f(4, new int[]{10, 10, 10, 10}, new int[]{3, 3, 3, 3}, new int[]{2, 2, 2, 2})));
    }
}
