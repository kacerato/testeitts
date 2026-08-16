package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC6255Yi;
import com.android.tools.r8.internal.D1;
import com.android.tools.r8.internal.I;
import java.util.IdentityHashMap;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;

public class CJ<Block, Instruction extends I, StateType extends D1<StateType>> {

    public static final boolean f39179i = true;

    public final C4798y f39180a;

    public final D1 f39181b;

    public final InterfaceC7628hi f39182c;

    public final E1 f39183d;

    public final IdentityHashMap f39184e = new IdentityHashMap();

    public final IdentityHashMap f39185f = new IdentityHashMap();

    public final IdentityHashMap f39186g = new IdentityHashMap();

    public final DJ f39187h;

    public CJ(C4798y c4798y, D1 d12, InterfaceC7628hi interfaceC7628hi, E1 e12, DJ dj2) {
        this.f39180a = c4798y;
        this.f39181b = d12;
        this.f39182c = interfaceC7628hi;
        this.f39183d = e12;
        this.f39187h = dj2;
    }

    public final AbstractC6255Yi a(C6286Yx0 c6286Yx0, C8659ns0 c8659ns0) {
        while (c6286Yx0.b()) {
            final Object c10 = c6286Yx0.c();
            c6286Yx0.f46126b.remove(c10);
            D1 d12 = (D1) c8659ns0.a("Compute block entry state", new InterfaceC7158es0() {
                @Override
                public final Object get() {
                    return CJ.this.c(c10);
                }
            });
            InterfaceC5700Os0 b10 = this.f39183d.b(c10, d12);
            if (b10.a()) {
                return this.f39183d.a((I) null, (InterfaceC5700Os0) d12);
            }
            D1 c11 = b10.c();
            c8659ns0.b("Compute transfers");
            Object obj = null;
            do {
                final boolean f10 = this.f39182c.f(c10);
                AbstractC6333Zs0 a10 = this.f39182c.a(c10, new BiFunction() {
                    @Override
                    public final Object apply(Object obj2, Object obj3) {
                        return CJ.this.a(f10, c10, (I) obj2, (D1) obj3);
                    }
                }, c11);
                if (a10.c()) {
                    c8659ns0.d();
                    return (AbstractC6255Yi) a10.a().e();
                }
                c11 = (D1) a10.b().e();
                if (this.f39182c.b(c10)) {
                    Object a11 = this.f39182c.a(c10);
                    if (this.f39187h.f39497a) {
                        InterfaceC7628hi interfaceC7628hi = this.f39182c;
                        if (interfaceC7628hi.c(a11) && interfaceC7628hi.b(interfaceC7628hi.d(a11)) && a11 != this.f39182c.a() && !this.f39182c.e(a11)) {
                            c10 = this.f39182c.a(c10);
                        }
                    }
                }
                obj = c10;
                c10 = null;
            } while (c10 != null);
            c8659ns0.d();
            boolean z10 = f39179i;
            if (!z10 && this.f39182c.b(obj)) {
                Object a12 = this.f39182c.a(obj);
                if (this.f39187h.f39497a) {
                    InterfaceC7628hi interfaceC7628hi2 = this.f39182c;
                    if (interfaceC7628hi2.c(a12) && interfaceC7628hi2.b(interfaceC7628hi2.d(a12)) && a12 != this.f39182c.a() && !this.f39182c.e(a12)) {
                        throw new AssertionError();
                    }
                }
            }
            D1 d13 = (D1) this.f39185f.put(obj, c11);
            if (!z10 && d13 != null && !c11.a(this.f39180a, d13)) {
                throw new AssertionError();
            }
            if (!c11.equals(d13)) {
                this.f39182c.c(new C8717oB0(c6286Yx0), obj);
            }
            a(obj, c11);
        }
        return new AbstractC6255Yi.a(this.f39185f);
    }

    public final D1 b(final Object obj) {
        return ((D1) this.f39182c.b(obj, this.f39181b, new BiFunction() {
            @Override
            public final Object apply(Object obj2, Object obj3) {
                return CJ.this.a(obj, obj2, (D1) obj3);
            }
        }).b().e()).mo697clone();
    }

    public AbstractC6255Yi d(Block block) {
        C8659ns0 c10 = C8659ns0.c();
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((C6286Yx0) block);
        return a(c6286Yx0, c10);
    }

    public boolean e(final Object obj) {
        return AbstractC6495at0.a(new Consumer() {
            @Override
            public final void accept(Object obj2) {
                CJ.this.a(obj, (Function) obj2);
            }
        });
    }

    public final AbstractC6333Zs0 a(boolean z10, Object obj, I i10, D1 d12) {
        if (i10.o() && z10) {
            this.f39183d.getClass();
            a(obj, i10, d12);
        }
        InterfaceC5700Os0 a10 = this.f39183d.a(i10, d12);
        if (a10.a()) {
            return new C6162Ws0(this.f39183d.a(i10, a10));
        }
        if (f39179i || a10.b()) {
            return new C6276Ys0(a10.c());
        }
        throw new AssertionError();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final D1 c(Object obj) {
        D1 b10;
        if (obj == this.f39182c.a()) {
            D1 a10 = this.f39183d.a(obj, this.f39181b);
            C4798y c4798y = this.f39180a;
            if (e(obj)) {
                b10 = ((D1) this.f39184e.getOrDefault(obj, this.f39181b)).mo697clone();
            } else {
                b10 = b(obj);
            }
            return a10.b(c4798y, b10);
        }
        if (this.f39182c.e(obj)) {
            return ((D1) this.f39186g.getOrDefault(obj, this.f39181b)).mo697clone();
        }
        if (e(obj)) {
            return ((D1) this.f39184e.getOrDefault(obj, this.f39181b)).mo697clone();
        }
        return b(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final AbstractC6333Zs0 a(Object obj, Object obj2, D1 d12) {
        return new C6276Ys0(d12.b(this.f39180a, this.f39183d.a(obj, obj2, ((D1) this.f39185f.getOrDefault(obj2, this.f39181b)).mo697clone())));
    }

    public final void a(final Object obj, final D1 d12) {
        this.f39182c.b(new Consumer() {
            @Override
            public final void accept(Object obj2) {
                CJ.this.a(obj, d12, obj2);
            }
        }, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(Object obj, D1 d12, Object obj2) {
        if (e(obj2)) {
            D1 a10 = this.f39183d.a(obj2, obj, d12);
            IdentityHashMap identityHashMap = this.f39184e;
            identityHashMap.put(obj2, ((D1) identityHashMap.getOrDefault(obj2, this.f39181b)).b(this.f39180a, a10));
        }
    }

    public final void a(final Object obj, final I i10, final D1 d12) {
        this.f39182c.a(obj, new BiConsumer() {
            @Override
            public final void accept(Object obj2, Object obj3) {
                CJ.this.a(obj, i10, d12, obj2, (com.android.tools.r8.graph.M2) obj3);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(Object obj, I i10, D1 d12, Object obj2, com.android.tools.r8.graph.M2 m22) {
        D1 a10 = this.f39183d.a(obj2, i10, d12, obj, m22);
        IdentityHashMap identityHashMap = this.f39186g;
        identityHashMap.put(obj2, ((D1) identityHashMap.getOrDefault(obj2, this.f39181b)).b(this.f39180a, a10));
    }

    public final void a(Object obj, Function function) {
        this.f39182c.j(obj, function);
    }
}
