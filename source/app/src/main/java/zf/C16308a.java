package zf;

import Ef.f;
import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14422l0;

@t0({"SMAP\nCancellationException.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellationException.kt\nkotlin/coroutines/cancellation/CancellationExceptionKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,22:1\n1#2:23\n*E\n"})
public final class C16308a {
    @f
    @InterfaceC14422l0(version = "1.4")
    public static final CancellationException a(String str, Throwable th2) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th2);
        return cancellationException;
    }

    @f
    @InterfaceC14422l0(version = "1.4")
    public static final CancellationException b(Throwable th2) {
        CancellationException cancellationException = new CancellationException(th2 != null ? String.valueOf(th2) : null);
        cancellationException.initCause(th2);
        return cancellationException;
    }

    @InterfaceC14422l0(version = "1.4")
    public static void c() {
    }
}
