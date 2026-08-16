package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC6333Zs0;
import com.android.tools.r8.internal.C6276Ys0;
import com.android.tools.r8.internal.InterfaceC5422Jy;
import java.util.Collection;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public abstract class O4 {
    public abstract O4 a(InterfaceC5422Jy interfaceC5422Jy);

    public abstract C4516j1 a(A2 a22);

    public abstract C4516j1 a(A2 a22, InterfaceC5422Jy interfaceC5422Jy);

    public abstract C4516j1 a(I2 i22, L2 l22);

    public abstract C4516j1 a(Predicate predicate);

    public abstract void a();

    public abstract void a(C4516j1 c4516j1);

    public abstract void a(Collection collection);

    public abstract void a(Collection collection, InterfaceC5422Jy interfaceC5422Jy);

    public abstract void a(Set set);

    public final void a(final Consumer consumer, final Predicate predicate) {
        b(new Function() {
            @Override
            public final Object apply(Object obj) {
                return O4.a(Predicate.this, consumer, (C4516j1) obj);
            }
        });
    }

    public abstract void a(Function function);

    public abstract void a(C4516j1[] c4516j1Arr);

    public abstract C4516j1 b(A2 a22);

    public abstract C4516j1 b(A2 a22, InterfaceC5422Jy interfaceC5422Jy);

    public abstract C4516j1 b(Predicate predicate);

    public abstract AbstractC6333Zs0 b(Function function);

    public abstract void b();

    public abstract void b(C4516j1 c4516j1);

    public abstract void b(InterfaceC5422Jy interfaceC5422Jy);

    public final void b(Consumer consumer) {
        a(consumer, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return O4.this.e((C4516j1) obj);
            }
        });
    }

    public abstract void b(C4516j1[] c4516j1Arr);

    public abstract C4516j1 c(A2 a22);

    public abstract Iterable c();

    public abstract void c(C4516j1 c4516j1);

    public abstract void c(InterfaceC5422Jy interfaceC5422Jy);

    public abstract String d();

    public abstract void d(InterfaceC5422Jy interfaceC5422Jy);

    public final boolean d(C4516j1 c4516j1) {
        return c4516j1.f37314g.D();
    }

    public abstract Iterable e();

    public abstract void e(InterfaceC5422Jy interfaceC5422Jy);

    public final boolean e(C4516j1 c4516j1) {
        return c4516j1.J0();
    }

    public abstract int f();

    public abstract int g();

    public abstract int h();

    public abstract void i();

    public abstract Iterable j();

    public static AbstractC6333Zs0 a(Predicate predicate, Consumer consumer, C4516j1 c4516j1) {
        if (predicate.test(c4516j1)) {
            consumer.accept(c4516j1);
        }
        return C6276Ys0.f46097c;
    }

    public final void a(Consumer consumer) {
        a(consumer, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return O4.this.d((C4516j1) obj);
            }
        });
    }
}
