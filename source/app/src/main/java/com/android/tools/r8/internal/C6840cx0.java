package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.proto.c;
import com.android.tools.r8.shaking.AbstractC11516y1;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Stream;

public final class C6840cx0 extends AbstractC8947pd {

    public static final boolean f47214r = true;

    public final C8674nx0 f47215n;

    public final IdentityHashMap f47216o;

    public final C9201r6 f47217p;

    public final Set f47218q;

    public C6840cx0(C4798y c4798y, C8674nx0 c8674nx0, C9201r6 c9201r6, IdentityHashMap identityHashMap, C8534n6 c8534n6, C9201r6 c9201r62, Set set) {
        super(c4798y, c9201r6, Collections.EMPTY_MAP, c8674nx0.f51120a, c8534n6);
        this.f47215n = c8674nx0;
        this.f47216o = identityHashMap;
        this.f47217p = c9201r62;
        this.f47218q = set;
    }

    @Override
    public final NW a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23, EnumC8071kK enumC8071kK, AbstractC9530t40 abstractC9530t40, AbstractC5308Hz abstractC5308Hz, InterfaceC5250Gz interfaceC5250Gz) {
        if (this == abstractC5308Hz) {
            return interfaceC5250Gz.a(new NW(a22, a22, AbstractC9530t40.f52519c, enumC8071kK, com.android.tools.r8.graph.proto.j.f37620d).a(this));
        }
        return super.a(a22, a23, enumC8071kK, abstractC9530t40, abstractC5308Hz, interfaceC5250Gz);
    }

    @Override
    public final C4554l1 b(C4554l1 c4554l1) {
        C4554l1 c4554l12 = (C4554l1) this.f49998f.getOrDefault(c4554l1, c4554l1);
        if (!f47214r) {
            c4554l12.a(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C6840cx0.this.i((com.android.tools.r8.graph.M2) obj);
                }
            }, this.f43776c);
        }
        return c4554l12;
    }

    @Override
    public final com.android.tools.r8.graph.A2 c(com.android.tools.r8.graph.A2 a22) {
        if (this.f47217p.f51964b.containsKey(a22)) {
            return g(a22);
        }
        com.android.tools.r8.graph.A2 c10 = super.c(a22);
        if (!f47214r) {
            c10.a(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C6840cx0.this.k((com.android.tools.r8.graph.M2) obj);
                }
            }, this.f43776c);
        }
        return c10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final com.android.tools.r8.graph.A2 d(com.android.tools.r8.graph.A2 a22) {
        Object c10 = this.f47217p.c(a22);
        if (c10 != 0) {
            a22 = c10;
        }
        return super.d(a22);
    }

    @Override
    public final C6840cx0 e() {
        return this;
    }

    @Override
    public final com.android.tools.r8.graph.M2 f(com.android.tools.r8.graph.M2 m22) {
        return m22;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final com.android.tools.r8.graph.A2 g(com.android.tools.r8.graph.A2 a22) {
        Object obj = this.f47217p.f51964b.get(a22);
        if (obj != 0) {
            a22 = obj;
        }
        com.android.tools.r8.graph.A2 a23 = a22;
        if (!f47214r) {
            a23.a(new Predicate() {
                @Override
                public final boolean test(Object obj2) {
                    return C6840cx0.this.j((com.android.tools.r8.graph.M2) obj2);
                }
            }, this.f43776c);
        }
        return a23;
    }

    public final boolean h(com.android.tools.r8.graph.M2 m22) {
        return !this.f47215n.d(m22);
    }

    public final boolean i(com.android.tools.r8.graph.M2 m22) {
        return !this.f47215n.d(m22);
    }

    public final boolean j(com.android.tools.r8.graph.M2 m22) {
        return !this.f47215n.d(m22);
    }

    public final boolean k(com.android.tools.r8.graph.M2 m22) {
        return !this.f47215n.d(m22);
    }

    public final boolean l(com.android.tools.r8.graph.M2 m22) {
        return !this.f47215n.d(m22);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final com.android.tools.r8.graph.A2 e(com.android.tools.r8.graph.A2 a22) {
        Object c10 = this.f50001i.c(a22);
        if (c10 != 0) {
            a22 = c10;
        }
        return super.d(a22);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final com.android.tools.r8.graph.A2 f(com.android.tools.r8.graph.A2 a22) {
        Object b10 = this.f50001i.b(a22);
        if (b10 != 0) {
            a22 = b10;
        }
        com.android.tools.r8.graph.A2 a23 = a22;
        if (!f47214r) {
            a23.a(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C6840cx0.this.h((com.android.tools.r8.graph.M2) obj);
                }
            }, this.f43776c);
        }
        return a23;
    }

    @Override
    public final com.android.tools.r8.graph.proto.j a(com.android.tools.r8.graph.proto.j jVar, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        if (this.f47218q.contains(a23)) {
            if (!f47214r && a23.w0() != a22.w0() + 1) {
                throw new AssertionError();
            }
            c.a a10 = com.android.tools.r8.graph.proto.c.a().a(a23.x0().size());
            a10.f37611d = true;
            com.android.tools.r8.graph.proto.c a11 = a10.a();
            com.android.tools.r8.graph.proto.j jVar2 = com.android.tools.r8.graph.proto.j.f37620d;
            return jVar.a(com.android.tools.r8.graph.proto.j.a(Collections.EMPTY_LIST, null, a11));
        }
        if (a23.w0() > a22.w0()) {
            if (!f47214r) {
                C4724u1 c4724u1 = this.f43776c;
                c4724u1.getClass();
                if (a22.f38298g != c4724u1.f38067i1) {
                    throw new AssertionError();
                }
            }
            List a12 = AbstractC5300Hv.a(a22, a23);
            com.android.tools.r8.graph.proto.j jVar3 = com.android.tools.r8.graph.proto.j.f37620d;
            return jVar.a(com.android.tools.r8.graph.proto.j.a(a12, null, com.android.tools.r8.graph.proto.c.f37602f));
        }
        if (f47214r || a23.w0() == a22.w0()) {
            return jVar;
        }
        throw new AssertionError();
    }

    @Override
    public final Iterable g(com.android.tools.r8.graph.M2 m22) {
        Set d10 = this.f47215n.f51120a.d(m22);
        Iterable b10 = C9073qK.b(m22);
        return d10 == null ? b10 : AbstractC6114Vx.b(b10, d10);
    }

    @Override
    public final boolean g(AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.A2 a22) {
        if (abstractC5308Hz == this) {
            return true;
        }
        boolean z10 = f47214r;
        if (!z10 && !this.f43777d.g(abstractC5308Hz, a22)) {
            throw new AssertionError();
        }
        final com.android.tools.r8.graph.A2 a23 = (com.android.tools.r8.graph.A2) this.f43777d.e(abstractC5308Hz, a22).f41111a;
        if (z10 || this.f47216o.values().stream().noneMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean containsKey;
                containsKey = ((Map) obj).containsKey(com.android.tools.r8.graph.A2.this);
                return containsKey;
            }
        })) {
            return true;
        }
        throw new AssertionError();
    }

    @Override
    public final EnumC8071kK a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23, com.android.tools.r8.graph.A2 a24, EnumC8071kK enumC8071kK) {
        if (this.f47218q.contains(a23)) {
            return EnumC8071kK.f49582f;
        }
        if (enumC8071kK.b()) {
            C8674nx0 c8674nx0 = this.f47215n;
            if (c8674nx0.f51121b.containsKey(a24.s0())) {
                C4798y c4798y = this.f43775b;
                c4798y.getClass();
                com.android.tools.r8.graph.E0 g10 = c4798y.g(a22.f38297f);
                if (g10 != null && !g10.isInterface()) {
                    return EnumC8071kK.f49584h;
                }
            }
        }
        return enumC8071kK;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0092  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final NW a(NW nw, com.android.tools.r8.graph.A2 a22, AbstractC5308Hz abstractC5308Hz) {
        com.android.tools.r8.graph.A2 a23;
        com.android.tools.r8.graph.A2 a24;
        NW a10;
        Stream a11;
        C8674nx0 c8674nx0;
        boolean z10 = f47214r;
        if (!z10 && a22 == null && !g(abstractC5308Hz, (com.android.tools.r8.graph.A2) nw.f41111a)) {
            throw new AssertionError();
        }
        if (!z10 && a22 != null && nw.f42623d == null) {
            throw new AssertionError();
        }
        if (!z10 && !nw.a()) {
            throw new AssertionError();
        }
        if (nw.f42623d.d()) {
            if (!this.f47215n.d(d(a22).s0())) {
                a23 = (com.android.tools.r8.graph.A2) ((Map) this.f47216o.getOrDefault(a22.s0(), Collections.EMPTY_MAP)).get(nw.f41111a);
                a24 = a23;
                if (a24 == null) {
                    AbstractC9530t40 abstractC9530t40 = AbstractC9530t40.f52519c;
                    com.android.tools.r8.graph.proto.j jVar = com.android.tools.r8.graph.proto.j.f37620d;
                    a10 = new NW(a24, a24, abstractC9530t40, this.f47218q.contains(a24) ? EnumC8071kK.f49582f : EnumC8071kK.f49584h, a(nw.f42624e, (com.android.tools.r8.graph.A2) nw.f41112b, a24)).a(this);
                } else {
                    InterfaceC8033k6 interfaceC8033k6 = this.f50001i;
                    Object obj = nw.f41112b;
                    Object b10 = interfaceC8033k6.b(obj);
                    if (b10 != null) {
                        obj = b10;
                    }
                    com.android.tools.r8.graph.A2 a25 = (com.android.tools.r8.graph.A2) ((AbstractC4744v2) obj);
                    if (!z10 && this.f43775b.H().f50886j0) {
                        a25.a(new Predicate() {
                            @Override
                            public final boolean test(Object obj2) {
                                return C6840cx0.this.l((com.android.tools.r8.graph.M2) obj2);
                            }
                        }, this.f43776c);
                    }
                    Function function = new Function() {
                        @Override
                        public final Object apply(Object obj2) {
                            return C6840cx0.this.d((com.android.tools.r8.graph.M2) obj2);
                        }
                    };
                    C4724u1 c4724u1 = this.f43776c;
                    AbstractC4744v2 abstractC4744v2 = nw.f41111a;
                    com.android.tools.r8.graph.A2 a12 = abstractC4744v2 == nw.f41112b ? a25 : a25.a((com.android.tools.r8.graph.J2) function.apply(abstractC4744v2.s0()), c4724u1);
                    AbstractC9530t40 abstractC9530t402 = AbstractC9530t40.f52519c;
                    com.android.tools.r8.graph.proto.j jVar2 = com.android.tools.r8.graph.proto.j.f37620d;
                    a10 = new NW(a12, a25, abstractC9530t402, a(a12, a25, (com.android.tools.r8.graph.A2) nw.f41111a, nw.f42623d), a(nw.f42624e, (com.android.tools.r8.graph.A2) nw.f41112b, a25)).a(this);
                }
                if (!z10 && this.f43775b.H().f50886j0) {
                    a11 = AbstractC6483ap0.a(((com.android.tools.r8.graph.A2) a10.f41111a).a(this.f43776c));
                    c8674nx0 = this.f47215n;
                    Objects.requireNonNull(c8674nx0);
                    if (!a11.noneMatch(new C8366m51(c8674nx0))) {
                        throw new AssertionError();
                    }
                }
                return a10;
            }
        }
        a23 = null;
        a24 = a23;
        if (a24 == null) {
        }
        if (!z10) {
            a11 = AbstractC6483ap0.a(((com.android.tools.r8.graph.A2) a10.f41111a).a(this.f43776c));
            c8674nx0 = this.f47215n;
            Objects.requireNonNull(c8674nx0);
            if (!a11.noneMatch(new C8366m51(c8674nx0))) {
            }
        }
        return a10;
    }

    @Override
    public final boolean a(AbstractC5308Hz abstractC5308Hz) {
        if (abstractC5308Hz == this) {
            return true;
        }
        return this.f47216o.isEmpty() && this.f43777d.a(abstractC5308Hz);
    }

    public final void a(C4798y c4798y) {
        AbstractC11516y1 r10 = c4798y.r();
        C8570nJ E10 = c4798y.E();
        r10.c(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6840cx0.this.a((com.android.tools.r8.graph.J2) obj);
            }
        }, E10);
        r10.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6840cx0.this.a((com.android.tools.r8.graph.J2) obj);
            }
        }, E10);
        r10.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6840cx0.this.a((com.android.tools.r8.graph.J2) obj);
            }
        }, E10);
    }

    public final void a(com.android.tools.r8.graph.J2 j22) {
        if (j22.p0()) {
            C4554l1 l02 = j22.l0();
            if (!f47214r && !b(l02).a(l02)) {
                throw new AssertionError();
            }
            return;
        }
        if (j22.r0()) {
            com.android.tools.r8.graph.A2 n02 = j22.n0();
            if (!f47214r && !c(n02).a(n02)) {
                throw new AssertionError();
            }
            return;
        }
        boolean z10 = f47214r;
        if (!z10 && !(j22 instanceof com.android.tools.r8.graph.M2)) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.M2 o02 = j22.o0();
        if (!z10 && !d(o02).a(o02)) {
            throw new AssertionError();
        }
    }
}
