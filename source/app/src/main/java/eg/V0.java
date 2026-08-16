package eg;

import mg.C14258t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public abstract class V0 extends AbstractC13100M {
    @Override
    @NotNull
    public AbstractC13100M limitedParallelism(int i10) {
        C14258t.a(i10);
        return this;
    }

    @NotNull
    public abstract V0 s();

    @F0
    @Nullable
    public final String t() {
        V0 v02;
        V0 e10 = C13122j0.e();
        if (this == e10) {
            return "Dispatchers.Main";
        }
        try {
            v02 = e10.s();
        } catch (UnsupportedOperationException unused) {
            v02 = null;
        }
        if (this == v02) {
            return "Dispatchers.Main.immediate";
        }
        return null;
    }

    @Override
    @NotNull
    public String toString() {
        String t10 = t();
        if (t10 != null) {
            return t10;
        }
        return W.a(this) + '@' + W.b(this);
    }
}
