package fg;

import Bf.h;
import Lf.j;
import Lf.k;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import androidx.annotation.VisibleForTesting;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import eg.C13122j0;
import eg.C13135q;
import eg.InterfaceC13133p;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.C14416i0;
import nf.C14418j0;
import nf.EnumC14431q;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nHandlerDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerDispatcherKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 Runnable.kt\nkotlinx/coroutines/RunnableKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,217:1\n314#2,11:218\n314#2,9:229\n323#2,2:239\n17#3:238\n1#4:241\n*S KotlinDebug\n*F\n+ 1 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerDispatcherKt\n*L\n189#1:218,11\n197#1:229,9\n197#1:239,2\n201#1:238\n*E\n"})
public final class C13223g {

    public static final long f86378a = 4611686018427387903L;

    @Lf.g
    @Nullable
    public static final AbstractC13221e f86379b;

    @Nullable
    private static volatile Choreographer choreographer;

    @t0({"SMAP\nRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runnable.kt\nkotlinx/coroutines/RunnableKt$Runnable$1\n+ 2 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerDispatcherKt\n*L\n1#1,18:1\n202#2,2:19\n*E\n"})
    public static final class a implements Runnable {

        public final InterfaceC13133p f86380b;

        public a(InterfaceC13133p interfaceC13133p) {
            this.f86380b = interfaceC13133p;
        }

        @Override
        public final void run() {
            C13223g.n(this.f86380b);
        }
    }

    static {
        Object b10;
        try {
            C14416i0.a aVar = C14416i0.f98201c;
            b10 = C14416i0.b(new C13220d(e(Looper.getMainLooper(), true), null, 2, null));
        } catch (Throwable th2) {
            C14416i0.a aVar2 = C14416i0.f98201c;
            b10 = C14416i0.b(C14418j0.a(th2));
        }
        f86379b = (AbstractC13221e) (C14416i0.i(b10) ? null : b10);
    }

    @VisibleForTesting
    @NotNull
    public static final Handler e(@NotNull Looper looper, boolean z10) {
        if (!z10) {
            return new Handler(looper);
        }
        if (Build.VERSION.SDK_INT >= 28) {
            Object invoke = Handler.class.getDeclaredMethod("createAsync", Looper.class).invoke(null, looper);
            M.n(invoke, "null cannot be cast to non-null type android.os.Handler");
            return (Handler) invoke;
        }
        try {
            return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
        } catch (NoSuchMethodException unused) {
            return new Handler(looper);
        }
    }

    @Nullable
    public static final Object f(@NotNull yf.f<? super Long> fVar) {
        Choreographer choreographer2 = choreographer;
        if (choreographer2 == null) {
            return g(fVar);
        }
        C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
        c13135q.O();
        l(choreographer2, c13135q);
        Object D10 = c13135q.D();
        if (D10 == Af.d.l()) {
            h.c(fVar);
        }
        return D10;
    }

    public static final Object g(yf.f<? super Long> fVar) {
        C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
        c13135q.O();
        if (Looper.myLooper() == Looper.getMainLooper()) {
            n(c13135q);
        } else {
            C13122j0.e().dispatch(c13135q.getContext(), new a(c13135q));
        }
        Object D10 = c13135q.D();
        if (D10 == Af.d.l()) {
            h.c(fVar);
        }
        return D10;
    }

    @j(name = TypedValues.TransitionType.S_FROM)
    @k
    @NotNull
    public static final AbstractC13221e h(@NotNull Handler handler) {
        return j(handler, null, 1, null);
    }

    @j(name = TypedValues.TransitionType.S_FROM)
    @k
    @NotNull
    public static final AbstractC13221e i(@NotNull Handler handler, @Nullable String str) {
        return new C13220d(handler, str);
    }

    public static AbstractC13221e j(Handler handler, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        return i(handler, str);
    }

    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Use Dispatchers.Main instead")
    public static void k() {
    }

    public static final void l(Choreographer choreographer2, final InterfaceC13133p<? super Long> interfaceC13133p) {
        choreographer2.postFrameCallback(new Choreographer.FrameCallback() {
            @Override
            public final void doFrame(long j10) {
                C13223g.m(InterfaceC13133p.this, j10);
            }
        });
    }

    public static final void m(InterfaceC13133p interfaceC13133p, long j10) {
        interfaceC13133p.x(C13122j0.e(), Long.valueOf(j10));
    }

    public static final void n(InterfaceC13133p<? super Long> interfaceC13133p) {
        Choreographer choreographer2 = choreographer;
        if (choreographer2 == null) {
            choreographer2 = Choreographer.getInstance();
            M.m(choreographer2);
            choreographer = choreographer2;
        }
        l(choreographer2, interfaceC13133p);
    }
}
