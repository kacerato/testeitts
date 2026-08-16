package mg;

import eg.F0;
import eg.V0;
import java.util.List;
import mg.C;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@F0
public final class G implements C {

    @NotNull
    public static final G f97022a = new G();

    @Override
    public int a() {
        return -1;
    }

    @Override
    @Nullable
    public String b() {
        return C.a.a(this);
    }

    @Override
    @NotNull
    public V0 c(@NotNull List<? extends C> list) {
        return new F(null, null, 2, null);
    }
}
