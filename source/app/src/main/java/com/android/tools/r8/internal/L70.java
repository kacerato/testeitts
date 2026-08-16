package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;

public abstract class L70 {

    public static final boolean f41868f = true;

    public InterfaceC8352m1 f41869a;

    public final ConcurrentHashMap f41870b = new ConcurrentHashMap();

    public final ConcurrentHashMap f41871c = new ConcurrentHashMap();

    public final Set f41872d = C4875Al0.a();

    public final J70 f41873e = new J70();

    public L70(InterfaceC8352m1 interfaceC8352m1) {
        this.f41869a = interfaceC8352m1;
    }

    public abstract L70 a();

    public abstract InterfaceC8853p1 a(com.android.tools.r8.graph.A2 a22);

    public final void a(com.android.tools.r8.graph.M2 m22, Consumer consumer) {
        if (this.f41869a.a(m22) || this.f41870b.containsKey(m22)) {
            consumer.accept(new F70(this));
        }
    }

    public abstract InterfaceC8519n1 b(com.android.tools.r8.graph.M2 m22);

    public final void b(com.android.tools.r8.graph.A2 a22, Consumer consumer) {
        InterfaceC9020q1 b10 = this.f41869a.b(a22);
        if (b10 != null) {
            consumer.accept(new G70(this, b10));
        } else if (this.f41871c.containsKey(a22)) {
            consumer.accept(new H70(this, a22));
        }
    }

    public abstract InterfaceC8185l1 c();

    public abstract Comparator d();

    public final boolean e() {
        return (this.f41870b.isEmpty() && this.f41871c.isEmpty()) ? false : true;
    }

    public abstract L70 f();

    public final void a(com.android.tools.r8.graph.M2 m22) {
        if (this.f41869a.a(m22)) {
            return;
        }
        this.f41870b.computeIfAbsent(m22, new Function() {
            @Override
            public final Object apply(Object obj) {
                return L70.this.b((com.android.tools.r8.graph.M2) obj);
            }
        });
    }

    public final L70 a(com.android.tools.r8.graph.A2 a22, Consumer consumer) {
        InterfaceC8853p1 interfaceC8853p1 = (InterfaceC8853p1) this.f41871c.computeIfAbsent(a22, new Function() {
            @Override
            public final Object apply(Object obj) {
                return L70.this.a((com.android.tools.r8.graph.A2) obj);
            }
        });
        synchronized (interfaceC8853p1) {
            consumer.accept(interfaceC8853p1);
        }
        return f();
    }

    public final InterfaceC8352m1 b() {
        if (!e()) {
            if (!f41868f && !this.f41872d.isEmpty()) {
                throw new AssertionError();
            }
            return this.f41869a;
        }
        if (!f41868f && !this.f41873e.a()) {
            throw new AssertionError();
        }
        this.f41873e.a(this.f41871c);
        final InterfaceC8185l1 c10 = c();
        this.f41869a.a(new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                InterfaceC8185l1.this.a((InterfaceC8686o1) obj);
            }
        }, new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                L70.this.a(c10, (InterfaceC9020q1) obj);
            }
        });
        final ArrayList arrayList = new ArrayList(this.f41871c.size() + this.f41870b.size());
        this.f41870b.values().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                List.this.add(((InterfaceC8519n1) obj).build());
            }
        });
        this.f41871c.values().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                L70.this.a(arrayList, (InterfaceC8853p1) obj);
            }
        });
        arrayList.sort(d());
        arrayList.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                InterfaceC8185l1.this.a((InterfaceC9186r1) obj);
            }
        });
        return c10.build();
    }

    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.A2 a22) {
        boolean z10 = f41868f;
        if (!z10 && !this.f41869a.a(a22) && !this.f41871c.containsKey(a22)) {
            throw new AssertionError();
        }
        if (!z10 && !this.f41871c.containsKey(h52.getReference())) {
            throw new AssertionError();
        }
        this.f41872d.add(a22);
    }

    public final void a(InterfaceC8185l1 interfaceC8185l1, InterfaceC9020q1 interfaceC9020q1) {
        if (this.f41872d.contains(interfaceC9020q1.getReference())) {
            return;
        }
        InterfaceC8853p1 interfaceC8853p1 = (InterfaceC8853p1) this.f41871c.remove(interfaceC9020q1.getReference());
        if (interfaceC8853p1 != null) {
            interfaceC8185l1.a(interfaceC8853p1.a(interfaceC9020q1).build());
        } else {
            interfaceC8185l1.a(interfaceC9020q1);
        }
    }

    public final void a(List list, InterfaceC8853p1 interfaceC8853p1) {
        InterfaceC9020q1 build = interfaceC8853p1.build();
        if (this.f41872d.contains(build.getReference())) {
            return;
        }
        list.add(build);
    }

    public final L70 a(final Function function) {
        final L70 a10 = a();
        if (!f41868f && !this.f41872d.isEmpty()) {
            throw new AssertionError();
        }
        a10.f41870b.putAll(this.f41870b);
        this.f41871c.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                L70.a(Function.this, a10, (com.android.tools.r8.graph.A2) obj, (InterfaceC8853p1) obj2);
            }
        });
        return a10;
    }

    public static void a(Function function, L70 l70, com.android.tools.r8.graph.A2 a22, InterfaceC8853p1 interfaceC8853p1) {
        com.android.tools.r8.graph.A2 a23 = (com.android.tools.r8.graph.A2) function.apply(a22);
        InterfaceC8853p1 interfaceC8853p12 = (InterfaceC8853p1) l70.f41871c.put(a23, interfaceC8853p1.a(a23));
        if (!f41868f && interfaceC8853p12 != null) {
            throw new AssertionError();
        }
    }
}
