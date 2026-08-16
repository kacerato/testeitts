package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC6333Zs0;
import com.android.tools.r8.internal.C6162Ws0;
import com.android.tools.r8.internal.C6276Ys0;
import com.android.tools.r8.internal.C6286Yx0;
import com.android.tools.r8.internal.C8085kR;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.InterfaceC7158es0;
import com.android.tools.r8.internal.R00;
import com.android.tools.r8.shaking.C11245i;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public abstract class AbstractC4709t5 implements InterfaceC4653q5 {

    public static final boolean f37781g = true;

    public final IdentityHashMap f37782a = new IdentityHashMap();

    public final Set f37783b = AbstractC5513Ll0.c();

    public final Set f37784c = AbstractC5513Ll0.c();

    public final Set f37785d = AbstractC5513Ll0.c();

    public final IdentityHashMap f37786e = new IdentityHashMap();

    public IdentityHashMap f37787f = new IdentityHashMap();

    public final AbstractC6333Zs0 a(M2 m22, final Function function, final Function function2, final C4477h c4477h) {
        final C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        if (m22 == c4477h.b().f38068i2) {
            this.f37787f.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    AbstractC4709t5.a(C4477h.this, c6286Yx0, (M2) obj, (Set) obj2);
                }
            });
        } else {
            E0 g10 = c4477h.g(m22);
            if (g10 == null) {
                c6286Yx0.b((Iterable) this.f37787f.getOrDefault(m22, Collections.EMPTY_SET));
                Iterator it = ((List) this.f37786e.getOrDefault(m22, Collections.EMPTY_LIST)).iterator();
                while (it.hasNext()) {
                    if (((AbstractC6333Zs0) function2.apply((C8085kR) it.next())).c()) {
                        return C6162Ws0.f45559c;
                    }
                }
            } else {
                c6286Yx0.b((C6286Yx0) g10);
            }
        }
        return c6286Yx0.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC4709t5.this.a(function, c6286Yx0, function2, (E0) obj);
            }
        });
    }

    public abstract void a(Consumer consumer, C11245i c11245i);

    public final AbstractC4709t5 b(final O5 o52) {
        if (!o52.f36684g.isEmpty()) {
            Iterator it = this.f37782a.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                Set set = (Set) entry.getValue();
                set.removeIf(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return AbstractC4709t5.a(O5.this, (C4516j1) obj);
                    }
                });
                if (set.isEmpty()) {
                    this.f37783b.add((H2) entry.getKey());
                    it.remove();
                }
            }
        }
        return this;
    }

    public final boolean c(H2 h22) {
        if (h22.isInterface()) {
            return false;
        }
        if (this.f37782a.containsKey(h22)) {
            if (f37781g || !((Set) this.f37782a.get(h22)).isEmpty()) {
                return true;
            }
            throw new AssertionError();
        }
        return this.f37783b.contains(h22);
    }

    public final boolean d(H2 h22) {
        return (!h22.isInterface() && c(h22)) || a(h22);
    }

    public final boolean b(H2 h22) {
        return h22.isInterface() && this.f37786e.get(h22.f36245e) != null;
    }

    public final AbstractC4709t5 a(InterfaceC4403d1 interfaceC4403d1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        C4690s5 a10 = new C4690s5(true, null).a(this, interfaceC4403d1, abstractC5308Hz, abstractC5308Hz2);
        boolean z10 = C4690s5.f37724i;
        if (!z10 && a10.f37725h == null) {
            throw new AssertionError();
        }
        if (a10.f37787f == null) {
            a10.a(interfaceC4403d1);
        }
        if (!z10) {
            a10.b(interfaceC4403d1);
        }
        a10.f37725h = null;
        return a10;
    }

    public final boolean a(H2 h22) {
        if (this.f37787f.get(h22.f36245e) != null) {
            return true;
        }
        if (h22.isInterface()) {
            return this.f37784c.contains(h22) || this.f37785d.contains(h22) || b(h22);
        }
        return false;
    }

    public final void a(O5 o52) {
        final Set set = o52.f36682e;
        if (set.isEmpty()) {
            return;
        }
        this.f37782a.entrySet().removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean contains;
                contains = Set.this.contains(((H2) ((Map.Entry) obj).getKey()).getType());
                return contains;
            }
        });
        this.f37783b.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean contains;
                contains = Set.this.contains(((H2) obj).getType());
                return contains;
            }
        });
        this.f37784c.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean contains;
                contains = Set.this.contains(((H2) obj).getType());
                return contains;
            }
        });
        boolean removeIf = this.f37785d.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean contains;
                contains = Set.this.contains(((H2) obj).getType());
                return contains;
            }
        });
        if (!f37781g && removeIf) {
            throw new AssertionError((Object) "Unexpected removal of an interface marking an unknown hierarchy.");
        }
        IdentityHashMap identityHashMap = this.f37786e;
        Objects.requireNonNull(identityHashMap);
        set.forEach(new C4550kg(identityHashMap));
    }

    public static boolean a(O5 o52, C4516j1 c4516j1) {
        return o52.f36684g.contains(c4516j1.getReference());
    }

    public final void a(BiConsumer biConsumer) {
        this.f37782a.forEach(biConsumer);
    }

    public final AbstractC4709t5 a(final C4742v0 c4742v0, final R00 r00, final AbstractC5308Hz abstractC5308Hz, C8659ns0 c8659ns0) {
        return (AbstractC4709t5) c8659ns0.a("Rewrite ObjectAllocationInfoCollectionImpl", new InterfaceC7158es0() {
            @Override
            public final Object get() {
                return AbstractC4709t5.this.a(c4742v0, r00, abstractC5308Hz);
            }
        });
    }

    public final void a(M2 m22, final Consumer consumer, final Consumer consumer2, C4477h c4477h) {
        a(m22, new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC4709t5.a(Consumer.this, (H2) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC4709t5.a(Consumer.this, (C8085kR) obj);
            }
        }, c4477h);
    }

    public static AbstractC6333Zs0 a(Consumer consumer, H2 h22) {
        consumer.accept(h22);
        return C6276Ys0.f46097c;
    }

    public static AbstractC6333Zs0 a(Consumer consumer, C8085kR c8085kR) {
        consumer.accept(c8085kR);
        return C6276Ys0.f46097c;
    }

    public static void a(C4477h c4477h, C6286Yx0 c6286Yx0, M2 m22, Set set) {
        E0 g10 = c4477h.g(m22);
        if (g10 != null) {
            c6286Yx0.b((C6286Yx0) g10);
        }
        c6286Yx0.b((Iterable) set);
    }

    public final AbstractC6333Zs0 a(Function function, C6286Yx0 c6286Yx0, Function function2, E0 e02) {
        if (e02.e0()) {
            H2 d02 = e02.d0();
            if ((c(d02) || (d02.isInterface() && this.f37785d.contains(d02))) && ((AbstractC6333Zs0) function.apply(d02)).c()) {
                return C6162Ws0.f45559c;
            }
        }
        c6286Yx0.b((Iterable) this.f37787f.getOrDefault(e02.f36245e, Collections.EMPTY_SET));
        Iterator it = ((List) this.f37786e.getOrDefault(e02.f36245e, Collections.EMPTY_LIST)).iterator();
        while (it.hasNext()) {
            if (((AbstractC6333Zs0) function2.apply((C8085kR) it.next())).c()) {
                return C6162Ws0.f45559c;
            }
        }
        return C6276Ys0.f46097c;
    }

    public final void a(Consumer consumer) {
        this.f37786e.o().forEach(consumer);
    }
}
