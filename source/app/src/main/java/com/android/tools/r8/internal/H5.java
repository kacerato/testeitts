package com.android.tools.r8.internal;

import com.android.tools.r8.dex.C4303c;
import com.android.tools.r8.errors.IgnoredBackportMethodDiagnostic;
import com.android.tools.r8.graph.AbstractC4780x0;
import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.position.MethodPosition;
import com.android.tools.r8.synthesis.S;
import com.android.tools.r8.utils.C11662i;
import java.io.IOException;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

public final class H5 implements X9 {

    public static final boolean f40675d = true;

    public final C4798y f40676b;

    public final C10534z5 f40677c;

    public H5(C4798y c4798y) {
        if (!f40675d && !c4798y.E().f50616L0.b()) {
            throw new AssertionError();
        }
        this.f40676b = c4798y;
        this.f40677c = new C10534z5(c4798y);
    }

    @Override
    public final void a(IntConsumer intConsumer) {
        AbstractC4962Ca.b(intConsumer);
        intConsumer.accept(178);
    }

    @Override
    public final C6473am a(com.android.tools.r8.graph.H5 h52, W9 w92) {
        if (!w92.L() && !w92.T()) {
            return C6473am.f46625a;
        }
        if (w92.L()) {
            C7437ga j10 = w92.j();
            com.android.tools.r8.graph.A2 V10 = j10.V();
            V10.getClass();
            AbstractC5308Hz v10 = this.f40676b.v();
            v10.getClass();
            com.android.tools.r8.graph.A2 a10 = v10.a(AbstractC5308Hz.g(), V10);
            if (!f40675d && a10 == null) {
                throw new AssertionError();
            }
            AbstractC10200x5 abstractC10200x5 = (AbstractC10200x5) this.f40677c.f54281c.get(a10);
            Map<com.android.tools.r8.graph.M2, com.android.tools.r8.graph.M2> j11 = X2.a(this.f40676b).f53766c.j();
            if (abstractC10200x5 == null && this.f40676b.E().x().f45396a.f53764a && j11.containsKey(V10.f38297f)) {
                abstractC10200x5 = (AbstractC10200x5) this.f40677c.f54281c.get(this.f40676b.b().a(j11.get(V10.f38297f), V10.f36127i, V10.f38298g));
            }
            if (abstractC10200x5 != null && this.f40676b.E().f50625O0) {
                C4798y c4798y = this.f40676b;
                com.android.tools.r8.graph.E0 D10 = c4798y.f().f(((com.android.tools.r8.graph.A2) abstractC10200x5.f53683a).s0()).D();
                if (D10 == null || !D10.h()) {
                    this.f40676b.E().f50691j.warning(new IgnoredBackportMethodDiagnostic(abstractC10200x5.f53683a, h52.f36317b.f36244d, MethodPosition.create(h52), this.f40676b.E().z().d()));
                }
                abstractC10200x5 = null;
            }
            if (abstractC10200x5 != null && !a(h52)) {
                return a(j10, abstractC10200x5);
            }
            return C6473am.f46625a;
        }
        if (!f40675d && !w92.T()) {
            throw new AssertionError();
        }
        C9942vb u10 = w92.u();
        AbstractC10200x5 abstractC10200x52 = (AbstractC10200x5) this.f40677c.f54282d.get(u10.getField());
        if (abstractC10200x52 != null && !a(h52)) {
            return a(u10, abstractC10200x52);
        }
        return C6473am.f46625a;
    }

