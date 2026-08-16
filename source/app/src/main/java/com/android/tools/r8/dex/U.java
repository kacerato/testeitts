package com.android.tools.r8.dex;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.J0;
import com.android.tools.r8.graph.L2;
import com.android.tools.r8.graph.O0;
import com.android.tools.r8.graph.U0;
import com.android.tools.r8.graph.W0;
import com.android.tools.r8.internal.AbstractC5004Cs;
import com.android.tools.r8.internal.AbstractC5635Np;
import com.android.tools.r8.internal.AbstractC6324Zo;
import com.android.tools.r8.internal.AbstractC6981dp;
import com.android.tools.r8.internal.AbstractC7981jp;
import com.android.tools.r8.internal.AbstractC9811un;
import com.android.tools.r8.internal.C10151wp;
import com.android.tools.r8.internal.C10318xp;
import com.android.tools.r8.internal.C10485yp;
import com.android.tools.r8.internal.C10652zp;
import com.android.tools.r8.internal.C4882Ap;
import com.android.tools.r8.internal.C4940Bp;
import com.android.tools.r8.internal.C4998Cp;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C6399aH;
import com.android.tools.r8.internal.C6899dH;
import com.android.tools.r8.internal.C8145ko;
import com.android.tools.r8.internal.C8154kr;
import com.android.tools.r8.internal.C8312lo;
import com.android.tools.r8.internal.C8816op;
import com.android.tools.r8.internal.C8983pp;
import com.android.tools.r8.internal.C9150qp;
import com.android.tools.r8.internal.C9316rp;
import com.android.tools.r8.internal.C9483sp;
import com.android.tools.r8.internal.C9650tp;
import com.android.tools.r8.internal.C9817up;
import com.android.tools.r8.internal.C9984vp;
import com.android.tools.r8.internal.CT;
import com.android.tools.r8.internal.RG;
import com.android.tools.r8.internal.WG;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.function.BooleanSupplier;
import java.util.function.UnaryOperator;

public class U {

    public static final boolean f35777l = true;

    public final C4516j1 f35778a;

    public final L2 f35779b;

    public final BooleanSupplier f35780c;

    public final C4724u1 f35781d;

    public final IdentityHashMap f35782e = new IdentityHashMap();

    public W0.a f35783f = null;

    public final C6899dH f35784g = new C6899dH(16);

    public final IdentityHashMap f35785h = new IdentityHashMap();

    public final IdentityHashMap f35786i = new IdentityHashMap();

    public final C6899dH f35787j = new C6899dH(16);

    public final IdentityHashMap f35788k = new IdentityHashMap();

    public U(C4516j1 c4516j1, L2 l22, BooleanSupplier booleanSupplier, C4724u1 c4724u1) {
        this.f35778a = c4516j1;
        this.f35779b = l22;
        this.f35780c = booleanSupplier;
        this.f35781d = c4724u1;
    }

    public static AbstractC5635Np a(AbstractC5635Np abstractC5635Np, AbstractC5635Np abstractC5635Np2, AbstractC5635Np abstractC5635Np3) {
        return abstractC5635Np3 == abstractC5635Np ? abstractC5635Np2 : abstractC5635Np3;
    }

    public static AbstractC5635Np b(AbstractC5635Np abstractC5635Np, AbstractC5635Np abstractC5635Np2, AbstractC5635Np abstractC5635Np3) {
        return abstractC5635Np3 == abstractC5635Np ? abstractC5635Np2 : abstractC5635Np3;
    }

