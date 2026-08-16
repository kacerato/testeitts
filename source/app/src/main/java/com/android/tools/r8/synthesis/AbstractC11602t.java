package com.android.tools.r8.synthesis;

import com.android.tools.r8.FeatureSplit;
import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.AbstractC4592n1;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.C6300Zd;
import com.android.tools.r8.internal.C8379mA;
import com.android.tools.r8.internal.InterfaceC5152Ff0;
import com.android.tools.r8.synthesis.S;
import java.util.Map;

public abstract class AbstractC11602t {

    public static final boolean f58330c = true;

    public final S.b f58331a;

    public final C11579l f58332b;

    public AbstractC11602t(S.b bVar, C11579l c11579l) {
        boolean z10 = f58330c;
        if (!z10 && bVar == null) {
            throw new AssertionError();
        }
        if (!z10 && c11579l == null) {
            throw new AssertionError();
        }
        this.f58331a = bVar;
        this.f58332b = c11579l;
    }

    public abstract int a(AbstractC11602t abstractC11602t, InterfaceC5152Ff0 interfaceC5152Ff0, InterfaceC5152Ff0 interfaceC5152Ff02);

    public InterfaceC11599s a() {
        return null;
    }

    public abstract void a(C8379mA c8379mA, InterfaceC5152Ff0 interfaceC5152Ff0);

    public O b() {
        return null;
    }

    public Z c() {
        return null;
    }

    public abstract com.android.tools.r8.graph.E0 d();

    public boolean e() {
        return this instanceof O;
    }

    public abstract boolean f();

    public abstract AbstractC11547a0 g();

    /* JADX WARN: Removed duplicated region for block: B:47:0x00b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int a(AbstractC11602t abstractC11602t, boolean z10, AbstractC5308Hz abstractC5308Hz, final Map map, C6300Zd c6300Zd) {
        InterfaceC5152Ff0 interfaceC5152Ff0;
        int compareTo;
        int compareTo2;
        int compareTo3 = this.f58331a.compareTo(abstractC11602t.f58331a);
        if (compareTo3 != 0) {
            return compareTo3;
        }
        final M2 type = d().getType();
        final M2 type2 = abstractC11602t.d().getType();
        if (!this.f58331a.f()) {
            return type.compareTo(type2);
        }
        if (z10 && (compareTo2 = this.f58332b.compareTo(abstractC11602t.f58332b)) != 0) {
            return compareTo2;
        }
        FeatureSplit featureSplit = this.f58332b.f58276e;
        FeatureSplit featureSplit2 = abstractC11602t.f58332b.f58276e;
        if (featureSplit != featureSplit2) {
            c6300Zd.getClass();
            boolean z11 = C6300Zd.f46302c;
            if (!z11 && featureSplit == null) {
                throw new AssertionError();
            }
            if (!z11 && featureSplit2 == null) {
                throw new AssertionError();
            }
            if (featureSplit == featureSplit2) {
                compareTo = 0;
            } else if (featureSplit.isBase()) {
                compareTo = 1;
            } else {
                compareTo = featureSplit2.isBase() ? -1 : ((String) c6300Zd.f46304b.get(featureSplit)).compareTo((String) c6300Zd.f46304b.get(featureSplit2));
            }
            if (f58330c || compareTo != 0) {
                return compareTo;
            }
            throw new AssertionError();
        }
        if (abstractC5308Hz.l()) {
            final M2 a10 = abstractC5308Hz.a(type);
            final M2 a11 = abstractC5308Hz.a(type2);
            if (!type.a(a10) || !type2.a(a11)) {
                interfaceC5152Ff0 = new InterfaceC5152Ff0() {
                    @Override
                    public final AbstractC4592n1 a(AbstractC4592n1 abstractC4592n1) {
                        return AbstractC11602t.a(M2.this, a10, a11, type, (M2) abstractC4592n1);
                    }
                };
                if (interfaceC5152Ff0 == null) {
                    interfaceC5152Ff0 = new InterfaceC5152Ff0() {
                        @Override
                        public final AbstractC4592n1 a(AbstractC4592n1 abstractC4592n1) {
                            return AbstractC11602t.a(M2.this, type, (M2) abstractC4592n1);
                        }
                    };
                }
                return a(abstractC11602t, interfaceC5152Ff0, new InterfaceC5152Ff0() {
                    @Override
                    public final AbstractC4592n1 a(AbstractC4592n1 abstractC4592n1) {
                        return AbstractC11602t.a(Map.this, (A2) abstractC4592n1);
                    }
                });
            }
        }
        interfaceC5152Ff0 = null;
        if (interfaceC5152Ff0 == null) {
        }
        return a(abstractC11602t, interfaceC5152Ff0, new InterfaceC5152Ff0() {
            @Override
            public final AbstractC4592n1 a(AbstractC4592n1 abstractC4592n1) {
                return AbstractC11602t.a(Map.this, (A2) abstractC4592n1);
            }
        });
    }

    public static M2 a(M2 m22, M2 m23, M2 m24, M2 m25, M2 m26) {
        M2[] m2Arr = M2.f36589h;
        return (m26 == m22 || m26 == m23 || m26 == m24) ? m25 : m26;
    }

    public static M2 a(M2 m22, M2 m23, M2 m24) {
        return m22.a(m24) ? m23 : m24;
    }

    public static A2 a(Map map, A2 a22) {
        return (A2) map.getOrDefault(a22, a22);
    }
}
