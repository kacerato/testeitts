package Sl;

import Bi.C2371c;
import Bi.G;
import Bi.InterfaceC2372d;
import Xi.C3335c;

public class c implements InterfaceC2372d {

    public b f23680g;

    @Override
    public C2371c a() {
        Yl.i a10;
        Yl.e b10;
        Yl.e y10;
        Yl.e eVar;
        Yl.d Y10;
        b bVar = this.f23680g;
        int i10 = bVar.f23657d;
        int i11 = bVar.f23658e;
        int i12 = bVar.f23659f;
        int i13 = bVar.f23660g;
        int i14 = bVar.f23661h;
        int i15 = bVar.f23662i;
        int i16 = bVar.f23667n;
        boolean z10 = bVar.f23654B;
        boolean z11 = bVar.f23653A;
        Yl.e eVar2 = null;
        while (true) {
            b bVar2 = this.f23680g;
            int i17 = bVar2.f23655C;
            if (z10) {
                a10 = i17 == 0 ? Zl.b.a(i10, i12, i12, z11, bVar2.a()) : Yl.j.i(i10, i13, i14, i15, i15, bVar2.a());
                b10 = a10.b();
                b10.E(3);
                int[] iArr = b10.f30630a;
                iArr[0] = iArr[0] + 1;
            } else {
                a10 = i17 == 0 ? Zl.b.a(i10, i12, i12 - 1, z11, bVar2.a()) : Yl.j.i(i10, i13, i14, i15, i15 - 1, bVar2.a());
                b10 = a10.b();
                eVar2 = b10.x();
                if (eVar2 == null) {
                    continue;
                }
            }
            y10 = b10.y(i11);
            if (y10 != null) {
                break;
            }
        }
        if (z10) {
            eVar = new Yl.e(i10);
            eVar.f30630a[0] = 1;
        } else {
            eVar = eVar2;
        }
        do {
            Y10 = Yl.d.Y(i10, i16, i16 - 1, this.f23680g.a());
        } while (Y10.y(i11) == null);
        Yl.e e10 = Y10.e(y10, i11);
        e10.G(i11);
        e10.o(i11);
        Y10.clear();
        y10.clear();
        return new C2371c((C3335c) new g(e10, this.f23680g.d()), (C3335c) new f(e10, a10, eVar, this.f23680g.d()));
    }

    @Override
    public void b(G g10) {
        this.f23680g = (b) g10;
    }
}
