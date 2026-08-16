package lg;

import Lf.g;
import java.util.concurrent.CompletionException;
import java.util.function.BiFunction;
import nf.C14416i0;
import nf.C14418j0;
import nf.P0;
import org.jetbrains.annotations.Nullable;
import yf.f;

public final class C14133b<T> implements BiFunction<T, Throwable, P0> {

    @g
    @Nullable
    public volatile f<? super T> cont;

    public C14133b(@Nullable f<? super T> fVar) {
        this.cont = fVar;
    }

    public void a(@Nullable T t10, @Nullable Throwable th2) {
        Throwable cause;
        f<? super T> fVar = this.cont;
        if (fVar == null) {
            return;
        }
        if (th2 == null) {
            C14416i0.a aVar = C14416i0.f98201c;
            fVar.resumeWith(C14416i0.b(t10));
            return;
        }
        CompletionException completionException = th2 instanceof CompletionException ? (CompletionException) th2 : null;
        if (completionException != null && (cause = completionException.getCause()) != null) {
            th2 = cause;
        }
        C14416i0.a aVar2 = C14416i0.f98201c;
        fVar.resumeWith(C14416i0.b(C14418j0.a(th2)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public P0 apply(Object obj, Throwable th2) {
        a(obj, th2);
        return P0.f98194a;
    }
}
