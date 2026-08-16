package Sf;

import Wf.n;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class b<T> implements f<Object, T> {

    @Nullable
    public T f23206a;

    @Override
    @NotNull
    public T a(@Nullable Object obj, @NotNull n<?> property) {
        M.p(property, "property");
        T t10 = this.f23206a;
        if (t10 != null) {
            return t10;
        }
        throw new IllegalStateException("Property " + property.getName() + " should be initialized before get.");
    }

    @Override
    public void b(@Nullable Object obj, @NotNull n<?> property, @NotNull T value) {
        M.p(property, "property");
        M.p(value, "value");
        this.f23206a = value;
    }

    @NotNull
    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("NotNullProperty(");
        if (this.f23206a != null) {
            str = "value=" + ((Object) this.f23206a);
        } else {
            str = "value not initialized yet";
        }
        sb2.append(str);
        sb2.append(')');
        return sb2.toString();
    }
}
