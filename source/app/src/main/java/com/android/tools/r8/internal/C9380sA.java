package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

public final class C9380sA extends AbstractC5754Pq0 {

    public static final boolean f52307c = true;

    public final C9547tA f52308a;

    public final Object f52309b;

    public C9380sA(Object obj, C9547tA c9547tA) {
        this.f52309b = obj;
        this.f52308a = c9547tA;
    }

    @Override
    public final AbstractC5754Pq0 a() {
        return this;
    }

    @Override
    public final AbstractC5754Pq0 b(Predicate predicate) {
        C9547tA c9547tA = this.f52308a;
        c9547tA.f52553a.a(predicate.test(this.f52309b));
        return this;
    }

    @Override
    public final AbstractC5754Pq0 c(Function function) {
        this.f52308a.a((com.android.tools.r8.graph.J2) function.apply(this.f52309b));
        return this;
    }

    @Override
    public final AbstractC5754Pq0 d(Function function) {
        for (int i10 : (int[]) function.apply(this.f52309b)) {
            this.f52308a.f52553a.a(i10);
        }
        return this;
    }

    @Override
    public final AbstractC5754Pq0 k(Function function) {
        for (short s10 : (short[]) function.apply(this.f52309b)) {
            this.f52308a.f52553a.a((int) s10);
        }
        return this;
    }

    @Override
    public final AbstractC5754Pq0 a(Predicate predicate) {
        if (f52307c || predicate.test(this.f52309b)) {
            return this;
        }
        throw new AssertionError();
    }

    @Override
    public final AbstractC5754Pq0 a(ToIntFunction toIntFunction) {
        C9547tA c9547tA = this.f52308a;
        c9547tA.f52553a.a(toIntFunction.applyAsInt(this.f52309b));
        return this;
    }

    @Override
    public final AbstractC5754Pq0 b(Function function, InterfaceC5465Kq0 interfaceC5465Kq0, InterfaceC5523Lq0 interfaceC5523Lq0) {
        C9547tA c9547tA = this.f52308a;
        Iterator it = (Iterator) function.apply(this.f52309b);
        c9547tA.getClass();
        while (it.hasNext()) {
            interfaceC5523Lq0.a(it.next(), c9547tA);
        }
        return this;
    }

    @Override
    public final AbstractC5754Pq0 a(ToLongFunction toLongFunction) {
        C9547tA c9547tA = this.f52308a;
        c9547tA.f52553a.a(toLongFunction.applyAsLong(this.f52309b));
        return this;
    }

    @Override
    public final AbstractC5754Pq0 a(Function function) {
        for (byte b10 : (byte[]) function.apply(this.f52309b)) {
            this.f52308a.f52553a.a((int) b10);
        }
        return this;
    }

    @Override
    public final AbstractC5754Pq0 a(Predicate predicate, Function function, InterfaceC5465Kq0 interfaceC5465Kq0, InterfaceC5523Lq0 interfaceC5523Lq0) {
        boolean test = predicate.test(this.f52309b);
        this.f52308a.f52553a.a(test);
        if (test) {
            interfaceC5523Lq0.a(function.apply(this.f52309b), this.f52308a);
        }
        return this;
    }
}
