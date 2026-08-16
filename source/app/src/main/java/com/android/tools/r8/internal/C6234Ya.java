package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.PriorityQueue;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.function.Function;

public final class C6234Ya implements InterfaceC5381Je0 {

    public static final boolean f46019n = true;

    public final C4798y f46020a;

    public final C7215fB f46021b;

    public final C5473Ku0 f46022c;

    public IdentityHashMap f46023d;

    public final HashMap f46024e = new HashMap();

    public final ArrayList f46025f = new ArrayList();

    public final LinkedList f46026g = new LinkedList();

    public final LinkedList f46027h = new LinkedList();

    public final PriorityQueue f46028i = new PriorityQueue();

    public TreeSet f46029j = new TreeSet();

    public int f46030k = 0;

    public int f46031l = 0;

    public int f46032m = -1;

    public C6234Ya(C4798y c4798y, C7215fB c7215fB, C5473Ku0 c5473Ku0) {
        this.f46020a = c4798y;
        this.f46021b = c7215fB;
        this.f46022c = c5473Ku0;
    }

    @Override
    public final boolean a(W5 w52, W5 w53) {
        if (!Objects.equals(w52.f45288a, w53.f45288a)) {
            return false;
        }
        ArrayList arrayList = a(w52).f45750b;
        ArrayList arrayList2 = a(w53).f45750b;
        if (arrayList.size() != arrayList2.size()) {
            return false;
        }
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            if (((InterfaceC5415Ju0) arrayList.get(i10)).a() != ((InterfaceC5415Ju0) arrayList2.get(i10)).a()) {
                return false;
            }
        }
        AbstractC10561zE a10 = w52.f45293f.a();
        a10.getClass();
        boolean z10 = a10 instanceof C6600bY;
        AbstractC10561zE a11 = w53.f45293f.a();
        a11.getClass();
        if (z10 != (a11 instanceof C6600bY)) {
            return false;
        }
        AbstractC10561zE a12 = w52.f45293f.a();
        a12.getClass();
        return !(a12 instanceof C6600bY) || this.f46022c.b(w52.f45293f.a().d()).a() == this.f46022c.b(w53.f45293f.a().d()).a();
    }

    @Override
    public final int b(C10340xw0 c10340xw0, int i10) {
        return a(c10340xw0);
    }

    @Override
    public final C4798y c() {
        return this.f46020a;
    }

    @Override
    public final int d() {
        return this.f46031l + 1;
    }

    @Override
    public final C8570nJ e() {
        return this.f46020a.E();
    }

    @Override
    public final void b() {
        int a10;
        Iterator<AbstractC10561zE> it = this.f46021b.q().iterator();
        while (it.hasNext()) {
            C10340xw0 d10 = it.next().d();
            if (d10 != null) {
                d10.a(true ^ ((d10 instanceof C8146ko0) || (d10 instanceof C8313lo0)));
            }
        }
        C7215fB c7215fB = this.f46021b;
        AbstractC7552hC B10 = c7215fB.B();
        AbstractC4895Av0 it2 = B10.iterator();
        while (it2.hasNext()) {
            W5 w52 = (W5) it2.next();
            int i10 = c7215fB.f47901h;
            Y5 it3 = w52.f45293f.iterator();
            while (it3.hasNext()) {
                AbstractC10561zE next = it3.next();
                next.getClass();
                if (!AbstractC10561zE.f54316j && i10 == -1) {
                    throw new AssertionError();
                }
                next.f54322g = i10;
                i10 += 2;
            }
            c7215fB.f47901h = i10;
        }
        IdentityHashMap e10 = this.f46021b.e();
        this.f46023d = e10;
        C8421mS.a(this.f46020a, this.f46021b, e10, this.f46025f);
        this.f46028i.addAll(this.f46025f);
        while (!this.f46028i.isEmpty() && ((FT) this.f46028i.peek()).f40212b.H()) {
            FT ft = (FT) this.f46028i.poll();
            a(a(ft.f40212b.Y().b()), ft);
        }
        this.f46032m = this.f46030k - 1;
        while (!this.f46028i.isEmpty()) {
            FT ft2 = (FT) this.f46028i.poll();
            if (!f46019n && ft2.f40212b.H()) {
                throw new AssertionError();
            }
            int e11 = ft2.e();
            Iterator<E> it4 = this.f46026g.iterator();
            while (it4.hasNext()) {
                FT ft3 = (FT) it4.next();
                if (e11 >= ft3.b()) {
                    it4.remove();
                    if (!this.f46020a.E().f50599F1.f50870e) {
                        int i11 = ft3.f40221k;
                        this.f46029j.add(Integer.valueOf(i11));
                        if (ft3.f40212b.Y().b()) {
                            this.f46029j.add(Integer.valueOf(i11 + 1));
                        }
                    }
                } else if (ft3.b(e11)) {
                    continue;
                } else {
                    if (!f46019n && ft3.f40221k == Integer.MIN_VALUE) {
                        throw new AssertionError();
                    }
                    it4.remove();
                    this.f46027h.add(ft3);
                    if (!this.f46020a.E().f50599F1.f50870e) {
                        int i12 = ft3.f40221k;
                        this.f46029j.add(Integer.valueOf(i12));
                        if (ft3.f40212b.Y().b()) {
                            this.f46029j.add(Integer.valueOf(i12 + 1));
                        }
                    }
                }
            }
            Iterator<E> it5 = this.f46027h.iterator();
            while (it5.hasNext()) {
                FT ft4 = (FT) it5.next();
                if (e11 >= ft4.b()) {
                    it5.remove();
                } else if (ft4.b(e11)) {
                    it5.remove();
                    if (!f46019n && ft4.f40221k == Integer.MIN_VALUE) {
                        throw new AssertionError();
                    }
                    this.f46026g.add(ft4);
                    int i13 = ft4.f40221k;
                    this.f46029j.remove(Integer.valueOf(i13));
                    if (ft4.f40212b.Y().b()) {
                        this.f46029j.remove(Integer.valueOf(i13 + 1));
                    }
                } else {
                    continue;
                }
            }
            if (ft2.f()) {
                boolean b10 = ft2.f40212b.Y().b();
                int c10 = ft2.c();
                if (this.f46029j.contains(Integer.valueOf(c10)) && (!b10 || this.f46029j.contains(Integer.valueOf(c10 + 1)))) {
                    for (FT ft5 : this.f46027h) {
                        if (!ft5.a(c10, b10) || ft5.c(ft2) == -1) {
                        }
                    }
                    a(ft2.c(), ft2);
                }
            }
            boolean b11 = ft2.f40212b.Y().b();
            TreeSet treeSet = new TreeSet((SortedSet) this.f46029j);
            while (true) {
                a10 = a(b11);
                for (FT ft6 : this.f46027h) {
                    if (!ft6.a(a10, b11) || ft2.c(ft6) == -1) {
                    }
                }
                this.f46029j.remove(Integer.valueOf(a10));
            }
            this.f46029j = treeSet;
            a(a10, ft2);
        }
        if (this.f46020a.E().f50690i1) {
            C8421mS.a(B10, this.f46025f, this, this.f46023d);
        }
    }

    @Override
    public final com.android.tools.r8.graph.H5 a() {
        return this.f46021b.j();
    }

    public static int a(C10340xw0 c10340xw0) {
        if (c10340xw0 instanceof C7673hx) {
            return a(((C7673hx) c10340xw0).f48743p);
        }
        if (!f46019n && c10340xw0.f53891h.f40216f.size() != 0) {
            throw new AssertionError();
        }
        return c10340xw0.f53891h.f40221k;
    }

    @Override
    public final int a(C10340xw0 c10340xw0, int i10) {
        return a(c10340xw0);
    }

    public final int a(boolean z10) {
        if (this.f46029j.isEmpty()) {
            return this.f46030k;
        }
        if (z10) {
            Iterator it = this.f46029j.iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                if (this.f46029j.contains(Integer.valueOf(num.intValue() + 1)) || this.f46030k == num.intValue() + 1) {
                    if (num.intValue() != this.f46032m) {
                        return num.intValue();
                    }
                }
            }
            return this.f46030k;
        }
        return ((Integer) this.f46029j.first()).intValue();
    }

    public final void a(int i10, FT ft) {
        ft.e(i10);
        int i11 = ft.f40221k;
        this.f46029j.remove(Integer.valueOf(i11));
        if (ft.f40212b.Y().b()) {
            this.f46029j.remove(Integer.valueOf(i11 + 1));
        }
        int i12 = (ft.f40212b.Y().b() ? 1 : 0) + i10;
        if (i12 >= this.f46030k) {
            this.f46030k = i12 + 1;
        }
        this.f46031l = Math.max(this.f46031l, i12);
        for (C7201f60 c7201f60 : ft.f40212b.a0()) {
            if (!c7201f60.Q() && !c7201f60.f53891h.f()) {
                c7201f60.f53891h.a(ft, this.f46028i);
                Iterator<C10340xw0> it = c7201f60.c0().iterator();
                while (it.hasNext()) {
                    it.next().f53891h.a(ft, this.f46028i);
                }
            }
        }
        this.f46026g.add(ft);
    }

    public final C6177Xa a(W5 w52) {
        return (C6177Xa) this.f46024e.computeIfAbsent(w52, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C6234Ya.this.b((W5) obj);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x017c, code lost:
    
        if (r7.v().isEmpty() == false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x017e, code lost:
    
        r8 = new com.android.tools.r8.internal.C6899dH(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01a9, code lost:
    
        r11 = new com.android.tools.r8.internal.C6901dI(r8.f47346h * 2);
        r11.a(r8.o());
        r7 = r7.f45293f.b();
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01c0, code lost:
    
        if (r7 == null) goto L171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x01c2, code lost:
    
        r8 = r8 + r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01c3, code lost:
    
        if (r8 <= r20) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x01c6, code lost:
    
        r14 = r7.d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x01ca, code lost:
    
        if (r14 == null) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x01d0, code lost:
    
        if (r14.T() == false) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01d2, code lost:
    
        r14 = a(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x01d8, code lost:
    
        if (com.android.tools.r8.internal.C6234Ya.f46019n != false) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x01de, code lost:
    
        if (r11.h(r14) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x01e6, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x01e7, code lost:
    
        r11.remove(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x01ea, code lost:
    
        r14 = r7.f54321f;
        r15 = r14.size();
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x01f1, code lost:
    
        if (r4 >= r15) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x01f3, code lost:
    
        r16 = r14.get(r4);
        r4 = r4 + 1;
        r16 = (com.android.tools.r8.internal.C10340xw0) r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x01ff, code lost:
    
        if (r16.T() == false) goto L175;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0201, code lost:
    
        r11.add(a(r16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x020a, code lost:
    
        r7 = r7.b1();
        r12 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0212, code lost:
    
        r4 = new com.android.tools.r8.internal.C6899dH(r9.f47346h);
        r7 = new com.android.tools.r8.internal.C6734cI(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0222, code lost:
    
        if (r7.hasNext() == false) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0224, code lost:
    
        r8 = r7.r();
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x022a, code lost:
    
        if (com.android.tools.r8.internal.C6234Ya.f46019n != false) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0230, code lost:
    
        if (r9.a(r8) == false) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0238, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0239, code lost:
    
        r4.a(r8, (com.android.tools.r8.internal.InterfaceC5415Ju0) r9.get(r8));
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0243, code lost:
    
        a(r3, r4);
        a(r5, java.util.Arrays.asList((com.android.tools.r8.internal.InterfaceC5415Ju0[]) r10.toArray(new com.android.tools.r8.internal.InterfaceC5415Ju0[0])));
        r4 = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0186, code lost:
    
        if (com.android.tools.r8.internal.C6234Ya.f46019n != false) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0190, code lost:
    
        if (r7.v().size() != 1) goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0198, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0199, code lost:
    
        r8 = a(r7.v().get(0)).f45749a;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(W5 w52, int i10, List list) {
        int i11 = 16;
        C6899dH c6899dH = new C6899dH(16);
        ArrayList arrayList = new ArrayList();
        if (!f46019n && list.isEmpty()) {
            throw new AssertionError();
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            W5 w53 = (W5) it.next();
            C6177Xa a10 = a(w53);
            C6899dH c6899dH2 = a10.f45749a;
            C6899dH c6899dH3 = new C6899dH(c6899dH2.size());
            c6899dH3.putAll(c6899dH2);
            ArrayDeque arrayDeque = new ArrayDeque(a10.f45750b);
            int size = w53.l().size() - i10;
            AE H10 = w53.H();
            while (true) {
                size--;
                int i12 = 1;
                if (size < 0 || !H10.hasNext()) {
                    break;
                }
                AbstractC10561zE next = H10.next();
                if (next.d() != null && !next.f54321f.isEmpty()) {
                    if (next instanceof JT) {
                        int a11 = a((C10340xw0) next.f54321f.get(0));
                        if (!f46019n && !c6899dH3.a(a11)) {
                            throw new AssertionError();
                        }
                        arrayDeque.addLast((InterfaceC5415Ju0) c6899dH3.get(a11));
                    } else if (next instanceof C5692Oo0) {
                        c6899dH3.a(a(next.d()), (InterfaceC5415Ju0) arrayDeque.removeLast());
                    } else if (next instanceof C9870v60) {
                        arrayDeque.removeLast();
                    } else if (next instanceof C9662tt) {
                        arrayDeque.addLast((InterfaceC5415Ju0) arrayDeque.getLast());
                    } else if (next instanceof C9495st) {
                        InterfaceC5415Ju0 interfaceC5415Ju0 = (InterfaceC5415Ju0) arrayDeque.removeLast();
                        InterfaceC5415Ju0 interfaceC5415Ju02 = (InterfaceC5415Ju0) arrayDeque.getLast();
                        arrayDeque.addLast(interfaceC5415Ju0);
                        arrayDeque.addLast(interfaceC5415Ju02);
                        arrayDeque.addLast(interfaceC5415Ju0);
                    } else if (next instanceof C6329Zq0) {
                        InterfaceC5415Ju0 interfaceC5415Ju03 = (InterfaceC5415Ju0) arrayDeque.removeLast();
                        InterfaceC5415Ju0 interfaceC5415Ju04 = (InterfaceC5415Ju0) arrayDeque.removeLast();
                        arrayDeque.addLast(interfaceC5415Ju03);
                        arrayDeque.addLast(interfaceC5415Ju04);
                    } else if (next instanceof C7130ej) {
                        c6899dH3.a(a(next.d()), (InterfaceC5415Ju0) arrayDeque.removeLast());
                    }
                }
                for (int size2 = next.f54321f.size() - 1; size2 >= 0; size2--) {
                    if (((C10340xw0) next.f54321f.get(size2)).Q()) {
                        arrayDeque.removeLast();
                    }
                }
                C10340xw0 d10 = next.d();
                if (d10 == null) {
                    continue;
                } else {
                    InterfaceC5415Ju0 b10 = this.f46022c.b(d10);
                    if (!f46019n && b10 == null) {
                        throw new AssertionError();
                    }
                    if (d10.T()) {
                        c6899dH3.a(a(d10), b10);
                    } else if (d10.Q()) {
                        arrayDeque.addLast(b10);
                    } else {
                        throw new C5417Jv0();
                    }
                }
            }
        }
        if (!f46019n && this.f46024e.containsKey(w52)) {
            throw new AssertionError();
        }
        this.f46024e.put(w52, new C6177Xa(c6899dH, arrayList));
    }

    public final C6177Xa b(W5 w52) {
        LinkedHashSet<C10340xw0> linkedHashSet = ((C7048eB) this.f46023d.get(w52)).f47629a;
        C6899dH c6899dH = new C6899dH(linkedHashSet.size());
        for (C10340xw0 c10340xw0 : linkedHashSet) {
            c6899dH.a(a(c10340xw0), this.f46022c.b(c10340xw0));
        }
        ArrayDeque arrayDeque = ((C7048eB) this.f46023d.get(w52)).f47631c;
        ArrayList arrayList = new ArrayList(arrayDeque.size());
        Iterator<E> it = arrayDeque.iterator();
        while (it.hasNext()) {
            arrayList.add(this.f46022c.b((C10340xw0) it.next()));
        }
        return new C6177Xa(c6899dH, arrayList);
    }

    @Override
    public final void b(W5 w52, W5 w53) {
        C6177Xa a10 = a(w52);
        C6177Xa a11 = a(w53);
        boolean z10 = f46019n;
        if (!z10 && a10.f45749a.f47346h != a11.f45749a.f47346h) {
            throw new AssertionError();
        }
        a(a10.f45749a, a11.f45749a);
        if (!z10 && a10.f45750b.size() != a11.f45750b.size()) {
            throw new AssertionError();
        }
        a(a10.f45750b, a11.f45750b);
    }

    public final void a(C6899dH c6899dH, C6899dH c6899dH2) {
        if (c6899dH.isEmpty()) {
            c6899dH.putAll(c6899dH2);
            return;
        }
        if (!f46019n && c6899dH.f47346h != c6899dH2.f47346h) {
            throw new AssertionError();
        }
        WG wg2 = new WG(((C6399aH) c6899dH.c()).f46484b);
        while (wg2.hasNext()) {
            RG rg2 = (RG) wg2.next();
            int a10 = rg2.a();
            InterfaceC5415Ju0 interfaceC5415Ju0 = (InterfaceC5415Ju0) rg2.getValue();
            if (!f46019n && !c6899dH2.a(a10)) {
                throw new AssertionError();
            }
            InterfaceC5415Ju0 a11 = this.f46022c.a(interfaceC5415Ju0, (InterfaceC5415Ju0) c6899dH2.get(a10));
            if (a11 != interfaceC5415Ju0) {
                c6899dH.a(a10, a11);
            }
        }
    }

    public final void a(ArrayList arrayList, List list) {
        if (arrayList.isEmpty()) {
            arrayList.addAll(list);
            return;
        }
        if (!f46019n && arrayList.size() != list.size()) {
            throw new AssertionError();
        }
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            InterfaceC5415Ju0 interfaceC5415Ju0 = (InterfaceC5415Ju0) arrayList.get(i10);
            InterfaceC5415Ju0 a10 = this.f46022c.a(interfaceC5415Ju0, (InterfaceC5415Ju0) list.get(i10));
            if (a10 != interfaceC5415Ju0) {
                arrayList.set(i10, a10);
            }
        }
    }
}