    public final J0.a[] a(J0 j02) {
        int i10;
        ArrayList arrayList = new ArrayList(j02.f36461h.length + 10);
        for (J0.a aVar : j02.f36461h) {
            T t10 = (T) this.f35786i.get(aVar);
            int a10 = t10.a();
            int u10 = t10.f35774a.u();
            while (a10 > 65535) {
                int i11 = 65535 + u10;
                int length = j02.f36463j.length - 1;
                while (true) {
                    if (length < 0) {
                        i10 = -1;
                        break;
                    }
                    AbstractC5635Np abstractC5635Np = j02.f36463j[length];
                    if (abstractC5635Np.u() <= i11) {
                        i10 = abstractC5635Np.u();
                        break;
                    }
                    length--;
                }
                if (i10 > u10) {
                    int i12 = i10 - u10;
                    J0.a aVar2 = new J0.a(u10, i12, -1);
                    aVar2.f36473e = aVar.f36473e;
                    arrayList.add(aVar2);
                    a10 -= i12;
                    u10 = i10;
                } else {
                    throw new C5417Jv0("Unexpected try-catch handler end point: " + i10);
                }
            }
            if (!f35777l && a10 <= 0) {
                throw new AssertionError();
            }
            J0.a aVar3 = new J0.a(u10, a10, -1);
            aVar3.f36473e = aVar.f36473e;
            arrayList.add(aVar3);
        }
        if (f35777l || arrayList.size() > j02.f36461h.length) {
            return (J0.a[]) arrayList.toArray(J0.a.f36468f);
        }
        throw new AssertionError();
    }

    public final int a(int i10, ListIterator listIterator, AbstractC9811un abstractC9811un, AbstractC9811un abstractC9811un2) {
        int u10 = abstractC9811un.u() + 2;
        C8983pp c8983pp = new C8983pp(0);
        c8983pp.e(u10);
        abstractC9811un2.e(abstractC9811un.u());
        listIterator.set(abstractC9811un2);
        a(abstractC9811un, abstractC9811un2);
        listIterator.add(c8983pp);
        int i11 = i10 + 3;
        IdentityHashMap identityHashMap = this.f35782e;
        identityHashMap.put(c8983pp, (List) identityHashMap.remove(abstractC9811un));
        AbstractC5635Np abstractC5635Np = (AbstractC5635Np) listIterator.next();
        IdentityHashMap identityHashMap2 = this.f35782e;
        ArrayList arrayList = new ArrayList(CT.a(1));
        Collections.addAll(arrayList, abstractC5635Np);
        identityHashMap2.put(abstractC9811un2, arrayList);
        listIterator.previous();
        return i11;
    }

