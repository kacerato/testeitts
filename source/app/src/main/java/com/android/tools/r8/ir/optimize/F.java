package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.AbstractC4384c1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC8999pu0;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C5187Fw0;
import com.android.tools.r8.internal.C5576Mo0;
import com.android.tools.r8.internal.C6301Zd0;
import com.android.tools.r8.internal.C6382aB;
import com.android.tools.r8.internal.C6628bi;
import com.android.tools.r8.internal.C6933dY;
import com.android.tools.r8.internal.C7;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.internal.C7201f60;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C7942jc;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.C9574tK0;
import com.android.tools.r8.internal.EnumC6871d70;
import com.android.tools.r8.internal.F7;
import com.android.tools.r8.internal.K7;
import com.android.tools.r8.internal.M8;
import com.android.tools.r8.internal.N8;
import com.android.tools.r8.internal.W5;
import com.android.tools.r8.internal.Y5;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Queue;
import java.util.function.Consumer;

public final class F {

    public static final boolean f54735b = true;

    public final C4798y f54736a;

    public F(C4798y c4798y) {
        this.f54736a = c4798y;
    }

    public final void a(C7215fB c7215fB, C8659ns0 c8659ns0) {
        c8659ns0.b("Remove dead code");
        new C6933dY(this.f54736a).a(c7215fB, c8659ns0);
        K7 k72 = new K7(this.f54736a);
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            C10696a c10696a = new C10696a();
            C5187Fw0 c5187Fw0 = new C5187Fw0(this.f54736a, c7215fB);
            arrayDeque.addAll(c7215fB.B());
            while (!arrayDeque.isEmpty()) {
                W5 w52 = (W5) arrayDeque.removeLast();
                a(arrayDeque, c7215fB, w52, c10696a, c5187Fw0);
                Iterator<C7201f60> it = w52.s().iterator();
                while (it.hasNext()) {
                    C7201f60 next = it.next();
                    if (c5187Fw0.a(next)) {
                        it.remove();
                        for (C10340xw0 c10340xw0 : next.c0()) {
                            c10340xw0.f53889f.remove(next);
                            c10340xw0.f53890g = null;
                            a(arrayDeque, c10340xw0);
                        }
                    } else if (next.d0()) {
                        it.remove();
                        next.a((C6382aB) null, (C10696a) null, C6628bi.b(), EnumC6871d70.f47287c);
                    }
                }
            }
            c10696a.a(this.f54736a, c7215fB, C6628bi.b());
            F7 c10 = k72.c(c7215fB);
            c10.getClass();
            if (!c10.f40112e && !a(c7215fB)) {
                break;
            }
        }
        c7215fB.x();
        boolean z10 = f54735b;
        if (!z10 && !c7215fB.b(this.f54736a)) {
            throw new AssertionError();
        }
        if (!z10) {
            b(c7215fB);
        }
        c8659ns0.d();
    }

    public final void b(C7215fB c7215fB) {
        boolean z10 = f54735b;
        if (!z10 && !new C6933dY(this.f54736a).a(c7215fB, C8659ns0.c()).a().a()) {
            throw new AssertionError();
        }
        if (!z10 && a(c7215fB)) {
            throw new AssertionError();
        }
        C5187Fw0 c5187Fw0 = new C5187Fw0(this.f54736a, c7215fB);
        Iterator<W5> it = c7215fB.f47897d.iterator();
        while (it.hasNext()) {
            W5 next = it.next();
            if (!f54735b && c5187Fw0.a(next)) {
                throw new AssertionError();
            }
            Y5 it2 = next.l().iterator();
            while (it2.hasNext()) {
                AbstractC10561zE next2 = it2.next();
                boolean z11 = f54735b;
                if (!z11 && next2.N1() && next2.e1() && !next2.d().w()) {
                    throw new AssertionError();
                }
                if (!z11) {
                    E a10 = next2.a(this.f54736a, c7215fB);
                    a10.getClass();
                    if ((a10 instanceof B) && (!next2.e1() || c5187Fw0.a(next2.d()))) {
                        throw new AssertionError();
                    }
                }
            }
        }
    }

    public static void a(Queue queue, C10340xw0 c10340xw0) {
        W5 b10;
        if (c10340xw0.j()) {
            b10 = c10340xw0.l().f47862p;
        } else {
            AbstractC10561zE abstractC10561zE = c10340xw0.f53886c;
            b10 = abstractC10561zE.f54317b != null ? abstractC10561zE.b() : null;
        }
        if (b10 != null) {
            ((ArrayDeque) queue).add(b10);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0059, code lost:
    
        if (r1.f49274k.a(r2.m()).K0() != false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x007f, code lost:
    
        if (r1.f49274k != r3.b().E()) goto L41;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(Queue queue, C7215fB c7215fB, W5 w52, C10696a c10696a, C5187Fw0 c5187Fw0) {
        Y5 b10 = w52.b(w52.l().size());
        while (b10.hasPrevious()) {
            AbstractC10561zE previous = b10.previous();
            if (previous.e1()) {
                if (previous.t1()) {
                    C7942jc D10 = previous.D();
                    C8570nJ E10 = this.f54736a.E();
                    AbstractC8999pu0 u10 = D10.n().u();
                    u10.getClass();
                    if (u10 instanceof C6301Zd0) {
                        if (E10.d()) {
                            if (D10.f49274k.E0()) {
                            }
                        }
                        if (D10.d().s() == D10.n().s()) {
                            Iterator<AbstractC10561zE> it = D10.d().b0().iterator();
                            while (it.hasNext()) {
                                ((ArrayDeque) queue).add(it.next().b());
                            }
                            Iterator it2 = D10.d().a0().iterator();
                            while (it2.hasNext()) {
                                ((ArrayDeque) queue).add(((C7201f60) it2.next()).f47862p);
                            }
                            D10.d().a(D10.n(), c10696a);
                            D10.n().a0().forEach(new C9574tK0());
                        }
                    } else if (!u10.s()) {
                        if (!C7942jc.f49273m && !u10.r()) {
                            throw new AssertionError();
                        }
                    }
                }
                if (previous.N1() && !previous.d().P()) {
                    previous.d((C10340xw0) null);
                }
                if ((previous instanceof C5576Mo0) && !previous.d().P() && this.f54736a.f().i()) {
                    final C7 c72 = new C7();
                    if (b10.a(this.f54736a.M(), c7215fB, previous.K0().getField().s0(), new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            C7.this.a((C7) obj);
                        }
                    })) {
                        if (c72.b()) {
                            previous = b10.previous();
                            if (!f54735b && previous != c72.a()) {
                                throw new AssertionError();
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
            E a10 = previous.a(this.f54736a, c7215fB);
            a10.getClass();
            if (!(a10 instanceof C)) {
                if (a10 instanceof D) {
                    Iterator it3 = a10.a().iterator();
                    while (it3.hasNext()) {
                        if (!c5187Fw0.a((C10340xw0) it3.next())) {
                            break;
                        }
                    }
                }
                C10340xw0 d10 = previous.d();
                if (d10 == null || c5187Fw0.a(d10)) {
                    ArrayList arrayList = previous.f54321f;
                    int size = arrayList.size();
                    int i10 = 0;
                    while (i10 < size) {
                        Object obj = arrayList.get(i10);
                        i10++;
                        a(queue, (C10340xw0) obj);
                    }
                    Iterator it4 = previous.V0().iterator();
                    while (it4.hasNext()) {
                        a(queue, (C10340xw0) it4.next());
                    }
                    if (d10 != null) {
                        d10.d();
                    }
                    b10.i();
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v4, types: [com.android.tools.r8.graph.b0] */
    public final boolean a(C7215fB c7215fB) {
        Iterator<W5> it = c7215fB.f47897d.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            W5 next = it.next();
            if (next.z()) {
                if (next.a()) {
                    if (this.f54736a.m()) {
                        C11245i m10 = this.f54736a.f().m();
                        int i10 = AbstractC7552hC.f48487c;
                        C7051eC c7051eC = new C7051eC();
                        N8 j10 = next.j();
                        for (int i11 = 0; i11 < j10.size(); i11++) {
                            M2 m22 = (M2) j10.f42510b.get(i11);
                            W5 w52 = (W5) j10.f42511c.get(i11);
                            int i12 = 0;
                            while (true) {
                                if (i12 < i11) {
                                    if (this.f54736a.a(m22, (M2) j10.f42510b.get(i12)).d()) {
                                        c7051eC.a(new M8(m22, w52));
                                        break;
                                    }
                                    i12++;
                                } else if (m10 != null) {
                                    C4798y c4798y = this.f54736a;
                                    H2 holder = c7215fB.j().getHolder();
                                    c4798y.getClass();
                                    if (!AbstractC4384c1.f37090a && holder.f36245e == m22 && new com.android.tools.r8.graph.W().a(holder).a() != holder) {
                                        throw new AssertionError();
                                    }
                                    M2 m23 = holder.f36245e;
                                    H2 h22 = holder;
                                    if (m23 != m22) {
                                        h22 = c4798y.f().f(m22);
                                    }
                                    if (h22.X() && !h22.n()) {
                                        com.android.tools.r8.graph.E0 D10 = h22.D();
                                        if (D10.e0() && !m10.b(D10.d0())) {
                                            c7051eC.a(new M8(m22, w52));
                                        }
                                    }
                                } else {
                                    continue;
                                }
                            }
                        }
                        AbstractC7552hC<M8> a10 = c7051eC.a();
                        if (a10.isEmpty()) {
                            continue;
                        } else {
                            for (M8 m82 : a10) {
                                W5 w53 = (W5) m82.f42186b;
                                M2 m24 = m82.f42185a;
                                boolean z11 = W5.f45287q;
                                if (!z11 && w53.f45290c.size() != 1) {
                                    throw new AssertionError();
                                }
                                if (!z11 && w53.f45290c.size() != 1) {
                                    throw new AssertionError();
                                }
                                W5 w54 = (W5) w53.f45290c.get(0);
                                if (!z11 && !w54.j().f42511c.contains(w53)) {
                                    throw new AssertionError();
                                }
                                Iterator it2 = w54.j().f42511c.iterator();
                                int i13 = 0;
                                while (true) {
                                    if (!it2.hasNext()) {
                                        w53.R();
                                        break;
                                    }
                                    if (((W5) it2.next()) == w53 && (i13 = i13 + 1) > 1) {
                                        ((W5) w53.f45290c.get(0)).a(m24);
                                        break;
                                    }
                                }
                            }
                            z10 = true;
                        }
                    } else {
                        continue;
                    }
                } else {
                    Iterator it3 = next.j().a().iterator();
                    while (it3.hasNext()) {
                        ((W5) it3.next()).R();
                        z10 = true;
                    }
                }
            }
        }
        if (z10) {
            C10696a c10696a = new C10696a();
            c7215fB.a(c10696a, C6628bi.b());
            c10696a.a(this.f54736a, c7215fB, C6628bi.b());
        }
        if (!f54735b) {
            c7215fB.b(false);
        }
        return z10;
    }
}
