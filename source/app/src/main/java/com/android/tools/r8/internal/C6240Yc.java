package com.android.tools.r8.internal;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Set;
import java.util.function.Predicate;

public final class C6240Yc {

    public static final boolean f46040e = true;

    public final C4798y f46041a;

    public final JD f46042b;

    public final C6613bd f46043c;

    public int f46044d = 0;

    public C6240Yc(C4798y c4798y, JD jd2, C6613bd c6613bd) {
        this.f46041a = c4798y;
        this.f46042b = jd2;
        this.f46043c = c6613bd;
    }

    public final boolean a(C7215fB c7215fB, com.android.tools.r8.graph.H2 h22, IdentityHashMap identityHashMap, ArrayList arrayList) {
        C10340xw0 n10;
        Object obj;
        int i10 = 0;
        if (((C11245i) this.f46041a.f()).f57386A.a(h22.f36245e)) {
            return false;
        }
        int size = arrayList.size();
        int i11 = 0;
        do {
            int i12 = Integer.MAX_VALUE;
            if (i11 >= size) {
                int size2 = identityHashMap.size();
                int i13 = 0;
                for (VJ vj2 : c7215fB.b((Predicate) new C9862v31())) {
                    com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) identityHashMap.get(vj2);
                    if (h52 != null) {
                        JD jd2 = this.f46042b;
                        C7215fB b10 = jd2.b(h52, vj2);
                        jd2.a(vj2, b10);
                        int k10 = h52.d().Q0().k(i12);
                        Set set = null;
                        int i14 = i10;
                        for (AbstractC10561zE abstractC10561zE : b10.q()) {
                            int r22 = abstractC10561zE.r2();
                            if (r22 == 28 || r22 == 30) {
                                if (abstractC10561zE instanceof C6558bE) {
                                    n10 = abstractC10561zE.c().n();
                                } else {
                                    n10 = abstractC10561zE.m().n();
                                }
                                C10340xw0 i15 = n10.i();
                                if (set == null) {
                                    List<C10340xw0> d10 = b10.d();
                                    Set c10 = AbstractC5513Ll0.c();
                                    for (int i16 = i10; i16 < vj2.f54321f.size(); i16++) {
                                        C10340xw0 c10340xw0 = (C10340xw0) vj2.f54321f.get(i16);
                                        if (this.f46043c.f46804a.contains(c10340xw0)) {
                                            c10.add(d10.get(i16));
                                        } else if (f46040e) {
                                            continue;
                                        } else {
                                            if (this.f46043c.f46804a.contains(c10340xw0.i())) {
                                                throw new AssertionError();
                                            }
                                        }
                                    }
                                    set = c10;
                                }
                                if (set.contains(i15)) {
                                    if (!(this.f46041a.E().f50697l instanceof ClassFileConsumer)) {
                                        i14 += 2;
                                    }
                                }
                                i10 = 0;
                            } else if (r22 == 56) {
                                boolean z10 = this.f46041a.E().f50697l instanceof ClassFileConsumer;
                            }
                            i14++;
                            i10 = 0;
                        }
                        int i17 = k10 - i14;
                        if (!f46040e && i17 < 0) {
                            throw new AssertionError();
                        }
                        if (a(i17)) {
                            return true;
                        }
                        i13++;
                        if (i13 == size2) {
                            break;
                        }
                        i10 = 0;
                        i12 = Integer.MAX_VALUE;
                    }
                }
                if (f46040e || i13 == size2) {
                    return false;
                }
                throw new AssertionError();
            }
            obj = arrayList.get(i11);
            i11++;
        } while (!a(((com.android.tools.r8.graph.H5) obj).d().Q0().k(Integer.MAX_VALUE)));
        return true;
    }

    public final boolean a(int i10) {
        int i11 = this.f46044d + i10;
        this.f46044d = i11;
        C8570nJ.d j10 = this.f46041a.E().j();
        int i12 = j10.f50751a;
        if (i12 < 0) {
            C8570nJ c8570nJ = C8570nJ.this;
            if (c8570nJ.f50697l instanceof ClassFileConsumer) {
                i12 = 50;
            } else {
                if (!C8570nJ.d.f50750c && !c8570nJ.P()) {
                    throw new AssertionError();
                }
                i12 = 65;
            }
        }
        return i11 > i12;
    }
}
