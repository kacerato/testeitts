package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.C4875Al0;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.InterfaceC7495gt0;
import com.android.tools.r8.internal.R00;
import com.android.tools.r8.internal.SR;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.function.BiFunction;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Predicate;
import u.C15556y0;

public final class C4594n3 implements InterfaceC4575m3 {

    public static final boolean f37506b = true;

    public final Map f37507a;

    public C4594n3() {
        this.f37507a = new IdentityHashMap();
    }

    public static C4613o3 b(C4554l1 c4554l1, C4613o3 c4613o3, C4613o3 c4613o32) {
        return c4613o32;
    }

    public static C4613o3 c(C4554l1 c4554l1, C4613o3 c4613o3, C4613o3 c4613o32) {
        C4554l1 c4554l12 = c4613o3.f37536a;
        C4363b c4363b = C4363b.f37064a;
        C4613o3 c4613o33 = new C4613o3(c4554l12, 0, c4363b, c4363b);
        c4613o33.f37537b = c4613o3.f37537b | c4613o32.f37537b;
        c4613o33.f37538c = c4613o3.f37538c.a(c4613o32.f37538c);
        c4613o33.f37539d = c4613o3.f37539d.a(c4613o32.f37539d);
        return c4613o33;
    }

    public final void a() {
        this.f37507a.values().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C4613o3) obj).b();
            }
        });
    }

    public final C4613o3 a(C4554l1 c4554l1, C4613o3 c4613o3) {
        if (!f37506b && this.f37507a.containsKey(c4554l1)) {
            throw new AssertionError();
        }
        this.f37507a.put(c4554l1, c4613o3);
        return c4613o3;
    }

    public final void b() {
        this.f37507a.values().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C4613o3) obj).c();
            }
        });
    }

    public C4594n3(Map map) {
        this.f37507a = map;
    }

    public final void a(Consumer consumer) {
        boolean z10 = f37506b;
        if (!z10 && !z10 && this.f37507a.values().size() != C4875Al0.a(this.f37507a.values()).size()) {
            throw new AssertionError();
        }
        this.f37507a.values().forEach(consumer);
    }

    public final void a(final BiPredicate biPredicate) {
        this.f37507a.entrySet().removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean test;
                test = BiPredicate.this.test((C4554l1) r2.getKey(), (C4613o3) ((Map.Entry) obj).getValue());
                return test;
            }
        });
    }

    public static boolean a(InterfaceC4403d1 interfaceC4403d1, C4554l1 c4554l1, C4613o3 c4613o3) {
        return !interfaceC4403d1.a((AbstractC4744v2) c4554l1).e0();
    }

    public final void a(final C4798y c4798y) {
        a(new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return C4594n3.a(InterfaceC4403d1.this, (C4554l1) obj, (C4613o3) obj2);
            }
        });
    }

    public final C4594n3 a(final C4742v0 c4742v0, final R00 r00, final C8659ns0 c8659ns0) {
        c8659ns0.b("Rewrite FieldAccessInfoCollectionImpl");
        Map a10 = SR.a(this.f37507a, new C15556y0(), new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C4594n3.a(InterfaceC4403d1.this, r00, c8659ns0, (C4554l1) obj, (C4613o3) obj2);
            }
        }, new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj, Object obj2, Object obj3) {
                return C4594n3.a((C4554l1) obj, (C4613o3) obj2, (C4613o3) obj3);
            }
        }, new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj, Object obj2, Object obj3) {
                return C4594n3.b((C4554l1) obj, (C4613o3) obj2, (C4613o3) obj3);
            }
        }, new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj, Object obj2, Object obj3) {
                return C4594n3.c((C4554l1) obj, (C4613o3) obj2, (C4613o3) obj3);
            }
        });
        C4594n3 c4594n3 = a10 != this.f37507a ? new C4594n3(a10) : this;
        c8659ns0.d();
        return c4594n3;
    }

    public static C4554l1 a(C4554l1 c4554l1, C4613o3 c4613o3, C4613o3 c4613o32) {
        return c4613o32.f37536a;
    }

    public static C4613o3 a(InterfaceC4403d1 interfaceC4403d1, AbstractC5308Hz abstractC5308Hz, C8659ns0 c8659ns0, C4554l1 c4554l1, C4613o3 c4613o3) {
        c4613o3.getClass();
        c8659ns0.b("Rewrite FieldAccessInfoImpl");
        AbstractC4401d a10 = c4613o3.f37538c.a(interfaceC4403d1, abstractC5308Hz);
        AbstractC4401d a11 = c4613o3.f37539d.a(interfaceC4403d1, abstractC5308Hz);
        if (abstractC5308Hz.b(AbstractC5308Hz.g())) {
            if (a10 != c4613o3.f37538c || a11 != c4613o3.f37539d) {
                c4613o3 = new C4613o3(c4613o3.f37536a, c4613o3.f37537b, a10, a11);
            }
        } else {
            c4613o3 = new C4613o3(abstractC5308Hz.e((AbstractC5308Hz) null, c4613o3.f37536a), c4613o3.f37537b, a10, a11);
        }
        c8659ns0.d();
        return c4613o3;
    }
}
