package com.android.tools.r8.internal;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.graph.C4554l1;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UTFDataFormatException;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class F2 implements D2 {

    public static final byte[] f40069g = new byte[0];

    public static volatile AbstractC10358y2 f40070h = null;

    public static final boolean f40071i = true;

    public final AbstractC7552hC f40072a;

    public final QC f40073b;

    public final ConcurrentHashMap f40074c = new ConcurrentHashMap();

    public final ConcurrentHashMap f40075d = new ConcurrentHashMap();

    public final C8570nJ f40076e;

    public final DiagnosticsHandler f40077f;

    public F2(List<A2> list, final C8570nJ c8570nJ, DiagnosticsHandler diagnosticsHandler) {
        this.f40076e = c8570nJ;
        this.f40077f = diagnosticsHandler;
        list.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                F2.this.a((A2) obj);
            }
        });
        int i10 = QC.f43505c;
        final IC ic2 = new IC();
        c8570nJ.a().a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                IC.this.a(c8570nJ.f50660a.d((String) obj));
            }
        });
        this.f40073b = ic2.a();
        int i11 = AbstractC7552hC.f48487c;
        final C7051eC c7051eC = new C7051eC();
        H2 a10 = c8570nJ.a();
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7051eC.this.a(c8570nJ.f50660a.b("L" + ((String) obj).replace('.', '/') + "/"));
            }
        };
        if (!H2.f40653m && !a10.f40654a) {
            throw new AssertionError();
        }
        String str = a10.f40656c;
        if (str != null) {
            C10656zq0.a(str, IIndexConstants.PARAMETER_SEPARATOR).forEach(consumer);
        }
        this.f40072a = c7051eC.a();
        if (!f40071i && !list.stream().allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return F2.this.b((A2) obj);
            }
        })) {
            throw new AssertionError();
        }
    }

    public static byte[] a() {
        return f40069g;
    }

    public final boolean b(A2 a22) {
        return a22.f38508b.isEqualTo(b(a22.f38507a));
    }

    public static byte[] a(com.android.tools.r8.graph.J2 j22, InterfaceC6217Xr0<com.android.tools.r8.graph.L2, Integer, IOException> interfaceC6217Xr0) throws IOException {
        j22.getClass();
        if (j22 instanceof com.android.tools.r8.graph.M2) {
            int intValue = interfaceC6217Xr0.apply(j22.o0().v0()).intValue();
            if (intValue < 0) {
                return f40069g;
            }
            return new byte[]{0, a(intValue), b(intValue)};
        }
        int intValue2 = interfaceC6217Xr0.apply(j22.m0().s0().v0()).intValue();
        if (intValue2 < 0) {
            return f40069g;
        }
        int intValue3 = interfaceC6217Xr0.apply(j22.m0().t0()).intValue();
        if (intValue3 < 0) {
            return f40069g;
        }
        if (j22.p0()) {
            int intValue4 = interfaceC6217Xr0.apply(j22.l0().getType().v0()).intValue();
            if (intValue2 >= 0 && intValue3 >= 0 && intValue4 >= 0) {
                return new byte[]{1, a(intValue2), b(intValue2), a(intValue3), b(intValue3), a(intValue4), b(intValue4)};
            }
            return f40069g;
        }
        if (!f40071i && !j22.r0()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.A2 n02 = j22.n0();
        if (intValue2 >= 0 && intValue3 >= 0) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byteArrayOutputStream.write(2);
            byteArrayOutputStream.write(a(intValue2));
            byteArrayOutputStream.write(b(intValue2));
            byteArrayOutputStream.write(a(intValue3));
            byteArrayOutputStream.write(b(intValue3));
            Iterator<com.android.tools.r8.graph.M2> it = n02.f36127i.f36441f.iterator();
            while (it.hasNext()) {
                int intValue5 = interfaceC6217Xr0.apply(it.next().v0()).intValue();
                if (intValue5 < 0) {
                    return f40069g;
                }
                byteArrayOutputStream.write(a(intValue5));
                byteArrayOutputStream.write(b(intValue5));
            }
            int intValue6 = interfaceC6217Xr0.apply(n02.z0().v0()).intValue();
            if (intValue6 < 0) {
                return f40069g;
            }
            byteArrayOutputStream.write(a(intValue6));
            byteArrayOutputStream.write(b(intValue6));
            return byteArrayOutputStream.toByteArray();
        }
        return f40069g;
    }

    public static byte b(int i10) {
        if (f40071i || C8707o8.a(i10)) {
            return (byte) i10;
        }
        throw new AssertionError();
    }

    public final C2 b(com.android.tools.r8.graph.J2 j22) {
        if (this.f40073b.contains(j22.S())) {
            return C2.EXTENSION;
        }
        for (int i10 = 0; i10 < this.f40072a.size(); i10++) {
            com.android.tools.r8.graph.L2 v02 = j22.S().v0();
            com.android.tools.r8.graph.L2 l22 = (com.android.tools.r8.graph.L2) this.f40072a.get(i10);
            v02.getClass();
            if (v02.b(l22.f36562f) && a(l22, v02)) {
                return C2.EXTENSION;
            }
        }
        return (C2) ((Optional) this.f40074c.computeIfAbsent(j22, new Function() {
            @Override
            public final Object apply(Object obj) {
                return F2.this.a((com.android.tools.r8.graph.J2) obj);
            }
        })).orElse(null);
    }

    public static byte a(int i10) {
        if (f40071i || C8707o8.a(i10)) {
            return (byte) (i10 >> 8);
        }
        throw new AssertionError();
    }

    public final void a(A2 a22) {
        this.f40074c.put(a22.f38507a, Optional.of(a22.f38508b));
    }

    @Override
    public C2 a(com.android.tools.r8.graph.M2 m22) {
        return b(m22);
    }

    @Override
    public C2 a(com.android.tools.r8.graph.A2 a22) {
        return b(a22);
    }

    @Override
    public C2 a(C4554l1 c4554l1) {
        return b(c4554l1);
    }

    public static boolean a(com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.L2 l23) {
        int length = l22.f36562f.length;
        if (!f40071i && l23.f36562f[length - 2] != 47) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.K2 k22 = new com.android.tools.r8.graph.K2(length - 1, l23);
        while (k22.a()) {
            try {
                if (k22.b() == '/') {
                    return false;
                }
            } catch (UTFDataFormatException e10) {
                if (f40071i) {
                    return false;
                }
                throw new AssertionError((Object) ("Iterating " + ((Object) l23) + " from index " + length + " caused " + ((Object) e10)));
            }
        }
        return true;
    }

    public final Optional a(com.android.tools.r8.graph.J2 j22) {
        byte[] a10;
        byte b10;
        if (f40070h == null) {
            C8570nJ c8570nJ = this.f40076e;
            DiagnosticsHandler diagnosticsHandler = this.f40077f;
            if (f40070h == null) {
                synchronized (AbstractC10358y2.class) {
                    try {
                        if (f40070h == null) {
                            f40070h = AbstractC10358y2.a(c8570nJ, diagnosticsHandler);
                        }
                    } finally {
                    }
                }
            }
        }
        AbstractC10358y2 abstractC10358y2 = f40070h;
        abstractC10358y2.getClass();
        if (abstractC10358y2 instanceof C10024w2) {
            return Optional.empty();
        }
        try {
            a10 = a(j22, (InterfaceC6217Xr0<com.android.tools.r8.graph.L2, Integer, IOException>) new InterfaceC6217Xr0() {
                @Override
                public final Object apply(Object obj) {
                    return F2.this.a((com.android.tools.r8.graph.L2) obj);
                }
            });
        } catch (Exception unused) {
            a10 = a();
        }
        if (a10 == a()) {
            return Optional.empty();
        }
        AbstractC10358y2 abstractC10358y22 = f40070h;
        abstractC10358y22.getClass();
        int a11 = AbstractC10358y2.a(j22);
        if (abstractC10358y22.f53923a == -1) {
            abstractC10358y22.f53923a = abstractC10358y22.d();
        }
        C10191x2 c10 = abstractC10358y22.c((a11 * 6) + AbstractC10358y2.a(abstractC10358y22.f53923a));
        c10.getClass();
        if (c10 == C10191x2.f53671c) {
            b10 = 0;
        } else {
            if (abstractC10358y22.f53923a == -1) {
                abstractC10358y22.f53923a = abstractC10358y22.d();
            }
            int i10 = abstractC10358y22.f53923a;
            b10 = abstractC10358y22.b(a10, AbstractC10358y2.a(i10) + ((1 << AbstractC10358y2.b()) * 6) + c10.f53673a, c10.f53674b);
        }
        if (b10 <= 0) {
            return Optional.empty();
        }
        return Optional.of(C2.a(b10));
    }

    public final Integer a(final com.android.tools.r8.graph.L2 l22) {
        return (Integer) this.f40075d.computeIfAbsent(l22, new Function() {
            @Override
            public final Object apply(Object obj) {
                Integer valueOf;
                valueOf = Integer.valueOf(F2.f40070h.b(com.android.tools.r8.graph.L2.this));
                return valueOf;
            }
        });
    }
}
