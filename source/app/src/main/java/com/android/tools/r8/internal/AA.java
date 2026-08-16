package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class AA extends AbstractC6429aW implements Collection {

    public static final boolean f38552f = true;

    public C4554l1 f38554c;

    public InterfaceC8367m6 f38556e;

    public com.android.tools.r8.graph.H2 f38555d = null;

    public final LinkedList f38553b = new LinkedList();

    public final void a(Consumer consumer) {
        if (!f38552f && !h()) {
            throw new AssertionError();
        }
        Iterator<E> it = this.f38553b.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            if (h22 != this.f38555d) {
                consumer.accept(h22);
            }
        }
    }

    @Override
    public final boolean add(Object obj) {
        return this.f38553b.add((com.android.tools.r8.graph.H2) obj);
    }

    @Override
    public final boolean addAll(Collection collection) {
        return this.f38553b.addAll(collection);
    }

    public final void b(C4798y c4798y) {
        C9239rK c10 = AbstractC9907vK.c(this.f38553b, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return ((com.android.tools.r8.graph.H2) obj).w1();
            }
        });
        boolean hasNext = ((AbstractC7015e0) c10.iterator()).hasNext();
        Iterable iterable = c10;
        if (!hasNext) {
            iterable = this.f38553b;
        }
        Iterator it = iterable.iterator();
        com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) C9073qK.a(iterable);
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            com.android.tools.r8.graph.H2 h23 = (com.android.tools.r8.graph.H2) it.next();
            if (c4798y.f38425r != null && c4798y.r().a(h23).b(c4798y.E())) {
                h22 = h23;
                break;
            } else if (h23.getType().v0().f36561e < h22.getType().v0().f36561e) {
                h22 = h23;
            }
        }
        com.android.tools.r8.graph.H2 a10 = c4798y.H().f50808B.a(c4798y, iterable, h22);
        if (!f38552f && h()) {
            throw new AssertionError();
        }
        this.f38555d = a10;
    }

    public final com.android.tools.r8.graph.M2 c() {
        if (f38552f || C9073qK.a(this.f38553b, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((com.android.tools.r8.graph.H2) obj).a1();
            }
        })) {
            return ((com.android.tools.r8.graph.H2) this.f38553b.getFirst()).a1();
        }
        throw new AssertionError();
    }

    @Override
    public final void clear() {
        this.f38553b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f38553b.contains(obj);
    }

    @Override
    public final boolean containsAll(Collection collection) {
        return this.f38553b.containsAll(collection);
    }

    public final boolean d() {
        return this.f38554c != null;
    }

    public final boolean g() {
        return this.f38556e != null;
    }

    public final boolean h() {
        return this.f38555d != null;
    }

    public final boolean i() {
        return !j();
    }

    @Override
    public final boolean isEmpty() {
        return this.f38553b.isEmpty();
    }

    @Override
    public final Iterator iterator() {
        return this.f38553b.iterator();
    }

    public final boolean j() {
        boolean z10 = f38552f;
        if (!z10 && this.f38553b.isEmpty()) {
            throw new AssertionError();
        }
        if (z10 || C9073qK.a(this.f38553b, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Boolean.valueOf(((com.android.tools.r8.graph.H2) obj).isInterface());
            }
        })) {
            return ((com.android.tools.r8.graph.H2) this.f38553b.getFirst()).isInterface();
        }
        throw new AssertionError();
    }

    public final boolean k() {
        return this.f38553b.size() < 2;
    }

    @Override
    public final boolean remove(Object obj) {
        return this.f38553b.remove(obj);
    }

    @Override
    public final boolean removeAll(Collection collection) {
        return this.f38553b.removeAll(collection);
    }

    @Override
    public final boolean removeIf(Predicate predicate) {
        return this.f38553b.removeIf(predicate);
    }

    @Override
    public final boolean retainAll(Collection collection) {
        return this.f38553b.retainAll(collection);
    }

    @Override
    public final int size() {
        return this.f38553b.size();
    }

    @Override
    public final Object[] toArray() {
        return this.f38553b.toArray();
    }

    @Override
    public final Object[] toArray(Object[] objArr) {
        return this.f38553b.toArray(objArr);
    }

    public final C4554l1 a() {
        if (f38552f || d()) {
            return this.f38554c;
        }
        throw new AssertionError();
    }

    public final void a(final C4798y c4798y) {
        boolean z10 = f38552f;
        if (!z10 && !h()) {
            throw new AssertionError();
        }
        final C8200l6 c8200l6 = new C8200l6(new LinkedHashMap(), new LinkedHashMap());
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AA.this.a(c4798y, c8200l6, (com.android.tools.r8.graph.H2) obj);
            }
        });
        if (!z10 && g()) {
            throw new AssertionError();
        }
        this.f38556e = c8200l6;
    }

    public final void a(C4798y c4798y, final TY ty, com.android.tools.r8.graph.H2 h22) {
        com.android.tools.r8.graph.H2 h23 = this.f38555d;
        Objects.requireNonNull(ty);
        InterfaceC7446gd.a(c4798y, h22, h23, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                TY.this.a((C4460g1) obj, (C4460g1) obj2);
            }
        });
    }

    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        return h22 != this.f38555d;
    }

    public final C9239rK b() {
        if (f38552f || h()) {
            return AbstractC9907vK.c(this.f38553b, new V60() {
                @Override
                public final boolean apply(Object obj) {
                    return AA.this.a((com.android.tools.r8.graph.H2) obj);
                }
            });
        }
        throw new AssertionError();
    }
}
