package androidx.lifecycle;

import Bf.h;
import androidx.lifecycle.Lifecycle;
import eg.AbstractC13100M;
import eg.C13122j0;
import eg.C13135q;
import eg.V0;
import kotlin.jvm.internal.J;
import kotlin.jvm.internal.M;
import nf.C14416i0;
import nf.C14418j0;
import yf.f;
import yf.l;

public final class WithLifecycleStateKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.lifecycle.WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1, androidx.lifecycle.LifecycleObserver] */
    public static final <R> Object suspendWithStateAtLeastUnchecked(final Lifecycle lifecycle, final Lifecycle.State state, boolean z10, AbstractC13100M abstractC13100M, final Mf.a<? extends R> aVar, f<? super R> fVar) {
        final C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
        c13135q.O();
        final ?? r12 = new LifecycleEventObserver() {
            @Override
            public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
                Object b10;
                M.p(source, "source");
                M.p(event, "event");
                if (event != Lifecycle.Event.upTo(Lifecycle.State.this)) {
                    if (event == Lifecycle.Event.ON_DESTROY) {
                        lifecycle.removeObserver(this);
                        f fVar2 = c13135q;
                        C14416i0.a aVar2 = C14416i0.f98201c;
                        fVar2.resumeWith(C14416i0.b(C14418j0.a(new LifecycleDestroyedException())));
                        return;
                    }
                    return;
                }
                lifecycle.removeObserver(this);
                f fVar3 = c13135q;
                Mf.a<R> aVar3 = aVar;
                try {
                    C14416i0.a aVar4 = C14416i0.f98201c;
                    b10 = C14416i0.b(aVar3.invoke());
                } catch (Throwable th2) {
                    C14416i0.a aVar5 = C14416i0.f98201c;
                    b10 = C14416i0.b(C14418j0.a(th2));
                }
                fVar3.resumeWith(b10);
            }
        };
        if (z10) {
            abstractC13100M.dispatch(l.f130251b, new Runnable() {
                @Override
                public final void run() {
                    Lifecycle.this.addObserver(r12);
                }
            });
        } else {
            lifecycle.addObserver(r12);
        }
        c13135q.K(new WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$2(abstractC13100M, lifecycle, r12));
        Object D10 = c13135q.D();
        if (D10 == Af.d.l()) {
            h.c(fVar);
        }
        return D10;
    }

    public static final <R> Object withCreated(Lifecycle lifecycle, Mf.a<? extends R> aVar, f<? super R> fVar) {
        Lifecycle.State state = Lifecycle.State.CREATED;
        V0 s10 = C13122j0.e().s();
        boolean isDispatchNeeded = s10.isDispatchNeeded(fVar.getContext());
        if (!isDispatchNeeded) {
            if (lifecycle.getCurrentState() != Lifecycle.State.DESTROYED) {
                if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                    return aVar.invoke();
                }
            } else {
                throw new LifecycleDestroyedException();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, isDispatchNeeded, s10, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(aVar), fVar);
    }

    private static final <R> Object withCreated$$forInline(Lifecycle lifecycle, Mf.a<? extends R> aVar, f<? super R> fVar) {
        Lifecycle.State state = Lifecycle.State.CREATED;
        C13122j0.e().s();
        J.e(3);
        throw null;
    }

    public static final <R> Object withResumed(Lifecycle lifecycle, Mf.a<? extends R> aVar, f<? super R> fVar) {
        Lifecycle.State state = Lifecycle.State.RESUMED;
        V0 s10 = C13122j0.e().s();
        boolean isDispatchNeeded = s10.isDispatchNeeded(fVar.getContext());
        if (!isDispatchNeeded) {
            if (lifecycle.getCurrentState() != Lifecycle.State.DESTROYED) {
                if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                    return aVar.invoke();
                }
            } else {
                throw new LifecycleDestroyedException();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, isDispatchNeeded, s10, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(aVar), fVar);
    }

    private static final <R> Object withResumed$$forInline(Lifecycle lifecycle, Mf.a<? extends R> aVar, f<? super R> fVar) {
        Lifecycle.State state = Lifecycle.State.RESUMED;
        C13122j0.e().s();
        J.e(3);
        throw null;
    }

    public static final <R> Object withStarted(Lifecycle lifecycle, Mf.a<? extends R> aVar, f<? super R> fVar) {
        Lifecycle.State state = Lifecycle.State.STARTED;
        V0 s10 = C13122j0.e().s();
        boolean isDispatchNeeded = s10.isDispatchNeeded(fVar.getContext());
        if (!isDispatchNeeded) {
            if (lifecycle.getCurrentState() != Lifecycle.State.DESTROYED) {
                if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                    return aVar.invoke();
                }
            } else {
                throw new LifecycleDestroyedException();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, isDispatchNeeded, s10, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(aVar), fVar);
    }

    private static final <R> Object withStarted$$forInline(Lifecycle lifecycle, Mf.a<? extends R> aVar, f<? super R> fVar) {
        Lifecycle.State state = Lifecycle.State.STARTED;
        C13122j0.e().s();
        J.e(3);
        throw null;
    }

    public static final <R> Object withStateAtLeast(Lifecycle lifecycle, Lifecycle.State state, Mf.a<? extends R> aVar, f<? super R> fVar) {
        if (state.compareTo(Lifecycle.State.CREATED) >= 0) {
            V0 s10 = C13122j0.e().s();
            boolean isDispatchNeeded = s10.isDispatchNeeded(fVar.getContext());
            if (!isDispatchNeeded) {
                if (lifecycle.getCurrentState() != Lifecycle.State.DESTROYED) {
                    if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                        return aVar.invoke();
                    }
                } else {
                    throw new LifecycleDestroyedException();
                }
            }
            return suspendWithStateAtLeastUnchecked(lifecycle, state, isDispatchNeeded, s10, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(aVar), fVar);
        }
        throw new IllegalArgumentException(("target state must be CREATED or greater, found " + ((Object) state)).toString());
    }

    private static final <R> Object withStateAtLeast$$forInline(Lifecycle lifecycle, Lifecycle.State state, Mf.a<? extends R> aVar, f<? super R> fVar) {
        if (state.compareTo(Lifecycle.State.CREATED) >= 0) {
            C13122j0.e().s();
            J.e(3);
            throw null;
        }
        throw new IllegalArgumentException(("target state must be CREATED or greater, found " + ((Object) state)).toString());
    }

    public static final <R> Object withStateAtLeastUnchecked(Lifecycle lifecycle, Lifecycle.State state, Mf.a<? extends R> aVar, f<? super R> fVar) {
        V0 s10 = C13122j0.e().s();
        boolean isDispatchNeeded = s10.isDispatchNeeded(fVar.getContext());
        if (!isDispatchNeeded) {
            if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
                throw new LifecycleDestroyedException();
            }
            if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                return aVar.invoke();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, isDispatchNeeded, s10, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(aVar), fVar);
    }

    private static final <R> Object withStateAtLeastUnchecked$$forInline(Lifecycle lifecycle, Lifecycle.State state, Mf.a<? extends R> aVar, f<? super R> fVar) {
        C13122j0.e().s();
        J.e(3);
        throw null;
    }

    private static final <R> Object withCreated$$forInline(LifecycleOwner lifecycleOwner, Mf.a<? extends R> aVar, f<? super R> fVar) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        M.o(lifecycle, "lifecycle");
        Lifecycle.State state = Lifecycle.State.CREATED;
        C13122j0.e().s();
        J.e(3);
        throw null;
    }

    private static final <R> Object withResumed$$forInline(LifecycleOwner lifecycleOwner, Mf.a<? extends R> aVar, f<? super R> fVar) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        M.o(lifecycle, "lifecycle");
        Lifecycle.State state = Lifecycle.State.RESUMED;
        C13122j0.e().s();
        J.e(3);
        throw null;
    }

    private static final <R> Object withStarted$$forInline(LifecycleOwner lifecycleOwner, Mf.a<? extends R> aVar, f<? super R> fVar) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        M.o(lifecycle, "lifecycle");
        Lifecycle.State state = Lifecycle.State.STARTED;
        C13122j0.e().s();
        J.e(3);
        throw null;
    }

    private static final <R> Object withStateAtLeast$$forInline(LifecycleOwner lifecycleOwner, Lifecycle.State state, Mf.a<? extends R> aVar, f<? super R> fVar) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        M.o(lifecycle, "lifecycle");
        if (state.compareTo(Lifecycle.State.CREATED) >= 0) {
            C13122j0.e().s();
            J.e(3);
            throw null;
        }
        throw new IllegalArgumentException(("target state must be CREATED or greater, found " + ((Object) state)).toString());
    }

    public static final <R> Object withCreated(LifecycleOwner lifecycleOwner, Mf.a<? extends R> aVar, f<? super R> fVar) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        M.o(lifecycle, "lifecycle");
        Lifecycle.State state = Lifecycle.State.CREATED;
        V0 s10 = C13122j0.e().s();
        boolean isDispatchNeeded = s10.isDispatchNeeded(fVar.getContext());
        if (!isDispatchNeeded) {
            if (lifecycle.getCurrentState() != Lifecycle.State.DESTROYED) {
                if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                    return aVar.invoke();
                }
            } else {
                throw new LifecycleDestroyedException();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, isDispatchNeeded, s10, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(aVar), fVar);
    }

    public static final <R> Object withResumed(LifecycleOwner lifecycleOwner, Mf.a<? extends R> aVar, f<? super R> fVar) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        M.o(lifecycle, "lifecycle");
        Lifecycle.State state = Lifecycle.State.RESUMED;
        V0 s10 = C13122j0.e().s();
        boolean isDispatchNeeded = s10.isDispatchNeeded(fVar.getContext());
        if (!isDispatchNeeded) {
            if (lifecycle.getCurrentState() != Lifecycle.State.DESTROYED) {
                if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                    return aVar.invoke();
                }
            } else {
                throw new LifecycleDestroyedException();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, isDispatchNeeded, s10, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(aVar), fVar);
    }

    public static final <R> Object withStarted(LifecycleOwner lifecycleOwner, Mf.a<? extends R> aVar, f<? super R> fVar) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        M.o(lifecycle, "lifecycle");
        Lifecycle.State state = Lifecycle.State.STARTED;
        V0 s10 = C13122j0.e().s();
        boolean isDispatchNeeded = s10.isDispatchNeeded(fVar.getContext());
        if (!isDispatchNeeded) {
            if (lifecycle.getCurrentState() != Lifecycle.State.DESTROYED) {
                if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                    return aVar.invoke();
                }
            } else {
                throw new LifecycleDestroyedException();
            }
        }
        return suspendWithStateAtLeastUnchecked(lifecycle, state, isDispatchNeeded, s10, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(aVar), fVar);
    }

    public static final <R> Object withStateAtLeast(LifecycleOwner lifecycleOwner, Lifecycle.State state, Mf.a<? extends R> aVar, f<? super R> fVar) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        M.o(lifecycle, "lifecycle");
        if (state.compareTo(Lifecycle.State.CREATED) >= 0) {
            V0 s10 = C13122j0.e().s();
            boolean isDispatchNeeded = s10.isDispatchNeeded(fVar.getContext());
            if (!isDispatchNeeded) {
                if (lifecycle.getCurrentState() != Lifecycle.State.DESTROYED) {
                    if (lifecycle.getCurrentState().compareTo(state) >= 0) {
                        return aVar.invoke();
                    }
                } else {
                    throw new LifecycleDestroyedException();
                }
            }
            return suspendWithStateAtLeastUnchecked(lifecycle, state, isDispatchNeeded, s10, new WithLifecycleStateKt$withStateAtLeastUnchecked$2(aVar), fVar);
        }
        throw new IllegalArgumentException(("target state must be CREATED or greater, found " + ((Object) state)).toString());
    }
}
