package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.C10420yQ;
import com.android.tools.r8.internal.C8751oQ;
import com.android.tools.r8.shaking.InterfaceC11195f0;
import java.util.function.Consumer;

public final class J implements InterfaceC11195f0 {

    public static final J f55079c = new J("kotlin.jvm.PlatformType", null);

    public static final boolean f55080d = true;

    public final String f55081a;

    public final C10836p0 f55082b;

    public J(String str, C10836p0 c10836p0) {
        this.f55081a = str;
        this.f55082b = c10836p0;
        if (!f55080d && !"kotlin.jvm.PlatformType".equals(str)) {
            throw new AssertionError();
        }
    }

    public final void a(Consumer consumer, C10420yQ c10420yQ) {
        consumer.accept(new C8751oQ(c10420yQ, this.f55081a));
    }

    public final boolean b(final Consumer consumer, C4798y c4798y) {
        if (this == f55079c) {
            return false;
        }
        C10836p0 c10836p0 = this.f55082b;
        if (c10836p0 != null) {
            return c10836p0.b(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    J.this.a(consumer, (C10420yQ) obj);
                }
            }, c4798y);
        }
        if (f55080d) {
            return false;
        }
        throw new AssertionError();
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        if (this == f55079c) {
            return;
        }
        C10836p0 c10836p0 = this.f55082b;
        if (c10836p0 == null) {
            if (!f55080d) {
                throw new AssertionError();
            }
        } else {
            c10836p0.a(interfaceC4403d1);
        }
    }
}
