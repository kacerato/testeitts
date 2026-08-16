package kg;

import jg.J;
import jg.U;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nAbstractSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,132:1\n28#2,4:133\n28#2,4:138\n20#3:137\n20#3:142\n*S KotlinDebug\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow\n*L\n126#1:133,4\n128#1:138,4\n126#1:137\n128#1:142\n*E\n"})
public final class y extends J<Integer> implements U<Integer> {
    public y(int i10) {
        super(1, Integer.MAX_VALUE, gg.i.DROP_OLDEST);
        w(Integer.valueOf(i10));
    }

    @Override
    @NotNull
    public Integer getValue() {
        Integer valueOf;
        synchronized (this) {
            valueOf = Integer.valueOf(P().intValue());
        }
        return valueOf;
    }

    public final boolean e0(int i10) {
        boolean w10;
        synchronized (this) {
            w10 = w(Integer.valueOf(P().intValue() + i10));
        }
        return w10;
    }
}
