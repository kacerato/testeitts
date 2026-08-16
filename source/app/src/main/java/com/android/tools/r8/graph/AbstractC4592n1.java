package com.android.tools.r8.graph;

import java.util.Collection;
import java.util.function.Consumer;

public abstract class AbstractC4592n1 {
    public static void a(final com.android.tools.r8.dex.X x10, AbstractC4592n1[] abstractC4592n1Arr) {
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((AbstractC4592n1) obj).a(com.android.tools.r8.dex.X.this);
            }
        };
        if (abstractC4592n1Arr == null) {
            return;
        }
        for (AbstractC4592n1 abstractC4592n1 : abstractC4592n1Arr) {
            if (abstractC4592n1 != null) {
                consumer.accept(abstractC4592n1);
            }
        }
    }

    public abstract void a(com.android.tools.r8.dex.X x10);

    public String i0() {
        return toString();
    }

    public String j0() {
        return toString();
    }

    public static void a(final com.android.tools.r8.dex.X x10, Collection collection) {
        collection.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((AbstractC4592n1) obj).a(com.android.tools.r8.dex.X.this);
            }
        });
    }
}
