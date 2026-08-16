package com.android.tools.r8.naming;

import com.android.tools.r8.graph.C4425e4;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.I5;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C8051kC;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.Yi1;
import com.android.tools.r8.shaking.C11245i;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public class C10932f {

    public static final boolean f55879k = true;

    public final C4798y f55880a;

    public final C10953j0 f55881b;

    public final Collection f55882c;

    public final HashSet f55883d;

    public final IdentityHashMap f55884e;

    public final HashMap f55885f;

    public final boolean f55886g;

    public final C10927e f55887h;

    public final boolean f55888i;

    public final Predicate f55889j;

    public C10932f(C4798y c4798y, C10953j0 c10953j0, Collection collection) {
        HashSet hashSet = new HashSet();
        this.f55883d = hashSet;
        this.f55884e = new IdentityHashMap();
        HashMap hashMap = new HashMap();
        this.f55885f = hashMap;
        this.f55880a = c4798y;
        this.f55881b = c10953j0;
        this.f55882c = collection;
        C8570nJ E10 = c4798y.E();
        this.f55886g = E10.B().f().f56573e || E10.B().f().f56571c;
        C10927e c10927e = new C10927e(this, "", String.valueOf('/'));
        this.f55887h = c10927e;
        hashMap.put("", c10927e);
        if (E10.B().f57594I) {
            this.f55888i = false;
            this.f55889j = new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C10932f.this.c((String) obj);
                }
            };
        } else {
            this.f55888i = true;
            this.f55889j = new Yi1(hashSet);
        }
    }

    public final C10922d a(C8659ns0 c8659ns0) {
        c8659ns0.b("reserve");
        for (I5 i52 : this.f55882c) {
            com.android.tools.r8.graph.L2 b10 = this.f55881b.b(i52.getType());
            if (b10 != null) {
                if (!f55879k && this.f55884e.containsKey(i52.getType())) {
                    throw new AssertionError();
                }
                a(b10, i52.getType());
            }
        }
        ((C11245i) this.f55880a.f()).f37305h.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10932f.this.c((com.android.tools.r8.graph.M2) obj);
            }
        });
        c8659ns0.d();
        c8659ns0.b("rename-classes");
        for (com.android.tools.r8.graph.S s10 : this.f55882c) {
            if (!this.f55884e.containsKey(s10.getType())) {
                com.android.tools.r8.graph.L2 a10 = a(s10.getType());
                this.f55884e.put(s10.getType(), a10);
                if (!f55879k) {
                    a((com.android.tools.r8.graph.E0) s10, a10);
                }
            }
        }
        c8659ns0.d();
        c8659ns0.b("rename-dangling-types");
        Iterator<E> it = this.f55882c.iterator();
        while (it.hasNext()) {
            a((I5) it.next());
        }
        c8659ns0.d();
        Map unmodifiableMap = Collections.unmodifiableMap(this.f55884e);
        C8051kC c8051kC = new C8051kC(4);
        for (Map.Entry entry : this.f55885f.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = ((C10927e) entry.getValue()).f55867b;
            if (!str2.equals(str)) {
                c8051kC.a(str, str2);
            }
        }
        return new C10922d(unmodifiableMap, c8051kC.b());
    }

    public final C10927e b(com.android.tools.r8.graph.M2 m22) {
        return (C10927e) this.f55885f.computeIfAbsent(C4932Bl.n(m22.z0()), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10932f.this.b((String) obj);
            }
        });
    }

    public final boolean c(String str) {
        return this.f55883d.contains(C10656zq0.f(str));
    }

    public final void d(com.android.tools.r8.graph.M2 m22) {
        if (!((C11245i) this.f55880a.f()).j(m22) || this.f55884e.containsKey(m22)) {
            return;
        }
        if (!f55879k && this.f55880a.g(m22) != null) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.L2 b10 = this.f55881b.b(m22);
        IdentityHashMap identityHashMap = this.f55884e;
        if (b10 == null) {
            C10927e c10927e = this.f55887h;
            C10932f c10932f = c10927e.f55871f;
            com.android.tools.r8.graph.L2 a10 = c10932f.f55881b.a(m22, c10927e.f55868c, c10927e, c10932f.f55889j);
            if (!C10927e.f55866g && c10927e.f55871f.f55883d.contains(a10.toString())) {
                throw new AssertionError();
            }
            C10932f c10932f2 = c10927e.f55871f;
            String l22 = a10.toString();
            HashSet hashSet = c10932f2.f55883d;
            if (!c10932f2.f55888i) {
                l22 = C10656zq0.f(l22);
            }
            hashSet.add(l22);
            b10 = a10;
        }
        identityHashMap.put(m22, b10);
    }

    public final void c(com.android.tools.r8.graph.M2 m22) {
        a(m22.v0(), m22);
    }

    public final C10927e b(String str) {
        return new C10927e(this, str, String.valueOf('/'));
    }

    public final void a(com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.L2 l22) {
        if (f55879k || !this.f55886g || !e02.s1() || !e02.getType().w0().contains(String.valueOf('$')) || l22.toString().contains(String.valueOf('$')) || this.f55881b.a(e02.getType())) {
            return;
        }
        throw new AssertionError((Object) (((Object) e02) + " -> " + ((Object) l22)));
    }

    public final void a(I5 i52) {
        i52.c(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10932f.this.a((com.android.tools.r8.graph.H0) obj);
            }
        });
        i52.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10932f.this.a((com.android.tools.r8.graph.F0) obj);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.F0 f02) {
        d(f02.getReference().f37449i);
    }

    public final void a(com.android.tools.r8.graph.H0 h02) {
        com.android.tools.r8.graph.I2 i22 = h02.getReference().f36127i;
        d(i22.f36440e);
        for (com.android.tools.r8.graph.M2 m22 : i22.f36441f.f36675b) {
            d(m22);
        }
    }

    public final void a(com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.M2 m22) {
        C4425e4 P02;
        this.f55884e.put(m22, l22);
        String l23 = l22.toString();
        HashSet hashSet = this.f55883d;
        if (!this.f55888i) {
            l23 = C10656zq0.f(l23);
        }
        hashSet.add(l23);
        if (this.f55886g) {
            com.android.tools.r8.graph.E0 g10 = this.f55880a.g(m22);
            com.android.tools.r8.graph.M2 a10 = (g10 == null || (P02 = g10.P0()) == null) ? null : P02.a(this.f55880a);
            if (a10 == null || this.f55884e.containsKey(a10) || this.f55881b.b(a10) != null) {
                return;
            }
            a(a10.f36592f, a10);
        }
    }

    public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.M2 m22) {
        String valueOf;
        C4425e4 P02;
        C10927e c10927e = null;
        if (this.f55886g) {
            com.android.tools.r8.graph.E0 g10 = this.f55880a.g(m22);
            com.android.tools.r8.graph.M2 a10 = (g10 == null || (P02 = g10.P0()) == null) ? null : P02.a(this.f55880a);
            if (a10 != null) {
                com.android.tools.r8.graph.E0 g11 = this.f55880a.g(m22);
                boolean z10 = f55879k;
                if (!z10 && g11 == null) {
                    throw new AssertionError();
                }
                C4425e4 P03 = g11.P0();
                if (!z10 && P03 == null) {
                    throw new AssertionError();
                }
                com.android.tools.r8.graph.M2 d10 = P03.d();
                com.android.tools.r8.graph.L2 c10 = P03.c();
                if (!C4932Bl.f39006b && m22 == null) {
                    throw new AssertionError();
                }
                if (d10 != null && c10 != null) {
                    valueOf = C4932Bl.a(d10.w0(), m22.w0(), c10.toString());
                } else {
                    valueOf = String.valueOf('$');
                }
                if (valueOf == null) {
                    valueOf = String.valueOf('$');
                }
                String h10 = C4932Bl.h(a10.V0());
                C10927e c10927e2 = (C10927e) this.f55885f.get(h10);
                if (c10927e2 == null) {
                    com.android.tools.r8.graph.L2 l22 = (com.android.tools.r8.graph.L2) this.f55884e.get(a10);
                    if (l22 == null) {
                        l22 = a(a10);
                        this.f55884e.put(a10, l22);
                    }
                    c10927e2 = new C10927e(this, C4932Bl.h(l22.toString()), valueOf);
                    this.f55885f.put(h10, c10927e2);
                }
                c10927e = c10927e2;
            }
        }
        if (c10927e == null) {
            c10927e = b(m22);
        }
        C10932f c10932f = c10927e.f55871f;
        com.android.tools.r8.graph.L2 a11 = c10932f.f55881b.a(m22, c10927e.f55868c, c10927e, c10932f.f55889j);
        if (!C10927e.f55866g && c10927e.f55871f.f55883d.contains(a11.toString())) {
            throw new AssertionError();
        }
        C10932f c10932f2 = c10927e.f55871f;
        String l23 = a11.toString();
        HashSet hashSet = c10932f2.f55883d;
        if (!c10932f2.f55888i) {
            l23 = C10656zq0.f(l23);
        }
        hashSet.add(l23);
        return a11;
    }

    public static String a(String str) {
        int lastIndexOf = str.lastIndexOf(47);
        if (lastIndexOf < 0) {
            return "";
        }
        return str.substring(0, lastIndexOf);
    }
}
