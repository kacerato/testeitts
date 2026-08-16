package com.android.tools.r8.internal;

import java.util.ArrayDeque;
import java.util.Collections;
import java.util.Deque;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;

public class C6286Yx0<T> {

    public final ArrayDeque f46125a;

    public final Set f46126b;

    public C6286Yx0(int i10) {
        this(i10 == 1 ? new HashSet() : AbstractC5513Ll0.c());
    }

    public static <T> C6286Yx0<T> c(Iterable<T> iterable) {
        C6286Yx0<T> c6286Yx0 = new C6286Yx0<>(1);
        c6286Yx0.b((Iterable) iterable);
        return c6286Yx0;
    }

    public final void a(Iterable iterable) {
        final ArrayDeque arrayDeque = this.f46125a;
        Objects.requireNonNull(arrayDeque);
        iterable.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Deque.this.addLast(obj);
            }
        });
    }

    public void b(Iterable<? extends T> iterable) {
        iterable.forEach(new C8717oB0(this));
    }

    public final boolean d(Object obj) {
        return this.f46126b.add(obj);
    }

    public C6286Yx0(Set set) {
        this.f46125a = new ArrayDeque();
        this.f46126b = set;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(Object[] objArr) {
        for (Object obj : objArr) {
            b((C6286Yx0<T>) obj);
        }
    }

    public boolean b(T t10) {
        if (!this.f46126b.add(t10)) {
            return false;
        }
        this.f46125a.addLast(t10);
        return true;
    }

    public final Object d() {
        return this.f46125a.removeLast();
    }

    public final void c(Object obj) {
        this.f46125a.addLast(obj);
    }

    public final boolean a(Object obj) {
        if (!this.f46126b.add(obj)) {
            return false;
        }
        this.f46125a.addFirst(obj);
        return true;
    }

    public boolean b() {
        return !this.f46125a.isEmpty();
    }

    public T c() {
        return (T) this.f46125a.removeFirst();
    }

    public final void a(final Consumer consumer) {
        a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Consumer.this.accept(obj);
            }
        });
    }

    public final C6286Yx0 a(BiConsumer biConsumer) {
        while (b()) {
            biConsumer.accept(c(), this);
        }
        return this;
    }

    public static AbstractC6333Zs0 a(Function function, Object obj, C6286Yx0 c6286Yx0) {
        return (AbstractC6333Zs0) function.apply(obj);
    }

    public final AbstractC6333Zs0 a(final Function function) {
        return a(new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C6286Yx0.a(Function.this, obj, (C6286Yx0) obj2);
            }
        });
    }

    public final AbstractC6333Zs0 a(BiFunction biFunction) {
        while (b()) {
            AbstractC6333Zs0 abstractC6333Zs0 = (AbstractC6333Zs0) biFunction.apply(c(), this);
            if (abstractC6333Zs0.c()) {
                return abstractC6333Zs0;
            }
        }
        return C6276Ys0.f46097c;
    }

    public final void a(Set set) {
        set.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6286Yx0.this.d(obj);
            }
        });
    }

    public Set<T> a() {
        Set<T> set = this.f46126b;
        return C8570nJ.b() ? Collections.unmodifiableSet(set) : set;
    }
}
