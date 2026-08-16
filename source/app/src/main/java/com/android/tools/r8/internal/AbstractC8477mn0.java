package com.android.tools.r8.internal;

import com.android.tools.r8.graph.InterfaceC4403d1;
import java.util.Comparator;
import java.util.Set;
import java.util.TreeSet;
import java.util.function.Consumer;

public abstract class AbstractC8477mn0 extends AbstractC8374m80 {

    public static final int f50423f = 0;

    static {
        new C8143kn0();
    }

    public static C8310ln0 b(InterfaceC6285Yx interfaceC6285Yx) {
        final C8310ln0 c8310ln0 = new C8310ln0();
        interfaceC6285Yx.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC8477mn0.this.add((AbstractC8477mn0) obj);
            }
        });
        return c8310ln0;
    }

    public final void a(final AbstractC5308Hz abstractC5308Hz, final AbstractC5308Hz abstractC5308Hz2, final InterfaceC4403d1 interfaceC4403d1, final Consumer consumer) {
        forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) obj;
                Consumer.this.accept(h52.a(interfaceC4403d1, abstractC5308Hz, abstractC5308Hz2));
            }
        });
    }

    public final C8310ln0 b(final InterfaceC4403d1 interfaceC4403d1, final AbstractC5308Hz abstractC5308Hz) {
        final AbstractC5308Hz g10 = AbstractC5308Hz.g();
        return b(new InterfaceC6285Yx() {
            @Override
            public final void forEach(Consumer consumer) {
                AbstractC8477mn0.this.a(abstractC5308Hz, g10, interfaceC4403d1, consumer);
            }
        });
    }

    @Override
    public final Set b() {
        final TreeSet treeSet = new TreeSet(Comparator.comparing(new com.android.tools.r8.graph.I9()));
        forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Set.this.add(((com.android.tools.r8.graph.H5) obj).d());
            }
        });
        return treeSet;
    }
}
