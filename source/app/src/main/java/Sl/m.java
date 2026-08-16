package Sl;

import Bi.C2371c;
import Bi.G;
import Bi.InterfaceC2372d;
import Bi.r;
import Sl.o;
import Xi.C3335c;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public class m implements InterfaceC2372d {

    public l f23758g;

    public class b implements Callable<o.a> {
        public b() {
        }

        @Override
        public o.a call() throws Exception {
            return m.this.d();
        }
    }

    public static class c extends o.a {

        public Yl.e f23760e;

        public Yl.e f23761f;

        public c(Yl.i iVar, Yl.i iVar2, Yl.e eVar, Yl.e eVar2, Yl.e eVar3, l lVar) {
            super(iVar, iVar2, eVar, lVar);
            this.f23760e = eVar2;
            this.f23761f = eVar3;
        }

        public boolean c() {
            l lVar = this.f23781d;
            double d10 = lVar.f23750q;
            int i10 = lVar.f23738e;
            return ((double) this.f23760e.k(i10)) < d10 && ((double) this.f23761f.k(i10)) < d10;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public C2371c a() {
        p pVar;
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        ArrayList arrayList = new ArrayList();
        int i10 = this.f23758g.f23743j;
        while (true) {
            pVar = null;
            Object[] objArr = 0;
            if (i10 < 0) {
                break;
            }
            arrayList.add(newCachedThreadPool.submit(new b()));
            i10--;
        }
        newCachedThreadPool.shutdown();
        ArrayList arrayList2 = new ArrayList();
        for (int i11 = this.f23758g.f23743j; i11 >= 0; i11--) {
            Future future = (Future) arrayList.get(i11);
            try {
                arrayList2.add((o.a) future.get());
                if (i11 == this.f23758g.f23743j) {
                    pVar = new p(((o.a) future.get()).f23780c, this.f23758g.d());
                }
            } catch (Exception e10) {
                throw new IllegalStateException(e10);
            }
        }
        return new C2371c((C3335c) pVar, (C3335c) new o(arrayList2, pVar));
    }

    @Override
    public void b(G g10) {
        this.f23758g = (l) g10;
    }

    public final c c() {
        int i10;
        Yl.i i11;
        Yl.i iVar;
        Yl.e b10;
        Yl.e y10;
        int i12;
        Yl.k kVar;
        Yl.e eVar;
        int i13;
        Yl.e eVar2;
        int i14;
        Yl.i iVar2;
        Yl.i i15;
        Yl.e b11;
        Yl.k K10;
        Xl.a a10;
        Yl.b i16;
        Yl.e e10;
        Yl.i iVar3;
        l lVar = this.f23758g;
        int i17 = lVar.f23737d;
        int i18 = lVar.f23738e;
        int i19 = lVar.f23739f;
        int i20 = lVar.f23740g;
        int i21 = lVar.f23741h;
        int i22 = lVar.f23742i;
        int i23 = lVar.f23752s;
        int i24 = (i17 * 2) + 1;
        boolean z10 = lVar.f23751r;
        while (true) {
            if (this.f23758g.f23757x == 0) {
                i11 = Yl.d.Y(i17, i19 + 1, i19, r.h());
                i10 = i24;
            } else {
                i10 = i24;
                i11 = Yl.j.i(i17, i20, i21, i22 + 1, i22, r.h());
            }
            iVar = i11;
            b10 = iVar.b();
            if ((!z10 || !b10.J(i10).f30646b.equals(BigInteger.ZERO)) && (y10 = b10.y(i18)) != null) {
                break;
            }
            i24 = i10;
        }
        Yl.k K11 = b10.K();
        while (true) {
            if (this.f23758g.f23757x == 0) {
                i15 = Yl.d.Y(i17, i19 + 1, i19, r.h());
                i12 = i19;
                i13 = i20;
                kVar = K11;
                eVar = y10;
                eVar2 = b10;
                i14 = i23;
                iVar2 = iVar;
            } else {
                int i25 = i20;
                i12 = i19;
                kVar = K11;
                eVar = y10;
                i13 = i20;
                eVar2 = b10;
                i14 = i23;
                iVar2 = iVar;
                i15 = Yl.j.i(i17, i25, i21, i22 + 1, i22, r.h());
            }
            b11 = i15.b();
            if ((!z10 || !b11.J(i10).f30646b.equals(BigInteger.ZERO)) && b11.y(i18) != null) {
                K10 = b11.K();
                a10 = Xl.a.a(kVar.f30646b, K10.f30646b);
                if (a10.f29649c.equals(BigInteger.ONE)) {
                    break;
                }
            }
            K11 = kVar;
            b10 = eVar2;
            iVar = iVar2;
            i20 = i13;
            i19 = i12;
            i23 = i14;
            y10 = eVar;
        }
        Yl.b bVar = (Yl.b) kVar.f30645a.clone();
        bVar.l(a10.f29647a.multiply(BigInteger.valueOf(i18)));
        Yl.b bVar2 = (Yl.b) K10.f30645a.clone();
        bVar2.l(a10.f29648b.multiply(BigInteger.valueOf(-i18)));
        int i26 = 0;
        if (this.f23758g.f23755v == 0) {
            int[] iArr = new int[i17];
            int[] iArr2 = new int[i17];
            iArr[0] = eVar2.f30630a[0];
            iArr2[0] = b11.f30630a[0];
            for (int i27 = 1; i27 < i17; i27++) {
                int i28 = i17 - i27;
                iArr[i27] = eVar2.f30630a[i28];
                iArr2[i27] = b11.f30630a[i28];
            }
            Yl.e eVar3 = new Yl.e(iArr);
            Yl.e eVar4 = new Yl.e(iArr2);
            Yl.e a11 = iVar2.a(eVar3);
            a11.h(i15.a(eVar4));
            Yl.k K12 = a11.K();
            Yl.b c10 = eVar3.c(bVar2);
            c10.a(eVar4.c(bVar));
            i16 = c10.j(K12.f30645a);
            i16.d(K12.f30646b);
        } else {
            for (int i29 = 1; i29 < i17; i29 *= 10) {
                i26++;
            }
            Yl.a c11 = kVar.f30645a.c(new BigDecimal(kVar.f30646b), bVar2.g() + 1 + i26);
            Yl.a c12 = K10.f30645a.c(new BigDecimal(K10.f30646b), bVar.g() + 1 + i26);
            Yl.a g10 = c11.g(bVar2);
            g10.a(c12.g(bVar));
            g10.e();
            i16 = g10.i();
        }
        Yl.b bVar3 = (Yl.b) bVar2.clone();
        bVar3.n(iVar2.c(i16));
        Yl.b bVar4 = (Yl.b) bVar.clone();
        bVar4.n(i15.c(i16));
        Yl.e eVar5 = new Yl.e(bVar3);
        Yl.e eVar6 = new Yl.e(bVar4);
        f(eVar2, b11, eVar5, eVar6, i17);
        Yl.e eVar7 = eVar;
        if (i14 == 0) {
            e10 = i15.e(eVar7, i18);
            iVar3 = eVar5;
        } else {
            e10 = eVar5.e(eVar7, i18);
            iVar3 = i15;
        }
        e10.D(i18);
        return new c(iVar2, iVar3, e10, eVar5, eVar6, this.f23758g);
    }

    public o.a d() {
        c c10;
        do {
            c10 = c();
        } while (!c10.c());
        return c10;
    }

    public C2371c e() {
        ArrayList arrayList = new ArrayList();
        p pVar = null;
        for (int i10 = this.f23758g.f23743j; i10 >= 0; i10--) {
            o.a d10 = d();
            arrayList.add(d10);
            if (i10 == 0) {
                pVar = new p(d10.f23780c, this.f23758g.d());
            }
        }
        return new C2371c((C3335c) pVar, (C3335c) new o(arrayList, pVar));
    }

    public final void f(Yl.e eVar, Yl.e eVar2, Yl.e eVar3, Yl.e eVar4, int i10) {
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            int i13 = eVar.f30630a[i12];
            int i14 = eVar2.f30630a[i12];
            i11 += i10 * 2 * ((i13 * i13) + (i14 * i14));
        }
        int i15 = i11 - 4;
        Yl.e eVar5 = (Yl.e) eVar.clone();
        Yl.e eVar6 = (Yl.e) eVar2.clone();
        int i16 = 0;
        int i17 = 0;
        while (i16 < i10 && i17 < i10) {
            int i18 = 0;
            for (int i19 = 0; i19 < i10; i19++) {
                i18 += i10 * 4 * ((eVar3.f30630a[i19] * eVar.f30630a[i19]) + (eVar4.f30630a[i19] * eVar2.f30630a[i19]));
            }
            int T10 = i18 - ((eVar3.T() + eVar4.T()) * 4);
            if (T10 > i15) {
                eVar3.R(eVar5);
                eVar4.R(eVar6);
            } else if (T10 < (-i15)) {
                eVar3.h(eVar5);
                eVar4.h(eVar6);
            } else {
                i17++;
                eVar5.M();
                eVar6.M();
            }
            i16++;
            i17 = 0;
            i17++;
            eVar5.M();
            eVar6.M();
        }
    }
}
