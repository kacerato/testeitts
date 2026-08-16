package mg;

import eg.F0;
import eg.V0;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nMainDispatchers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainDispatchers.kt\nkotlinx/coroutines/internal/MainDispatchersKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,134:1\n1#2:135\n*E\n"})
public final class E {

    @NotNull
    public static final String f97018a = "kotlinx.coroutines.fast.service.loader";

    public static final boolean f97019b = false;

    public static final F a(Throwable th2, String str) {
        if (th2 != null) {
            throw th2;
        }
        e();
        throw new KotlinNothingValueException();
    }

    public static F b(Throwable th2, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            th2 = null;
        }
        if ((i10 & 2) != 0) {
            str = null;
        }
        return a(th2, str);
    }

    public static void c() {
    }

    @F0
    public static final boolean d(@NotNull V0 v02) {
        return v02.s() instanceof F;
    }

    @NotNull
    public static final Void e() {
        throw new IllegalStateException("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
    }

    @F0
    @NotNull
    public static final V0 f(@NotNull C c10, @NotNull List<? extends C> list) {
        try {
            return c10.c(list);
        } catch (Throwable th2) {
            return a(th2, c10.b());
        }
    }
}
