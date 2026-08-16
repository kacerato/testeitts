package com.android.tools.r8.internal;

import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public abstract class D7<T> {

    public Object f39449a;

    public D7() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a(Consumer consumer) {
        if (b()) {
            consumer.accept(a());
        }
    }

    public boolean b() {
        return this.f39449a != null;
    }

    public final boolean equals(Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.f39449a, ((D7) obj).f39449a);
    }

    public final int hashCode() {
        return Objects.hashCode(this.f39449a);
    }

    public D7(Object obj) {
        a(obj);
    }

    public Object a(Supplier supplier) {
        if (!b()) {
            a(supplier.get());
        }
        return this.f39449a;
    }

    public Object a() {
        return this.f39449a;
    }

    public T a(Function<T, T> function) {
        T t10 = (T) a();
        a(function.apply(t10));
        return t10;
    }

    public void a(Object obj) {
        this.f39449a = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean a(Predicate predicate) {
        return b() && predicate.test(a());
    }
}
