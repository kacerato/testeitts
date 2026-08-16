package mg;

import eg.InterfaceC13101N;
import java.util.Iterator;
import kotlinx.coroutines.internal.DiagnosticCoroutineContextException;
import kotlinx.coroutines.internal.ExceptionSuccessfullyProcessed;
import nf.C14436t;
import org.jetbrains.annotations.NotNull;

public final class C14249j {
    public static final void a(@NotNull yf.j jVar, @NotNull Throwable th2) {
        Iterator<InterfaceC13101N> it = C14248i.b().iterator();
        while (it.hasNext()) {
            try {
                it.next().q(jVar, th2);
            } catch (ExceptionSuccessfullyProcessed unused) {
                return;
            } catch (Throwable th3) {
                C14248i.c(eg.O.c(th2, th3));
            }
        }
        try {
            C14436t.a(th2, new DiagnosticCoroutineContextException(jVar));
        } catch (Throwable unused2) {
        }
        C14248i.c(th2);
    }
}
