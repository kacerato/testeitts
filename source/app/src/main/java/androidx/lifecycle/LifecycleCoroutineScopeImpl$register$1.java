package androidx.lifecycle;

import Bf.f;
import Bf.q;
import Mf.p;
import androidx.lifecycle.Lifecycle;
import eg.S;
import nf.C14418j0;
import nf.P0;

@f(c = "androidx.lifecycle.LifecycleCoroutineScopeImpl$register$1", f = "Lifecycle.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
public final class LifecycleCoroutineScopeImpl$register$1 extends q implements p<S, yf.f<? super P0>, Object> {
    private Object L$0;
    int label;
    final LifecycleCoroutineScopeImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LifecycleCoroutineScopeImpl$register$1(LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl, yf.f<? super LifecycleCoroutineScopeImpl$register$1> fVar) {
        super(2, fVar);
        this.this$0 = lifecycleCoroutineScopeImpl;
    }

    @Override
    public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
        LifecycleCoroutineScopeImpl$register$1 lifecycleCoroutineScopeImpl$register$1 = new LifecycleCoroutineScopeImpl$register$1(this.this$0, fVar);
        lifecycleCoroutineScopeImpl$register$1.L$0 = obj;
        return lifecycleCoroutineScopeImpl$register$1;
    }

    @Override
    public final Object invoke(S s10, yf.f<? super P0> fVar) {
        return ((LifecycleCoroutineScopeImpl$register$1) create(s10, fVar)).invokeSuspend(P0.f98194a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Af.d.l();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        C14418j0.n(obj);
        S s10 = (S) this.L$0;
        if (this.this$0.getLifecycle$lifecycle_runtime_ktx_release().getCurrentState().compareTo(Lifecycle.State.INITIALIZED) >= 0) {
            this.this$0.getLifecycle$lifecycle_runtime_ktx_release().addObserver(this.this$0);
        } else {
            eg.P0.j(s10.getCoroutineContext(), null, 1, null);
        }
        return P0.f98194a;
    }
}
