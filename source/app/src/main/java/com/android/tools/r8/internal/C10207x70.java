package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayDeque;
import java.util.concurrent.ExecutorService;

public final class C10207x70 extends AbstractC7431gX {

    public static final boolean f53690h = true;

    public final C4798y f53691c;

    public final E8 f53692d;

    public final AbstractC7264fX f53693e;

    public final ArrayDeque f53694f;

    public C5093Ef f53695g;

    public C10207x70(C4798y c4798y, C10209x8 c10209x8, AbstractC7264fX abstractC7264fX) {
        this.f53691c = c4798y;
        c10209x8.getClass();
        C8570nJ E10 = c4798y.E();
        this.f53692d = E10.f50690i1 ? false : (!E10.T() || !E10.W()) ? E10.P() : true ? new C8(c4798y, c10209x8, this) : D8.f39452a;
        this.f53693e = abstractC7264fX;
        ArrayDeque arrayDeque = new ArrayDeque();
        while (!c10209x8.b()) {
            arrayDeque.addLast(c10209x8.c());
        }
        c4798y.H().f50818G.accept(arrayDeque);
        this.f53694f = arrayDeque;
    }

    public final void a(final InterfaceC9706u70 interfaceC9706u70, InterfaceC10040w70 interfaceC10040w70, InterfaceC9873v70 interfaceC9873v70, C8659ns0 c8659ns0, ExecutorService executorService) {
        c8659ns0.getClass();
        C8325ls0 a10 = c8659ns0.a(C5467Kr0.a(executorService), "primary-processor");
        while (!this.f53694f.isEmpty()) {
            AbstractC8374m80 abstractC8374m80 = (AbstractC8374m80) this.f53694f.removeFirst();
            this.f48274a = abstractC8374m80;
            boolean z10 = f53690h;
            if (!z10 && abstractC8374m80.f45165b.isEmpty()) {
                throw new AssertionError();
            }
            if (!z10 && !this.f48275b.f45165b.isEmpty()) {
                throw new AssertionError();
            }
            do {
                this.f53695g = this.f53691c.k();
                interfaceC10040w70.a(this.f48274a);
                a10.a(C5467Kr0.a(this.f48274a, new InterfaceC6217Xr0() {
                    @Override
                    public final Object apply(Object obj) {
                        return C10207x70.this.a(interfaceC9706u70, (com.android.tools.r8.graph.H5) obj);
                    }
                }, this.f53691c.E().G(), executorService));
                interfaceC9873v70.a(this.f48274a, executorService);
                g();
            } while (!this.f48274a.f45165b.isEmpty());
        }
        a10.a();
    }

    @Override
    public final C10207x70 b() {
        return this;
    }

    @Override
    public final boolean c(com.android.tools.r8.graph.H5 h52) {
        if (!f53690h && this.f48274a.f45165b.containsKey(h52.getReference())) {
            throw new AssertionError();
        }
        return !h52.d().o1();
    }

    @Override
    public final AbstractC7264fX d() {
        return this.f53693e;
    }

    @Override
    public final boolean e() {
        return true;
    }

    @Override
    public final boolean f() {
        return true;
    }

    @Override
    public final E8 c() {
        return this.f53692d;
    }

    public final C8659ns0 a(InterfaceC9706u70 interfaceC9706u70, com.android.tools.r8.graph.H5 h52) {
        C8659ns0 a10 = interfaceC9706u70.a(h52, this.f53695g.a(h52));
        a10.d();
        return a10;
    }
}
