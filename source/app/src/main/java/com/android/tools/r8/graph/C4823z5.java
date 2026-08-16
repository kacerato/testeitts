package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.ToIntFunction;

public class C4823z5 extends AbstractC4592n1 implements InterfaceC5580Mq0<C4823z5> {

    public static final C4823z5 f38465d = new C4823z5();

    public static final boolean f38466e = true;

    public final C4723u0[] f38467b;

    public final int f38468c;

    public C4823z5() {
        this.f38467b = C4723u0.f37803f;
        this.f38468c = 0;
    }

    public static C4823z5 k0() {
        return f38465d;
    }

    @Override
    public final C4823z5 E() {
        return this;
    }

    public final void d(Consumer consumer) {
        for (C4723u0 c4723u0 : this.f38467b) {
            for (C4666r0 c4666r0 : c4723u0.f37806d) {
                consumer.accept(c4666r0);
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C4823z5) {
            return Arrays.equals(this.f38467b, ((C4823z5) obj).f38467b);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f38467b);
    }

    public boolean isEmpty() {
        return this.f38467b.length == 0;
    }

    public C4723u0 j(int i10) {
        if (!f38466e && i10 < 0) {
            throw new AssertionError();
        }
        int i11 = i10 - this.f38468c;
        if (i11 >= 0) {
            C4723u0[] c4723u0Arr = this.f38467b;
            if (i11 < c4723u0Arr.length) {
                return c4723u0Arr[i11];
            }
        }
        return C4723u0.l0();
    }

    @Override
    public final InterfaceC5638Nq0<C4823z5> m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                C4823z5.a(abstractC5754Pq0);
            }
        };
    }

    public int size() {
        return this.f38468c + this.f38467b.length;
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.f(new Function() {
            @Override
            public final Object apply(Object obj) {
                C4723u0[] c4723u0Arr;
                c4723u0Arr = ((C4823z5) obj).f38467b;
                return c4723u0Arr;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((C4823z5) obj).f38468c;
                return i10;
            }
        });
    }

    public static C4823z5 a(C4723u0[] c4723u0Arr, int i10) {
        if (!com.android.tools.r8.internal.X3.a(c4723u0Arr)) {
            for (C4723u0 c4723u0 : c4723u0Arr) {
                if (!c4723u0.isEmpty()) {
                    return new C4823z5(c4723u0Arr, i10);
                }
            }
        }
        return f38465d;
    }

    public C4823z5(C4723u0[] c4723u0Arr, int i10) {
        boolean z10 = f38466e;
        if (!z10 && c4723u0Arr == null) {
            throw new AssertionError();
        }
        if (!z10 && c4723u0Arr.length <= 0) {
            throw new AssertionError();
        }
        if (!z10) {
            for (C4723u0 c4723u0 : c4723u0Arr) {
                if (c4723u0.isEmpty()) {
                }
            }
            throw new AssertionError();
        }
        this.f38467b = c4723u0Arr;
        this.f38468c = i10;
    }

    @Override
    public final void a(com.android.tools.r8.dex.X x10) {
        AbstractC4592n1.a(x10, this.f38467b);
        x10.a(this);
    }

    public final C4823z5 a(final Function function) {
        C4723u0[] c4723u0Arr;
        return (isEmpty() || (c4723u0Arr = (C4723u0[]) com.android.tools.r8.internal.X3.a((Object[]) this.f38467b, new Function() {
            @Override
            public final Object apply(Object obj) {
                C4723u0 a10;
                a10 = ((C4723u0) obj).a(Function.this);
                return a10;
            }
        }, (Object[]) C4723u0.f37803f)) == this.f38467b) ? this : a(c4723u0Arr, this.f38468c);
    }
}
