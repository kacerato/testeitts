package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.position.MethodPosition;
import com.android.tools.r8.utils.StringDiagnostic;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.function.Consumer;

public final class C8832ou0 {

    public static final boolean f51378d = true;

    public final C4798y f51379a;

    public final C6382aB f51380b;

    public final HashMap f51381c = new HashMap();

    public C8832ou0(C4798y c4798y, C6382aB c6382aB) {
        this.f51379a = c4798y;
        this.f51380b = c6382aB;
    }

    public static AbstractC8999pu0 a(EnumC5592Mw0 enumC5592Mw0) {
        switch (enumC5592Mw0) {
            case f42461b:
                return AbstractC8999pu0.f();
            case f42462c:
                return AbstractC8999pu0.k();
            case f42463d:
                return AbstractC8999pu0.j();
            case f42464e:
                return AbstractC8999pu0.o();
            case f42465f:
                return AbstractC8999pu0.p();
            case f42466g:
                return AbstractC8999pu0.l();
            case f42467h:
                return AbstractC8999pu0.i();
            case f42468i:
                return AbstractC8999pu0.q();
            default:
                throw new C5417Jv0("Unexpected constraint type: " + ((Object) enumC5592Mw0));
        }
    }

    public final void a(C7215fB c7215fB, ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList != null) {
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                ((YC) obj).a(this);
            }
        }
        ArrayList arrayList3 = new ArrayList(arrayList2.size());
        int size2 = arrayList2.size();
        int i11 = 0;
        while (i11 < size2) {
            Object obj2 = arrayList2.get(i11);
            i11++;
            C10340xw0 c10340xw0 = (C10340xw0) obj2;
            C6382aB c6382aB = this.f51380b;
            c10340xw0.a(a(true, c10340xw0), c6382aB.f46455n, c6382aB.f46457p.E().f50691j);
            if (!c10340xw0.u().w()) {
                arrayList3.add(c10340xw0);
            }
        }
        if (arrayList3.isEmpty()) {
            return;
        }
        C5094Ef0 c5094Ef0 = this.f51379a.E().f50691j;
        c5094Ef0.a(null, new StringDiagnostic("Cannot determine precise type for value: " + arrayList3.get(0) + ", its imprecise type is: " + ((Object) ((C10340xw0) arrayList3.get(0)).u()), c7215fB.j().f36317b.f36244d, new MethodPosition(c7215fB.j().w())));
        throw c5094Ef0.f39969c;
    }

    public final void a(YV yv, C10340xw0 c10340xw0, C10340xw0 c10340xw02, Consumer consumer) {
        EnumC5592Mw0 a10;
        if (!f51378d && yv.a()) {
            throw new AssertionError();
        }
        C10340xw0 a11 = a(c10340xw0);
        if (c10340xw02.u().r()) {
            a10 = EnumC5592Mw0.a(c10340xw02.u().a().G());
        } else {
            a10 = a(true, a11);
        }
        C6382aB c6382aB = this.f51380b;
        a11.a(a10, c6382aB.f46455n, c6382aB.f46457p.E().f50691j);
        consumer.accept(YV.a(yv, a10));
    }

    public final EnumC5592Mw0 a(boolean z10, C10340xw0 c10340xw0) {
        AbstractC8999pu0 u10 = a(c10340xw0).u();
        u10.getClass();
        EnumC5592Mw0 a10 = u10 instanceof C10540z7 ? EnumC5592Mw0.f42461b : EnumC5592Mw0.a(u10);
        int ordinal = a10.ordinal();
        if (ordinal == 3) {
            if (!f51378d && z10) {
                int i10 = QC.f43505c;
                a(c10340xw0, C7119ef0.f47742j);
            }
            if (z10) {
                return EnumC5592Mw0.f42462c;
            }
        } else {
            if (ordinal == 4) {
                if (f51378d || !z10) {
                    return EnumC5592Mw0.f42464e;
                }
                throw new AssertionError();
            }
            if (ordinal == 7) {
                if (!f51378d && z10) {
                    int i11 = QC.f43505c;
                    a(c10340xw0, C7119ef0.f47742j);
                }
                if (z10) {
                    return EnumC5592Mw0.f42466g;
                }
            }
        }
        return a10;
    }

    public static void a(C10340xw0 c10340xw0, QC qc2) {
        for (AbstractC10561zE abstractC10561zE : c10340xw0.b0()) {
            if (abstractC10561zE.H1()) {
                EB V10 = abstractC10561zE.V();
                if (!V10.x2()) {
                    ArrayList arrayList = V10.f54321f;
                    C10340xw0 c10340xw02 = (C10340xw0) arrayList.get(1 - arrayList.indexOf(c10340xw0));
                    if (!qc2.contains(c10340xw02) && !f51378d) {
                        int i10 = QC.f43505c;
                        IC ic2 = new IC();
                        Iterator it = qc2.iterator();
                        while (it.hasNext()) {
                            ic2.a(it.next());
                        }
                        a(c10340xw02, ic2.a(c10340xw0).a());
                    }
                }
            } else if (abstractC10561zE.o1()) {
                T3 A10 = abstractC10561zE.A();
                boolean z10 = f51378d;
                if (!z10 && c10340xw0 != A10.value()) {
                    throw new AssertionError();
                }
                if (!z10 && A10.f44380k.a()) {
                    throw new AssertionError();
                }
                if (!z10 && !A10.u2().u().B().e()) {
                    throw new AssertionError();
                }
            } else if (!f51378d) {
                throw new AssertionError();
            }
        }
    }

    public final void a(C10340xw0 c10340xw0, C10340xw0 c10340xw02) {
        if (c10340xw0 == c10340xw02) {
            return;
        }
        AbstractC8999pu0 u10 = c10340xw0.u();
        AbstractC8999pu0 u11 = c10340xw02.u();
        if (!u10.w() || !u11.w()) {
            if (u10.w()) {
                this.f51381c.put(c10340xw02, c10340xw0);
                return;
            } else {
                this.f51381c.put(c10340xw0, c10340xw02);
                return;
            }
        }
        if (u10 != u11) {
            if ((u10 instanceof C10540z7 ? EnumC5592Mw0.f42461b : EnumC5592Mw0.a(u10)) == (u11 instanceof C10540z7 ? EnumC5592Mw0.f42461b : EnumC5592Mw0.a(u11))) {
                return;
            }
            throw new C5325If("Cannot unify types for values " + ((Object) c10340xw0) + b3.s.f32937c + ((Object) u10) + " and " + ((Object) c10340xw02) + b3.s.f32937c + ((Object) u11));
        }
    }

    public final C10340xw0 a(C10340xw0 c10340xw0) {
        C10340xw0 c10340xw02 = c10340xw0;
        while (c10340xw0 != null) {
            C10340xw0 c10340xw03 = (C10340xw0) this.f51381c.get(c10340xw0);
            if (c10340xw03 != null) {
                this.f51381c.put(c10340xw02, c10340xw03);
            }
            c10340xw02 = c10340xw0;
            c10340xw0 = c10340xw03;
        }
        return c10340xw02;
    }
}
