package com.android.tools.r8.internal;

import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;

public abstract class AbstractC6029Uj {

    public static final boolean f44846c = true;

    public final ArrayDeque f44847a = new ArrayDeque();

    public final IdentityHashMap f44848b = new IdentityHashMap();

    public abstract C5797Qj a(Object obj);

    public abstract AbstractC6333Zs0 a(C5797Qj c5797Qj);

    public abstract List a(Collection collection);

    /* JADX WARN: Multi-variable type inference failed */
    public final C5797Qj b(Object obj) {
        C5797Qj c5797Qj = (C5797Qj) this.f44848b.computeIfAbsent(obj, new Function() {
            @Override
            public final Object apply(Object obj2) {
                return AbstractC6029Uj.this.a(obj2);
            }
        });
        if (c5797Qj.f43693b == 1) {
            this.f44847a.addLast(c5797Qj);
        }
        return c5797Qj;
    }

    public abstract AbstractC6333Zs0 b(C5797Qj c5797Qj);

    public final AbstractC6333Zs0 a(W5 w52) {
        AbstractC6333Zs0 b10 = b((Collection) Collections.singletonList(w52));
        Function identity = Function.identity();
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                Object obj2;
                obj2 = ((List) obj).get(0);
                return obj2;
            }
        };
        if (b10.c()) {
            return new C6162Ws0(identity.apply(b10.a().e()));
        }
        if (AbstractC6333Zs0.f46363a || b10.d()) {
            return new C6276Ys0(function.apply(b10.b().e()));
        }
        throw new AssertionError();
    }

    public final AbstractC6333Zs0 b(Collection collection) {
        AbstractC6333Zs0 abstractC6333Zs0;
        collection.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC6029Uj.this.b(obj);
            }
        });
        while (!this.f44847a.isEmpty()) {
            C5797Qj c5797Qj = (C5797Qj) this.f44847a.removeLast();
            int i10 = c5797Qj.f43693b;
            if (i10 != 3) {
                if (i10 == 1) {
                    this.f44847a.addLast(c5797Qj);
                    c5797Qj.f43693b = 2;
                    abstractC6333Zs0 = b(c5797Qj);
                } else {
                    if (!f44846c && i10 != 2) {
                        throw new AssertionError();
                    }
                    AbstractC6333Zs0 a10 = a(c5797Qj);
                    if (!C5797Qj.f43691c && c5797Qj.f43693b == 3) {
                        throw new AssertionError();
                    }
                    c5797Qj.f43693b = 3;
                    abstractC6333Zs0 = a10;
                }
                if (abstractC6333Zs0.c()) {
                    return new C6162Ws0(abstractC6333Zs0.a().e());
                }
            }
        }
        return new C6276Ys0(a(collection));
    }
}
