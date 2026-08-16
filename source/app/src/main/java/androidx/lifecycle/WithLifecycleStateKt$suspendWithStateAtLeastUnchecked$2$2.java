package androidx.lifecycle;

import Mf.l;
import eg.AbstractC13100M;
import kotlin.jvm.internal.O;
import nf.P0;

public final class WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$2 extends O implements l<Throwable, P0> {
    final AbstractC13100M $lifecycleDispatcher;
    final WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1 $observer;
    final Lifecycle $this_suspendWithStateAtLeastUnchecked;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$2(AbstractC13100M abstractC13100M, Lifecycle lifecycle, WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1 withLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1) {
        super(1);
        this.$lifecycleDispatcher = abstractC13100M;
        this.$this_suspendWithStateAtLeastUnchecked = lifecycle;
        this.$observer = withLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1;
    }

    @Override
    public P0 invoke(Throwable th2) {
        invoke2(th2);
        return P0.f98194a;
    }

    public final void invoke2(Throwable th2) {
        AbstractC13100M abstractC13100M = this.$lifecycleDispatcher;
        yf.l lVar = yf.l.f130251b;
        if (abstractC13100M.isDispatchNeeded(lVar)) {
            AbstractC13100M abstractC13100M2 = this.$lifecycleDispatcher;
            final Lifecycle lifecycle = this.$this_suspendWithStateAtLeastUnchecked;
            final WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1 withLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1 = this.$observer;
            abstractC13100M2.dispatch(lVar, new Runnable() {
                @Override
                public final void run() {
                    Lifecycle.this.removeObserver(withLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1);
                }
            });
            return;
        }
        this.$this_suspendWithStateAtLeastUnchecked.removeObserver(this.$observer);
    }
}
