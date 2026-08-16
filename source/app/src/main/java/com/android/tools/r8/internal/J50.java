package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Function;

public class J50 extends AbstractC9050qB {

    public static final boolean f41287f = true;

    public final AbstractC8374m80 f41288e;

    public J50(C4798y<C11245i> c4798y, AbstractC8374m80 abstractC8374m80) {
        super(c4798y);
        if (!f41287f && (abstractC8374m80 == null || abstractC8374m80.f45165b.isEmpty())) {
            throw new AssertionError();
        }
        this.f41288e = abstractC8374m80;
    }

    @Override
    public C10209x8 a(ExecutorService executorService, C8659ns0 c8659ns0) throws ExecutionException {
        return super.a(executorService, c8659ns0);
    }

    public final void c(com.android.tools.r8.graph.H5 h52) {
        C4798y c4798y = this.f38540a;
        D00 d00 = (D00) b(h52);
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                return (D00) J50.this.b((com.android.tools.r8.graph.H5) obj);
            }
        };
        ConcurrentHashMap concurrentHashMap = this.f38542c;
        AbstractC8374m80 abstractC8374m80 = this.f41288e;
        Objects.requireNonNull(abstractC8374m80);
        h52.a(new C9216rB(c4798y, d00, function, concurrentHashMap, new C7383gB0(abstractC8374m80)));
    }

    @Override
    public final void a(ExecutorService executorService) {
        C5467Kr0.a(this.f41288e, new Consumer() {
            @Override
            public final void accept(Object obj) {
                J50.this.c((com.android.tools.r8.graph.H5) obj);
            }
        }, this.f38540a.E().G(), executorService);
    }

    @Override
    public final void a() {
        for (com.android.tools.r8.graph.H5 h52 : this.f41288e.f45165b.values()) {
            if (!f41287f) {
                if (h52.d().b1() != (this.f38541b.get(h52.getReference()) != null)) {
                    throw new AssertionError();
                }
            }
        }
    }
}
