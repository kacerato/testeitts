package kotlin.jvm.internal;

import java.io.Serializable;
import org.jetbrains.annotations.NotNull;

public abstract class O<R> implements F<R>, Serializable {
    private final int arity;

    public O(int i10) {
        this.arity = i10;
    }

    @Override
    public int getArity() {
        return this.arity;
    }

    @NotNull
    public String toString() {
        String x10 = n0.x(this);
        M.o(x10, "renderLambdaToString(...)");
        return x10;
    }
}
