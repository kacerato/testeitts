package k3;

import Lf.k;
import Lf.o;
import Mf.l;
import ag.P;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import kotlin.jvm.internal.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w2.C15883c;

@t0({"SMAP\nLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Logger.kt\ncom/google/firebase/logger/Logger\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,196:1\n26#2:197\n*S KotlinDebug\n*F\n+ 1 Logger.kt\ncom/google/firebase/logger/Logger\n*L\n78#1:197\n*E\n"})
public abstract class AbstractC13934a {

    @NotNull
    public static final b f94829d = new b(null);

    @NotNull
    public static final ConcurrentHashMap<String, AbstractC13934a> f94830e = new ConcurrentHashMap<>();

    @NotNull
    public final String f94831a;

    public boolean f94832b;

    @NotNull
    public d f94833c;

    @t0({"SMAP\nLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Logger.kt\ncom/google/firebase/logger/Logger$AndroidLogger\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,196:1\n1#2:197\n*E\n"})
    public static final class C1831a extends AbstractC13934a {

        public class C1832a {

            public static final int[] f94834a;

            static {
                int[] iArr = new int[d.values().length];
                try {
                    iArr[d.VERBOSE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[d.DEBUG.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[d.INFO.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[d.WARN.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[d.ERROR.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                f94834a = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1831a(@NotNull String tag, boolean z10, @NotNull d minLevel) {
            super(tag, z10, minLevel, null);
            M.p(tag, "tag");
            M.p(minLevel, "minLevel");
        }

        @Override
        public int x(@NotNull d level, @NotNull String format, @NotNull Object[] args, @Nullable Throwable th2) {
            M.p(level, "level");
            M.p(format, "format");
            M.p(args, "args");
            if (args.length != 0) {
                v0 v0Var = v0.f95790a;
                Object[] copyOf = Arrays.copyOf(args, args.length);
                format = String.format(format, Arrays.copyOf(copyOf, copyOf.length));
                M.o(format, "format(format, *args)");
            }
            int i10 = C1832a.f94834a[level.ordinal()];
            if (i10 == 1) {
                String q10 = q();
                return th2 != null ? Log.v(q10, format, th2) : Log.v(q10, format);
            }
            if (i10 == 2) {
                String q11 = q();
                return th2 != null ? Log.d(q11, format, th2) : Log.d(q11, format);
            }
            if (i10 == 3) {
                String q12 = q();
                return th2 != null ? Log.i(q12, format, th2) : Log.i(q12, format);
            }
            if (i10 == 4) {
                String q13 = q();
                return th2 != null ? Log.w(q13, format, th2) : Log.w(q13, format);
            }
            if (i10 != 5) {
                throw new NoWhenBranchMatchedException();
            }
            String q14 = q();
            return th2 != null ? Log.e(q14, format, th2) : Log.e(q14, format);
        }
    }

    @t0({"SMAP\nLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Logger.kt\ncom/google/firebase/logger/Logger$Companion\n+ 2 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,196:1\n73#2,2:197\n1#3:199\n*S KotlinDebug\n*F\n+ 1 Logger.kt\ncom/google/firebase/logger/Logger$Companion\n*L\n180#1:197,2\n180#1:199\n*E\n"})
    public static final class b {
        public b(C14026x c14026x) {
            this();
        }

        public static AbstractC13934a b(b bVar, String str, boolean z10, d dVar, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                z10 = true;
            }
            if ((i10 & 4) != 0) {
                dVar = d.INFO;
            }
            return bVar.a(str, z10, dVar);
        }

        public static c d(b bVar, String str, boolean z10, d dVar, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                z10 = true;
            }
            if ((i10 & 4) != 0) {
                dVar = d.DEBUG;
            }
            return bVar.c(str, z10, dVar);
        }

        @o
        @NotNull
        public final AbstractC13934a a(@NotNull String tag, boolean z10, @NotNull d minLevel) {
            Object putIfAbsent;
            M.p(tag, "tag");
            M.p(minLevel, "minLevel");
            ConcurrentHashMap concurrentHashMap = AbstractC13934a.f94830e;
            Object obj = concurrentHashMap.get(tag);
            if (obj == null && (putIfAbsent = concurrentHashMap.putIfAbsent(tag, (obj = new C1831a(tag, z10, minLevel)))) != null) {
                obj = putIfAbsent;
            }
            M.o(obj, "loggers.getOrPut(tag) { \u2026tag, enabled, minLevel) }");
            return (AbstractC13934a) obj;
        }

        @o
        @VisibleForTesting
        @NotNull
        public final c c(@NotNull String tag, boolean z10, @NotNull d minLevel) {
            M.p(tag, "tag");
            M.p(minLevel, "minLevel");
            c cVar = new c(tag, z10, minLevel);
            AbstractC13934a.f94830e.put(tag, cVar);
            return cVar;
        }

        public b() {
        }
    }

    @t0({"SMAP\nLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Logger.kt\ncom/google/firebase/logger/Logger$FakeLogger\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,196:1\n1747#2,3:197\n1747#2,3:200\n1#3:203\n*S KotlinDebug\n*F\n+ 1 Logger.kt\ncom/google/firebase/logger/Logger$FakeLogger\n*L\n144#1:197,3\n148#1:200,3\n*E\n"})
    @VisibleForTesting
    public static final class c extends AbstractC13934a {

        @NotNull
        public final List<String> f94835f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull String tag, boolean z10, @NotNull d minLevel) {
            super(tag, z10, minLevel, null);
            M.p(tag, "tag");
            M.p(minLevel, "minLevel");
            this.f94835f = new ArrayList();
        }

        @VisibleForTesting
        public final void P() {
            this.f94835f.clear();
        }

        @VisibleForTesting
        public final boolean Q(@NotNull String message) {
            M.p(message, "message");
            List<String> list = this.f94835f;
            if ((list instanceof Collection) && list.isEmpty()) {
                return false;
            }
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                if (P.p3(it.next(), message, false, 2, null)) {
                    return true;
                }
            }
            return false;
        }

        @VisibleForTesting
        public final boolean R(@NotNull l<? super String, Boolean> predicate) {
            M.p(predicate, "predicate");
            List<String> list = this.f94835f;
            if ((list instanceof Collection) && list.isEmpty()) {
                return false;
            }
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                if (predicate.invoke(it.next()).booleanValue()) {
                    return true;
                }
            }
            return false;
        }

        public final String S(d dVar, String str, Object[] objArr, Throwable th2) {
            if (objArr.length != 0) {
                v0 v0Var = v0.f95790a;
                Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
                str = String.format(str, Arrays.copyOf(copyOf, copyOf.length));
                M.o(str, "format(format, *args)");
            }
            if (th2 != null) {
                String str2 = ((Object) dVar) + C15883c.f126249O + str + C15883c.f126249O + Log.getStackTraceString(th2);
                if (str2 != null) {
                    return str2;
                }
            }
            return ((Object) dVar) + C15883c.f126249O + str;
        }

        @Override
        public int x(@NotNull d level, @NotNull String format, @NotNull Object[] args, @Nullable Throwable th2) {
            M.p(level, "level");
            M.p(format, "format");
            M.p(args, "args");
            String S10 = S(level, format, args, th2);
            System.out.println((Object) ("Log: " + S10));
            this.f94835f.add(S10);
            return S10.length();
        }
    }

    public enum d {
        VERBOSE(2),
        DEBUG(3),
        INFO(4),
        WARN(5),
        ERROR(6);

        private final int priority;

        d(int i10) {
            this.priority = i10;
        }

        public final int b() {
            return this.priority;
        }
    }

    public AbstractC13934a(String str, boolean z10, d dVar, C14026x c14026x) {
        this(str, z10, dVar);
    }

    @o
    @VisibleForTesting
    @NotNull
    public static final c C(@NotNull String str, boolean z10, @NotNull d dVar) {
        return f94829d.c(str, z10, dVar);
    }

    public static int H(AbstractC13934a abstractC13934a, String str, Throwable th2, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: verbose");
        }
        if ((i10 & 2) != 0) {
            th2 = null;
        }
        return abstractC13934a.E(str, th2);
    }

