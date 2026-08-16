package androidx.lifecycle;

import Bf.f;
import Bf.q;
import Mf.p;
import eg.S;
import nf.C14418j0;
import nf.P0;

@f(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1", f = "RepeatOnLifecycle.kt", i = {}, l = {111}, m = "invokeSuspend", n = {}, s = {})
public final class RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1 extends q implements p<S, yf.f<? super P0>, Object> {
    final p<S, yf.f<? super P0>, Object> $block;
    private Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1(p<? super S, ? super yf.f<? super P0>, ? extends Object> pVar, yf.f<? super RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1> fVar) {
        super(2, fVar);
        this.$block = pVar;
    }

    @Override
    public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
        RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1 repeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1 = new RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1(this.$block, fVar);
        repeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1.L$0 = obj;
        return repeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1;
    }

    @Override
    public final Object invoke(S s10, yf.f<? super P0> fVar) {
        return ((RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1) create(s10, fVar)).invokeSuspend(P0.f98194a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object l10 = Af.d.l();
        int i10 = this.label;
        if (i10 == 0) {
            C14418j0.n(obj);
            S s10 = (S) this.L$0;
            p<S, yf.f<? super P0>, Object> pVar = this.$block;
            this.label = 1;
            if (pVar.invoke(s10, this) == l10) {
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
