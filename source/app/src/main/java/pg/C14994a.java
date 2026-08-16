package pg;

import eg.C13108c0;
import kotlin.jvm.internal.I;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import kotlin.jvm.internal.w0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nOnTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnTimeout.kt\nkotlinx/coroutines/selects/OnTimeout\n+ 2 Runnable.kt\nkotlinx/coroutines/RunnableKt\n*L\n1#1,66:1\n17#2:67\n*S KotlinDebug\n*F\n+ 1 OnTimeout.kt\nkotlinx/coroutines/selects/OnTimeout\n*L\n56#1:67\n*E\n"})
public final class C14994a {

    public final long f103909a;

    @t0({"SMAP\nRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runnable.kt\nkotlinx/coroutines/RunnableKt$Runnable$1\n+ 2 OnTimeout.kt\nkotlinx/coroutines/selects/OnTimeout\n*L\n1#1,18:1\n57#2,2:19\n*E\n"})
    public static final class RunnableC1953a implements Runnable {

        public final m f103910b;

        public final C14994a f103911c;

        public RunnableC1953a(m mVar, C14994a c14994a) {
            this.f103910b = mVar;
            this.f103911c = c14994a;
        }

        @Override
        public final void run() {
            this.f103910b.x(this.f103911c, P0.f98194a);
        }
    }

    public class b extends I implements Mf.q<C14994a, m<?>, Object, P0> {

        public static final b f103912b = new b();

        public b() {
            super(3, C14994a.class, "register", "register(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
        }

        public final void b(@NotNull C14994a c14994a, @NotNull m<?> mVar, @Nullable Object obj) {
            c14994a.d(mVar, obj);
        }

        @Override
        public P0 n(C14994a c14994a, m<?> mVar, Object obj) {
            b(c14994a, mVar, obj);
            return P0.f98194a;
        }
    }

    public C14994a(long j10) {
        this.f103909a = j10;
    }

    public static void c() {
    }

    @NotNull
    public final InterfaceC14998e b() {
        b bVar = b.f103912b;
        M.n(bVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        return new C14999f(this, (Mf.q) w0.q(bVar, 3), null, 4, null);
    }

    public final void d(m<?> mVar, Object obj) {
        if (this.f103909a <= 0) {
            mVar.w(P0.f98194a);
            return;
        }
        RunnableC1953a runnableC1953a = new RunnableC1953a(mVar, this);
        M.n(mVar, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>");
        yf.j context = mVar.getContext();
        mVar.o(C13108c0.d(context).m(this.f103909a, runnableC1953a, context));
    }
}
