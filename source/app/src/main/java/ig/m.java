package ig;

import nf.InterfaceC14410f0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InterfaceC14410f0
public final class m implements Bf.e {

    @Nullable
    public final Bf.e f92268b;

    @Lf.g
    @NotNull
    public final StackTraceElement f92269c;

    public m(@Nullable Bf.e eVar, @NotNull StackTraceElement stackTraceElement) {
        this.f92268b = eVar;
        this.f92269c = stackTraceElement;
    }

    @Override
    @Nullable
    public Bf.e getCallerFrame() {
        return this.f92268b;
    }

    @Override
    @NotNull
    public StackTraceElement getStackTraceElement() {
        return this.f92269c;
    }
}
