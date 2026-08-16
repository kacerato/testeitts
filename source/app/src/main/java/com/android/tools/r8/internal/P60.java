package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.threading.ThreadingModule;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class P60 extends AbstractC7431gX {

    public static final boolean f43120j = true;

    public E8 f43121c;

    public final AbstractC7264fX f43122d;

    public final AbstractC8374m80 f43123e;

    public final C5093Ef f43125g;

    public final ArrayDeque f43126h;

    public final AbstractC8374m80 f43124f = AbstractC8374m80.c();

    public final C7541h80 f43127i = C7541h80.l();

    public P60(C4798y c4798y, C10209x8 c10209x8, AbstractC7264fX abstractC7264fX, AbstractC8374m80 abstractC8374m80) {
        this.f43122d = abstractC7264fX;
        this.f43123e = abstractC8374m80;
        this.f43125g = c4798y.k();
        c10209x8.getClass();
        C8570nJ E10 = c4798y.E();
        this.f43121c = E10.f50690i1 ? false : (!E10.T() || !E10.W()) ? E10.P() : true ? new C8(c4798y, c10209x8, this) : D8.f39452a;
        this.f43126h = a(c10209x8);
    }

    @Override
    public final P60 a() {
        return this;
    }

    @Override
    public final E8 c() {
        return this.f43121c;
    }

    @Override
    public final AbstractC7264fX d() {
        return this.f43122d;
    }

    public final void e(com.android.tools.r8.graph.H5 h52) {
        if (!f43120j && !this.f48274a.f45165b.containsKey(h52.getReference())) {
            throw new AssertionError();
        }
        synchronized (this.f43123e) {
            try {
                C7541h80 c7541h80 = this.f43127i;
                Object obj = AbstractC8374m80.f50207d;
                Object remove = c7541h80.f43368b.remove(new C7333fv(C7374g80.f48192a, h52));
                if (remove != null) {
                    obj = remove;
                }
                for (com.android.tools.r8.graph.H5 h53 : ((AbstractC8374m80) obj).f45165b.values()) {
                    if (!this.f48274a.f45165b.containsKey(h53.getReference())) {
                        this.f43123e.add((AbstractC8374m80) h53);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void a(D00 d00, final Consumer consumer) {
        d00.f39410e.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Consumer.this.accept(((D00) obj).a());
            }
        });
    }

    @Override
    public final boolean c(com.android.tools.r8.graph.H5 h52) {
        if (!f43120j && this.f48274a.f45165b.containsKey(h52.getReference())) {
            throw new AssertionError();
        }
        return !this.f43124f.f45165b.containsKey(h52.getReference());
    }

    public final boolean d(com.android.tools.r8.graph.H5 h52) {
        return !this.f43123e.f45165b.containsKey(h52.getReference());
    }

    public final void a(final D00 d00) {
        if (d00.f39410e.isEmpty()) {
            return;
        }
        C7541h80 c7541h80 = this.f43127i;
        com.android.tools.r8.graph.H5 a10 = d00.a();
        AbstractC8374m80 a11 = AbstractC8374m80.a(new InterfaceC6285Yx() {
            @Override
            public final void forEach(Consumer consumer) {
                P60.a(D00.this, consumer);
            }
        });
        c7541h80.getClass();
        c7541h80.f43368b.put(new C7333fv(C7374g80.f48192a, a10), a11);
    }

    public final ArrayDeque a(C10209x8 c10209x8) {
        ArrayDeque arrayDeque = new ArrayDeque();
        while (!c10209x8.b()) {
            arrayDeque.addLast(c10209x8.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    P60.this.a((D00) obj);
                }
            }));
        }
        return arrayDeque;
    }

    public final void a(final InterfaceC9706u70 interfaceC9706u70, C10374y70 c10374y70, C8195l40 c8195l40, ThreadingModule threadingModule, ExecutorService executorService, C8659ns0 c8659ns0) {
        c8659ns0.getClass();
        C8325ls0 a10 = c8659ns0.a(C5467Kr0.a(executorService), "secondary-processor");
        while (!this.f43126h.isEmpty()) {
            AbstractC8374m80 abstractC8374m80 = (AbstractC8374m80) this.f43126h.removeFirst();
            this.f48274a = abstractC8374m80;
            boolean z10 = f43120j;
            if (!z10 && abstractC8374m80.f45165b.isEmpty()) {
                throw new AssertionError();
            }
            this.f48274a.removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return P60.this.d((com.android.tools.r8.graph.H5) obj);
                }
            });
            if (!this.f48274a.f45165b.isEmpty()) {
                if (!z10 && !this.f48275b.f45165b.isEmpty()) {
                    throw new AssertionError();
                }
                do {
                    if (!f43120j) {
                        c8195l40.b();
                    }
                    c10374y70.getClass();
                    c10374y70.f49516B = Collections.synchronizedList(new ArrayList());
                    a10.a(C5467Kr0.a(this.f48274a, new InterfaceC6217Xr0() {
                        @Override
                        public final Object apply(Object obj) {
                            return P60.this.a(interfaceC9706u70, (com.android.tools.r8.graph.H5) obj);
                        }
                    }, threadingModule, executorService));
                    c10374y70.a(this.f48274a, executorService);
                    c8195l40.c();
                    this.f43124f.f45165b.putAll(this.f48274a.f45165b);
                    g();
                } while (!this.f48274a.f45165b.isEmpty());
            }
        }
        if (!f43120j && !this.f43126h.isEmpty()) {
            throw new AssertionError();
        }
        this.f43127i.f43368b.clear();
        this.f43123e.f45165b.clear();
        this.f43124f.f45165b.clear();
        this.f43121c = D8.f39452a;
        a10.a();
    }

    public final C8659ns0 a(InterfaceC9706u70 interfaceC9706u70, com.android.tools.r8.graph.H5 h52) {
        C8659ns0 a10 = interfaceC9706u70.a(h52, this.f43125g.a(h52));
        a10.d();
        return a10;
    }
}
