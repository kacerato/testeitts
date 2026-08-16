package Ef;

import java.io.InvalidObjectException;
import kotlin.jvm.internal.M;
import nf.P0;

public final class s {
    @f
    public static final Void a() {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    @f
    public static final void b(Mf.a<P0> action) {
        M.p(action, "action");
        try {
            action.invoke();
        } catch (Throwable th2) {
            Throwable initCause = new InvalidObjectException(th2.getMessage()).initCause(th2);
            M.o(initCause, "initCause(...)");
            throw initCause;
        }
    }
}
