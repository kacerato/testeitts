package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.internal.C7201f60;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public final class C9988vq0 extends AbstractC10155wq0 {

    public static final boolean f53340m = true;

    public final W5 f53341f;

    public final W5 f53342g;

    public final W5 f53343h;

    public final W5 f53344i;

    public final C9901vH f53345j;

    public int f53346k;

    public final C10322xq0 f53347l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9988vq0(C10322xq0 c10322xq0, C7215fB c7215fB, Z5 z52, W5 w52, C8319lq0 c8319lq0, Set set) {
        super(c7215fB, z52, c8319lq0, set);
        this.f53347l = c10322xq0;
        this.f53341f = w52;
        this.f53342g = c8319lq0.u2();
        W5 w10 = c8319lq0.u2().w();
        this.f53343h = w10;
        this.f53344i = w10.w();
        this.f53345j = a(c8319lq0);
    }

    public static C9901vH a(C8319lq0 c8319lq0) {
        final C9901vH c9901vH = new C9901vH();
        InterfaceC5988Tr0 interfaceC5988Tr0 = new InterfaceC5988Tr0() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C9988vq0.a(SG.this, (com.android.tools.r8.graph.L2) obj, (W5) obj2);
            }
        };
        int i10 = 0;
        while (true) {
            com.android.tools.r8.graph.L2[] l2Arr = c8319lq0.f50122o;
            if (i10 >= l2Arr.length) {
                return c9901vH;
            }
            interfaceC5988Tr0.accept(l2Arr[i10], c8319lq0.b(i10));
            i10++;
        }
    }

    public static void a(SG sg2, com.android.tools.r8.graph.L2 l22, W5 w52) {
        int l02 = l22.l0();
        if (sg2.a(l02)) {
            ((Map) sg2.get(l02)).put(l22, w52);
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(l22, w52);
        sg2.a(l02, linkedHashMap);
    }

    @Override
    public final void a() {
        C4515j0 c4515j0;
        Iterator it = this.f53341f.p().iterator();
        while (true) {
            c4515j0 = null;
            if (!it.hasNext()) {
                break;
            }
            W5 w52 = (W5) it.next();
            W5 w53 = this.f53341f;
            w52.getClass();
            w52.a(w53, (C10696a) null, C6628bi.b(), EnumC6871d70.f47287c);
        }
        this.f53341f.O();
        W5 w54 = this.f53341f;
        Y5 b10 = w54.b(w54.f45293f.size());
        b10.previous();
        C7215fB c7215fB = this.f53613a;
        W5 w55 = this.f53343h;
        C9736uI k10 = AbstractC8999pu0.k();
        c7215fB.getClass();
        C7201f60 c7201f60 = new C7201f60(c7215fB.f47898e.a(), w55, k10, null, C7201f60.a.f47867b);
        C10340xw0 a10 = b10.a(this.f53613a, this.f53347l.f52646a.E(), -1, AbstractC8999pu0.k());
        c7201f60.g(a10);
        C8405mK c8405mK = new C8405mK(this.f53347l.f52646a.b().f37887J4.f38262x, this.f53613a.a(AbstractC8999pu0.k(), (C4515j0) null), new C5920Sm0(this.f53617e));
        c8405mK.b(this.f53616d);
        b10.add(c8405mK);
        C9734uH c9734uH = new C9734uH(((C7399gH) this.f53345j.values()).f48227b);
        while (c9734uH.hasNext()) {
            Map map = (Map) c9734uH.a().f44051c;
            W5 a11 = W5.a(this.f53613a.f47899f.a(), this.f53616d, this.f53613a.f47902i);
            this.f53614b.add(a11);
            this.f53341f.g(a11);
            W5 previous = this.f53614b.previous();
            if (!f53340m && previous != a11) {
                throw new AssertionError();
            }
            this.f53614b.next();
            for (Map.Entry entry : map.entrySet()) {
                a11.n().clear();
                Y5 I10 = a11.I();
                C10340xw0 a12 = I10.a(this.f53347l.f52646a, this.f53613a, (com.android.tools.r8.graph.L2) entry.getKey());
                this.f53615c.add(a11);
                C8405mK c8405mK2 = new C8405mK(this.f53347l.f52646a.b().f37887J4.f38249k, this.f53613a.a(AbstractC8999pu0.k(), c4515j0), AbstractC7552hC.a(this.f53617e, a12));
                c8405mK2.b(this.f53616d);
                I10.add(c8405mK2);
                W5 a13 = W5.a(this.f53613a.f47899f.a(), this.f53616d, this.f53613a.f47902i, this.f53343h);
                this.f53343h.m().add(a13);
                this.f53614b.add(a13);
                a11.g(a13);
                Y5 I11 = a13.I();
                C7215fB c7215fB2 = this.f53613a;
                C8570nJ E10 = this.f53347l.f52646a.E();
                int i10 = this.f53346k;
                this.f53346k = i10 + 1;
                I11.getClass();
                c7201f60.g(I11.a(c7215fB2, E10, i10, AbstractC8999pu0.k()));
                W5 a14 = W5.a(this.f53613a.f47899f.a(), this.f53616d, this.f53613a.f47902i, this.f53343h);
                this.f53614b.add(a14);
                a11.g(a14);
                I10.next();
                I10.a(new EB(NB.f42532g, c8405mK2.d()), (C10696a) null);
                c4515j0 = null;
                a11 = a14;
            }
            c7201f60.g(a10);
            this.f53343h.m().add(a11);
            c4515j0 = null;
        }
        this.f53341f.g(this.f53342g);
        C10340xw0 d10 = c8405mK.d();
        int i11 = 0;
        int[] a15 = ((W) this.f53345j.o()).a(new int[0]);
        int length = a15.length;
        int[] iArr = new int[length];
        int L10 = this.f53341f.L();
        for (int i12 = 0; i12 < length; i12++) {
            iArr[i12] = i12 + L10;
        }
        C9569tI c9569tI = new C9569tI(d10, a15, iArr, this.f53341f.v().size() - 1);
        b10.next();
        b10.a(c9569tI, (C10696a) null);
        C9115qd0 c9115qd0 = new C9115qd0();
        c9115qd0.f53665b = -1;
        this.f53343h.n().clear();
        C9734uH c9734uH2 = new C9734uH(((C7399gH) this.f53345j.values()).f48227b);
        while (c9734uH2.hasNext()) {
            for (W5 w56 : ((Map) c9734uH2.a().f44051c).values()) {
                if (c9115qd0.b(w56) == -1) {
                    c9115qd0.b(this.f53343h.v().size(), w56);
                    this.f53343h.g(w56);
                }
            }
        }
        this.f53343h.n().add(this.f53344i);
        int i13 = this.f53346k;
        boolean z10 = X3.f45604a;
        int[] iArr2 = new int[i13];
        for (int i14 = 0; i14 < i13; i14++) {
            iArr2[i14] = i14;
        }
        int[] iArr3 = new int[i13];
        C9734uH c9734uH3 = new C9734uH(((C7399gH) this.f53345j.values()).f48227b);
        while (c9734uH3.hasNext()) {
            Iterator it2 = ((Map) c9734uH3.a().f44051c).entrySet().iterator();
            while (it2.hasNext()) {
                iArr3[i11] = c9115qd0.b(((Map.Entry) it2.next()).getValue());
                i11++;
            }
        }
        C9569tI c9569tI2 = new C9569tI(c7201f60, iArr2, iArr3, c9115qd0.f51828i);
        Y5 I12 = this.f53343h.I();
        I12.next();
        I12.a(c9569tI2, (C10696a) null);
    }
}
