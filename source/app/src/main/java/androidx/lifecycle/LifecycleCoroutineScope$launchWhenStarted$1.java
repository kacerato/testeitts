package androidx.lifecycle;

import Bf.f;
import Bf.q;
import Mf.p;
import eg.S;
import nf.C14418j0;
import nf.P0;

@f(c = "androidx.lifecycle.LifecycleCoroutineScope$launchWhenStarted$1", f = "Lifecycle.kt", i = {}, l = {97}, m = "invokeSuspend", n = {}, s = {})
public final class LifecycleCoroutineScope$launchWhenStarted$1 extends q implements p<S, yf.f<? super P0>, Object> {
    final p<S, yf.f<? super P0>, Object> $block;
    int label;
    final LifecycleCoroutineScope this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LifecycleCoroutineScope$launchWhenStarted$1(LifecycleCoroutineScope lifecycleCoroutineScope, p<? super S, ? super yf.f<? super P0>, ? extends Object> pVar, yf.f<? super LifecycleCoroutineScope$launchWhenStarted$1> fVar) {
        super(2, fVar);
        this.this$0 = lifecycleCoroutineScope;
        this.$block = pVar;
    }

    @Override
    public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
        return new LifecycleCoroutineScope$launchWhenStarted$1(this.this$0, this.$block, fVar);
    }

    @Override
    public final Object invoke(S s10, yf.f<? super P0> fVar) {
        return ((LifecycleCoroutineScope$launchWhenStarted$1) create(s10, fVar)).invokeSuspend(P0.f98194a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object l10 = Af.d.l();
        int i10 = this.label;
        if (i10 == 0) {
            C14418j0.n(obj);
            Lifecycle lifecycle$lifecycle_runtime_ktx_release = this.this$0.getLifecycle$lifecycle_runtime_ktx_release();
            p<S, yf.f<? super P0>, Object> pVar = this.$block;
            this.label = 1;
            if (PausingDispatcherKt.whenStarted(lifecycle$lifecycle_runtime_ktx_release, pVar, this) == l10) {
                return l10;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C14418j0.n(obj);
        }
        return P0.f98194a;
    }
}
