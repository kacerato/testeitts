package com.android.tools.r8.internal;

import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C5064Dt {

    public static final boolean f39672f = true;

    public final com.android.tools.r8.graph.H5 f39673a;

    public final C7215fB f39674b;

    public final S50 f39675c;

    public Set f39676d;

    public final C5122Et f39677e;

    public C5064Dt(C5122Et c5122Et, com.android.tools.r8.graph.H5 h52, C7215fB c7215fB, S50 s50) {
        this.f39677e = c5122Et;
        this.f39673a = h52;
        this.f39674b = c7215fB;
        this.f39675c = s50;
    }

    public static boolean a(C10340xw0 c10340xw0, C10340xw0 c10340xw02) {
        return c10340xw02 == c10340xw0;
    }

    public final void a() {
        if (a(this.f39673a)) {
            return;
        }
        C7215fB c7215fB = this.f39674b;
        c7215fB.getClass();
        AE H10 = c7215fB.k().H();
        final C8024k3 v10 = H10.next().v();
        while (v10 != null) {
            C8024k3 v11 = H10.next().v();
            a(v10, v10.d(), new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C5064Dt.this.a(v10, (InterfaceC6078Vf) obj);
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C5064Dt.this.a(v10, (Set) obj);
                }
            });
            v10 = v11;
        }
    }

    public final void a(C8024k3 c8024k3, InterfaceC6078Vf interfaceC6078Vf) {
        C6431aX c6431aX = new C6431aX(this.f39673a, c8024k3.b(true));
        if (!f39672f && this.f39677e.f40039b.containsKey(c6431aX)) {
            throw new AssertionError();
        }
        this.f39677e.f40039b.put(c6431aX, interfaceC6078Vf);
    }

    public final void a(C8024k3 c8024k3, Set set) {
        C6431aX c6431aX = new C6431aX(this.f39673a, c8024k3.b(true));
        if (!f39672f && this.f39677e.f40040c.containsKey(c6431aX)) {
            throw new AssertionError();
        }
        this.f39677e.f40040c.put(c6431aX, set);
    }

    public final void a(C8024k3 c8024k3, final C10340xw0 c10340xw0, Consumer consumer, Consumer consumer2) {
        C10340xw0 c10340xw02;
        C6135Wf a10;
        if (AbstractC9199r50.a(this.f39677e.f40038a, this.f39673a, c8024k3.b(true)) && !c10340xw0.y()) {
            if (c10340xw0.a0().size() == 1) {
                if (!f39672f && c10340xw0.a0().size() != 1) {
                    throw new AssertionError();
                }
                if (c10340xw0.D()) {
                    return;
                }
                boolean z10 = C10340xw0.f53884o;
                if (!z10 && c10340xw0.a0().size() != 1) {
                    throw new AssertionError();
                }
                if (!z10 && c10340xw0.f53889f.isEmpty()) {
                    throw new AssertionError();
                }
                C6135Wf a11 = a((C7201f60) c10340xw0.f53889f.getFirst(), c10340xw0);
                if (a11 == null) {
                    return;
                }
                consumer.accept(a11);
                if (!z10 && c10340xw0.a0().size() != 1) {
                    throw new AssertionError();
                }
                if (!z10 && c10340xw0.f53889f.isEmpty()) {
                    throw new AssertionError();
                }
                c10340xw02 = (C7201f60) c10340xw0.f53889f.getFirst();
                if (c10340xw02.y() || c10340xw02.B()) {
                    return;
                }
            } else {
                if (c10340xw0.B()) {
                    if (this.f39677e.f40038a.E().c().f50744b && this.f39677e.f40038a.p().a(this.f39673a)) {
                        boolean z11 = f39672f;
                        if (!z11 && !this.f39677e.f40038a.E().c().f50744b) {
                            throw new AssertionError();
                        }
                        if (!z11 && !this.f39677e.f40038a.p().a(this.f39673a)) {
                            throw new AssertionError();
                        }
                        Iterator it = c10340xw0.a0().iterator();
                        C7201f60 c7201f60 = null;
                        C7201f60 c7201f602 = null;
                        while (true) {
                            if (!it.hasNext()) {
                                c7201f60 = c7201f602;
                                break;
                            }
                            C7201f60 c7201f603 = (C7201f60) it.next();
                            int i10 = 0;
                            while (true) {
                                if (i10 >= c7201f603.c0().size()) {
                                    break;
                                }
                                if (((C10340xw0) c7201f603.f47863q.get(i10)) != c10340xw0 || a(c7201f603.f47862p.u().get(i10))) {
                                    i10++;
                                } else if (c7201f602 != null) {
                                    break;
                                } else {
                                    c7201f602 = c7201f603;
                                }
                            }
                        }
                        if (c7201f60 == null || (a10 = a(c7201f60, c10340xw0)) == null) {
                            return;
                        }
                        Iterator<AbstractC10561zE> it2 = c10340xw0.b0().iterator();
                        while (it2.hasNext()) {
                            C9289rg d10 = this.f39675c.a(it2.next().b()).d();
                            if (d10 == null) {
                                return;
                            }
                            d10.f();
                            if (((R50) d10.f52098b.get(a10)) != R50.f43796c) {
                                if (((R50) d10.f52098b.get(new C6135Wf(a10.f45782a, a10.f45500c.b()))) != R50.f43795b) {
                                    return;
                                }
                            }
                        }
                        this.f39677e.f40041d.put(new C6431aX(this.f39673a, c8024k3.b(true)), a10);
                        return;
                    }
                    return;
                }
                c10340xw02 = c10340xw0;
            }
            HashSet hashSet = new HashSet();
            for (AbstractC10561zE abstractC10561zE : c10340xw02.b0()) {
                if (!abstractC10561zE.P1()) {
                    return;
                }
                VJ e02 = abstractC10561zE.e0();
                com.android.tools.r8.graph.H5 r10 = ((C11245i) this.f39677e.f40038a.f()).f(e02.B2()).r();
                if (r10 == null || a(r10)) {
                    return;
                }
                ArrayList arrayList = e02.f54321f;
                Predicate predicate = new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return C5064Dt.a(C10340xw0.this, (C10340xw0) obj);
                    }
                };
                boolean z12 = AT.f38618a;
                int i11 = -1;
                int i12 = 0;
                int i13 = -1;
                while (true) {
                    if (i12 >= arrayList.size()) {
                        i11 = i13;
                        break;
                    }
                    if (predicate.test(arrayList.get(i12))) {
                        if (i13 != -1) {
                            break;
                        } else {
                            i13 = i12;
                        }
                    }
                    i12++;
                }
                if (i11 < 0 || !AbstractC9199r50.a(this.f39677e.f40038a, r10, i11)) {
                    return;
                } else {
                    hashSet.add(new C6431aX(r10, i11));
                }
            }
            if (hashSet.isEmpty()) {
                return;
            }
            consumer2.accept(hashSet);
        }
    }

    public final C6135Wf a(C7201f60 c7201f60, C10340xw0 c10340xw0) {
        InterfaceC6078Vf a10;
        if (c7201f60.c0().size() != 2) {
            return null;
        }
        W5 w52 = c7201f60.f47862p;
        C9289rg d10 = this.f39675c.a(w52.u().get(0)).d();
        C9289rg d11 = this.f39675c.a(w52.u().get(1)).d();
        if (d10 == null || d11 == null || (a10 = d10.a(d11)) == null || !a10.g()) {
            return null;
        }
        C6135Wf c6135Wf = (C6135Wf) a10;
        if (((C10340xw0) c7201f60.f47863q.get(0)) == c10340xw0) {
            d10 = d11;
        }
        R50 r50 = (R50) d10.f52098b.get(c6135Wf);
        boolean z10 = C9289rg.f52097c;
        if (!z10 && r50 == null) {
            throw new AssertionError();
        }
        if (z10 || r50 != R50.f43797d) {
            return r50 == R50.f43796c ? new C6135Wf(c6135Wf.f45782a, c6135Wf.f45500c.b()) : c6135Wf;
        }
        throw new AssertionError();
    }

    public final boolean a(W5 w52) {
        boolean z10 = f39672f;
        if (!z10 && !this.f39677e.f40038a.E().c().f50744b) {
            throw new AssertionError();
        }
        if (!z10 && !this.f39677e.f40038a.p().a(this.f39673a)) {
            throw new AssertionError();
        }
        if (this.f39676d == null) {
            this.f39676d = AbstractC5513Ll0.c();
            C9587tR c9587tR = new C9587tR(this.f39674b);
            C5556Mf p10 = this.f39677e.f40038a.p();
            for (C8405mK c8405mK : this.f39674b.b((Predicate) new XC0())) {
                if (c8405mK.B2().t0().g(p10.f42338a)) {
                    Set set = this.f39676d;
                    C6993dt a10 = c9587tR.a();
                    W5 b10 = c8405mK.b();
                    a10.getClass();
                    set.addAll((List) a10.a(b10, new ArrayList()));
                }
            }
        }
        return this.f39676d.contains(w52);
    }

    public final boolean a(com.android.tools.r8.graph.H5 h52) {
        if (h52.d().f37314g.D()) {
            return !AbstractC9199r50.a(this.f39677e.f40038a, h52);
        }
        if (!this.f39677e.f40042e.f45165b.containsKey(h52.getReference())) {
            return true;
        }
        if (f39672f || AbstractC9199r50.a(this.f39677e.f40038a, h52)) {
            return false;
        }
        throw new AssertionError();
    }
}
