package Wf;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import kotlin.jvm.internal.M;
import nf.InterfaceC14441w;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InterfaceC14441w
public final class C3183a implements GenericArrayType, x {

    @NotNull
    public final Type f27759b;

    public C3183a(@NotNull Type elementType) {
        M.p(elementType, "elementType");
        this.f27759b = elementType;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof GenericArrayType) && M.g(getGenericComponentType(), ((GenericArrayType) obj).getGenericComponentType());
    }

    @Override
    @NotNull
    public Type getGenericComponentType() {
        return this.f27759b;
    }

    @Override
    @NotNull
    public String getTypeName() {
        String j10;
        StringBuilder sb2 = new StringBuilder();
        j10 = A.j(this.f27759b);
        sb2.append(j10);
        sb2.append(okhttp3.v.f99450n);
        return sb2.toString();
    }

    public int hashCode() {
        return getGenericComponentType().hashCode();
    }

    @NotNull
    public String toString() {
        return getTypeName();
    }
}
