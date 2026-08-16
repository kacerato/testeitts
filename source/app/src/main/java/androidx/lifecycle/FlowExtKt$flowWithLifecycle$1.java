package androidx.lifecycle;

import Bf.f;
import Bf.q;
import Mf.p;
import androidx.lifecycle.Lifecycle;
import eg.S;
import gg.E;
import gg.InterfaceC13358B;
import jg.InterfaceC13842i;
import jg.InterfaceC13843j;
import nf.C14418j0;
import nf.P0;

@f(c = "androidx.lifecycle.FlowExtKt$flowWithLifecycle$1", f = "FlowExt.kt", i = {0}, l = {91}, m = "invokeSuspend", n = {"$this$callbackFlow"}, s = {"L$0"})
public final class FlowExtKt$flowWithLifecycle$1<T> extends q implements p<InterfaceC13358B<? super T>, yf.f<? super P0>, Object> {
    final Lifecycle $lifecycle;
    final Lifecycle.State $minActiveState;
    final InterfaceC13842i<T> $this_flowWithLifecycle;
    private Object L$0;
    int label;

    @f(c = "androidx.lifecycle.FlowExtKt$flowWithLifecycle$1$1", f = "FlowExt.kt", i = {}, l = {92}, m = "invokeSuspend", n = {}, s = {})
    public static final class AnonymousClass1 extends q implements p<S, yf.f<? super P0>, Object> {
        final InterfaceC13358B<T> $$this$callbackFlow;
        final InterfaceC13842i<T> $this_flowWithLifecycle;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(InterfaceC13842i<? extends T> interfaceC13842i, InterfaceC13358B<? super T> interfaceC13358B, yf.f<? super AnonymousClass1> fVar) {
            super(2, fVar);
            this.$this_flowWithLifecycle = interfaceC13842i;
            this.$$this$callbackFlow = interfaceC13358B;
        }

        @Override
        public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
            return new AnonymousClass1(this.$this_flowWithLifecycle, this.$$this$callbackFlow, fVar);
        }

        @Override
        public final Object invoke(S s10, yf.f<? super P0> fVar) {
            return ((AnonymousClass1) create(s10, fVar)).invokeSuspend(P0.f98194a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object l10 = Af.d.l();
            int i10 = this.label;
            if (i10 == 0) {
                C14418j0.n(obj);
                InterfaceC13842i<T> interfaceC13842i = this.$this_flowWithLifecycle;
                final InterfaceC13358B<T> interfaceC13358B = this.$$this$callbackFlow;
                InterfaceC13843j<? super T> interfaceC13843j = new InterfaceC13843j() {
                    @Override
                    public final Object emit(T t10, yf.f<? super P0> fVar) {
                        Object M10 = interfaceC13358B.M(t10, fVar);
                        return M10 == Af.d.l() ? M10 : P0.f98194a;
                    }
                };
                this.label = 1;
                if (interfaceC13842i.a(interfaceC13843j, this) == l10) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowExtKt$flowWithLifecycle$1(Lifecycle lifecycle, Lifecycle.State state, InterfaceC13842i<? extends T> interfaceC13842i, yf.f<? super FlowExtKt$flowWithLifecycle$1> fVar) {
        super(2, fVar);
        this.$lifecycle = lifecycle;
        this.$minActiveState = state;
        this.$this_flowWithLifecycle = interfaceC13842i;
    }

    @Override
    public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
        FlowExtKt$flowWithLifecycle$1 flowExtKt$flowWithLifecycle$1 = new FlowExtKt$flowWithLifecycle$1(this.$lifecycle, this.$minActiveState, this.$this_flowWithLifecycle, fVar);
        flowExtKt$flowWithLifecycle$1.L$0 = obj;
        return flowExtKt$flowWithLifecycle$1;
    }

    @Override
    public final Object invoke(InterfaceC13358B<? super T> interfaceC13358B, yf.f<? super P0> fVar) {
        return ((FlowExtKt$flowWithLifecycle$1) create(interfaceC13358B, fVar)).invokeSuspend(P0.f98194a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        InterfaceC13358B interfaceC13358B;
        Object l10 = Af.d.l();
        int i10 = this.label;
        if (i10 == 0) {
            C14418j0.n(obj);
            InterfaceC13358B interfaceC13358B2 = (InterfaceC13358B) this.L$0;
            Lifecycle lifecycle = this.$lifecycle;
            Lifecycle.State state = this.$minActiveState;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_flowWithLifecycle, interfaceC13358B2, null);
            this.L$0 = interfaceC13358B2;
            this.label = 1;
            if (RepeatOnLifecycleKt.repeatOnLifecycle(lifecycle, state, anonymousClass1, this) == l10) {
                return l10;
            }
            interfaceC13358B = interfaceC13358B2;
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            interfaceC13358B = (InterfaceC13358B) this.L$0;
            C14418j0.n(obj);
        }
        E.a.a(interfaceC13358B, null, 1, null);
        return P0.f98194a;
    }
}
