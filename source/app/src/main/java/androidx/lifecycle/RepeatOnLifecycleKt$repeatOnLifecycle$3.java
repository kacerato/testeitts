package androidx.lifecycle;

import Bf.f;
import Bf.h;
import Bf.q;
import Mf.p;
import androidx.lifecycle.Lifecycle;
import eg.C13119i;
import eg.C13122j0;
import eg.C13123k;
import eg.C13135q;
import eg.InterfaceC13133p;
import eg.K0;
import eg.S;
import eg.T;
import eg.V0;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.m0;
import nf.C14416i0;
import nf.C14418j0;
import nf.P0;
import rg.C15177c;
import rg.InterfaceC15175a;

@f(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3", f = "RepeatOnLifecycle.kt", i = {}, l = {84}, m = "invokeSuspend", n = {}, s = {})
public final class RepeatOnLifecycleKt$repeatOnLifecycle$3 extends q implements p<S, yf.f<? super P0>, Object> {
    final p<S, yf.f<? super P0>, Object> $block;
    final Lifecycle.State $state;
    final Lifecycle $this_repeatOnLifecycle;
    private Object L$0;
    int label;

    @f(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1", f = "RepeatOnLifecycle.kt", i = {0, 0}, l = {166}, m = "invokeSuspend", n = {"launchedJob", "observer"}, s = {"L$0", "L$1"})
    public static final class AnonymousClass1 extends q implements p<S, yf.f<? super P0>, Object> {
        final S $$this$coroutineScope;
        final p<S, yf.f<? super P0>, Object> $block;
        final Lifecycle.State $state;
        final Lifecycle $this_repeatOnLifecycle;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(Lifecycle lifecycle, Lifecycle.State state, S s10, p<? super S, ? super yf.f<? super P0>, ? extends Object> pVar, yf.f<? super AnonymousClass1> fVar) {
            super(2, fVar);
            this.$this_repeatOnLifecycle = lifecycle;
            this.$state = state;
            this.$$this$coroutineScope = s10;
            this.$block = pVar;
        }

        @Override
        public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
            return new AnonymousClass1(this.$this_repeatOnLifecycle, this.$state, this.$$this$coroutineScope, this.$block, fVar);
        }

        @Override
        public final Object invoke(S s10, yf.f<? super P0> fVar) {
            return ((AnonymousClass1) create(s10, fVar)).invokeSuspend(P0.f98194a);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x00c7  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00d1  */
        /* JADX WARN: Type inference failed for: r10v0, types: [androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1, T] */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            m0.h hVar;
            m0.h hVar2;
            K0 k02;
            LifecycleEventObserver lifecycleEventObserver;
            Object l10 = Af.d.l();
            int i10 = this.label;
            if (i10 == 0) {
                C14418j0.n(obj);
                if (this.$this_repeatOnLifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
                    return P0.f98194a;
                }
                final m0.h hVar3 = new m0.h();
                m0.h hVar4 = new m0.h();
                try {
                    Lifecycle.State state = this.$state;
                    Lifecycle lifecycle = this.$this_repeatOnLifecycle;
                    final S s10 = this.$$this$coroutineScope;
                    final p<S, yf.f<? super P0>, Object> pVar = this.$block;
                    this.L$0 = hVar3;
                    this.L$1 = hVar4;
                    this.L$2 = state;
                    this.L$3 = lifecycle;
                    this.L$4 = s10;
                    this.L$5 = pVar;
                    this.label = 1;
                    final C13135q c13135q = new C13135q(Af.c.e(this), 1);
                    c13135q.O();
                    final Lifecycle.Event upTo = Lifecycle.Event.upTo(state);
                    final Lifecycle.Event downFrom = Lifecycle.Event.downFrom(state);
                    final InterfaceC15175a b10 = C15177c.b(false, 1, null);
                    ?? r10 = new LifecycleEventObserver() {

                        @f(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1", f = "RepeatOnLifecycle.kt", i = {0, 1}, l = {171, 110}, m = "invokeSuspend", n = {"$this$withLock_u24default$iv", "$this$withLock_u24default$iv"}, s = {"L$0", "L$0"})
                        public static final class AnonymousClass1 extends q implements p<S, yf.f<? super P0>, Object> {
                            final p<S, yf.f<? super P0>, Object> $block;
                            final InterfaceC15175a $mutex;
                            Object L$0;
                            Object L$1;
                            int label;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            public AnonymousClass1(InterfaceC15175a interfaceC15175a, p<? super S, ? super yf.f<? super P0>, ? extends Object> pVar, yf.f<? super AnonymousClass1> fVar) {
                                super(2, fVar);
                                this.$mutex = interfaceC15175a;
                                this.$block = pVar;
                            }

                            @Override
                            public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
                                return new AnonymousClass1(this.$mutex, this.$block, fVar);
                            }

                            @Override
                            public final Object invoke(S s10, yf.f<? super P0> fVar) {
                                return ((AnonymousClass1) create(s10, fVar)).invokeSuspend(P0.f98194a);
                            }

                            @Override
                            public final Object invokeSuspend(Object obj) {
                                InterfaceC15175a interfaceC15175a;
                                p<S, yf.f<? super P0>, Object> pVar;
                                InterfaceC15175a interfaceC15175a2;
                                Throwable th2;
                                Object l10 = Af.d.l();
                                int i10 = this.label;
                                try {
                                    if (i10 == 0) {
                                        C14418j0.n(obj);
                                        interfaceC15175a = this.$mutex;
                                        pVar = this.$block;
                                        this.L$0 = interfaceC15175a;
                                        this.L$1 = pVar;
                                        this.label = 1;
                                        if (interfaceC15175a.h(null, this) == l10) {
                                            return l10;
                                        }
                                    } else {
                                        if (i10 != 1) {
                                            if (i10 != 2) {
                                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                            }
                                            interfaceC15175a2 = (InterfaceC15175a) this.L$0;
                                            try {
                                                C14418j0.n(obj);
                                                P0 p02 = P0.f98194a;
                                                interfaceC15175a2.i(null);
                                                return p02;
                                            } catch (Throwable th3) {
                                                th2 = th3;
                                                interfaceC15175a2.i(null);
                                                throw th2;
                                            }
                                        }
                                        pVar = (p) this.L$1;
                                        InterfaceC15175a interfaceC15175a3 = (InterfaceC15175a) this.L$0;
                                        C14418j0.n(obj);
                                        interfaceC15175a = interfaceC15175a3;
                                    }
                                    RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1 repeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1 = new RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1(pVar, null);
                                    this.L$0 = interfaceC15175a;
                                    this.L$1 = null;
                                    this.label = 2;
                                    if (T.g(repeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1, this) == l10) {
                                        return l10;
                                    }
                                    interfaceC15175a2 = interfaceC15175a;
                                    P0 p022 = P0.f98194a;
                                    interfaceC15175a2.i(null);
                                    return p022;
                                } catch (Throwable th4) {
                                    interfaceC15175a2 = interfaceC15175a;
                                    th2 = th4;
                                    interfaceC15175a2.i(null);
                                    throw th2;
                                }
                            }
                        }

                        /* JADX WARN: Type inference failed for: r9v5, types: [T, eg.K0] */
                        @Override
                        public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                            ?? f10;
                            M.p(lifecycleOwner, "<anonymous parameter 0>");
                            M.p(event, "event");
                            if (event == Lifecycle.Event.this) {
                                m0.h<K0> hVar5 = hVar3;
                                f10 = C13123k.f(s10, null, null, new AnonymousClass1(b10, pVar, null), 3, null);
                                hVar5.f95754b = f10;
                                return;
                            }
                            if (event == downFrom) {
                                K0 k03 = hVar3.f95754b;
                                if (k03 != null) {
                                    K0.a.b(k03, null, 1, null);
                                }
                                hVar3.f95754b = null;
                            }
                            if (event == Lifecycle.Event.ON_DESTROY) {
                                InterfaceC13133p<P0> interfaceC13133p = c13135q;
                                C14416i0.a aVar = C14416i0.f98201c;
                                interfaceC13133p.resumeWith(C14416i0.b(P0.f98194a));
                            }
                        }
                    };
                    hVar4.f95754b = r10;
                    lifecycle.addObserver((LifecycleEventObserver) r10);
                    Object D10 = c13135q.D();
                    if (D10 == Af.d.l()) {
                        h.c(this);
                    }
                    if (D10 == l10) {
                        return l10;
                    }
                    hVar = hVar3;
                    hVar2 = hVar4;
                } catch (Throwable th2) {
                    th = th2;
                    hVar = hVar3;
                    hVar2 = hVar4;
                    k02 = (K0) hVar.f95754b;
                    if (k02 != null) {
                        K0.a.b(k02, null, 1, null);
                    }
                    lifecycleEventObserver = (LifecycleEventObserver) hVar2.f95754b;
                    if (lifecycleEventObserver != null) {
                        this.$this_repeatOnLifecycle.removeObserver(lifecycleEventObserver);
                    }
                    throw th;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                hVar2 = (m0.h) this.L$1;
                hVar = (m0.h) this.L$0;
                try {
                    C14418j0.n(obj);
                } catch (Throwable th3) {
                    th = th3;
                    k02 = (K0) hVar.f95754b;
                    if (k02 != null) {
                    }
                    lifecycleEventObserver = (LifecycleEventObserver) hVar2.f95754b;
                    if (lifecycleEventObserver != null) {
                    }
                    throw th;
                }
            }
            K0 k03 = (K0) hVar.f95754b;
            if (k03 != null) {
                K0.a.b(k03, null, 1, null);
            }
            LifecycleEventObserver lifecycleEventObserver2 = (LifecycleEventObserver) hVar2.f95754b;
            if (lifecycleEventObserver2 != null) {
                this.$this_repeatOnLifecycle.removeObserver(lifecycleEventObserver2);
            }
            return P0.f98194a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RepeatOnLifecycleKt$repeatOnLifecycle$3(Lifecycle lifecycle, Lifecycle.State state, p<? super S, ? super yf.f<? super P0>, ? extends Object> pVar, yf.f<? super RepeatOnLifecycleKt$repeatOnLifecycle$3> fVar) {
        super(2, fVar);
        this.$this_repeatOnLifecycle = lifecycle;
        this.$state = state;
        this.$block = pVar;
    }

    @Override
    public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
        RepeatOnLifecycleKt$repeatOnLifecycle$3 repeatOnLifecycleKt$repeatOnLifecycle$3 = new RepeatOnLifecycleKt$repeatOnLifecycle$3(this.$this_repeatOnLifecycle, this.$state, this.$block, fVar);
        repeatOnLifecycleKt$repeatOnLifecycle$3.L$0 = obj;
        return repeatOnLifecycleKt$repeatOnLifecycle$3;
    }

    @Override
    public final Object invoke(S s10, yf.f<? super P0> fVar) {
        return ((RepeatOnLifecycleKt$repeatOnLifecycle$3) create(s10, fVar)).invokeSuspend(P0.f98194a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object l10 = Af.d.l();
        int i10 = this.label;
        if (i10 == 0) {
            C14418j0.n(obj);
            S s10 = (S) this.L$0;
            V0 u10 = C13122j0.e().u();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_repeatOnLifecycle, this.$state, s10, this.$block, null);
            this.label = 1;
            if (C13119i.h(u10, anonymousClass1, this) == l10) {
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
