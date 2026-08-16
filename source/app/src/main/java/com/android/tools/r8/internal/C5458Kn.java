package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.J0;
import com.android.tools.r8.graph.O0;
import com.android.tools.r8.graph.W0;
import com.android.tools.r8.internal.B60;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class C5458Kn {

    public static final boolean f41761r = true;

    public final C4798y f41762a;

    public final C7215fB f41763b;

    public final C9541t8 f41764c;

    public final C8421mS f41765d;

    public final C8570nJ f41766e;

    public final EW f41767f;

    public AbstractC5168Fn[] f41773l;

    public AbstractC5168Fn f41774m;

    public W5 f41778q;

    public final ArrayList f41768g = new ArrayList();

    public final ArrayList f41769h = new ArrayList();

    public final Set f41770i = AbstractC5513Ll0.c();

    public int f41771j = 0;

    public int f41772k = 0;

    public int f41775n = 0;

    public int f41776o = 0;

    public boolean f41777p = false;

    public C5458Kn(C7215fB c7215fB, C9875v8 c9875v8, InterfaceC5381Je0 interfaceC5381Je0, C8570nJ c8570nJ, EW ew) {
        if (!f41761r && c7215fB != null && ew != c7215fB.f47895b) {
            throw new AssertionError();
        }
        this.f41762a = interfaceC5381Je0.c();
        this.f41763b = c7215fB;
        C9708u8 c9708u8 = C9708u8.f52785b;
        this.f41764c = new C9541t8(c9875v8);
        this.f41765d = (C8421mS) interfaceC5381Je0;
        this.f41766e = c8570nJ;
        this.f41767f = ew;
        if (c7215fB == null) {
            this.f41773l = new AbstractC5168Fn[1];
        }
    }

    public final void a(AbstractC10561zE abstractC10561zE, AbstractC5168Fn abstractC5168Fn) {
        if (this.f41763b == null) {
            if (!f41761r && this.f41773l.length != 1) {
                throw new AssertionError();
            }
            this.f41773l[0] = abstractC5168Fn;
            return;
        }
        boolean z10 = f41761r;
        if (!z10 && abstractC10561zE == null) {
            throw new AssertionError();
        }
        if (!z10 && a(abstractC10561zE) != null) {
            throw new AssertionError();
        }
        int i10 = this.f41772k;
        boolean z11 = AbstractC5168Fn.f40309d;
        if (!z11 && i10 < 0) {
            throw new AssertionError();
        }
        int i11 = this.f41771j;
        if (!z11 && i11 < 0) {
            throw new AssertionError();
        }
        abstractC5168Fn.f40312c = i11;
        this.f41772k = abstractC5168Fn.d() + i10;
        this.f41771j = abstractC5168Fn.c() + this.f41771j;
        if (!z10 && abstractC10561zE.f54322g < 0) {
            throw new AssertionError();
        }
        if (!(abstractC5168Fn instanceof C4878An)) {
            this.f41774m = abstractC5168Fn;
        }
        this.f41773l[abstractC10561zE.f54322g / 2] = abstractC5168Fn;
    }

    /* JADX WARN: Code restructure failed: missing block: B:449:0x0156, code lost:
    
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x011e, code lost:
    
        r28.f41773l = new com.android.tools.r8.internal.AbstractC5168Fn[r4.f47901h / 2];
        r28.f41775n = 0;
        r28.f41776o = 0;
        r4 = null;
        r28.f41778q = null;
        r5 = r28.f41763b.u();
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0134, code lost:
    
        if (com.android.tools.r8.internal.C5458Kn.f41761r != false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x013a, code lost:
    
        if (r5.hasNext() == false) goto L415;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0142, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0143, code lost:
    
        r6 = r5.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x014d, code lost:
    
        if (r5.hasNext() == false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x014f, code lost:
    
        r8 = r5.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0157, code lost:
    
        r28.f41778q = r8;
        r6 = r6.f45293f.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0163, code lost:
    
        if (r6.hasNext() == false) goto L431;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0165, code lost:
    
        r6.next().a(r28);
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x016f, code lost:
    
        r6 = r28.f41778q;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0171, code lost:
    
        if (r6 != null) goto L430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0173, code lost:
    
        r5 = r28.f41763b.q().iterator();
        r6 = 0;
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0183, code lost:
    
        if (r5.hasNext() == false) goto L432;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0185, code lost:
    
        r9 = a(r5.next());
        r9.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0194, code lost:
    
        if (com.android.tools.r8.internal.AbstractC5168Fn.f40309d != false) goto L433;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0196, code lost:
    
        if (r8 < 0) goto L411;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x019e, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x019f, code lost:
    
        r9.f40311b = r8;
        r8 = r8 + r9.a(r28);
        r6 = r6 + 1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:199:0x04d6  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x04db A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:260:0x046a  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x0856  */
    /* JADX WARN: Removed duplicated region for block: B:417:0x085b  */
    /* JADX WARN: Type inference failed for: r10v27, types: [com.android.tools.r8.internal.SG, com.android.tools.r8.internal.Q] */
    /* JADX WARN: Type inference failed for: r1v34, types: [com.android.tools.r8.internal.SG, com.android.tools.r8.internal.Q] */
    /* JADX WARN: Type inference failed for: r2v16, types: [com.android.tools.r8.internal.SG, com.android.tools.r8.internal.Q] */
    /* JADX WARN: Type inference failed for: r2v21, types: [com.android.tools.r8.internal.SG, com.android.tools.r8.internal.Q] */
    /* JADX WARN: Type inference failed for: r2v23, types: [com.android.tools.r8.internal.SG, com.android.tools.r8.internal.Q] */
    /* JADX WARN: Type inference failed for: r2v28, types: [com.android.tools.r8.internal.SG, com.android.tools.r8.internal.Q] */
    /* JADX WARN: Type inference failed for: r2v33, types: [com.android.tools.r8.internal.SG, com.android.tools.r8.internal.Q] */
    /* JADX WARN: Type inference failed for: r2v34, types: [com.android.tools.r8.internal.SG, com.android.tools.r8.internal.Q] */
    /* JADX WARN: Type inference failed for: r2v38, types: [com.android.tools.r8.internal.SG, com.android.tools.r8.internal.Q] */
    /* JADX WARN: Type inference failed for: r2v54, types: [com.android.tools.r8.internal.xy, java.util.Map, com.android.tools.r8.internal.Q] */
    /* JADX WARN: Type inference failed for: r3v23, types: [com.android.tools.r8.internal.SG, com.android.tools.r8.internal.Q] */
    /* JADX WARN: Type inference failed for: r4v28, types: [com.android.tools.r8.internal.SG, com.android.tools.r8.internal.Q] */
    /* JADX WARN: Type inference failed for: r4v31, types: [com.android.tools.r8.internal.SG, com.android.tools.r8.internal.Q] */
    /* JADX WARN: Type inference failed for: r4v37, types: [com.android.tools.r8.internal.SG, com.android.tools.r8.internal.Q] */
    /* JADX WARN: Type inference failed for: r4v39, types: [com.android.tools.r8.internal.SG, com.android.tools.r8.internal.Q] */
    /* JADX WARN: Type inference failed for: r4v40, types: [com.android.tools.r8.internal.SG, com.android.tools.r8.internal.Q] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final com.android.tools.r8.graph.J0 b() {
        int i10;
        int i11;
        int i12;
        W0.a aVar;
        W0.a aVar2;
        AbstractC5635Np c8491ms;
        int i13;
        int i14;
        int i15;
        boolean z10;
        boolean z11;
        boolean z12 = false;
        boolean z13 = true;
        do {
            if (!this.f41770i.isEmpty()) {
                Z5 u10 = this.f41763b.u();
                while (u10.hasNext()) {
                    W5 next = u10.next();
                    if (this.f41770i.contains(next)) {
                        EB V10 = next.i().V();
                        W5 v22 = V10.v2();
                        W5 a10 = W5.a(this.f41763b.f47899f.a(), V10.getPosition(), this.f41763b.f47902i, v22);
                        boolean z14 = EB.f39788m;
                        if (!z14 && V10.b().i() != V10) {
                            throw new AssertionError();
                        }
                        List<W5> n10 = V10.b().n();
                        if (!z14 && n10.size() < 2) {
                            throw new AssertionError();
                        }
                        n10.set(n10.size() - 2, a10);
                        a10.m().add(next);
                        v22.a(next, a10);
                        W5 v23 = V10.v2();
                        W5 u22 = V10.u2();
                        if (!z14 && V10.b().i() != V10) {
                            throw new AssertionError();
                        }
                        List<W5> n11 = V10.b().n();
                        if (!z14 && n11.size() < 2) {
                            throw new AssertionError();
                        }
                        n11.set(n11.size() - 2, u22);
                        V10.a(v23);
                        V10.f39789l = V10.f39789l.b();
                        u10.add(a10);
                    }
                }
            }
            a(this.f41762a, this.f41763b);
            a();
            this.f41768g.clear();
            this.f41769h.clear();
            this.f41770i.clear();
            this.f41771j = 0;
            this.f41772k = 0;
            C7215fB c7215fB = this.f41763b;
            Iterator<AbstractC10561zE> it = c7215fB.q().iterator();
            while (true) {
                i10 = -1;
                if (!it.hasNext()) {
                    break;
                }
                AbstractC10561zE next2 = it.next();
                if (next2.f54322g == -1) {
                    int i16 = c7215fB.f47901h;
                    if (!AbstractC10561zE.f54316j && i16 == -1) {
                        throw new AssertionError();
                    }
                    next2.f54322g = i16;
                    c7215fB.f47901h = i16 + 2;
                }
            }
        } while (!this.f41770i.isEmpty());
        com.android.tools.r8.graph.U0 u02 = new com.android.tools.r8.graph.U0(this.f41762a, this.f41763b);
        ArrayList arrayList = new ArrayList(i11);
        Iterator<AbstractC10561zE> it2 = this.f41763b.q().iterator();
        int i17 = 0;
        while (it2.hasNext()) {
            AbstractC10561zE next3 = it2.next();
            AbstractC5168Fn a11 = a(next3);
            int size = arrayList.size();
            a11.a(this, arrayList);
            int i18 = i17;
            while (size < arrayList.size()) {
                int i19 = size + 1;
                AbstractC5635Np abstractC5635Np = (AbstractC5635Np) arrayList.get(size);
                abstractC5635Np.e(i18);
                i18 += abstractC5635Np.y();
                size = i19;
            }
            boolean z15 = next3.b().f45293f.a() == next3 ? z13 : z12;
            boolean z16 = next3.b().i() == next3 ? z13 : z12;
            if (z15) {
                boolean z17 = com.android.tools.r8.graph.U0.f36842o;
                if (!z17 && u02.f36848f != null) {
                    throw new AssertionError();
                }
                if (!z17 && u02.f36850h) {
                    throw new AssertionError();
                }
                C6899dH c6899dH = next3.b().f45288a;
                if (c6899dH == null) {
                    u02.f36848f = UG.f44715a;
                } else {
                    C6899dH c6899dH2 = new C6899dH(c6899dH.f47346h);
                    c6899dH2.putAll(c6899dH);
                    u02.f36848f = c6899dH2;
                    u02.f36850h = z13;
                }
                Q q10 = u02.f36853k;
                if (q10 == null) {
                    if (!z17 && u02.f36846d != null) {
                        throw new AssertionError();
                    }
                    if (!z17 && q10 != null) {
                        throw new AssertionError();
                    }
                    if (!z17 && u02.f36847e != null) {
                        throw new AssertionError();
                    }
                    if (!z17 && u02.f36856n != i10) {
                        throw new AssertionError();
                    }
                    if (c6899dH == null) {
                        TG tg2 = UG.f44715a;
                        u02.f36853k = tg2;
                        u02.f36847e = tg2;
                    } else {
                        u02.f36853k = new C6899dH(16);
                        WG wg2 = new WG(((C6399aH) c6899dH.c()).f46484b);
                        while (wg2.hasNext()) {
                            RG rg2 = (RG) wg2.next();
                            if (((C4515j0) rg2.getValue()).f37309d == null) {
                                u02.f36853k.a(rg2.a(), (C4515j0) rg2.getValue());
                            } else if (u02.f36845c.f50599F1.f50849V0) {
                                ArrayList arrayList2 = u02.f36855m;
                                int a12 = rg2.a();
                                C4515j0 c4515j0 = (C4515j0) rg2.getValue();
                                arrayList2.add(new O0.d(a12, c4515j0.f37307b, c4515j0.f37308c, c4515j0.f37309d));
                                u02.f36853k.a(rg2.a(), (C4515j0) rg2.getValue());
                            }
                        }
                        ?? r22 = u02.f36853k;
                        C6899dH c6899dH3 = new C6899dH(r22.size());
                        c6899dH3.putAll(r22);
                        u02.f36847e = c6899dH3;
                    }
                }
                if (u02.f36849g == null) {
                    u02.f36849g = next3.getPosition();
                }
            }
            boolean z18 = com.android.tools.r8.graph.U0.f36842o;
            if (!z18 && u02.f36848f == null) {
                throw new AssertionError();
            }
            B60 position = next3.getPosition();
            boolean z19 = i17 != i18;
            if (!z18) {
                next3.a(u02.f36845c.f50690i1);
            }
            if (next3.k1()) {
                C8024k3 v10 = next3.v();
                if (u02.f36846d == null) {
                    u02.f36846d = new ArrayList(u02.f36843a.getReference().w0());
                }
                if (!v10.d().f53893j) {
                    u02.f36846d.add(v10.q());
                }
            } else if (next3 instanceof C7297fj) {
                C7297fj M10 = next3.M();
                u02.f36850h = true;
                M10.a((SG) u02.f36848f);
            } else if (z19) {
                if (!position.o() && !InterfaceC7166ev.a(position, u02.f36852j) && (u02.f36845c.f50690i1 || next3.o() || u02.f36854l)) {
                    if (!z18 && InterfaceC7166ev.a(position, u02.f36852j)) {
                        throw new AssertionError();
                    }
                    if (u02.f36856n == -1) {
                        if (!z18 && !u02.f36852j.o()) {
                            throw new AssertionError();
                        }
                        if (!(position instanceof B60.c) || position.k()) {
                            u02.f36856n = position.f();
                            B60 h10 = position.h();
                            B60.b.a a13 = B60.b.t().a(position.f()).a(h10.f38808c);
                            a13.f38816e = h10.f38811f;
                            u02.f36852j = a13.a();
                        }
                    }
                    if (!z18 && u02.f36851i == i17) {
                        throw new AssertionError();
                    }
                    int i20 = u02.f36851i;
                    int i21 = i20 == -1 ? 0 : i20;
                    i14 = i18;
                    i15 = i17;
                    com.android.tools.r8.graph.U0.a(i21, u02.f36852j, i17, position, u02.f36855m, u02.f36844b, false);
                    u02.f36851i = i15;
                    u02.f36852j = position;
                    if (u02.f36850h) {
                        z11 = !C4515j0.a((SG) u02.f36853k, (SG) u02.f36848f);
                        u02.f36850h = z11;
                    } else {
                        z11 = false;
                    }
                    if (z11) {
                        com.android.tools.r8.graph.U0.a(u02.f36853k, u02.f36848f, u02.f36847e, u02.f36855m, u02.f36844b);
                        if (!z18 && !C4515j0.a((SG) u02.f36853k, (SG) u02.f36848f)) {
                            throw new AssertionError();
                        }
                    }
                    u02.f36850h = false;
                    if (u02.f36851i != i15) {
                        if (u02.f36850h) {
                            z10 = !C4515j0.a((SG) u02.f36853k, (SG) u02.f36848f);
                            u02.f36850h = z10;
                        } else {
                            z10 = false;
                        }
                        if (z10) {
                            if (!z18 && u02.f36851i == i15) {
                                throw new AssertionError();
                            }
                            int i22 = u02.f36851i;
                            int i23 = i22 == -1 ? i15 : i15 - i22;
                            if (!z18 && i23 <= 0 && i22 != -1) {
                                throw new AssertionError();
                            }
                            if (i23 > 0) {
                                u02.f36855m.add(u02.f36844b.b(i23));
                            }
                            u02.f36851i = i15;
                            com.android.tools.r8.graph.U0.a(u02.f36853k, u02.f36848f, u02.f36847e, u02.f36855m, u02.f36844b);
                            u02.f36850h = false;
                            if (!z18 && !C4515j0.a((SG) u02.f36853k, (SG) u02.f36848f)) {
                                throw new AssertionError();
                            }
                        }
                    }
                    if (z16) {
                        u02.f36848f = null;
                        u02.f36850h = false;
                    }
                    Object obj = null;
                    i17 = i14;
                    z12 = false;
                    z13 = true;
                    i10 = -1;
                }
                i14 = i18;
                i15 = i17;
                if (u02.f36851i != i15) {
                }
                if (z16) {
                }
                Object obj2 = null;
                i17 = i14;
                z12 = false;
                z13 = true;
                i10 = -1;
            }
            i14 = i18;
            if (z16) {
            }
            Object obj22 = null;
            i17 = i14;
            z12 = false;
            z13 = true;
            i10 = -1;
        }
        C8570nJ c8570nJ = this.f41766e;
        c8570nJ.getClass();
        if (c8570nJ.a(C2.L) && (J6.a(arrayList, 1) instanceof C5062Ds) && this.f41777p) {
            AbstractC5635Np abstractC5635Np2 = (AbstractC5635Np) J6.a(arrayList, 1);
            int u11 = abstractC5635Np2.u();
            C9150qp c9150qp = new C9150qp(abstractC5635Np2.y() + 1);
            C9150qp c9150qp2 = new C9150qp(-abstractC5635Np2.y());
            c9150qp.e(u11);
            int i24 = u11 + 1;
            abstractC5635Np2.e(i24);
            int y10 = abstractC5635Np2.y() + i24;
            c9150qp2.e(y10);
            i12 = y10 + 1;
            arrayList.remove(arrayList.size() - 1);
            arrayList.add(c9150qp);
            arrayList.add(abstractC5635Np2);
            arrayList.add(c9150qp2);
        }
        ArrayList arrayList3 = this.f41768g;
        int size2 = arrayList3.size();
        int i25 = 0;
        while (i25 < size2) {
            Object obj3 = arrayList3.get(i25);
            i25++;
            C5342In c5342In = (C5342In) obj3;
            if (i12 % 2 != 0) {
                C8154kr c8154kr = new C8154kr();
                c8154kr.e(i12);
                arrayList.add(c8154kr);
                i12++;
            }
            C9569tI c9569tI = c5342In.f41208a;
            c5342In.f41209b.f49364g = i12 - a(c9569tI).a();
            int[] iArr = c9569tI.f46639l;
            int length = iArr.length;
            int[] iArr2 = new int[length];
            for (int i26 = 0; i26 < iArr.length; i26++) {
                iArr2[i26] = a(c9569tI.b(i26).f45293f.a()).a() - a(c9569tI).a();
            }
            int a14 = a(c9569tI.u2().f45293f.a()).a() - a(c9569tI).a();
            EnumC9738uJ enumC9738uJ = EnumC9738uJ.f52833b;
            boolean z20 = C9569tI.f52577p;
            if (!z20 && c9569tI.f52578o.length != length) {
                throw new AssertionError();
            }
            if (c9569tI.a(enumC9738uJ)) {
                int a15 = (int) C9569tI.a(c9569tI.f52578o);
                if (length == a15) {
                    c8491ms = new C9823ur(iArr2, c9569tI.f52578o[0]);
                } else {
                    char c10 = 0;
                    int[] iArr3 = new int[a15];
                    int i27 = 0;
                    int i28 = 0;
                    while (i27 < a15) {
                        int[] iArr4 = c9569tI.f52578o;
                        if (iArr4[i28] == iArr4[c10] + i27) {
                            iArr3[i27] = iArr2[i28];
                            i13 = 1;
                            i28++;
                        } else {
                            i13 = 1;
                            iArr3[i27] = a14;
                        }
                        i27 += i13;
                        c10 = 0;
                    }
                    if (!C9569tI.f52577p && i28 != c9569tI.f52578o.length) {
                        throw new AssertionError();
                    }
                    c8491ms = new C9823ur(iArr3, c9569tI.f52578o[0]);
                }
            } else {
                if (!z20 && c9569tI.v2() != c9569tI.f52578o.length) {
                    throw new AssertionError();
                }
                c8491ms = new C8491ms(c9569tI.f52578o, iArr2);
            }
            c8491ms.e(i12);
            i12 += c8491ms.y();
            arrayList.add(c8491ms);
        }
        ArrayList arrayList4 = this.f41769h;
        int size3 = arrayList4.size();
        int i29 = 0;
        while (i29 < size3) {
            Object obj4 = arrayList4.get(i29);
            i29++;
            C4936Bn c4936Bn = (C4936Bn) obj4;
            if (i12 % 2 != 0) {
                C8154kr c8154kr2 = new C8154kr();
                c8154kr2.e(i12);
                arrayList.add(c8154kr2);
                i12++;
            }
            C9269rZ c9269rZ = c4936Bn.f39015a;
            c9269rZ.getClass();
            C5460Ko c5460Ko = new C5460Ko(c9269rZ.f52062k, c9269rZ.f52063l, c9269rZ.f52064m);
            c5460Ko.e(i12);
            C5402Jo c5402Jo = c4936Bn.f39016b;
            c5402Jo.f49364g = i12 - c5402Jo.u();
            i12 += c5460Ko.f41784i.length + 4;
            arrayList.add(c5460Ko);
        }
        C7045eA c7045eA = new C7045eA(16);
        ArrayList arrayList5 = (ArrayList) a(a(c7045eA), arrayList);
        int size4 = arrayList5.size();
        J0.a[] aVarArr = new J0.a[size4];
        for (int i30 = 0; i30 < size4; i30++) {
            C5400Jn c5400Jn = (C5400Jn) arrayList5.get(i30);
            int i31 = c5400Jn.f41502c;
            J0.a aVar3 = new J0.a(i31, c5400Jn.f41503d - i31, -1);
            aVar3.f36473e = ((Integer) c7045eA.get(c5400Jn.f41501b)).intValue();
            aVarArr[i30] = aVar3;
        }
        C6379aA c6379aA = (C6379aA) c7045eA.f();
        J0.b[] bVarArr = new J0.b[c6379aA.f46435b.f47620f];
        for (int i32 = 0; i32 < c6379aA.f46435b.f47620f; i32++) {
            N8 n82 = (N8) c6379aA.get(Integer.valueOf(i32));
            ArrayList arrayList6 = new ArrayList();
            int i33 = -1;
            for (int i34 = 0; i34 < n82.f42510b.size(); i34++) {
                com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) n82.f42510b.get(i34);
                int a16 = a(((W5) n82.f42511c.get(i34)).f45293f.a()).a();
                if (m22 != this.f41766e.f50660a.f38173v3) {
                    arrayList6.add(new J0.b.a(a16, m22));
                } else {
                    if (!f41761r && i34 != n82.f42510b.size() - 1) {
                        throw new AssertionError();
                    }
                    i33 = a16;
                }
            }
            bVarArr[i32] = new J0.b((J0.b.a[]) arrayList6.toArray(new J0.b.a[0]), i33);
        }
        int d10 = this.f41765d.d();
        int i35 = this.f41775n;
        int i36 = this.f41776o;
        AbstractC5635Np[] abstractC5635NpArr = (AbstractC5635Np[]) arrayList.toArray(AbstractC5635Np.f42702c);
        boolean z21 = com.android.tools.r8.graph.U0.f36842o;
        if (!z21 && u02.f36848f != null) {
            throw new AssertionError();
        }
        if (!z21 && u02.f36850h) {
            throw new AssertionError();
        }
        if (!z21 && u02.f36849g == null) {
            throw new AssertionError();
        }
        if (u02.f36856n != -1) {
            int w02 = u02.f36843a.getReference().w0();
            com.android.tools.r8.graph.L2[] l2Arr = new com.android.tools.r8.graph.L2[w02];
            ArrayList arrayList7 = u02.f36846d;
            if (arrayList7 != null) {
                if (!z21 && w02 != arrayList7.size()) {
                    throw new AssertionError();
                }
                for (int i37 = 0; i37 < u02.f36846d.size(); i37++) {
                    C4515j0 c4515j02 = (C4515j0) u02.f36846d.get(i37);
                    l2Arr[i37] = (c4515j02 == null || c4515j02.f37309d != null) ? null : c4515j02.f37307b;
                }
            }
            if (!com.android.tools.r8.graph.U0.f36842o && !AbstractC9647to.a((com.android.tools.r8.graph.O0[]) u02.f36855m.toArray(com.android.tools.r8.graph.O0.f36660b))) {
                throw new AssertionError();
            }
            aVar = new W0.a(u02.f36856n, l2Arr, (com.android.tools.r8.graph.O0[]) u02.f36855m.toArray(com.android.tools.r8.graph.O0.f36660b));
        } else {
            if (!u02.f36849g.k()) {
                aVar2 = null;
                C9541t8 c9541t8 = this.f41764c;
                return new com.android.tools.r8.graph.J0(d10, i35, i36, abstractC5635NpArr, aVarArr, bVarArr, aVar2, !c9541t8.f52542b.isEmpty() ? C9708u8.f52785b : new C9708u8(c9541t8.f52542b));
            }
            aVar = new W0.a(u02.f36849g.f(), new com.android.tools.r8.graph.L2[u02.f36843a.getReference().w0()], new com.android.tools.r8.graph.O0[]{u02.f36844b.a(u02.f36849g), u02.f36844b.f38137r});
        }
        aVar2 = aVar;
        C9541t8 c9541t82 = this.f41764c;
        return new com.android.tools.r8.graph.J0(d10, i35, i36, abstractC5635NpArr, aVarArr, bVarArr, aVar2, !c9541t82.f52542b.isEmpty() ? C9708u8.f52785b : new C9708u8(c9541t82.f52542b));
    }

    public static void a(C4798y c4798y, C7215fB c7215fB) {
        W5 u22;
        if (!c4798y.E().a(c7215fB.j()) || !c7215fB.f47902i.a(19)) {
            return;
        }
        int i10 = 1;
        while (true) {
            int i11 = 0;
            if (i10 < c7215fB.f47897d.size()) {
                W5 w52 = c7215fB.f47897d.get(i10);
                if (!f41761r && w52.u().isEmpty()) {
                    throw new AssertionError();
                }
                if (w52.f45293f.size() == 2) {
                    C7631hj N10 = w52.f45293f.a().N();
                    C4960Bz U10 = w52.i().U();
                    if (N10 != null && U10 != null && !N10.getPosition().o()) {
                        B60 position = N10.getPosition();
                        Iterator<W5> it = w52.u().iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                w52.f45293f.b(N10);
                                C8328lt0.b(w52, U10.v2());
                                c7215fB.b((Collection<W5>) Collections.singleton(w52));
                                i10 = Math.max(0, i10 - 2);
                                break;
                            }
                            W5 next = it.next();
                            if (next == w52) {
                                break;
                            }
                            B60 position2 = next.i().getPosition();
                            position.getClass();
                            if (!InterfaceC7166ev.a(position, position2)) {
                                break;
                            }
                            AbstractC9408sL i12 = next.i();
                            if (i12.H1()) {
                                u22 = i12.V().u2();
                            } else if (i12.l2()) {
                                u22 = i12.Q0().u2();
                            } else {
                                continue;
                            }
                            if (u22 == w52) {
                                int i13 = i10 + 1;
                                if (i13 >= c7215fB.f47897d.size()) {
                                    break;
                                }
                                if (R5.a(w52) != c7215fB.f47897d.get(i13)) {
                                    break;
                                }
                            } else {
                                continue;
                            }
                        }
                    }
                }
                i10++;
            } else {
                ArrayList arrayList = new ArrayList();
                c7215fB.a((InterfaceC6715cB) new C10479yn(arrayList));
                if (arrayList.isEmpty()) {
                    return;
                }
                C7549hB p10 = c7215fB.p();
                while (p10.hasNext() && i11 < arrayList.size()) {
                    if (p10.next() == arrayList.get(i11)) {
                        p10.remove();
                        i11++;
                    }
                }
                if (!f41761r && i11 != arrayList.size()) {
                    throw new AssertionError();
                }
                return;
            }
        }
    }

    public final void a() {
        if (this.f41762a.E().f50690i1 && this.f41762a.E().f50733x) {
            this.f41763b.a(new InterfaceC6715cB() {
                @Override
                public final void a(W5 w52, W5 w53, W5 w54) {
                    C5458Kn.this.a(w52, w53, w54);
                }
            });
        }
    }

    public final void a(W5 w52, W5 w53, W5 w54) {
        Y5 I10 = w52.I();
        while (I10.hasNext()) {
            AbstractC10561zE next = I10.next();
            if (next.N1() && !next.getPosition().o()) {
                B60 position = next.getPosition();
                position.getClass();
                if (!(position instanceof B60.c)) {
                    if (next.a0().v2() != this.f41762a.b().f37905M1 && (!next.e1() || !next.d().T())) {
                        B60 position2 = next.getPosition();
                        AbstractC10561zE next2 = I10.next();
                        if (next2.G1() && next2.U().v2() == w54) {
                            next2 = w54.f45293f.a();
                        }
                        B60 position3 = next2.getPosition();
                        position2.getClass();
                        if (!InterfaceC7166ev.a(position2, position3)) {
                            I10.previous();
                            C7631hj c7631hj = new C7631hj();
                            c7631hj.b(position2);
                            I10.add(c7631hj);
                        }
                    }
                }
            }
        }
    }

    public final void a(AbstractC10561zE abstractC10561zE, AbstractC5635Np abstractC5635Np) {
        if (!f41761r && abstractC10561zE.G1()) {
            throw new AssertionError();
        }
        a(abstractC10561zE, new C4994Cn(abstractC10561zE, abstractC5635Np));
        C9541t8 c9541t8 = this.f41764c;
        C9374s8 c9374s8 = (C9374s8) c9541t8.f52541a.f53018a.get(abstractC10561zE);
        if (c9374s8 != null) {
            c9541t8.f52542b.put(abstractC5635Np, c9374s8);
        }
    }

    public final void a(AbstractC10561zE abstractC10561zE, AbstractC5635Np... abstractC5635NpArr) {
        if (!f41761r && abstractC10561zE.G1()) {
            throw new AssertionError();
        }
        a(abstractC10561zE, new C5284Hn(abstractC10561zE, abstractC5635NpArr));
    }

    public final AbstractC5168Fn a(AbstractC10561zE abstractC10561zE) {
        if (!f41761r && abstractC10561zE.f54322g < 0) {
            throw new AssertionError();
        }
        return this.f41773l[abstractC10561zE.f54322g / 2];
    }

    public final AbstractC5168Fn a(W5 w52) {
        AE H10 = w52.H();
        AbstractC10561zE abstractC10561zE = null;
        while (H10.hasNext()) {
            abstractC10561zE = H10.next();
            AbstractC5168Fn a10 = a(abstractC10561zE);
            if (!(a10 instanceof C4878An)) {
                return a10;
            }
        }
        boolean z10 = f41761r;
        if (!z10 && abstractC10561zE == null) {
            throw new AssertionError();
        }
        if (abstractC10561zE.g2()) {
            if (!z10 && !(a(abstractC10561zE) instanceof C4878An)) {
                throw new AssertionError();
            }
            Z5 u10 = this.f41763b.u();
            for (W5 next = u10.next(); next != w52; next = u10.next()) {
            }
            return a(u10.next());
        }
        if (z10 || abstractC10561zE.G1()) {
            return a(abstractC10561zE.U().v2());
        }
        throw new AssertionError();
    }

    public final ArrayList a(C7045eA c7045eA) {
        InterfaceC7200f6 f10 = c7045eA.f();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<W5> it = this.f41763b.f47897d.iterator();
        C5400Jn c5400Jn = null;
        while (true) {
            C5400Jn c5400Jn2 = null;
            while (true) {
                int i10 = 0;
                if (it.hasNext()) {
                    W5 next = it.next();
                    N8 j10 = next.j();
                    if (!f41761r && !j10.isEmpty() && !next.a()) {
                        throw new AssertionError();
                    }
                    if (!j10.isEmpty()) {
                        if (c7045eA.containsKey(j10)) {
                            j10 = (N8) ((C6379aA) f10).get(c7045eA.get(j10));
                        } else {
                            c7045eA.a(j10, Integer.valueOf(c7045eA.f47620f), false);
                        }
                        AbstractC5168Fn a10 = a(next.f45293f.a());
                        AbstractC5168Fn a11 = a(next.i());
                        C5400Jn c5400Jn3 = new C5400Jn(j10, a10.a(), a11.b() + a11.a());
                        arrayList.add(c5400Jn3);
                        arrayList2.add(next);
                        c5400Jn2 = c5400Jn3;
                    } else if (c5400Jn2 != null && !next.a()) {
                        AbstractC5168Fn a12 = a(next.i());
                        if (a12 != null) {
                            c5400Jn2.f41503d = a12.b() + a12.a();
                        }
                    }
                } else {
                    if (arrayList.isEmpty()) {
                        return arrayList;
                    }
                    arrayList.sort(new Comparator() {
                        @Override
                        public final int compare(Object obj, Object obj2) {
                            return ((C5400Jn) obj).a((C5400Jn) obj2);
                        }
                    });
                    ArrayList arrayList3 = new ArrayList(arrayList.size());
                    while (i10 < arrayList.size()) {
                        if (c5400Jn != null) {
                            for (AbstractC10561zE b10 = ((W5) arrayList2.get(i10 - 1)).f45293f.b(); b10 != null; b10 = b10.b1()) {
                                if (b10.o()) {
                                    AbstractC5168Fn a13 = a(b10);
                                    c5400Jn.f41503d = a13.b() + a13.a();
                                }
                            }
                            throw new C5417Jv0("Expected to find a possibly throwing instruction");
                        }
                        c5400Jn = (C5400Jn) arrayList.get(i10);
                        arrayList3.add(c5400Jn);
                        Y5 it2 = ((W5) arrayList2.get(i10)).l().iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            AbstractC10561zE next2 = it2.next();
                            if (next2.o()) {
                                c5400Jn.f41502c = a(next2).a();
                                break;
                            }
                        }
                        while (true) {
                            i10++;
                            if (i10 < arrayList.size()) {
                                C5400Jn c5400Jn4 = (C5400Jn) arrayList.get(i10);
                                if (c5400Jn.f41503d == c5400Jn4.f41502c && c5400Jn.f41501b.equals(c5400Jn4.f41501b)) {
                                    c5400Jn.f41503d = c5400Jn4.f41503d;
                                }
                            }
                        }
                    }
                    for (AbstractC10561zE b11 = ((W5) arrayList2.get(arrayList.size() - 1)).f45293f.b(); b11 != null; b11 = b11.b1()) {
                        if (b11.o()) {
                            AbstractC5168Fn a14 = a(b11);
                            c5400Jn.f41503d = a14.b() + a14.a();
                            return arrayList3;
                        }
                    }
                    throw new C5417Jv0("Expected to find a possibly throwing instruction");
                }
            }
        }
    }

    public static List a(ArrayList arrayList, ArrayList arrayList2) {
        int i10;
        int size = arrayList.size();
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < size) {
            Object obj = arrayList.get(i12);
            i12++;
            C5400Jn c5400Jn = (C5400Jn) obj;
            for (int i14 = c5400Jn.f41503d - c5400Jn.f41502c; i14 > 65535; i14 -= 65535) {
                i13++;
            }
        }
        if (i13 == 0) {
            return arrayList;
        }
        ArrayList arrayList3 = new ArrayList(arrayList.size() + i13 + 1);
        int size2 = arrayList.size();
        while (i11 < size2) {
            Object obj2 = arrayList.get(i11);
            i11++;
            C5400Jn c5400Jn2 = (C5400Jn) obj2;
            int i15 = c5400Jn2.f41503d;
            int i16 = c5400Jn2.f41502c;
            if (i15 - i16 <= 65535) {
                arrayList3.add(c5400Jn2);
            } else {
                N8 n82 = c5400Jn2.f41501b;
                while (i15 - i16 > 65535) {
                    int i17 = i16 + 65535;
                    if (!f41761r && i17 >= i15) {
                        throw new AssertionError();
                    }
                    int size3 = arrayList2.size() - 1;
                    while (true) {
                        if (size3 < 0) {
                            i10 = -1;
                            break;
                        }
                        AbstractC5635Np abstractC5635Np = (AbstractC5635Np) arrayList2.get(size3);
                        if (abstractC5635Np.u() <= i17) {
                            i10 = abstractC5635Np.u();
                            break;
                        }
                        size3--;
                    }
                    if (i10 > i16) {
                        arrayList3.add(new C5400Jn(n82, i16, i10));
                        i16 = i10;
                    } else {
                        throw new C5417Jv0("Unexpected try-catch handler end point: " + i10);
                    }
                }
                if (!f41761r && i16 >= i15) {
                    throw new AssertionError();
                }
                arrayList3.add(new C5400Jn(n82, i16, i15));
            }
        }
        if (f41761r || arrayList3.size() >= arrayList.size() + i13) {
            return arrayList3;
        }
        throw new AssertionError();
    }
}
