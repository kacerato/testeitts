package Bf;

import java.lang.reflect.Method;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nDebugMetadata.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugMetadata.kt\nkotlin/coroutines/jvm/internal/ModuleNameRetriever\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,158:1\n1#2:159\n*E\n"})
public final class j {

    @NotNull
    public static final j f1721a = new j();

    @NotNull
    public static final a f1722b = new a(null, null, null);

    @Nullable
    public static a f1723c;

    public static final class a {

        @Lf.g
        @Nullable
        public final Method f1724a;

        @Lf.g
        @Nullable
        public final Method f1725b;

        @Lf.g
        @Nullable
        public final Method f1726c;

        public a(@Nullable Method method, @Nullable Method method2, @Nullable Method method3) {
            this.f1724a = method;
            this.f1725b = method2;
            this.f1726c = method3;
        }
    }

    public final a a(Bf.a aVar) {
        try {
            a aVar2 = new a(Class.class.getDeclaredMethod("getModule", null), aVar.getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", null), aVar.getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", null));
            f1723c = aVar2;
            return aVar2;
        } catch (Exception unused) {
            a aVar3 = f1722b;
            f1723c = aVar3;
            return aVar3;
        }
    }

    @Nullable
    public final String b(@NotNull Bf.a continuation) {
        Method method;
        Object invoke;
        Method method2;
        Object invoke2;
        M.p(continuation, "continuation");
        a aVar = f1723c;
        if (aVar == null) {
            aVar = a(continuation);
        }
        if (aVar == f1722b || (method = aVar.f1724a) == null || (invoke = method.invoke(continuation.getClass(), null)) == null || (method2 = aVar.f1725b) == null || (invoke2 = method2.invoke(invoke, null)) == null) {
            return null;
        }
        Method method3 = aVar.f1726c;
        Object invoke3 = method3 != null ? method3.invoke(invoke2, null) : null;
        if (invoke3 instanceof String) {
            return (String) invoke3;
        }
        return null;
    }
}
