package Ef;

import ag.C3633o;
import java.lang.reflect.Method;
import java.util.List;
import java.util.regex.MatchResult;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import kotlin.time.InterfaceC14033e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.C14960A;
import pf.C14985q;
import pf.H;

@t0({"SMAP\nPlatformImplementations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlatformImplementations.kt\nkotlin/internal/PlatformImplementations\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,85:1\n1#2:86\n*E\n"})
public class m {

    @t0({"SMAP\nPlatformImplementations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlatformImplementations.kt\nkotlin/internal/PlatformImplementations$ReflectThrowable\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,85:1\n1#2:86\n*E\n"})
    public static final class a {

        @NotNull
        public static final a f5772a = new a();

        @Lf.g
        @Nullable
        public static final Method f5773b;

        @Lf.g
        @Nullable
        public static final Method f5774c;

        static {
            Method method;
            Method method2;
            Method[] methods = Throwable.class.getMethods();
            M.m(methods);
            int length = methods.length;
            int i10 = 0;
            int i11 = 0;
            while (true) {
                method = null;
                if (i11 >= length) {
                    method2 = null;
                    break;
                }
                method2 = methods[i11];
                if (M.g(method2.getName(), "addSuppressed")) {
                    Class<?>[] parameterTypes = method2.getParameterTypes();
                    M.o(parameterTypes, "getParameterTypes(...)");
                    if (M.g(C14960A.Tt(parameterTypes), Throwable.class)) {
                        break;
                    }
                }
                i11++;
            }
            f5773b = method2;
            int length2 = methods.length;
            while (true) {
                if (i10 >= length2) {
                    break;
                }
                Method method3 = methods[i10];
                if (M.g(method3.getName(), "getSuppressed")) {
                    method = method3;
                    break;
                }
                i10++;
            }
            f5774c = method;
        }
    }

    public void a(@NotNull Throwable cause, @NotNull Throwable exception) {
        M.p(cause, "cause");
        M.p(exception, "exception");
        Method method = a.f5773b;
        if (method != null) {
            method.invoke(cause, exception);
        }
    }

    @NotNull
    public Tf.f b() {
        return new Tf.b();
    }

    @Nullable
    public C3633o c(@NotNull MatchResult matchResult, @NotNull String name) {
        M.p(matchResult, "matchResult");
        M.p(name, "name");
        throw new UnsupportedOperationException("Retrieving groups by name is not supported on this platform.");
    }

    @NotNull
    public List<Throwable> d(@NotNull Throwable exception) {
        Object invoke;
        List<Throwable> t10;
        M.p(exception, "exception");
        Method method = a.f5774c;
        return (method == null || (invoke = method.invoke(exception, null)) == null || (t10 = C14985q.t((Throwable[]) invoke)) == null) ? H.J() : t10;
    }

    @NotNull
    public InterfaceC14033e e() {
        throw new UnsupportedOperationException("getSystemClock should not be called on the base PlatformImplementations.");
    }
}
