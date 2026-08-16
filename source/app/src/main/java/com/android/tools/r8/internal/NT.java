package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;

public final class NT {

    public static final boolean f42602g = true;

    public final C4798y f42603a;

    public final C7215fB f42604b;

    public final C5473Ku0 f42605c;

    public IdentityHashMap f42606d;

    public Z5 f42607e;

    public Y5 f42608f;

    public NT(C4798y c4798y, C7215fB c7215fB, C5473Ku0 c5473Ku0) {
        this.f42603a = c4798y;
        this.f42604b = c7215fB;
        this.f42605c = c5473Ku0;
    }

    public final void a(C6234Ya c6234Ya) {
        Iterator<W5> it = this.f42604b.f47897d.iterator();
        while (it.hasNext()) {
            W5 next = it.next();
            if (!next.s().isEmpty()) {
                if (!f42602g) {
                    AbstractC10561zE a10 = next.f45293f.a();
                    a10.getClass();
                    if (a10 instanceof C6600bY) {
                        throw new AssertionError();
                    }
                }
                for (int i10 = 0; i10 < next.u().size(); i10++) {
                    W5 w52 = next.u().get(i10);
                    List<C7201f60> s10 = next.s();
                    ArrayList arrayList = new ArrayList(s10.size());
                    for (C7201f60 c7201f60 : s10) {
                        if (!c7201f60.Q()) {
                            C10340xw0 c10340xw0 = (C10340xw0) c7201f60.f47863q.get(i10);
                            c6234Ya.getClass();
                            if (C6234Ya.a(c7201f60) != C6234Ya.a(c10340xw0)) {
                                arrayList.add(new MT(c7201f60, c10340xw0));
                            }
                        }
                    }
                    Y5 b10 = w52.b(w52.l().size());
                    this.f42608f = b10;
                    AbstractC10561zE previous = b10.previous();
                    if (!f42602g && w52.i() != previous) {
                        throw new AssertionError();
                    }
                    B60 position = previous.getPosition();
                    ArrayList arrayList2 = new ArrayList(arrayList.size());
                    int size = arrayList.size();
                    int i11 = 0;
                    int i12 = 0;
                    while (i11 < size) {
                        Object obj = arrayList.get(i11);
                        i11++;
                        MT mt = (MT) obj;
                        int i13 = i12 + 1;
                        C8146ko0 a11 = C8146ko0.a(this.f42605c.b(mt.f42300a), i12, this.f42603a);
                        AbstractC10561zE a12 = a(a11, mt.f42301b);
                        a12.b(position);
                        this.f42608f.add(a12);
                        arrayList2.add(a11);
                        C10340xw0 c10340xw02 = mt.f42301b;
                        c10340xw02.f53889f.remove(mt.f42300a);
                        c10340xw02.f53890g = null;
                        i12 = i13;
                    }
                    for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                        MT mt2 = (MT) arrayList.get(size2);
                        C8146ko0 c8146ko0 = (C8146ko0) arrayList2.get(size2);
                        C7673hx c7673hx = new C7673hx(mt2.f42300a);
                        C5692Oo0 c5692Oo0 = new C5692Oo0(c8146ko0, c7673hx);
                        c5692Oo0.b(position);
                        this.f42608f.add(c5692Oo0);
                        mt2.f42300a.f(c7673hx);
                    }
                }
                List<C7201f60> s11 = next.s();
                c6234Ya.getClass();
                for (C7201f60 c7201f602 : s11) {
                    if (c7201f602.Q()) {
                        ((C7048eB) c6234Ya.f46023d.get(next)).f47631c.addLast(c7201f602);
                    } else {
                        ((C7048eB) c6234Ya.f46023d.get(next)).f47629a.add(c7201f602);
                    }
                }
            }
        }
        this.f42604b.f47897d.forEach(new RN0());
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00ae, code lost:
    
        if (r3 != 1.0d) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00c6, code lost:
    
