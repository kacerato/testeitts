package mg;

import eg.AbstractC13102a;
import eg.C13096I;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class O<T> extends AbstractC13102a<T> implements Bf.e {

    @Lf.g
    @NotNull
    public final yf.f<T> f97032e;

    /* JADX WARN: Multi-variable type inference failed */
    public O(@NotNull yf.j jVar, @NotNull yf.f<? super T> fVar) {
        super(jVar, true, true);
        this.f97032e = fVar;
    }

    @Override
    public final boolean P0() {
        return true;
    }

    @Override
    public void g0(@Nullable Object obj) {
        C14252m.e(Af.c.e(this.f97032e), C13096I.a(obj, this.f97032e), null, 2, null);
    }

    @Override
    @Nullable
    public final Bf.e getCallerFrame() {
        yf.f<T> fVar = this.f97032e;
        if (fVar instanceof Bf.e) {
            return (Bf.e) fVar;
        }
        return null;
    }

    @Override
    @Nullable
    public final StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override
    public void x1(@Nullable Object obj) {
        yf.f<T> fVar = this.f97032e;
        fVar.resumeWith(C13096I.a(obj, fVar));
    }
}
