package com.android.tools.r8.internal;

import Bi.C2385q;
import java.util.Objects;
import java.util.function.Consumer;

public final class C5156Fh extends AbstractC10377y80 {
    public C5156Fh(B50 b50) {
        super(new E50(b50, C2385q.f1871f));
    }

    @Override
    public final AN c(EnumC5098Eh enumC5098Eh, String str, final Consumer consumer) {
        H50 b10 = this.f53951a.b(str);
        int ordinal = enumC5098Eh.ordinal();
        if (ordinal == 0) {
            Objects.requireNonNull(consumer);
            return new AN(b10, new InterfaceC8413mO() {
                @Override
                public final void accept(Object obj) {
                    Consumer.this.accept((AbstractC10581zN) obj);
                }
            });
        }
        if (ordinal != 1) {
            return null;
        }
        return new AN(b10, new InterfaceC8413mO() {
            @Override
            public final void accept(Object obj) {
                C5156Fh.a(Consumer.this, (AbstractC10581zN) obj);
            }
        });
    }

    public static void a(Consumer consumer, AbstractC10581zN abstractC10581zN) {
        if (abstractC10581zN instanceof C10247xN) {
            abstractC10581zN = new C9746uN((C10247xN) abstractC10581zN);
        } else if (!AbstractC10581zN.f54367a && !(abstractC10581zN instanceof C10414yN) && !(abstractC10581zN instanceof C9746uN)) {
            throw new AssertionError();
        }
        consumer.accept(abstractC10581zN);
    }
}
