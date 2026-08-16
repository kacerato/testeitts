package Wf;

import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import kotlin.reflect.KClass;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Lf.j(name = "KClasses")
@t0({"SMAP\nKClasses.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KClasses.kt\nkotlin/reflect/KClasses\n+ 2 KClassesImpl.kt\nkotlin/reflect/KClassesImplKt\n*L\n1#1,46:1\n9#2:47\n*S KotlinDebug\n*F\n+ 1 KClasses.kt\nkotlin/reflect/KClasses\n*L\n25#1:47\n*E\n"})
public final class d {
    /* JADX WARN: Multi-variable type inference failed */
    @Ef.i
    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <T> T a(@NotNull KClass<T> kClass, @Nullable Object obj) {
        M.p(kClass, "<this>");
        if (kClass.K(obj)) {
            M.n(obj, "null cannot be cast to non-null type T of kotlin.reflect.KClasses.cast");
            return obj;
        }
        throw new ClassCastException("Value cannot be cast to " + kClass.getQualifiedName());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.i
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <T> T b(@NotNull KClass<T> kClass, @Nullable Object obj) {
        M.p(kClass, "<this>");
        if (!kClass.K(obj)) {
            return null;
        }
        M.n(obj, "null cannot be cast to non-null type T of kotlin.reflect.KClasses.safeCast");
        return obj;
    }
}
