package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4458g;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4723u0;
import com.android.tools.r8.graph.C4724u1;
import java.util.function.Function;
import java.util.function.Supplier;

public final class EM {

    public static final boolean f39837b = true;

    public final C4724u1 f39838a;

    public EM(C4724u1 c4724u1) {
        this.f39838a = c4724u1;
    }

    public final Boolean a(com.android.tools.r8.graph.M2 m22, C4514j c4514j, YM ym2) {
        C8415mP c8415mP = ym2.f45976a;
        boolean z10 = false;
        if (m22.I0() && a(m22, c8415mP)) {
            DO r62 = ym2.f45977b;
            com.android.tools.r8.graph.E0 g10 = c4514j.g(m22);
            if (g10 != null ? a(g10.d0(), r62, c4514j) : false) {
                z10 = true;
            }
        }
        return Boolean.valueOf(z10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x008d, code lost:
    
        if (r4.endsWith(r5) == false) goto L48;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0094 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(com.android.tools.r8.graph.M2 m22, C8415mP c8415mP) {
        boolean z10;
        if (!f39837b && !m22.I0()) {
            throw new AssertionError();
        }
        if (c8415mP.c()) {
            return true;
        }
        if (c8415mP.d()) {
            return m22.V0().equals(c8415mP.b());
        }
        String A02 = m22.A0();
        C7248fP c7248fP = c8415mP.f50283a;
        if ((c7248fP.b() || (c7248fP.c() && A02.equals(""))) ? true : A02.equals(c7248fP.a())) {
            String C02 = m22.C0();
            C9917vP c9917vP = c8415mP.f50284b.f40191a;
            if (!c9917vP.b()) {
                if (c9917vP.c()) {
                    z10 = C02.equals(c9917vP.f53091a);
                } else {
                    String str = c9917vP.f53092b;
                    if (!(str != null) || C02.startsWith(str)) {
                        String str2 = c9917vP.f53093c;
                        if (str2 != null) {
                        }
                    }
                    z10 = false;
                }
                if (!z10) {
                    return true;
                }
            }
            z10 = true;
            if (!z10) {
            }
        }
        return false;
    }

    public final boolean a(com.android.tools.r8.graph.E0 e02, final DO r52, C4514j c4514j) {
        CO co = (CO) r52;
        if (co.f39212a.c()) {
            return true;
        }
        if (co.f39213b && a(e02.getType(), co.f39212a)) {
            return true;
        }
        return c4514j.b(e02, new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj, Object obj2, Object obj3) {
                return EM.this.a(r52, (com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.E0) obj2, (Boolean) obj3);
            }
        }).c();
    }

    public final AbstractC6333Zs0 a(DO r12, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E0 e02, Boolean bool) {
        if (a(m22, ((CO) r12).f39212a)) {
            return C6162Ws0.f45559c;
        }
        return C6276Ys0.f46097c;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.AbstractCollection, java.util.Set] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.AbstractCollection, java.util.Set] */
    public static boolean a(AbstractC4458g abstractC4458g, IO io2) {
        EnumC6355a2 enumC6355a2;
        if (io2.a()) {
            return true;
        }
        if (!EnumC6355a2.a(io2.f41073a)) {
            if (abstractC4458g.l()) {
                enumC6355a2 = EnumC6355a2.f46396b;
            } else if (abstractC4458g.k()) {
                enumC6355a2 = EnumC6355a2.f46397c;
            } else if (abstractC4458g.f()) {
                enumC6355a2 = EnumC6355a2.f46398d;
            } else {
                if (!f39837b && !abstractC4458g.h()) {
                    throw new AssertionError();
                }
                enumC6355a2 = EnumC6355a2.f46399e;
            }
            if (!io2.f41073a.contains(enumC6355a2)) {
                return false;
            }
        }
        return a(abstractC4458g.n(), io2.f41074b) && a(abstractC4458g.e(), io2.f41075c) && a(abstractC4458g.o(), io2.f41076d);
    }

    public static boolean a(boolean z10, LX lx) {
        lx.getClass();
        return (lx instanceof IX) || z10 == (lx instanceof JX);
    }

    public static boolean a(C4723u0 c4723u0, AbstractC10198x40 abstractC10198x40) {
        if (abstractC10198x40.b()) {
            return true;
        }
        if (c4723u0.isEmpty()) {
            return false;
        }
        C8415mP c8415mP = (C8415mP) abstractC10198x40.a();
        if (c8415mP.c()) {
            return true;
        }
        for (C4666r0 c4666r0 : c4723u0.m0()) {
            if (a(c4666r0.l0(), c8415mP)) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(com.android.tools.r8.graph.L2 l22, C9917vP c9917vP) {
        if (c9917vP.b()) {
            return true;
        }
        if (c9917vP.c()) {
            return l22.b(c9917vP.f53091a);
        }
        String str = c9917vP.f53092b;
        if (str != null && !l22.c(str)) {
            return false;
        }
        String str2 = c9917vP.f53093c;
        if (str2 != null) {
            l22.getClass();
            if (!l22.a(com.android.tools.r8.graph.L2.a(str2))) {
                return false;
            }
        }
        return true;
    }

    public final boolean a(final com.android.tools.r8.graph.M2 m22, DP dp, final C4514j c4514j) {
        return ((Boolean) dp.a(new Supplier() {
            @Override
            public final Object get() {
                Boolean bool;
                bool = Boolean.TRUE;
                return bool;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return EM.this.a(m22, (C8081kP) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return EM.this.a(m22, c4514j, (JM) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return EM.this.a(m22, c4514j, (YM) obj);
            }
        })).booleanValue();
    }

    public final Boolean a(com.android.tools.r8.graph.M2 m22, C4514j c4514j, JM jm2) {
        boolean z10 = false;
        if (m22.E0()) {
            jm2.getClass();
            if (JM.f41381c.equals(jm2)) {
                z10 = true;
            } else {
                int i10 = 0;
                while (true) {
                    byte[] bArr = m22.f36592f.f36562f;
                    if (i10 >= bArr.length) {
                        i10 = 0;
                        break;
                    }
                    if (bArr[i10] != 91) {
                        break;
                    }
                    i10++;
                }
                int i11 = jm2.f41384b;
                if (i10 >= i11) {
                    z10 = a(m22.a(i11, this.f39838a), jm2.f41383a, c4514j);
                }
            }
        }
        return Boolean.valueOf(z10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002c, code lost:
    
        if (((char) r3.f36592f.f36562f[0]) == r4.a()) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Boolean a(com.android.tools.r8.graph.M2 m22, C8081kP c8081kP) {
        boolean z10 = false;
        if (m22.P0()) {
            c8081kP.getClass();
            if (c8081kP != C8081kP.f49607b) {
                if (!com.android.tools.r8.graph.M2.f36591j && !m22.P0()) {
                    throw new AssertionError();
                }
            }
            z10 = true;
        }
        return Boolean.valueOf(z10);
    }
}
