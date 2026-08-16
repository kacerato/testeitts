package fg;

import Mf.l;
import Vf.u;
import android.os.Handler;
import android.os.Looper;
import eg.C13122j0;
import eg.InterfaceC13106b0;
import eg.InterfaceC13128m0;
import eg.InterfaceC13133p;
import eg.N0;
import eg.Y0;
import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;
import kotlin.jvm.internal.t0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.j;

@t0({"SMAP\nHandlerDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerContext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Runnable.kt\nkotlinx/coroutines/RunnableKt\n*L\n1#1,217:1\n1#2:218\n17#3:219\n*S KotlinDebug\n*F\n+ 1 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerContext\n*L\n147#1:219\n*E\n"})
public final class C13220d extends AbstractC13221e implements InterfaceC13106b0 {

    @Nullable
    private volatile C13220d _immediate;

    @NotNull
    public final Handler f86369b;

    @Nullable
    public final String f86370c;

    public final boolean f86371d;

    @NotNull
    public final C13220d f86372e;

    @t0({"SMAP\nRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runnable.kt\nkotlinx/coroutines/RunnableKt$Runnable$1\n+ 2 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerContext\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,18:1\n148#2:19\n149#2:21\n1#3:20\n*E\n"})
    public static final class a implements Runnable {

        public final InterfaceC13133p f86373b;

        public final C13220d f86374c;

        public a(InterfaceC13133p interfaceC13133p, C13220d c13220d) {
            this.f86373b = interfaceC13133p;
            this.f86374c = c13220d;
        }

        @Override
        public final void run() {
            this.f86373b.x(this.f86374c, P0.f98194a);
        }
    }

    public static final class b extends O implements l<Throwable, P0> {

        public final Runnable f86376c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Runnable runnable) {
            super(1);
            this.f86376c = runnable;
        }

        @Override
        public P0 invoke(Throwable th2) {
            invoke2(th2);
            return P0.f98194a;
        }

        public final void invoke2(@Nullable Throwable th2) {
            C13220d.this.f86369b.removeCallbacks(this.f86376c);
        }
    }

    public C13220d(Handler handler, String str, boolean z10) {
        super(null);
        this.f86369b = handler;
        this.f86370c = str;
        this.f86371d = z10;
        this._immediate = z10 ? this : null;
        C13220d c13220d = this._immediate;
        if (c13220d == null) {
            c13220d = new C13220d(handler, str, true);
            this._immediate = c13220d;
        }
        this.f86372e = c13220d;
    }

    public static final void d0(C13220d c13220d, Runnable runnable) {
        c13220d.f86369b.removeCallbacks(runnable);
    }

    public final void A(j jVar, Runnable runnable) {
        N0.g(jVar, new CancellationException("The task was rejected, the handler underlying the dispatcher '" + ((Object) this) + "' was closed"));
        C13122j0.c().dispatch(jVar, runnable);
    }

    @Override
    @NotNull
    public C13220d u() {
        return this.f86372e;
    }

    @Override
    public void dispatch(@NotNull j jVar, @NotNull Runnable runnable) {
        if (this.f86369b.post(runnable)) {
            return;
        }
        A(jVar, runnable);
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof C13220d) && ((C13220d) obj).f86369b == this.f86369b;
    }

    public int hashCode() {
        return System.identityHashCode(this.f86369b);
    }

    @Override
    public boolean isDispatchNeeded(@NotNull j jVar) {
        return (this.f86371d && M.g(Looper.myLooper(), this.f86369b.getLooper())) ? false : true;
    }

    @Override
    @NotNull
    public InterfaceC13128m0 m(long j10, @NotNull final Runnable runnable, @NotNull j jVar) {
        if (this.f86369b.postDelayed(runnable, u.E(j10, 4611686018427387903L))) {
            return new InterfaceC13128m0() {
                @Override
                public final void dispose() {
                    C13220d.d0(C13220d.this, runnable);
                }
            };
        }
        A(jVar, runnable);
        return Y0.f85696b;
    }

    @Override
    public void o(long j10, @NotNull InterfaceC13133p<? super P0> interfaceC13133p) {
        a aVar = new a(interfaceC13133p, this);
        if (this.f86369b.postDelayed(aVar, u.E(j10, 4611686018427387903L))) {
            interfaceC13133p.K(new b(aVar));
        } else {
            A(interfaceC13133p.getContext(), aVar);
        }
    }

    @Override
    @NotNull
    public String toString() {
        String t10 = t();
        if (t10 != null) {
            return t10;
        }
        String str = this.f86370c;
        if (str == null) {
            str = this.f86369b.toString();
        }
        if (!this.f86371d) {
            return str;
        }
        return str + ".immediate";
    }

    public C13220d(Handler handler, String str, int i10, C14026x c14026x) {
        this(handler, (i10 & 2) != 0 ? null : str);
    }

    public C13220d(@NotNull Handler handler, @Nullable String str) {
        this(handler, str, false);
    }
}
