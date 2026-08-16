package fg;

import eg.InterfaceC13106b0;
import eg.InterfaceC13128m0;
import eg.V0;
import kotlin.jvm.internal.C14026x;
import nf.EnumC14431q;
import nf.InterfaceC14427o;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.j;

public abstract class AbstractC13221e extends V0 implements InterfaceC13106b0 {
    public AbstractC13221e(C14026x c14026x) {
        this();
    }

    @NotNull
    public InterfaceC13128m0 m(long j10, @NotNull Runnable runnable, @NotNull j jVar) {
        return InterfaceC13106b0.a.b(this, j10, runnable, jVar);
    }

    @Override
    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
    @Nullable
    public Object p(long j10, @NotNull yf.f<? super P0> fVar) {
        return InterfaceC13106b0.a.a(this, j10, fVar);
    }

    @NotNull
    public abstract AbstractC13221e u();

    public AbstractC13221e() {
    }
}
