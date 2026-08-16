package com.android.tools.r8.internal;

import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Function;

public final class AH implements InterfaceC5580Mq0 {

    public static final boolean f38587d = true;

    public final int[] f38588b;

    public final AbstractC7552hC f38589c;

    public AH(int[] iArr, AbstractC7552hC abstractC7552hC) {
        this.f38588b = iArr;
        this.f38589c = abstractC7552hC;
        if (!f38587d && iArr.length != abstractC7552hC.size()) {
            throw new AssertionError();
        }
    }

    @Override
    public final InterfaceC5580Mq0 E() {
        return this;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof AH) && compareTo((AH) obj) == 0;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(Arrays.hashCode(this.f38588b)), this.f38589c);
    }

    @Override
    public final InterfaceC5638Nq0 m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                AH.a(abstractC5754Pq0);
            }
        };
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.d(new Function() {
            @Override
            public final Object apply(Object obj) {
                int[] iArr;
                iArr = ((AH) obj).f38588b;
                return iArr;
            }
        }).h(new Function() {
            @Override
            public final Object apply(Object obj) {
                Collection collection;
                collection = ((AH) obj).f38589c;
                return collection;
            }
        });
    }

    public final void a(BiConsumer biConsumer) {
        int i10 = 0;
        while (true) {
            int[] iArr = this.f38588b;
            if (i10 >= iArr.length) {
                return;
            }
            biConsumer.accept(Integer.valueOf(iArr[i10]), (InterfaceC5580Mq0) this.f38589c.get(i10));
            i10++;
        }
    }
}
