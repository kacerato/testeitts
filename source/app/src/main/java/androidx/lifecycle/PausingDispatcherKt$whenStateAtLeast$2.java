package androidx.lifecycle;

import Bf.f;
import Bf.q;
import Mf.p;
import androidx.lifecycle.Lifecycle;
import eg.C13119i;
import eg.K0;
import eg.S;
import nf.C14418j0;
import nf.P0;

@f(c = "androidx.lifecycle.PausingDispatcherKt$whenStateAtLeast$2", f = "PausingDispatcher.kt", i = {0}, l = {162}, m = "invokeSuspend", n = {"controller"}, s = {"L$0"})
public final class PausingDispatcherKt$whenStateAtLeast$2<T> extends q implements p<S, yf.f<? super T>, Object> {
    final p<S, yf.f<? super T>, Object> $block;
    final Lifecycle.State $minState;
    final Lifecycle $this_whenStateAtLeast;
    private Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public PausingDispatcherKt$whenStateAtLeast$2(Lifecycle lifecycle, Lifecycle.State state, p<? super S, ? super yf.f<? super T>, ? extends Object> pVar, yf.f<? super PausingDispatcherKt$whenStateAtLeast$2> fVar) {
        super(2, fVar);
        this.$this_whenStateAtLeast = lifecycle;
        this.$minState = state;
        this.$block = pVar;
    }

    @Override
    public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
        PausingDispatcherKt$whenStateAtLeast$2 pausingDispatcherKt$whenStateAtLeast$2 = new PausingDispatcherKt$whenStateAtLeast$2(this.$this_whenStateAtLeast, this.$minState, this.$block, fVar);
        pausingDispatcherKt$whenStateAtLeast$2.L$0 = obj;
        return pausingDispatcherKt$whenStateAtLeast$2;
    }

    @Override
    public final Object invoke(S s10, yf.f<? super T> fVar) {
        return ((PausingDispatcherKt$whenStateAtLeast$2) create(s10, fVar)).invokeSuspend(P0.f98194a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        LifecycleController lifecycleController;
        Object l10 = Af.d.l();
        int i10 = this.label;
        if (i10 == 0) {
            C14418j0.n(obj);
            K0 k02 = (K0) ((S) this.L$0).getCoroutineContext().get(K0.f85619y4);
            if (k02 == null) {
                throw new IllegalStateException("when[State] methods should have a parent job");
            }
            PausingDispatcher pausingDispatcher = new PausingDispatcher();
            LifecycleController lifecycleController2 = new LifecycleController(this.$this_whenStateAtLeast, this.$minState, pausingDispatcher.dispatchQueue, k02);
            try {
                p<S, yf.f<? super T>, Object> pVar = this.$block;
                this.L$0 = lifecycleController2;
                this.label = 1;
                obj = C13119i.h(pausingDispatcher, pVar, this);
                if (obj == l10) {
                    return l10;
                }
                lifecycleController = lifecycleController2;
            } catch (Throwable th2) {
                th = th2;
                lifecycleController = lifecycleController2;
                lifecycleController.finish();
                throw th;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            lifecycleController = (LifecycleController) this.L$0;
            try {
                C14418j0.n(obj);
            } catch (Throwable th3) {
                th = th3;
                lifecycleController.finish();
                throw th;
            }
        }
        lifecycleController.finish();
        return obj;
    }
}
