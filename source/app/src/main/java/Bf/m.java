package Bf;

import kotlin.jvm.internal.M;
import nf.C14416i0;
import nf.C14418j0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class m implements yf.f<P0> {

    @Nullable
    public C14416i0<P0> f1727b;

    public final void a() {
        synchronized (this) {
            while (true) {
                try {
                    C14416i0<P0> c14416i0 = this.f1727b;
                    if (c14416i0 == null) {
                        M.n(this, "null cannot be cast to non-null type java.lang.Object");
                        wait();
                    } else {
                        C14418j0.n(c14416i0.l());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    @Nullable
    public final C14416i0<P0> c() {
        return this.f1727b;
    }

    public final void e(@Nullable C14416i0<P0> c14416i0) {
        this.f1727b = c14416i0;
    }

    @Override
    @NotNull
    public yf.j getContext() {
        return yf.l.f130251b;
    }

    @Override
    public void resumeWith(@NotNull Object obj) {
        synchronized (this) {
            this.f1727b = C14416i0.a(obj);
            M.n(this, "null cannot be cast to non-null type java.lang.Object");
            notifyAll();
            P0 p02 = P0.f98194a;
        }
    }
}
