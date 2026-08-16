package com.android.tools.r8.internal;

import java.util.Arrays;
import java.util.Iterator;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

public class C7713iA<T> extends AbstractC5754Pq0<T, C7713iA<T>> {

    public static final boolean f48866c = true;

    public final Object f48867a;

    public int f48868b = 0;

    public C7713iA(Object obj) {
        this.f48867a = obj;
    }

    @Override
    public final AbstractC5754Pq0 a() {
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final AbstractC5754Pq0 b(Predicate predicate) {
        return a(Boolean.hashCode(predicate.test(this.f48867a)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final AbstractC5754Pq0 c(Function function) {
        return a(((com.android.tools.r8.graph.J2) function.apply(this.f48867a)).hashCode());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final AbstractC5754Pq0 d(Function function) {
        return a(Arrays.hashCode((int[]) function.apply(this.f48867a)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final AbstractC5754Pq0 k(Function function) {
        return a(Arrays.hashCode((short[]) function.apply(this.f48867a)));
    }

    public static <T> int a(T t10, InterfaceC5638Nq0<T> interfaceC5638Nq0) {
        C7713iA c7713iA = new C7713iA(t10);
        interfaceC5638Nq0.a(c7713iA);
        return c7713iA.f48868b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final AbstractC5754Pq0 b(Function function, InterfaceC5465Kq0 interfaceC5465Kq0, InterfaceC5523Lq0 interfaceC5523Lq0) {
        Iterator it = (Iterator) function.apply(this.f48867a);
        while (it.hasNext()) {
            a(it.next().hashCode());
        }
        return this;
    }

    public final C7713iA a(int i10) {
        this.f48868b = (this.f48868b * 31) + i10;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final AbstractC5754Pq0 a(Predicate predicate) {
        if (f48866c || predicate.test(this.f48867a)) {
            return this;
        }
        throw new AssertionError();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final AbstractC5754Pq0 a(ToIntFunction toIntFunction) {
        return a(Integer.hashCode(toIntFunction.applyAsInt(this.f48867a)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final AbstractC5754Pq0 a(ToLongFunction toLongFunction) {
        return a(Long.hashCode(toLongFunction.applyAsLong(this.f48867a)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final AbstractC5754Pq0 a(Function function) {
        return a(Arrays.hashCode((byte[]) function.apply(this.f48867a)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final AbstractC5754Pq0 a(Predicate predicate, Function function, InterfaceC5465Kq0 interfaceC5465Kq0, InterfaceC5523Lq0 interfaceC5523Lq0) {
        if (predicate.test(this.f48867a)) {
            return a(function.apply(this.f48867a).hashCode());
        }
        return a(1);
    }
}
