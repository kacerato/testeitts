package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;

public final class C8209l9 extends AbstractC8376m9 {

    public static final boolean f49900c = true;

    public final C4798y f49901a;

    public final ArrayList f49902b;

    public C8209l9(C4798y c4798y, ArrayList arrayList) {
        if (!f49900c && arrayList.isEmpty()) {
            throw new AssertionError();
        }
        this.f49901a = c4798y;
        this.f49902b = arrayList;
    }

    @Override
    public final void a(ExecutorService executorService, final AbstractC8710o9 abstractC8710o9, C8659ns0 c8659ns0) {
        C8659ns0 b10 = c8659ns0.b("Synthesize classes for desugaring");
        try {
            if (!f49900c && ((Set) this.f49902b.stream().map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return ((InterfaceC7875j9) obj).b();
                }
            }).collect(Collectors.toSet())).size() != this.f49902b.size()) {
                throw new AssertionError();
            }
            final C5093Ef k10 = this.f49901a.k();
            C5467Kr0.a(this.f49902b, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C8209l9.a(C5093Ef.this, abstractC8710o9, (InterfaceC7875j9) obj);
                }
            }, this.f49901a.E().G(), executorService);
            b10.d();
        } catch (Throwable th2) {
            try {
                b10.d();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public static void a(C5093Ef c5093Ef, AbstractC8710o9 abstractC8710o9, InterfaceC7875j9 interfaceC7875j9) {
        c5093Ef.getClass();
        C4861Af c4861Af = new C4861Af(c5093Ef, interfaceC7875j9);
        if (!C5093Ef.f39964c) {
            c5093Ef.a(c4861Af);
        }
        interfaceC7875j9.a(c4861Af, abstractC8710o9);
    }
}
