package eg;

import mg.C14251l;
import nf.C14416i0;
import nf.C14418j0;
import org.jetbrains.annotations.NotNull;

@kotlin.jvm.internal.t0({"SMAP\nDebugStrings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugStrings.kt\nkotlinx/coroutines/DebugStringsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,22:1\n1#2:23\n*E\n"})
public final class W {
    @NotNull
    public static final String a(@NotNull Object obj) {
        return obj.getClass().getSimpleName();
    }

    @NotNull
    public static final String b(@NotNull Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    @NotNull
    public static final String c(@NotNull yf.f<?> fVar) {
        Object b10;
        if (fVar instanceof C14251l) {
            return fVar.toString();
        }
        try {
            C14416i0.a aVar = C14416i0.f98201c;
            b10 = C14416i0.b(((Object) fVar) + '@' + b(fVar));
        } catch (Throwable th2) {
            C14416i0.a aVar2 = C14416i0.f98201c;
            b10 = C14416i0.b(C14418j0.a(th2));
        }
        if (C14416i0.e(b10) != null) {
            b10 = fVar.getClass().getName() + '@' + b(fVar);
        }
        return (String) b10;
    }
}
