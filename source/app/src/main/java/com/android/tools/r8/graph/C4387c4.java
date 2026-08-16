package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC9907vK;
import com.android.tools.r8.internal.C9239rK;
import com.android.tools.r8.internal.InterfaceC5422Jy;
import com.android.tools.r8.internal.TU;
import com.android.tools.r8.internal.V60;
import java.util.Collection;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C4387c4 {

    public static final boolean f37094c = true;

    public final C4798y f37095a;

    public final IdentityHashMap f37096b;

    public C4387c4(C4798y c4798y, IdentityHashMap identityHashMap) {
        this.f37095a = c4798y;
        this.f37096b = identityHashMap;
    }

    public static boolean a(M2 m22, E0 e02) {
        return e02 != null;
    }

    public static void c(Predicate predicate, Consumer consumer, H2 h22) {
        if (predicate.test(h22)) {
            consumer.accept(h22);
        }
    }

    public final void b(Predicate predicate, Consumer consumer, M2 m22) {
        E0 g10 = this.f37095a.g(m22);
        if (g10 == null || !predicate.test(g10)) {
            return;
        }
        consumer.accept(g10);
    }

    public static C4387c4 a(final C4798y c4798y, Collection collection) {
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            final H2 h22 = (H2) it.next();
            h22.e(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C4387c4.a(C4798y.this, identityHashMap, h22, (M2) obj);
                }
            });
        }
        return new C4387c4(c4798y, identityHashMap);
    }

    public final void b(final Predicate predicate, final Consumer consumer, H2 h22) {
        ((List) this.f37096b.getOrDefault(h22, Collections.EMPTY_LIST)).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4387c4.c(Predicate.this, consumer, (H2) obj);
            }
        });
    }

    public static void a(C4798y c4798y, Map map, H2 h22, M2 m22) {
        H2 a10 = H2.a(c4798y.g(m22));
        if (a10 != null) {
            ((List) map.computeIfAbsent(a10, TU.a(new Uc()))).add(h22);
        }
    }

    public final Iterable b(H2 h22) {
        if (f37094c || h22.isInterface()) {
            return AbstractC9907vK.c((List) this.f37096b.getOrDefault(h22, Collections.EMPTY_LIST), new Tc());
        }
        throw new AssertionError();
    }

    public final void a(final Consumer consumer, E0 e02) {
        a(e02, new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return C4387c4.a((M2) obj, (E0) obj2);
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Consumer.this.accept((E0) obj2);
            }
        });
    }

    public final void a(E0 e02, final BiPredicate biPredicate, final BiConsumer biConsumer) {
        e02.e(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4387c4.this.a(biPredicate, biConsumer, (M2) obj);
            }
        });
    }

    public final void a(BiPredicate biPredicate, BiConsumer biConsumer, M2 m22) {
        E0 g10 = this.f37095a.g(m22);
        if (biPredicate.test(m22, g10)) {
            biConsumer.accept(m22, g10);
        }
    }

    public final void a(E0 e02, final Predicate predicate, final Consumer consumer) {
        e02.e(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4387c4.this.b(predicate, consumer, (M2) obj);
            }
        });
    }

    public final void a(final Predicate predicate, final Consumer consumer, H2 h22) {
        h22.e(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4387c4.this.a(predicate, consumer, (M2) obj);
            }
        });
    }

    public final void a(Predicate predicate, Consumer consumer, M2 m22) {
        H2 a10 = H2.a(this.f37095a.g(m22));
        if (a10 == null || !predicate.test(a10)) {
            return;
        }
        consumer.accept(a10);
    }

    public final List a(H2 h22) {
        return (List) this.f37096b.getOrDefault(h22, Collections.EMPTY_LIST);
    }

    public static C9239rK a(final InterfaceC4403d1 interfaceC4403d1, final H2 h22) {
        return new C9239rK(AbstractC9907vK.a(h22.R0(), new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                H2 a10;
                a10 = H2.a(InterfaceC4403d1.this.a(h22, (M2) obj));
                return a10;
            }
        }), new V60() {
            @Override
            public final boolean apply(Object obj) {
                return Objects.nonNull((H2) obj);
            }
        });
    }
}