    public static int I(AbstractC13934a abstractC13934a, String str, Object[] objArr, Throwable th2, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: verbose");
        }
        if ((i10 & 4) != 0) {
            th2 = null;
        }
        return abstractC13934a.G(str, objArr, th2);
    }

    public static int N(AbstractC13934a abstractC13934a, String str, Throwable th2, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: warn");
        }
        if ((i10 & 2) != 0) {
            th2 = null;
        }
        return abstractC13934a.K(str, th2);
    }

    public static int O(AbstractC13934a abstractC13934a, String str, Object[] objArr, Throwable th2, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: warn");
        }
        if ((i10 & 4) != 0) {
            th2 = null;
        }
        return abstractC13934a.M(str, objArr, th2);
    }

    public static int f(AbstractC13934a abstractC13934a, String str, Throwable th2, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: debug");
        }
        if ((i10 & 2) != 0) {
            th2 = null;
        }
        return abstractC13934a.c(str, th2);
    }

    public static int g(AbstractC13934a abstractC13934a, String str, Object[] objArr, Throwable th2, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: debug");
        }
        if ((i10 & 4) != 0) {
            th2 = null;
        }
        return abstractC13934a.e(str, objArr, th2);
    }

    public static int l(AbstractC13934a abstractC13934a, String str, Throwable th2, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: error");
        }
        if ((i10 & 2) != 0) {
            th2 = null;
        }
        return abstractC13934a.i(str, th2);
    }

    public static int m(AbstractC13934a abstractC13934a, String str, Object[] objArr, Throwable th2, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: error");
        }
        if ((i10 & 4) != 0) {
            th2 = null;
        }
        return abstractC13934a.k(str, objArr, th2);
    }

    @o
    @NotNull
    public static final AbstractC13934a o(@NotNull String str, boolean z10, @NotNull d dVar) {
        return f94829d.a(str, z10, dVar);
    }

    public static int v(AbstractC13934a abstractC13934a, String str, Throwable th2, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: info");
        }
        if ((i10 & 2) != 0) {
            th2 = null;
        }
        return abstractC13934a.s(str, th2);
    }

    public static int w(AbstractC13934a abstractC13934a, String str, Object[] objArr, Throwable th2, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: info");
        }
        if ((i10 & 4) != 0) {
            th2 = null;
        }
        return abstractC13934a.u(str, objArr, th2);
    }

    public static int z(AbstractC13934a abstractC13934a, d dVar, String str, Object[] objArr, Throwable th2, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: logIfAble");
        }
        if ((i10 & 4) != 0) {
            objArr = new Object[0];
        }
        return abstractC13934a.y(dVar, str, objArr, th2);
    }

    public final void A(boolean z10) {
        this.f94832b = z10;
    }

    public final void B(@NotNull d dVar) {
        M.p(dVar, "<set-?>");
        this.f94833c = dVar;
    }

    @k
    public final int D(@NotNull String msg) {
        M.p(msg, "msg");
        return H(this, msg, null, 2, null);
    }

    @k
    public final int E(@NotNull String msg, @Nullable Throwable th2) {
        M.p(msg, "msg");
        return z(this, d.VERBOSE, msg, null, th2, 4, null);
    }

    @k
    public final int F(@NotNull String format, @NotNull Object... args) {
        M.p(format, "format");
        M.p(args, "args");
        return I(this, format, args, null, 4, null);
    }

    @k
    public final int G(@NotNull String format, @NotNull Object[] args, @Nullable Throwable th2) {
        M.p(format, "format");
        M.p(args, "args");
        return y(d.VERBOSE, format, args, th2);
    }

    @k
    public final int J(@NotNull String msg) {
        M.p(msg, "msg");
        return N(this, msg, null, 2, null);
    }

    @k
    public final int K(@NotNull String msg, @Nullable Throwable th2) {
        M.p(msg, "msg");
        return z(this, d.WARN, msg, null, th2, 4, null);
    }

    @k
    public final int L(@NotNull String format, @NotNull Object... args) {
        M.p(format, "format");
        M.p(args, "args");
        return O(this, format, args, null, 4, null);
    }

    @k
    public final int M(@NotNull String format, @NotNull Object[] args, @Nullable Throwable th2) {
        M.p(format, "format");
        M.p(args, "args");
        return y(d.WARN, format, args, th2);
    }

    @k
    public final int b(@NotNull String msg) {
        M.p(msg, "msg");
        return f(this, msg, null, 2, null);
    }

    @k
    public final int c(@NotNull String msg, @Nullable Throwable th2) {
        M.p(msg, "msg");
        return z(this, d.DEBUG, msg, null, th2, 4, null);
    }

    @k
    public final int d(@NotNull String format, @NotNull Object... args) {
        M.p(format, "format");
        M.p(args, "args");
        return g(this, format, args, null, 4, null);
    }

    @k
    public final int e(@NotNull String format, @NotNull Object[] args, @Nullable Throwable th2) {
        M.p(format, "format");
        M.p(args, "args");
        return y(d.DEBUG, format, args, th2);
    }

    @k
    public final int h(@NotNull String msg) {
        M.p(msg, "msg");
        return l(this, msg, null, 2, null);
    }

    @k
    public final int i(@NotNull String msg, @Nullable Throwable th2) {
        M.p(msg, "msg");
        return z(this, d.ERROR, msg, null, th2, 4, null);
    }

    @k
    public final int j(@NotNull String format, @NotNull Object... args) {
        M.p(format, "format");
        M.p(args, "args");
        return m(this, format, args, null, 4, null);
    }

    @k
    public final int k(@NotNull String format, @NotNull Object[] args, @Nullable Throwable th2) {
        M.p(format, "format");
        M.p(args, "args");
        return y(d.ERROR, format, args, th2);
    }

    public final boolean n() {
        return this.f94832b;
    }

    @NotNull
    public final d p() {
        return this.f94833c;
    }

    @NotNull
    public final String q() {
        return this.f94831a;
    }

    @k
    public final int r(@NotNull String msg) {
        M.p(msg, "msg");
        return v(this, msg, null, 2, null);
    }

    @k
    public final int s(@NotNull String msg, @Nullable Throwable th2) {
        M.p(msg, "msg");
        return z(this, d.INFO, msg, null, th2, 4, null);
    }

    @k
    public final int t(@NotNull String format, @NotNull Object... args) {
        M.p(format, "format");
        M.p(args, "args");
        return w(this, format, args, null, 4, null);
    }

    @k
    public final int u(@NotNull String format, @NotNull Object[] args, @Nullable Throwable th2) {
        M.p(format, "format");
        M.p(args, "args");
        return y(d.INFO, format, args, th2);
    }

    public abstract int x(@NotNull d dVar, @NotNull String str, @NotNull Object[] objArr, @Nullable Throwable th2);

    public final int y(d dVar, String str, Object[] objArr, Throwable th2) {
        if (!this.f94832b || (this.f94833c.b() > dVar.b() && !Log.isLoggable(this.f94831a, dVar.b()))) {
            return 0;
        }
        return x(dVar, str, objArr, th2);
    }

    public AbstractC13934a(String str, boolean z10, d dVar) {
        this.f94831a = str;
        this.f94832b = z10;
        this.f94833c = dVar;
    }
}
