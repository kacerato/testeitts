package Bf;

import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InterfaceC14422l0(version = "1.3")
public abstract class k extends a {
    public k(@Nullable yf.f<Object> fVar) {
        super(fVar);
        if (fVar != null && fVar.getContext() != yf.l.f130251b) {
            throw new IllegalArgumentException("Coroutines with restricted suspension must have EmptyCoroutineContext");
        }
    }

    @Override
    @NotNull
    public yf.j getContext() {
        return yf.l.f130251b;
    }
}
