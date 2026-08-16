package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class C10209x8 extends AbstractC10376y8<D00> {

    public static final boolean f53698b = true;

    public C10209x8(Map map) {
        super(map);
    }

    public static C10209x8 a(Collection<D00> collection) {
        return new C10209x8((Map) collection.stream().collect(Collectors.toMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                com.android.tools.r8.graph.A2 reference;
                reference = ((D00) obj).a().getReference();
                return reference;
            }
        }, Function.identity())));
    }

    public AbstractC8374m80 c() {
        return a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((D00) obj).f();
            }
        }, new C9179qy1());
    }

    public AbstractC8374m80 d() {
        return a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((D00) obj).e();
            }
        }, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((D00) obj).h();
            }
        });
    }

    public final AbstractC8374m80 a(final Consumer consumer) {
        return a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10209x8.a(Consumer.this, (D00) obj);
            }
        }, new C9179qy1());
    }

    public static void a(Consumer consumer, D00 d00) {
        consumer.accept(d00);
        d00.f();
    }

    public final AbstractC8374m80 a(Consumer consumer, Predicate predicate) {
        AbstractC8374m80 c10;
        if (C8570nJ.f50578e2) {
            int i10 = AbstractC8477mn0.f50423f;
            c10 = new C8310ln0();
        } else {
            c10 = AbstractC8374m80.c();
        }
        Set c11 = AbstractC5513Ll0.c();
        Iterator it = this.f53949a.values().iterator();
        while (it.hasNext()) {
            D00 d00 = (D00) it.next();
            if (predicate.test(d00)) {
                c10.add((AbstractC8374m80) d00.a());
                it.remove();
                c11.add(d00);
            }
        }
        c11.forEach(consumer);
        if (f53698b || !c10.f45165b.isEmpty()) {
            return c10;
        }
        throw new AssertionError();
    }
}
