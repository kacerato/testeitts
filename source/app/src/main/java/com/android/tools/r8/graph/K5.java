package com.android.tools.r8.graph;

import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.EnumC6871d70;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Supplier;

public abstract class K5 implements Iterable {

    public static final boolean f36535d = true;

    public final String f36536b;

    public final Set f36537c;

    public K5(String str, Supplier supplier) {
        this.f36536b = str;
        this.f36537c = (Set) supplier.get();
    }

    public final void a(final Consumer consumer) {
        forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                K5.a(Consumer.this, (H2) obj);
            }
        });
    }

    public final void b(final Consumer consumer) {
        forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((H2) obj).l(Consumer.this);
            }
        });
    }

    @Override
    public final Iterator iterator() {
        return this.f36537c.iterator();
    }

    public final String toString() {
        return "ProgramPackage(" + C4932Bl.m(this.f36536b) + ")";
    }

    public static void a(Consumer consumer, H2 h22) {
        h22.getClass();
        h22.f(consumer, EnumC6871d70.f47286b);
    }
}
