package Wf;

import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import nf.InterfaceC14441w;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InterfaceC14441w
public final class B implements WildcardType, x {

    @NotNull
    public static final a f27755d = new a(null);

    @NotNull
    public static final B f27756e = new B(null, null);

    @Nullable
    public final Type f27757b;

    @Nullable
    public final Type f27758c;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        @NotNull
        public final B a() {
            return B.f27756e;
        }

        public a() {
        }
    }

    public B(@Nullable Type type, @Nullable Type type2) {
        this.f27757b = type;
        this.f27758c = type2;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) obj;
            if (Arrays.equals(getUpperBounds(), wildcardType.getUpperBounds()) && Arrays.equals(getLowerBounds(), wildcardType.getLowerBounds())) {
                return true;
            }
        }
        return false;
    }

    @Override
    @NotNull
    public Type[] getLowerBounds() {
        Type type = this.f27758c;
        return type == null ? new Type[0] : new Type[]{type};
    }

    @Override
    @NotNull
    public String getTypeName() {
        String j10;
        String j11;
        if (this.f27758c != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("? super ");
            j11 = A.j(this.f27758c);
            sb2.append(j11);
            return sb2.toString();
        }
        Type type = this.f27757b;
        if (type == null || M.g(type, Object.class)) {
            return "?";
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("? extends ");
        j10 = A.j(this.f27757b);
        sb3.append(j10);
        return sb3.toString();
    }

    @Override
    @NotNull
    public Type[] getUpperBounds() {
        Type type = this.f27757b;
        if (type == null) {
            type = Object.class;
        }
        return new Type[]{type};
    }

    public int hashCode() {
        return Arrays.hashCode(getUpperBounds()) ^ Arrays.hashCode(getLowerBounds());
    }

    @NotNull
    public String toString() {
        return getTypeName();
    }
}
