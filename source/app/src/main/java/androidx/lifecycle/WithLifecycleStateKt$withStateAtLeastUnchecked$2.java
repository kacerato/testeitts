package androidx.lifecycle;

import kotlin.jvm.internal.O;

public final class WithLifecycleStateKt$withStateAtLeastUnchecked$2<R> extends O implements Mf.a<R> {
    final Mf.a<R> $block;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public WithLifecycleStateKt$withStateAtLeastUnchecked$2(Mf.a<? extends R> aVar) {
        super(0);
        this.$block = aVar;
    }

    @Override
    public final R invoke() {
        return this.$block.invoke();
    }
}
