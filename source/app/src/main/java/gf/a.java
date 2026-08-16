package Gf;

import Lf.g;
import Tf.f;
import Vf.l;
import ag.C3633o;
import cg.C4188b;
import java.time.Instant;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import kotlin.time.InterfaceC14033e;
import kotlin.time.q;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class a extends Ff.a {

    @t0({"SMAP\nJDK8PlatformImplementations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JDK8PlatformImplementations.kt\nkotlin/internal/jdk8/JDK8PlatformImplementations$ReflectSdkVersion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,75:1\n1#2:76\n*E\n"})
    public static final class C0153a {

        @NotNull
        public static final C0153a f7794a = new C0153a();

        @g
        @Nullable
        public static final Integer f7795b;

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
                f7795b = num2;
            }
            num = null;
            if (num != null) {
                num2 = num;
            }
            f7795b = num2;
        }
    }

    public static final class b implements InterfaceC14033e {
        @Override
        public q a() {
            Instant now = Instant.now();
            M.o(now, "now(...)");
            return C4188b.b(now);
        }
    }

    public static final class c implements InterfaceC14033e {
        @Override
        public q a() {
            return q.f95889d.a(System.currentTimeMillis());
        }
    }

    @Override
    @NotNull
    public f b() {
        return f(34) ? new Uf.a() : super.b();
    }

    @Override
    @Nullable
    public C3633o c(@NotNull MatchResult matchResult, @NotNull String name) {
        M.p(matchResult, "matchResult");
        M.p(name, "name");
        Matcher matcher = matchResult instanceof Matcher ? (Matcher) matchResult : null;
        if (matcher == null) {
            throw new UnsupportedOperationException("Retrieving groups by name is not supported on this platform.");
        }
        l lVar = new l(matcher.start(name), matcher.end(name) - 1);
        if (lVar.getStart().intValue() < 0) {
            return null;
        }
        String group = matcher.group(name);
        M.o(group, "group(...)");
        return new C3633o(group, lVar);
    }

    @Override
    @NotNull
    public InterfaceC14033e e() {
        return f(26) ? new b() : new c();
    }

    public final boolean f(int i10) {
        Integer num = C0153a.f7795b;
        return num == null || num.intValue() >= i10;
    }
}