    public final boolean a(com.android.tools.r8.graph.H5 h52) {
        return this.f40676b.f38408a.g().a(h52.p(), new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58151D;
                return bVar;
            }
        }) || this.f40676b.f38408a.g().a(h52.p(), new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58168U;
                return bVar;
            }
        });
    }

    public final C6204Xl a(final C7437ga c7437ga, final AbstractC10200x5 abstractC10200x5) {
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                return H5.this.a(abstractC10200x5, c7437ga, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h52, c5035Df, y92, c4724u1);
            }
        }));
    }

    public final Collection a(AbstractC10200x5 abstractC10200x5, C7437ga c7437ga, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        return abstractC10200x5.a(b60, c7437ga, this.f40676b, abstractC7103ea, c5035Df, qt);
    }

    public final C6204Xl a(final C9942vb c9942vb, final AbstractC10200x5 abstractC10200x5) {
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                return H5.this.a(abstractC10200x5, c9942vb, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h52, c5035Df, y92, c4724u1);
            }
        }));
    }

    public final Collection a(AbstractC10200x5 abstractC10200x5, C9942vb c9942vb, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        return abstractC10200x5.a(b60, c9942vb, this.f40676b, abstractC7103ea, c5035Df, qt);
    }

    public static void a(C11662i c11662i, C8570nJ c8570nJ, ExecutorService executorService, Consumer<com.android.tools.r8.graph.A2> consumer, Consumer<C4554l1> consumer2) throws IOException {
        a(c11662i != null ? new C4303c(c11662i, c8570nJ, C8659ns0.c()).a(executorService) : null, c8570nJ, consumer, consumer2);
    }

    public static void a(AbstractC4780x0 abstractC4780x0, C8570nJ c8570nJ, Consumer<com.android.tools.r8.graph.A2> consumer, Consumer<C4554l1> consumer2) throws IOException {
        c8570nJ.x().a(C8659ns0.c(), abstractC4780x0);
        C4798y a10 = C4798y.a(C4477h.a(abstractC4780x0, com.android.tools.r8.synthesis.E.d()), C8659ns0.c());
        C10534z5 c10534z5 = new C10534z5(a10);
        c10534z5.a(consumer);
        new C8807om(a10).a(consumer);
        new C8364m5(c8570nJ.z(), c8570nJ.m()).a(consumer);
        c10534z5.b(consumer2);
    }

    public static void a(C8570nJ c8570nJ) {
        C4724u1 c4724u1 = c8570nJ.f50660a;
        synchronized (c4724u1) {
            c4724u1.a(c4724u1.d(c4724u1.b("Landroid/os/Build$VERSION;")));
        }
        AbstractC9198r5.a(c4724u1, "Landroid/os/Build;", "Ljava/lang/ArithmeticException;", "Ljava/lang/AssertionError;", "Ljava/lang/Double;");
        AbstractC9198r5.a(c4724u1, "Ljava/lang/Exception;", "Ljava/lang/ExceptionInInitializerError;", "Ljava/lang/Float;", "Ljava/lang/IllegalAccessException;");
        AbstractC9198r5.a(c4724u1, "Ljava/lang/IllegalArgumentException;", "Ljava/lang/IndexOutOfBoundsException;", "Ljava/lang/Integer;", "Ljava/lang/InterruptedException;");
        AbstractC9198r5.a(c4724u1, "Ljava/lang/Iterable;", "Ljava/lang/Long;", "Ljava/lang/Math;", "Ljava/lang/NoSuchMethodException;");
        AbstractC9198r5.a(c4724u1, "Ljava/lang/NullPointerException;", "Ljava/lang/NumberFormatException;", "Ljava/lang/OutOfMemoryError;", "Ljava/lang/Runnable;");
        AbstractC9198r5.a(c4724u1, "Ljava/lang/RuntimeException;", "Ljava/lang/SecurityException;", "Ljava/lang/Thread;", "Ljava/lang/reflect/Constructor;");
        AbstractC9198r5.a(c4724u1, "Ljava/lang/reflect/InvocationTargetException;", "Ljava/lang/reflect/Method;", "Ljava/math/BigDecimal;", "Ljava/math/BigInteger;");
        AbstractC9198r5.a(c4724u1, "Ljava/util/AbstractMap$SimpleImmutableEntry;", "Ljava/util/ArrayList;", "Ljava/util/Arrays;", "Ljava/util/Collection;");
        AbstractC9198r5.a(c4724u1, "Ljava/util/Collections;", "Ljava/util/Comparator;", "Ljava/util/Enumeration;", "Ljava/util/HashMap;");
        AbstractC9198r5.a(c4724u1, "Ljava/util/HashSet;", "Ljava/util/Iterator;", "Ljava/util/List;", "Ljava/util/ListIterator;");
        AbstractC9198r5.a(c4724u1, "Ljava/util/Map$Entry;", "Ljava/util/Map;", "Ljava/util/Objects;", "Ljava/util/Optional;");
        AbstractC9198r5.a(c4724u1, "Ljava/util/OptionalDouble;", "Ljava/util/OptionalInt;", "Ljava/util/OptionalLong;", "Ljava/util/Set;");
        AbstractC9198r5.a(c4724u1, "Ljava/util/concurrent/ExecutorService;", "Ljava/util/concurrent/ForkJoinPool;", "Ljava/util/concurrent/TimeUnit;", "Ljava/util/concurrent/atomic/AtomicReference;");
        AbstractC9198r5.a(c4724u1, "Ljava/util/concurrent/atomic/AtomicReferenceArray;", "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;", "Ljava/util/function/Consumer;", "Ljava/util/function/DoubleConsumer;");
        AbstractC9198r5.a(c4724u1, "Ljava/util/function/IntConsumer;", "Ljava/util/function/LongConsumer;", "Ljava/util/function/Predicate;", "Ljava/util/function/Supplier;");
        AbstractC9198r5.a(c4724u1, "Ljava/util/stream/DoubleStream;", "Ljava/util/stream/IntStream;", "Ljava/util/stream/LongStream;", "Ljava/util/stream/Stream;");
        AbstractC9198r5.a(c4724u1, "Lsun/misc/Unsafe;", "[Ljava/lang/CharSequence;", "[Ljava/lang/Class;", "[Ljava/lang/Object;");
        c4724u1.c("[Ljava/lang/Throwable;");
        c4724u1.c("[Ljava/util/Map$Entry;");
    }
}
