package Bf;

import kotlin.jvm.internal.F;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.n0;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InterfaceC14422l0(version = "1.3")
public abstract class q extends d implements F<Object>, p {
    private final int arity;

    public q(int i10, @Nullable yf.f<Object> fVar) {
        super(fVar);
        this.arity = i10;
    }

    @Override
    public int getArity() {
        return this.arity;
    }

    @Override
    @NotNull
    public String toString() {
        if (getCompletion() != null) {
            return super.toString();
        }
        String w10 = n0.w(this);
        M.o(w10, "renderLambdaToString(...)");
        return w10;
    }

    public q(int i10) {
        this(i10, null);
    }
}
