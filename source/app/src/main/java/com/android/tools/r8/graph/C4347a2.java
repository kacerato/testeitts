package com.android.tools.r8.graph;

import java.util.function.Consumer;
import org.slf4j.Logger;

public final class C4347a2 extends AbstractC4423e2 {

    public final C4554l1 f37041a;

    public final C4554l1 f37042b;

    public final C4554l1 f37043c;

    public C4347a2(C4724u1 c4724u1) {
        M2 m22 = c4724u1.f37991Y3;
        this.f37041a = c4724u1.a(m22, m22, "ENGLISH");
        M2 m23 = c4724u1.f37991Y3;
        this.f37042b = c4724u1.a(m23, m23, Logger.ROOT_LOGGER_NAME);
        M2 m24 = c4724u1.f37991Y3;
        this.f37043c = c4724u1.a(m24, m24, "US");
    }

    @Override
    public final void a(Consumer consumer) {
        consumer.accept(this.f37041a);
        consumer.accept(this.f37042b);
        consumer.accept(this.f37043c);
    }
}
