package nf;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.Serializable;
import kotlin.jvm.internal.C14026x;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Lf.h
@InterfaceC14422l0(version = "1.3")
public final class C14416i0<T> implements Serializable {

    @NotNull
    public static final a f98201c = new a(null);

    @Nullable
    public final Object f98202b;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        @Ef.f
        @Lf.j(name = "failure")
        public final <T> Object a(Throwable exception) {
            kotlin.jvm.internal.M.p(exception, "exception");
            return C14416i0.b(C14418j0.a(exception));
        }

        @Ef.f
        @Lf.j(name = FirebaseAnalytics.d.f67668H)
        public final <T> Object b(T t10) {
            return C14416i0.b(t10);
        }

        public a() {
        }
    }

    public static final class b implements Serializable {

        @Lf.g
        @NotNull
        public final Throwable f98203b;

        public b(@NotNull Throwable exception) {
            kotlin.jvm.internal.M.p(exception, "exception");
            this.f98203b = exception;
        }

        public boolean equals(@Nullable Object obj) {
            return (obj instanceof b) && kotlin.jvm.internal.M.g(this.f98203b, ((b) obj).f98203b);
        }

        public int hashCode() {
            return this.f98203b.hashCode();
        }

        @NotNull
        public String toString() {
            return "Failure(" + ((Object) this.f98203b) + ')';
        }
    }

    @InterfaceC14410f0
    public C14416i0(Object obj) {
        this.f98202b = obj;
    }

    public static final C14416i0 a(Object obj) {
        return new C14416i0(obj);
    }

    @InterfaceC14410f0
    @NotNull
    public static <T> Object b(@Nullable Object obj) {
        return obj;
    }

    public static boolean c(Object obj, Object obj2) {
        return (obj2 instanceof C14416i0) && kotlin.jvm.internal.M.g(obj, ((C14416i0) obj2).l());
    }

    public static final boolean d(Object obj, Object obj2) {
        return kotlin.jvm.internal.M.g(obj, obj2);
    }

    @Nullable
    public static final Throwable e(Object obj) {
        if (obj instanceof b) {
            return ((b) obj).f98203b;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    public static final T f(Object obj) {
        if (i(obj)) {
            return null;
        }
        return obj;
    }

    @InterfaceC14410f0
    public static void g() {
    }

    public static int h(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public static final boolean i(Object obj) {
        return obj instanceof b;
    }

    public static final boolean j(Object obj) {
        return !(obj instanceof b);
    }

    @NotNull
    public static String k(Object obj) {
        if (obj instanceof b) {
            return ((b) obj).toString();
        }
        return "Success(" + obj + ')';
    }

    public boolean equals(Object obj) {
        return c(this.f98202b, obj);
    }

    public int hashCode() {
        return h(this.f98202b);
    }

    public final Object l() {
        return this.f98202b;
    }

    @NotNull
    public String toString() {
        return k(this.f98202b);
    }
}
