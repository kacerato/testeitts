package Wf;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
import kotlin.jvm.internal.I;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14441w;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.C14960A;

@t0({"SMAP\nTypesJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypesJVM.kt\nkotlin/reflect/ParameterizedTypeImpl\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,230:1\n37#2,2:231\n*S KotlinDebug\n*F\n+ 1 TypesJVM.kt\nkotlin/reflect/ParameterizedTypeImpl\n*L\n190#1:231,2\n*E\n"})
@InterfaceC14441w
public final class w implements ParameterizedType, x {

    @NotNull
    public final Class<?> f27765b;

    @Nullable
    public final Type f27766c;

    @NotNull
    public final Type[] f27767d;

    public static final class a extends I implements Mf.l<Type, String> {

        public static final a f27768b = new a();

        public a() {
            super(1, A.class, "typeToString", "typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;", 1);
        }

        @Override
        public final String invoke(Type p02) {
            String j10;
            M.p(p02, "p0");
            j10 = A.j(p02);
            return j10;
        }
    }

    public w(@NotNull Class<?> rawType, @Nullable Type type, @NotNull List<? extends Type> typeArguments) {
        M.p(rawType, "rawType");
        M.p(typeArguments, "typeArguments");
        this.f27765b = rawType;
        this.f27766c = type;
        this.f27767d = (Type[]) typeArguments.toArray(new Type[0]);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) obj;
            if (M.g(this.f27765b, parameterizedType.getRawType()) && M.g(this.f27766c, parameterizedType.getOwnerType()) && Arrays.equals(getActualTypeArguments(), parameterizedType.getActualTypeArguments())) {
                return true;
            }
        }
        return false;
    }

    @Override
    @NotNull
    public Type[] getActualTypeArguments() {
        return this.f27767d;
    }

    @Override
    @Nullable
    public Type getOwnerType() {
        return this.f27766c;
    }

    @Override
    @NotNull
    public Type getRawType() {
        return this.f27765b;
    }

    @Override
    @NotNull
    public String getTypeName() {
        String j10;
        String j11;
        StringBuilder sb2 = new StringBuilder();
        Type type = this.f27766c;
        if (type != null) {
            j11 = A.j(type);
            sb2.append(j11);
            sb2.append("$");
            sb2.append(this.f27765b.getSimpleName());
        } else {
            j10 = A.j(this.f27765b);
            sb2.append(j10);
        }
        Type[] typeArr = this.f27767d;
        if (!(typeArr.length == 0)) {
            C14960A.ch(typeArr, sb2, (r14 & 2) != 0 ? ", " : null, (r14 & 4) != 0 ? "" : "<", (r14 & 8) == 0 ? ">" : "", (r14 & 16) != 0 ? -1 : 0, (r14 & 32) != 0 ? "..." : null, (r14 & 64) != 0 ? null : a.f27768b);
        }
        return sb2.toString();
    }

    public int hashCode() {
        int hashCode = this.f27765b.hashCode();
        Type type = this.f27766c;
        return (hashCode ^ (type != null ? type.hashCode() : 0)) ^ Arrays.hashCode(getActualTypeArguments());
    }

    @NotNull
    public String toString() {
        return getTypeName();
    }
}
