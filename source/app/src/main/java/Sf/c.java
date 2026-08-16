package Sf;

import Wf.n;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public abstract class c<V> implements f<Object, V> {

    public V f23207a;

    public c(V v10) {
        this.f23207a = v10;
    }

    @Override
    public V a(@Nullable Object obj, @NotNull n<?> property) {
        M.p(property, "property");
        return this.f23207a;
    }

    @Override
    public void b(@Nullable Object obj, @NotNull n<?> property, V v10) {
        M.p(property, "property");
        V v11 = this.f23207a;
        if (d(property, v11, v10)) {
            this.f23207a = v10;
            c(property, v11, v10);
        }
    }

    public void c(@NotNull n<?> property, V v10, V v11) {
        M.p(property, "property");
    }

    public boolean d(@NotNull n<?> property, V v10, V v11) {
        M.p(property, "property");
        return true;
    }

    @NotNull
    public String toString() {
        return "ObservableProperty(value=" + ((Object) this.f23207a) + ')';
    }
}
