package androidx.activity.contextaware;

import Mf.l;
import kotlin.jvm.internal.O;
import nf.P0;

public final class ContextAwareKt$withContextAvailable$2$1 extends O implements l<Throwable, P0> {
    final ContextAwareKt$withContextAvailable$2$listener$1 $listener;
    final ContextAware $this_withContextAvailable;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContextAwareKt$withContextAvailable$2$1(ContextAware contextAware, ContextAwareKt$withContextAvailable$2$listener$1 contextAwareKt$withContextAvailable$2$listener$1) {
        super(1);
        this.$this_withContextAvailable = contextAware;
        this.$listener = contextAwareKt$withContextAvailable$2$listener$1;
    }

    @Override
    public P0 invoke(Throwable th2) {
        invoke2(th2);
        return P0.f98194a;
    }

    public final void invoke2(Throwable th2) {
        this.$this_withContextAvailable.removeOnContextAvailableListener(this.$listener);
    }
}
