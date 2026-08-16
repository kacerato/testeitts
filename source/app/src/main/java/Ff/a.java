package Ff;

import Ef.m;
import Lf.g;
import java.util.List;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.C14985q;

public class a extends m {

    @t0({"SMAP\nJDK7PlatformImplementations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JDK7PlatformImplementations.kt\nkotlin/internal/jdk7/JDK7PlatformImplementations$ReflectSdkVersion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,38:1\n1#2:39\n*E\n"})
    public static final class C0131a {

        @NotNull
        public static final C0131a f6794a = new C0131a();

        @g
        @Nullable
        public static final Integer f6795b;

        static {
            Integer num;
            Object obj;
            Integer num2 = null;
            try {
                obj = Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
            } catch (Throwable unused) {
            }
            if (obj instanceof Integer) {
                num = (Integer) obj;
                if (num != null && num.intValue() > 0) {
                    num2 = num;
                }
                f6795b = num2;
            }
            num = null;
            if (num != null) {
                num2 = num;
            }
            f6795b = num2;
        }
    }

    private final boolean f(int i10) {
        Integer num = C0131a.f6795b;
        return num == null || num.intValue() >= i10;
    }

    @Override
    public void a(@NotNull Throwable cause, @NotNull Throwable exception) {
        M.p(cause, "cause");
        M.p(exception, "exception");
        if (f(19)) {
            cause.addSuppressed(exception);
        } else {
            super.a(cause, exception);
        }
    }

    @Override
    @NotNull
    public List<Throwable> d(@NotNull Throwable exception) {
        M.p(exception, "exception");
        if (!f(19)) {
            return super.d(exception);
        }
        Throwable[] suppressed = exception.getSuppressed();
        M.o(suppressed, "getSuppressed(...)");
        return C14985q.t(suppressed);
    }
}
