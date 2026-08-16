package w2;

import java.lang.ref.WeakReference;
import java.util.Locale;
import java.util.ServiceConfigurationError;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;
import javax.annotation.CheckForNull;

@InterfaceC15894k
@v2.b(emulated = true)
public final class G {

    public static final Logger f126146a = Logger.getLogger(G.class.getName());

    public static final F f126147b = f();

    public static final class b implements F {
        public b() {
        }

        @Override
        public AbstractC15891h a(String str) {
            return new C15906x(Pattern.compile(str));
        }

        @Override
        public boolean b() {
            return true;
        }
    }

    public static void a() {
    }

    public static AbstractC15891h b(String str) {
        H.E(str);
        return f126147b.a(str);
    }

    @CheckForNull
    public static String c(@CheckForNull String str) {
        if (k(str)) {
            return null;
        }
        return str;
    }

    public static String d(double d10) {
        return String.format(Locale.ROOT, "%.4g", Double.valueOf(d10));
    }

    public static <T extends Enum<T>> C<T> e(Class<T> cls, String str) {
        WeakReference<? extends Enum<?>> weakReference = C15895l.a(cls).get(str);
        return weakReference == null ? C.a() : C.f(cls.cast(weakReference.get()));
    }

    public static F f() {
        return new b();
    }

    public static void g(ServiceConfigurationError serviceConfigurationError) {
        f126146a.log(Level.WARNING, "Error loading regex compiler, falling back to next option", (Throwable) serviceConfigurationError);
    }

    public static String h(@CheckForNull String str) {
        return str == null ? "" : str;
    }

    public static boolean i() {
        return f126147b.b();
    }

    public static AbstractC15885e j(AbstractC15885e abstractC15885e) {
        return abstractC15885e.K();
    }

    public static boolean k(@CheckForNull String str) {
        return str == null || str.isEmpty();
    }

    public static long l() {
        return System.nanoTime();
    }
}
