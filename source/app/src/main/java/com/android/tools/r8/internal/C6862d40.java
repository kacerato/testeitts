package com.android.tools.r8.internal;

import com.android.tools.r8.internal.C5467Kr0;
import com.android.tools.r8.threading.ThreadingModule;
import java.util.concurrent.ExecutorService;

public final class C6862d40 extends AbstractC7431gX {

    public final C7097eX f47267c;

    public final C5093Ef f47268d;

    public C9142qm0 f47269e;

    public C6862d40(C7097eX c7097eX, C5093Ef c5093Ef, AbstractC8374m80 abstractC8374m80) {
        this.f47267c = c7097eX;
        this.f47268d = c5093Ef;
        this.f48274a = abstractC8374m80;
    }

    public final void a(final InterfaceC6695c40 interfaceC6695c40, ThreadingModule threadingModule, ExecutorService executorService) {
        while (!this.f48274a.f45165b.isEmpty()) {
            C5467Kr0.a(this.f48274a, new InterfaceC10593zT() {
                @Override
                public final void accept(Object obj, int i10) {
                    C6862d40.this.a(interfaceC6695c40, (com.android.tools.r8.graph.H5) obj, i10);
                }
            }, threadingModule, executorService, C5467Kr0.a.f41789c);
            g();
        }
    }

    @Override
    public final boolean c(com.android.tools.r8.graph.H5 h52) {
        return true;
    }

    @Override
    public final AbstractC7264fX d() {
        return this.f47267c;
    }

    @Override
    public final E8 c() {
        C9142qm0 c9142qm0 = this.f47269e;
        return c9142qm0 != null ? c9142qm0 : D8.f39452a;
    }

    public final void a(InterfaceC6695c40 interfaceC6695c40, com.android.tools.r8.graph.H5 h52, int i10) {
        interfaceC6695c40.a(h52, this.f47268d.a(h52));
    }
}