        if (r3 != 1) goto L90;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(AbstractC10561zE abstractC10561zE) {
        boolean z10 = f42602g;
        if (!z10 && !abstractC10561zE.e1()) {
            throw new AssertionError();
        }
        if (!z10 && (abstractC10561zE.d() instanceof C8146ko0)) {
            throw new AssertionError();
        }
        if (abstractC10561zE.v1()) {
            AbstractC8291lh G10 = abstractC10561zE.G();
            W5 b10 = abstractC10561zE.b();
            C10340xw0 d10 = G10.d();
            if (!d10.z() && d10.V() <= 0) {
                Iterator<AbstractC10561zE> it = d10.b0().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        if (d10.W() > 1) {
                            if (G10.w1()) {
                                C9126qh J10 = G10.J();
                                int i10 = LT.f41960a[G10.s2().ordinal()];
                                if (i10 != 1 && i10 != 2 && i10 != 3) {
                                    if (i10 == 4) {
                                        long v22 = J10.v2();
                                        if (v22 != 0) {
                                        }
                                    } else {
                                        if (i10 != 5) {
                                            throw new C5417Jv0();
                                        }
                                        if (!C9126qh.f51850m && J10.s2() != EnumC5477Kw0.f41828f) {
                                            throw new AssertionError();
                                        }
                                        double longBitsToDouble = Double.longBitsToDouble(J10.f51851l);
                                        if (longBitsToDouble != 0.0d) {
                                        }
                                    }
                                }
                            } else if (!f42602g && !(G10 instanceof C7957jh) && !(G10 instanceof C8458mh) && !(G10 instanceof C8625nh) && !G10.x1() && !(G10 instanceof C9820uq)) {
                                throw new AssertionError();
                            }
                        }
                        C4798y c4798y = this.f42603a;
                        com.android.tools.r8.graph.H5 j10 = this.f42604b.j();
                        if (!G10.a(c4798y, j10, M1.a(c4798y, j10), C10394yE.f53978a)) {
                            if (!f42602g && (G10 instanceof C9820uq) && G10.d().W() != 1) {
                                throw new AssertionError();
                            }
                            this.f42606d.put(abstractC10561zE.d(), G10);
                            abstractC10561zE.d().d();
                            this.f42608f.i();
                            return;
                        }
                    } else if (it.next().b() != b10) {
                        break;
                    }
                }
            }
            if (!f42602g && !abstractC10561zE.d().P()) {
                C4798y c4798y2 = this.f42603a;
                com.android.tools.r8.graph.H5 j11 = this.f42604b.j();
                if (!abstractC10561zE.a(c4798y2, j11, M1.a(c4798y2, j11), C10394yE.f53978a)) {
                    throw new AssertionError((Object) ("Expected instruction to be removed: " + ((Object) abstractC10561zE)));
                }
            }
        }
        if (!abstractC10561zE.d().P()) {
            C10340xw0 a10 = C8146ko0.a(this.f42605c.b(abstractC10561zE.d()), 0, this.f42603a);
            if (abstractC10561zE.b().z() && abstractC10561zE.o()) {
                this.f42608f = this.f42608f.a(this.f42604b, this.f42607e).I();
            }
            C10340xw0 c10340xw0 = abstractC10561zE.f54320e;
            abstractC10561zE.f54320e = null;
            abstractC10561zE.d(a10);
            if (c10340xw0 != null) {
                c10340xw0.f53886c = null;
            }
            C9870v60 c9870v60 = new C9870v60(a10);
            c9870v60.b(abstractC10561zE.getPosition());
            this.f42608f.add(c9870v60);
            return;
        }
        C8146ko0 a11 = C8146ko0.a(this.f42605c.b(abstractC10561zE.d()), 0, this.f42603a);
        C10340xw0 c10340xw02 = abstractC10561zE.f54320e;
        abstractC10561zE.f54320e = null;
        abstractC10561zE.d(a11);
        if (c10340xw02 != null) {
            c10340xw02.f53886c = null;
        }
        C5692Oo0 c5692Oo0 = new C5692Oo0(a11, c10340xw02);
        abstractC10561zE.c(c5692Oo0);
        boolean z11 = abstractC10561zE.b().z();
        if (z11 && abstractC10561zE.o()) {
            this.f42608f = this.f42608f.a(this.f42604b, this.f42607e).I();
        }
        c5692Oo0.b(abstractC10561zE.getPosition());
        this.f42608f.add(c5692Oo0);
        if (!z11 || abstractC10561zE.o()) {
            return;
        }
        this.f42608f.a(this.f42604b, this.f42607e);
        Z5 z52 = this.f42607e;
        z52.f46160c = (W5) z52.f46159b.previous();
    }

    public final void a(AbstractC10561zE abstractC10561zE) {
        AbstractC10561zE a10;
        AbstractC10561zE c8625nh;
        this.f42608f.previous();
        int i10 = 0;
        int i11 = 0;
        while (i10 < abstractC10561zE.f54321f.size()) {
            C10340xw0 c10340xw0 = (C10340xw0) abstractC10561zE.f54321f.get(i10);
            int i12 = i11 + 1;
            C8146ko0 a11 = C8146ko0.a(this.f42605c.b(c10340xw0), i11, this.f42603a);
            if (!f42602g && this.f42606d == null) {
                throw new AssertionError();
            }
            AbstractC8291lh abstractC8291lh = (AbstractC8291lh) this.f42606d.get(c10340xw0);
            if (abstractC8291lh != null) {
                int i13 = AbstractC8291lh.f50068k;
                if (abstractC8291lh instanceof C7957jh) {
                    a10 = C7957jh.a(a11, abstractC8291lh.F());
                } else {
                    if (abstractC8291lh instanceof C8458mh) {
                        c8625nh = new C8458mh(a11, abstractC8291lh.H().f50386l);
                    } else if (abstractC8291lh instanceof C8625nh) {
                        c8625nh = new C8625nh(a11, abstractC8291lh.I().f51030l);
                    } else if (abstractC8291lh.w1()) {
                        a10 = C9126qh.a(a11, abstractC8291lh.J());
                    } else if (abstractC8291lh.x1()) {
                        a10 = C9960vh.a(a11, abstractC8291lh.K());
                    } else if (abstractC8291lh instanceof C9820uq) {
                        a10 = C9820uq.a(a11, abstractC8291lh.O());
                    } else {
                        throw new C5417Jv0();
                    }
                    a10 = c8625nh;
                }
                a10.b(abstractC10561zE.getPosition());
                this.f42608f.add(a10);
            } else {
                AbstractC10561zE a12 = a(a11, c10340xw0);
                a12.b(abstractC10561zE.getPosition());
                this.f42608f.add(a12);
            }
            abstractC10561zE.a(i10, a11);
            i10++;
            i11 = i12;
        }
        this.f42608f.next();
    }

    public final void a(com.android.tools.r8.graph.M2 m22, NJ nj2) {
        if (nj2.e1()) {
            if (!f42602g && !nj2.d().P()) {
                throw new AssertionError();
            }
            b(nj2);
            return;
        }
        C8146ko0 a10 = C8146ko0.a(this.f42605c.a(m22), 0, this.f42603a);
        if (nj2.b().z()) {
            this.f42608f = this.f42608f.a(this.f42604b, this.f42607e).I();
        }
        C10340xw0 c10340xw0 = nj2.f54320e;
        nj2.f54320e = null;
        nj2.d(a10);
        if (c10340xw0 != null) {
            c10340xw0.f53886c = null;
        }
        C9870v60 c9870v60 = new C9870v60(a10);
        c9870v60.b(nj2.getPosition());
        this.f42608f.add(c9870v60);
    }

    public static AbstractC10561zE a(C8146ko0 c8146ko0, C10340xw0 c10340xw0) {
        if (c10340xw0.M()) {
            AbstractC8291lh n10 = c10340xw0.n();
            if (n10.w1()) {
                return new C9126qh(c8146ko0, n10.J().w2());
            }
            if (n10.x1()) {
                return new C9960vh(c8146ko0, n10.K().u2());
            }
            if (n10 instanceof C9820uq) {
                C9820uq O10 = n10.O();
                return new C9820uq(c8146ko0, O10.f52961l, O10.f52962m);
            }
            if (n10 instanceof C7957jh) {
                return new C7957jh(c8146ko0, n10.F().f49303l, false);
            }
            throw new C5417Jv0("Unexpected constant value: " + ((Object) c10340xw0));
        }
        return new JT(c8146ko0, c10340xw0);
    }
}
