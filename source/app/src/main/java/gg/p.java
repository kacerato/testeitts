package gg;

import eg.F0;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import nf.InterfaceC14410f0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Lf.h
public final class p<T> {

    @NotNull
    public static final b f89695b = new b(null);

    @NotNull
    public static final c f89696c = new c();

    @Nullable
    public final Object f89697a;

    public static final class a extends c {

        @Lf.g
        @Nullable
        public final Throwable f89698a;

        public a(@Nullable Throwable th2) {
            this.f89698a = th2;
        }

        public boolean equals(@Nullable Object obj) {
            return (obj instanceof a) && M.g(this.f89698a, ((a) obj).f89698a);
        }

        public int hashCode() {
            Throwable th2 = this.f89698a;
            if (th2 != null) {
                return th2.hashCode();
            }
            return 0;
        }

        @Override
        @NotNull
        public String toString() {
            return "Closed(" + ((Object) this.f89698a) + ')';
        }
    }

    @F0
    public static final class b {
        public b(C14026x c14026x) {
            this();
        }

        @F0
        @NotNull
        public final <E> Object a(@Nullable Throwable th2) {
            return p.c(new a(th2));
        }

        @F0
        @NotNull
        public final <E> Object b() {
            return p.c(p.f89696c);
        }

        @F0
        @NotNull
        public final <E> Object c(E e10) {
            return p.c(e10);
        }

        public b() {
        }
    }

    public static class c {
        @NotNull
        public String toString() {
            return "Failed";
        }
    }

    @InterfaceC14410f0
    public p(Object obj) {
        this.f89697a = obj;
    }

    public static final p b(Object obj) {
        return new p(obj);
    }

    @InterfaceC14410f0
    @NotNull
    public static <T> Object c(@Nullable Object obj) {
        return obj;
    }

    public static boolean d(Object obj, Object obj2) {
        return (obj2 instanceof p) && M.g(obj, ((p) obj2).o());
    }

    public static final boolean e(Object obj, Object obj2) {
        return M.g(obj, obj2);
    }

    @Nullable
    public static final Throwable f(Object obj) {
        a aVar = obj instanceof a ? (a) obj : null;
        if (aVar != null) {
            return aVar.f89698a;
        }
        return null;
    }

    @InterfaceC14410f0
    public static void g() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static final T h(Object obj) {
        if (obj instanceof c) {
            return null;
        }
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final T i(Object obj) {
        Throwable th2;
        if (!(obj instanceof c)) {
            return obj;
        }
        if ((obj instanceof a) && (th2 = ((a) obj).f89698a) != null) {
            throw th2;
        }
        throw new IllegalStateException(("Trying to call 'getOrThrow' on a failed channel result: " + obj).toString());
    }

    public static int j(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public static final boolean k(Object obj) {
        return obj instanceof a;
    }

    public static final boolean l(Object obj) {
        return obj instanceof c;
    }

    public static final boolean m(Object obj) {
        return !(obj instanceof c);
    }

    @NotNull
    public static String n(Object obj) {
        if (obj instanceof a) {
            return ((a) obj).toString();
        }
        return "Value(" + obj + ')';
    }

    public boolean equals(Object obj) {
        return d(this.f89697a, obj);
    }

    public int hashCode() {
        return j(this.f89697a);
    }

    public final Object o() {
        return this.f89697a;
    }

    @NotNull
    public String toString() {
        return n(this.f89697a);
    }
}
