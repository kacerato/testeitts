package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4479h1;
import com.android.tools.r8.threading.ThreadingModule;
import java.util.Collection;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;

public abstract class AbstractC8028k40 implements InterfaceC9838uw, SW {

    public static final boolean f49478a = true;

    public void a(Consumer consumer) {
    }

    public static C8696o40 a() {
        return C8696o40.f51162b;
    }

    public static void a(Collection collection, ThreadingModule threadingModule, ExecutorService executorService, final InterfaceC7861j40 interfaceC7861j40) {
        C5467Kr0.a(collection, new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC8028k40.a(InterfaceC7861j40.this, (com.android.tools.r8.graph.H2) obj);
            }
        }, threadingModule, executorService);
    }

    public static void a(final InterfaceC7861j40 interfaceC7861j40, com.android.tools.r8.graph.H2 h22) {
        C6057Ux y12 = h22.y1();
        Objects.requireNonNull(interfaceC7861j40);
        y12.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                InterfaceC7861j40.this.a((AbstractC4479h1) obj);
            }
        });
    }
}