    public final void a(final AbstractC5635Np abstractC5635Np, final AbstractC5635Np abstractC5635Np2) {
        Iterator it = this.f35782e.values().iterator();
        while (it.hasNext()) {
            ((List) it.next()).replaceAll(new UnaryOperator() {
                @Override
                public final Object apply(Object obj) {
                    return com.android.tools.r8.dex.U.a(AbstractC5635Np.this, abstractC5635Np2, (AbstractC5635Np) obj);
                }
            });
        }
        WG wg2 = new WG(((C6399aH) this.f35784g.c()).f46484b);
        while (wg2.hasNext()) {
            RG rg2 = (RG) wg2.next();
            if (rg2.getValue() == abstractC5635Np) {
                rg2.setValue(abstractC5635Np2);
            }
        }
        Iterator it2 = this.f35786i.entrySet().iterator();
        while (it2.hasNext()) {
            T t10 = (T) ((Map.Entry) it2.next()).getValue();
            if (t10.f35774a == abstractC5635Np) {
                t10.f35774a = abstractC5635Np2;
            }
            if (t10.f35775b == abstractC5635Np) {
                t10.f35775b = abstractC5635Np2;
            }
        }
        Iterator it3 = this.f35788k.values().iterator();
        while (it3.hasNext()) {
            ((List) it3.next()).replaceAll(new UnaryOperator() {
                @Override
                public final Object apply(Object obj) {
                    return com.android.tools.r8.dex.U.b(AbstractC5635Np.this, abstractC5635Np2, (AbstractC5635Np) obj);
                }
            });
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x04b7, code lost:
    
        r3 = a(r3, r2, r7, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x044c, code lost:
    
        r3 = a(r3, r2, r7, r13);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:123:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x032a  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x039d  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x05cf  */
    /* JADX WARN: Removed duplicated region for block: B:373:0x072b  */
    /* JADX WARN: Removed duplicated region for block: B:382:0x076d  */
    /* JADX WARN: Removed duplicated region for block: B:392:0x07ba A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:419:0x0742 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public J0 a() {
        LinkedList<AbstractC5635Np> linkedList;
        ListIterator listIterator;
        int i10;
        J0 C10;
        J0.a[] aVarArr;
        int i11;
        J0.a[] aVarArr2;
        J0 C11;
        J0.b[] bVarArr;
        int i12;
        J0.b[] bVarArr2;
        W0 E02;
        J0.a aVar;
        T t10;
        int a10;
        AbstractC5635Np c8983pp;
        AbstractC5635Np abstractC5635Np;
        T t11;
        C6899dH c6899dH = new C6899dH(16);
        AbstractC5635Np[] abstractC5635NpArr = this.f35778a.Q0().C().f36463j;
        int length = abstractC5635NpArr.length;
        int i13 = 0;
        boolean z10 = false;
        while (i13 < length) {
            AbstractC5635Np abstractC5635Np2 = abstractC5635NpArr[i13];
            c6899dH.a(abstractC5635Np2.u(), abstractC5635Np2);
            if (abstractC5635Np2.B()) {
                z10 = true;
            }
            i13++;
            z10 = z10;
        }
        if (z10) {
            for (AbstractC5635Np abstractC5635Np3 : abstractC5635NpArr) {
                if (abstractC5635Np3.B()) {
                    AbstractC5635Np abstractC5635Np4 = (AbstractC5635Np) c6899dH.get(abstractC5635Np3.w() + abstractC5635Np3.u());
                    if (!f35777l && abstractC5635Np4 == null) {
                        throw new AssertionError();
                    }
                    this.f35785h.put(abstractC5635Np4, abstractC5635Np3);
                }
            }
        }
        for (AbstractC5635Np abstractC5635Np5 : this.f35778a.Q0().C().f36463j) {
            if (abstractC5635Np5 instanceof AbstractC6981dp) {
                AbstractC6981dp abstractC6981dp = (AbstractC6981dp) abstractC5635Np5;
                AbstractC5635Np abstractC5635Np6 = (AbstractC5635Np) c6899dH.get(abstractC6981dp.u() + abstractC6981dp.f47528h);
                if (!f35777l && abstractC5635Np6 == null) {
                    throw new AssertionError();
                }
                IdentityHashMap identityHashMap = this.f35782e;
                ArrayList arrayList = new ArrayList(CT.a(1));
                Collections.addAll(arrayList, abstractC5635Np6);
                identityHashMap.put(abstractC5635Np5, arrayList);
            } else if (abstractC5635Np5 instanceof AbstractC6324Zo) {
                AbstractC6324Zo abstractC6324Zo = (AbstractC6324Zo) abstractC5635Np5;
                AbstractC5635Np abstractC5635Np7 = (AbstractC5635Np) c6899dH.get(abstractC6324Zo.u() + abstractC6324Zo.f46353g);
                if (!f35777l && abstractC5635Np7 == null) {
                    throw new AssertionError();
                }
                IdentityHashMap identityHashMap2 = this.f35782e;
                ArrayList arrayList2 = new ArrayList(CT.a(1));
                Collections.addAll(arrayList2, abstractC5635Np7);
                identityHashMap2.put(abstractC5635Np5, arrayList2);
            } else if (abstractC5635Np5 instanceof C9150qp) {
                C9150qp c9150qp = (C9150qp) abstractC5635Np5;
                AbstractC5635Np abstractC5635Np8 = (AbstractC5635Np) c6899dH.get(c9150qp.u() + c9150qp.f43730f);
                if (!f35777l && abstractC5635Np8 == null) {
                    throw new AssertionError();
                }
                IdentityHashMap identityHashMap3 = this.f35782e;
                ArrayList arrayList3 = new ArrayList(CT.a(1));
                Collections.addAll(arrayList3, abstractC5635Np8);
                identityHashMap3.put(abstractC5635Np5, arrayList3);
            } else if (abstractC5635Np5 instanceof C8816op) {
                C8816op c8816op = (C8816op) abstractC5635Np5;
                AbstractC5635Np abstractC5635Np9 = (AbstractC5635Np) c6899dH.get(c8816op.u() + c8816op.f45179f);
                if (!f35777l && abstractC5635Np9 == null) {
                    throw new AssertionError();
                }
                IdentityHashMap identityHashMap4 = this.f35782e;
                ArrayList arrayList4 = new ArrayList(CT.a(1));
                Collections.addAll(arrayList4, abstractC5635Np9);
                identityHashMap4.put(abstractC5635Np5, arrayList4);
            } else if (abstractC5635Np5 instanceof C8983pp) {
                C8983pp c8983pp2 = (C8983pp) abstractC5635Np5;
                AbstractC5635Np abstractC5635Np10 = (AbstractC5635Np) c6899dH.get(c8983pp2.u() + c8983pp2.f48363f);
                if (!f35777l && abstractC5635Np10 == null) {
                    throw new AssertionError();
                }
                IdentityHashMap identityHashMap5 = this.f35782e;
                ArrayList arrayList5 = new ArrayList(CT.a(1));
                Collections.addAll(arrayList5, abstractC5635Np10);
                identityHashMap5.put(abstractC5635Np5, arrayList5);
            } else if (abstractC5635Np5.B()) {
                AbstractC7981jp abstractC7981jp = (AbstractC7981jp) abstractC5635Np5;
                AbstractC5635Np abstractC5635Np11 = (AbstractC5635Np) c6899dH.get(abstractC7981jp.u() + abstractC7981jp.f49364g);
                if (!f35777l && abstractC5635Np11 == null) {
                    throw new AssertionError();
                }
                IdentityHashMap identityHashMap6 = this.f35782e;
                ArrayList arrayList6 = new ArrayList(CT.a(1));
                Collections.addAll(arrayList6, abstractC5635Np11);
                identityHashMap6.put(abstractC5635Np5, arrayList6);
            } else if (abstractC5635Np5 instanceof AbstractC5004Cs) {
                int[] P10 = ((AbstractC5004Cs) abstractC5635Np5).P();
                int u10 = ((AbstractC5635Np) this.f35785h.get(abstractC5635Np5)).u();
                ArrayList arrayList7 = new ArrayList();
                for (int i14 : P10) {
                    AbstractC5635Np abstractC5635Np12 = (AbstractC5635Np) c6899dH.get(i14 + u10);
                    if (!f35777l && abstractC5635Np12 == null) {
                        throw new AssertionError();
                    }
                    arrayList7.add(abstractC5635Np12);
                }
                this.f35782e.put(abstractC5635Np5, arrayList7);
            } else {
                continue;
            }
        }
        W0.a a11 = W0.a(this.f35778a.Q0().C(), this.f35781d);
        if (a11 == null) {
            if (this.f35780c.getAsBoolean()) {
                int size = this.f35778a.V0().size();
                J0 C12 = this.f35778a.Q0().C();
                C4724u1 c4724u1 = this.f35781d;
                if (!W0.f36922d && C12.E0() != null) {
                    throw new AssertionError();
                }
                a11 = W0.a(0, size, C12.f36463j, c4724u1);
            }
            AbstractC5635Np abstractC5635Np13 = abstractC5635NpArr[abstractC5635NpArr.length - 1];
            J0 C13 = this.f35778a.Q0().C();
            for (J0.a aVar2 : C13.f36461h) {
                AbstractC5635Np abstractC5635Np14 = (AbstractC5635Np) c6899dH.get(aVar2.f36471c);
                int i15 = aVar2.f36471c + aVar2.f36472d;
                if (i15 > abstractC5635Np13.u()) {
                    t11 = new T(abstractC5635Np14, abstractC5635Np13, true);
                    abstractC5635Np = abstractC5635Np13;
                } else {
                    AbstractC5635Np abstractC5635Np15 = (AbstractC5635Np) c6899dH.get(i15);
                    abstractC5635Np = abstractC5635Np15;
                    t11 = new T(abstractC5635Np14, abstractC5635Np15, false);
                }
                boolean z11 = f35777l;
                if (!z11 && aVar2.f36471c != t11.f35774a.u()) {
                    throw new AssertionError();
                }
                if (!z11 && aVar2.f36472d != t11.a()) {
                    throw new AssertionError();
                }
                this.f35786i.put(aVar2, t11);
                this.f35787j.a(abstractC5635Np14.u(), abstractC5635Np14);
                this.f35787j.a(abstractC5635Np.u(), abstractC5635Np);
            }
            for (J0.b bVar : C13.f36462i) {
                ArrayList arrayList8 = new ArrayList();
                int i16 = bVar.f36477c;
                if (i16 != -1) {
                    AbstractC5635Np abstractC5635Np16 = (AbstractC5635Np) c6899dH.get(i16);
                    if (!f35777l && abstractC5635Np16 == null) {
                        throw new AssertionError();
                    }
                    arrayList8.add(abstractC5635Np16);
                }
                for (J0.b.a aVar3 : bVar.f36476b) {
                    AbstractC5635Np abstractC5635Np17 = (AbstractC5635Np) c6899dH.get(aVar3.f36480c);
                    if (!f35777l && abstractC5635Np17 == null) {
                        throw new AssertionError();
                    }
                    arrayList8.add(abstractC5635Np17);
                }
                this.f35788k.put(bVar, arrayList8);
            }
            linkedList = new LinkedList();
            Collections.addAll(linkedList, this.f35778a.Q0().C().f36463j);
            do {
                listIterator = linkedList.listIterator();
                i10 = 0;
                while (listIterator.hasNext()) {
                    AbstractC5635Np abstractC5635Np18 = (AbstractC5635Np) listIterator.next();
                    int u11 = abstractC5635Np18.u();
                    abstractC5635Np18.e(u11 + i10);
                    if (abstractC5635Np18 instanceof C8145ko) {
                        C8145ko c8145ko = (C8145ko) abstractC5635Np18;
                        if (c8145ko.O().compareTo(this.f35779b) >= 0) {
                            C8312lo c8312lo = new C8312lo(c8145ko.f45540f, c8145ko.O());
                            c8312lo.e(c8145ko.u());
                            i10++;
                            listIterator.set(c8312lo);
                            a(abstractC5635Np18, c8312lo);
                        }
                    } else {
                        AbstractC9811un abstractC9811un = null;
                        AbstractC9811un abstractC9811un2 = null;
                        if (abstractC5635Np18 instanceof AbstractC6981dp) {
                            AbstractC6981dp abstractC6981dp2 = (AbstractC6981dp) abstractC5635Np18;
                            int u12 = ((AbstractC5635Np) ((List) this.f35782e.get(abstractC6981dp2)).get(0)).u() - abstractC5635Np18.u();
                            if (-32768 > u12 || u12 > 32767) {
                                switch (S.f35772a[abstractC6981dp2.P().b().ordinal()]) {
                                    case 1:
                                        abstractC9811un = new C9316rp(abstractC6981dp2.f47526f, abstractC6981dp2.f47527g, 0);
                                        break;
                                    case 2:
                                        abstractC9811un = new C9650tp(abstractC6981dp2.f47526f, abstractC6981dp2.f47527g, 0);
                                        break;
                                    case 3:
                                        abstractC9811un = new C9984vp(abstractC6981dp2.f47526f, abstractC6981dp2.f47527g, 0);
                                        break;
                                    case 4:
                                        abstractC9811un = new C10318xp(abstractC6981dp2.f47526f, abstractC6981dp2.f47527g, 0);
                                        break;
                                    case 5:
                                        abstractC9811un = new C10652zp(abstractC6981dp2.f47526f, abstractC6981dp2.f47527g, 0);
                                        break;
                                    case 6:
                                        abstractC9811un = new C4940Bp(abstractC6981dp2.f47526f, abstractC6981dp2.f47527g, 0);
                                        break;
                                }
                            }
                        } else if (abstractC5635Np18 instanceof AbstractC6324Zo) {
                            AbstractC6324Zo abstractC6324Zo2 = (AbstractC6324Zo) abstractC5635Np18;
                            int u13 = ((AbstractC5635Np) ((List) this.f35782e.get(abstractC6324Zo2)).get(0)).u() - abstractC5635Np18.u();
                            if (-32768 > u13 || u13 > 32767) {
                                switch (S.f35772a[abstractC6324Zo2.P().b().ordinal()]) {
                                    case 1:
                                        abstractC9811un2 = new C9483sp(abstractC6324Zo2.f46352f, 0);
                                        break;
                                    case 2:
                                        abstractC9811un2 = new C9817up(abstractC6324Zo2.f46352f, 0);
                                        break;
                                    case 3:
                                        abstractC9811un2 = new C10151wp(abstractC6324Zo2.f46352f, 0);
                                        break;
                                    case 4:
                                        abstractC9811un2 = new C10485yp(abstractC6324Zo2.f46352f, 0);
                                        break;
                                    case 5:
                                        abstractC9811un2 = new C4882Ap(abstractC6324Zo2.f46352f, 0);
                                        break;
                                    case 6:
                                        abstractC9811un2 = new C4998Cp(abstractC6324Zo2.f46352f, 0);
                                        break;
                                }
                            }
                        } else if (abstractC5635Np18 instanceof C9150qp) {
                            AbstractC5635Np abstractC5635Np19 = (C9150qp) abstractC5635Np18;
                            int u14 = ((AbstractC5635Np) ((List) this.f35782e.get(abstractC5635Np19)).get(0)).u() - abstractC5635Np18.u();
                            if (-128 > u14 || u14 > 127) {
                                if (-32768 <= u14 && u14 <= 32767) {
                                    c8983pp = new C8816op(u14);
                                } else {
                                    c8983pp = new C8983pp(u14);
                                }
                                c8983pp.e(abstractC5635Np19.u());
                                listIterator.set(c8983pp);
                                i10 += c8983pp.y() - abstractC5635Np19.y();
                                a(abstractC5635Np19, c8983pp);
                                this.f35782e.put(c8983pp, (List) this.f35782e.remove(abstractC5635Np19));
                            }
                        } else if (abstractC5635Np18 instanceof C8816op) {
                            AbstractC5635Np abstractC5635Np20 = (C8816op) abstractC5635Np18;
                            int u15 = ((AbstractC5635Np) ((List) this.f35782e.get(abstractC5635Np20)).get(0)).u() - abstractC5635Np18.u();
                            if (-32768 > u15 || u15 > 32767) {
                                C8983pp c8983pp3 = new C8983pp(u15);
                                c8983pp3.e(abstractC5635Np20.u());
                                listIterator.set(c8983pp3);
                                i10++;
                                a(abstractC5635Np20, c8983pp3);
                                this.f35782e.put(c8983pp3, (List) this.f35782e.remove(abstractC5635Np20));
                            }
                        } else if (!(abstractC5635Np18 instanceof C8983pp) && !abstractC5635Np18.B() && abstractC5635Np18.L() && abstractC5635Np18.u() % 2 != 0) {
                            listIterator.previous();
                            AbstractC5635Np abstractC5635Np21 = listIterator.hasPrevious() ? (AbstractC5635Np) listIterator.previous() : null;
                            if (abstractC5635Np21 != null && abstractC5635Np21.M() && this.f35784g.get(u11) == null && this.f35787j.get(u11) == null) {
                                listIterator.remove();
                                i10--;
                            } else {
                                if (abstractC5635Np21 != null) {
                                    listIterator.next();
                                }
                                C8154kr c8154kr = new C8154kr();
                                c8154kr.e(abstractC5635Np18.u());
                                listIterator.add(c8154kr);
                                i10++;
                            }
                            abstractC5635Np18.e(u11 + i10);
                            listIterator.next();
                        }
                    }
                }
            } while (i10 > 0);
            for (AbstractC5635Np abstractC5635Np22 : linkedList) {
                if (abstractC5635Np22 instanceof AbstractC6981dp) {
                    AbstractC6981dp abstractC6981dp3 = (AbstractC6981dp) abstractC5635Np22;
                    int u16 = ((AbstractC5635Np) ((List) this.f35782e.get(abstractC6981dp3)).get(0)).u() - abstractC5635Np22.u();
                    if (!f35777l && (-32768 > u16 || u16 > 32767)) {
                        throw new AssertionError();
                    }
                    abstractC6981dp3.f47528h = (short) u16;
                } else if (abstractC5635Np22 instanceof AbstractC6324Zo) {
                    AbstractC6324Zo abstractC6324Zo3 = (AbstractC6324Zo) abstractC5635Np22;
                    int u17 = ((AbstractC5635Np) ((List) this.f35782e.get(abstractC6324Zo3)).get(0)).u() - abstractC5635Np22.u();
                    if (!f35777l && (-32768 > u17 || u17 > 32767)) {
                        throw new AssertionError();
                    }
                    abstractC6324Zo3.f46353g = (short) u17;
                } else if (abstractC5635Np22 instanceof C9150qp) {
                    C9150qp c9150qp2 = (C9150qp) abstractC5635Np22;
                    int u18 = ((AbstractC5635Np) ((List) this.f35782e.get(c9150qp2)).get(0)).u() - abstractC5635Np22.u();
                    if (!f35777l && (-128 > u18 || u18 > 127)) {
                        throw new AssertionError();
                    }
                    c9150qp2.f43730f = (byte) u18;
                } else if (abstractC5635Np22 instanceof C8816op) {
                    C8816op c8816op2 = (C8816op) abstractC5635Np22;
                    int u19 = ((AbstractC5635Np) ((List) this.f35782e.get(c8816op2)).get(0)).u() - abstractC5635Np22.u();
                    if (!f35777l && (-32768 > u19 || u19 > 32767)) {
                        throw new AssertionError();
                    }
                    c8816op2.f45179f = (short) u19;
                } else if (abstractC5635Np22 instanceof C8983pp) {
                    C8983pp c8983pp4 = (C8983pp) abstractC5635Np22;
                    c8983pp4.f48363f = ((AbstractC5635Np) ((List) this.f35782e.get(c8983pp4)).get(0)).u() - abstractC5635Np22.u();
                } else if (abstractC5635Np22.B()) {
                    AbstractC7981jp abstractC7981jp2 = (AbstractC7981jp) abstractC5635Np22;
                    abstractC7981jp2.f49364g = ((AbstractC5635Np) ((List) this.f35782e.get(abstractC7981jp2)).get(0)).u() - abstractC5635Np22.u();
                } else if (abstractC5635Np22 instanceof AbstractC5004Cs) {
                    AbstractC5004Cs abstractC5004Cs = (AbstractC5004Cs) abstractC5635Np22;
                    AbstractC5635Np abstractC5635Np23 = (AbstractC5635Np) this.f35785h.get(abstractC5004Cs);
                    List list = (List) this.f35782e.get(abstractC5004Cs);
                    int[] P11 = abstractC5004Cs.P();
                    for (int i17 = 0; i17 < list.size(); i17++) {
                        P11[i17] = ((AbstractC5635Np) list.get(i17)).u() - abstractC5635Np23.u();
                    }
                }
            }
            C10 = this.f35778a.Q0().C();
            aVarArr = new J0.a[C10.f36461h.length];
            i11 = 0;
            while (true) {
                aVarArr2 = C10.f36461h;
                if (i11 >= aVarArr2.length) {
                    aVar = aVarArr2[i11];
                    t10 = (T) this.f35786i.get(aVar);
                    a10 = t10.a();
                    if (a10 > 65535) {
                        aVarArr = a(C10);
                    } else {
                        J0.a aVar4 = new J0.a(t10.f35774a.u(), a10, -1);
                        aVarArr[i11] = aVar4;
                        aVar4.f36473e = aVar.f36473e;
                        i11++;
                    }
                }
            }
            J0.a[] aVarArr3 = aVarArr;
            C11 = this.f35778a.Q0().C();
            bVarArr = new J0.b[C11.f36462i.length];
            i12 = 0;
            while (true) {
                bVarArr2 = C11.f36462i;
                if (i12 >= bVarArr2.length) {
                    J0.b bVar2 = bVarArr2[i12];
                    Iterator it = ((List) this.f35788k.get(bVar2)).iterator();
                    int u20 = bVar2.f36477c != -1 ? ((AbstractC5635Np) it.next()).u() : -1;
                    J0.b.a[] aVarArr4 = new J0.b.a[bVar2.f36476b.length];
                    int i18 = 0;
                    while (true) {
                        J0.b.a[] aVarArr5 = bVar2.f36476b;
                        if (i18 < aVarArr5.length) {
                            aVarArr4[i18] = new J0.b.a(((AbstractC5635Np) it.next()).u(), aVarArr5[i18].getType());
                            i18++;
                        }
                    }
                    bVarArr[i12] = new J0.b(aVarArr4, u20);
                    i12++;
                } else {
                    J0 C14 = this.f35778a.Q0().C();
                    if (!this.f35784g.isEmpty()) {
                        if (!f35777l && this.f35783f == null) {
                            throw new AssertionError();
                        }
                        ArrayList arrayList9 = new ArrayList();
                        int i19 = 0;
                        int i20 = 0;
                        for (O0 o02 : this.f35783f.f36926g) {
                            if (o02 instanceof O0.a) {
                                i19 += ((O0.a) o02).f36663d;
                                AbstractC5635Np abstractC5635Np24 = (AbstractC5635Np) this.f35784g.get(i19);
                                arrayList9.add(this.f35781d.b(abstractC5635Np24.u() - i20));
                                i20 = abstractC5635Np24.u();
                            } else if (o02 instanceof O0.b) {
                                O0.b bVar3 = (O0.b) o02;
                                int q02 = bVar3.q0() + i19;
                                AbstractC5635Np abstractC5635Np25 = (AbstractC5635Np) this.f35784g.get(q02);
                                U0.a(bVar3.p0(), abstractC5635Np25.u() - i20, arrayList9, this.f35781d);
                                i20 = abstractC5635Np25.u();
                                i19 = q02;
                            } else {
                                arrayList9.add(o02);
                            }
                        }
                        W0.a aVar5 = this.f35783f;
                        E02 = new W0.a(aVar5.f36924e, aVar5.f36925f, (O0[]) arrayList9.toArray(O0.f36660b));
                    } else {
                        E02 = C14.E0();
                    }
                    J0 C15 = this.f35778a.Q0().C();
                    J0 j02 = new J0(C15.f36458e, C15.f36459f, C15.f36460g, (AbstractC5635Np[]) linkedList.toArray(AbstractC5635Np.f42702c), aVarArr3, bVarArr, E02);
                    j02.f36464k = this.f35779b;
                    return j02;
                }
            }
        }
        this.f35783f = a11;
        int i21 = 0;
        for (O0 o03 : a11.f36926g) {
            if (o03 instanceof O0.a) {
                i21 += ((O0.a) o03).f36663d;
                AbstractC5635Np abstractC5635Np26 = (AbstractC5635Np) c6899dH.get(i21);
                if (!f35777l && abstractC5635Np26 == null) {
                    throw new AssertionError();
                }
                this.f35784g.a(i21, abstractC5635Np26);
            } else if (o03 instanceof O0.b) {
                i21 += ((O0.b) o03).q0();
                AbstractC5635Np abstractC5635Np27 = (AbstractC5635Np) c6899dH.get(i21);
                if (!f35777l && abstractC5635Np27 == null) {
                    throw new AssertionError();
                }
                this.f35784g.a(i21, abstractC5635Np27);
            } else {
                continue;
            }
        }
        AbstractC5635Np abstractC5635Np132 = abstractC5635NpArr[abstractC5635NpArr.length - 1];
        J0 C132 = this.f35778a.Q0().C();
        while (r8 < r6) {
        }
        while (r5 < r3) {
        }
        linkedList = new LinkedList();
        Collections.addAll(linkedList, this.f35778a.Q0().C().f36463j);
        do {
            listIterator = linkedList.listIterator();
            i10 = 0;
            while (listIterator.hasNext()) {
            }
        } while (i10 > 0);
        while (r2.hasNext()) {
        }
        C10 = this.f35778a.Q0().C();
        aVarArr = new J0.a[C10.f36461h.length];
        i11 = 0;
        while (true) {
            aVarArr2 = C10.f36461h;
            if (i11 >= aVarArr2.length) {
            }
            J0.a aVar42 = new J0.a(t10.f35774a.u(), a10, -1);
            aVarArr[i11] = aVar42;
            aVar42.f36473e = aVar.f36473e;
            i11++;
        }
        J0.a[] aVarArr32 = aVarArr;
        C11 = this.f35778a.Q0().C();
        bVarArr = new J0.b[C11.f36462i.length];
        i12 = 0;
        while (true) {
            bVarArr2 = C11.f36462i;
            if (i12 >= bVarArr2.length) {
            }
            bVarArr[i12] = new J0.b(aVarArr4, u20);
            i12++;
        }
    }
}
