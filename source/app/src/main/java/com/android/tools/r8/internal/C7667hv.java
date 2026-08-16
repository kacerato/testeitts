package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Iterator;
import java.util.function.BiFunction;

public final class C7667hv extends H9 {

    public static final boolean f48734d = true;

    public final String f48735c;

    public C7667hv(String str) {
        if (!f48734d && str == null) {
            throw new AssertionError();
        }
        this.f48735c = str;
    }

    @Override
    public final H9 a(int i10, S60 s60, O8 o82) {
        return this;
    }

    @Override
    public final H9 b(O8 o82, G9 g92) {
        return this;
    }

    @Override
    public final H9 c(O8 o82, G9 g92) {
        return this;
    }

    @Override
    public final C7667hv e() {
        return this;
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C7667hv.class != obj.getClass()) {
            return false;
        }
        return this.f48735c.equals(((C7667hv) obj).f48735c);
    }

    @Override
    public final H9 f() {
        return this;
    }

    @Override
    public final H9 g() {
        return this;
    }

    public final int hashCode() {
        return this.f48735c.hashCode();
    }

    @Override
    public final H9 a(com.android.tools.r8.graph.A2 a22, O8 o82) {
        return this;
    }

    @Override
    public final H9 a(C4798y c4798y, com.android.tools.r8.graph.M2 m22, O8 o82, BiFunction biFunction) {
        return this;
    }

    @Override
    public final H9 a(C4798y c4798y, O8 o82, int i10, EnumC5477Kw0 enumC5477Kw0, BiFunction biFunction) {
        return this;
    }

    @Override
    public final H9 a(C4798y c4798y, O8 o82, com.android.tools.r8.graph.M2... m2Arr) {
        return this;
    }

    @Override
    public final H9 a(C5020Da c5020Da, com.android.tools.r8.graph.M2 m22) {
        return this;
    }

    @Override
    public final H9 a(O8 o82, com.android.tools.r8.graph.M2 m22) {
        return this;
    }

    @Override
    public final H9 a(O8 o82, G9 g92) {
        return this;
    }

    @Override
    public final H9 a(O8 o82, S60 s60) {
        return this;
    }

    @Override
    public final H9 a(O8 o82, AbstractC8999pu0 abstractC8999pu0) {
        return this;
    }

    @Override
    public final H9 a(AbstractC6668bv0 abstractC6668bv0, com.android.tools.r8.graph.M2 m22) {
        return this;
    }

    @Override
    public final H9 a(BiFunction biFunction) {
        return this;
    }

    public static String a(com.android.tools.r8.graph.M2 m22) {
        if (!m22.E0() && !m22.I0()) {
            if (m22.N0()) {
                return "null";
            }
            if (!f48734d && !m22.P0()) {
                throw new AssertionError();
            }
            return "primitive " + m22.D0();
        }
        return m22.D0();
    }

    public static String a(int i10, InterfaceC8008jy interfaceC8008jy) {
        if (interfaceC8008jy.isInitialized()) {
            if (interfaceC8008jy.F()) {
                if (interfaceC8008jy.d()) {
                    return "null";
                }
                if (interfaceC8008jy.B()) {
                    AbstractC6450ae0 abstractC6450ae0 = interfaceC8008jy.p().f39161c;
                    if (abstractC6450ae0.r()) {
                        return a(abstractC6450ae0);
                    }
                    if (!f48734d && !abstractC6450ae0.s()) {
                        throw new AssertionError();
                    }
                    return "initialized " + a(abstractC6450ae0);
                }
                boolean z10 = f48734d;
                if (!z10 && !interfaceC8008jy.m()) {
                    throw new AssertionError();
                }
                com.android.tools.r8.graph.M2 m22 = interfaceC8008jy.b().f39470c;
                if (m22.E0()) {
                    return m22.D0();
                }
                if (!z10 && !m22.I0()) {
                    throw new AssertionError();
                }
                return "initialized " + m22.D0();
            }
            if (!f48734d && !interfaceC8008jy.isPrimitive()) {
                throw new AssertionError();
            }
            return "primitive " + interfaceC8008jy.asPrimitive().getTypeName();
        }
        if (interfaceC8008jy.t()) {
            if (interfaceC8008jy.y()) {
                com.android.tools.r8.graph.M2 j10 = interfaceC8008jy.j();
                if (j10 != null) {
                    return "uninitialized " + j10.D0();
                }
                return "uninitialized-new";
            }
            return "uninitialized-this";
        }
        if (!f48734d && !interfaceC8008jy.f() && !interfaceC8008jy.c()) {
            throw new AssertionError();
        }
        if (i10 == 1) {
            return "top";
        }
        return interfaceC8008jy.f() ? "a single width value" : "a double width value";
    }

    /* JADX WARN: Type inference failed for: r1v24, types: [java.util.Map, com.android.tools.r8.internal.u1] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.util.Map, com.android.tools.r8.internal.u1] */
    public static String a(AbstractC8999pu0 abstractC8999pu0) {
        if (abstractC8999pu0.r()) {
            W3 a10 = abstractC8999pu0.a();
            AbstractC8999pu0 E10 = a10.E();
            if (!f48734d && !E10.s() && !E10.x()) {
                throw new AssertionError();
            }
            boolean z10 = E10.s() && !E10.b().F().f53468a.isEmpty();
            StringBuilder sb2 = new StringBuilder();
            if (z10) {
                sb2.append("(");
            }
            sb2.append(a(E10));
            if (z10) {
                sb2.append(")");
            }
            for (int i10 = 0; i10 < a10.H(); i10++) {
                sb2.append(okhttp3.v.f99450n);
            }
            return sb2.toString();
        }
        if (abstractC8999pu0.s()) {
            C6949de b10 = abstractC8999pu0.b();
            StringBuilder sb3 = new StringBuilder(b10.E().D0());
            if (!b10.F().f53468a.isEmpty()) {
                Iterator it = b10.F().b().iterator();
                sb3.append(" implements ");
                sb3.append(((com.android.tools.r8.graph.M2) ((C8699o50) it.next()).a()).D0());
                while (it.hasNext()) {
                    sb3.append(", ");
                    sb3.append(((com.android.tools.r8.graph.M2) ((C8699o50) it.next()).a()).D0());
                }
            }
            return sb3.toString();
        }
        if (abstractC8999pu0 instanceof C6301Zd0) {
            return "null";
        }
        if (f48734d || abstractC8999pu0.x()) {
            return abstractC8999pu0.c().E();
        }
        throw new AssertionError();
    }

    public static String a(EnumC5477Kw0 enumC5477Kw0) {
        if (enumC5477Kw0.a()) {
            return "object";
        }
        return "primitive " + enumC5477Kw0.d().E();
    }
}
