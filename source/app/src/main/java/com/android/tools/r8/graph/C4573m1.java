package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import com.android.tools.r8.internal.InterfaceC7166ev;
import java.util.Objects;
import java.util.function.Function;

public final class C4573m1 implements InterfaceC5580Mq0 {

    public final L2 f37475b;

    public final M2 f37476c;

    public C4573m1(L2 l22, M2 m22) {
        this.f37475b = l22;
        this.f37476c = m22;
    }

    @Override
    public final InterfaceC5580Mq0 E() {
        return this;
    }

    public final M2 b() {
        return this.f37476c;
    }

    public final boolean equals(Object obj) {
        return InterfaceC7166ev.a(this, obj);
    }

    public final int hashCode() {
        return Objects.hash(this.f37475b, this.f37476c);
    }

    @Override
    public final InterfaceC5638Nq0 m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                C4573m1.a(abstractC5754Pq0);
            }
        };
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.e(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C4573m1) obj).a();
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C4573m1) obj).b();
            }
        });
    }

    public final L2 a() {
        return this.f37475b;
    }

    @Override
    public final boolean isEqualTo(C4573m1 c4573m1) {
        return this.f37475b == c4573m1.f37475b && this.f37476c == c4573m1.f37476c;
    }
}
