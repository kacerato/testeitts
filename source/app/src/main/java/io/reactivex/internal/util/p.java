package io.reactivex.internal.util;

import Be.I;
import java.io.Serializable;

public enum p {
    COMPLETE;

    public static final class a implements Serializable {

        public static final long f92448c = -7482590109178395495L;

        public final De.c f92449b;

        public a(De.c cVar) {
            this.f92449b = cVar;
        }

        public String toString() {
            return "NotificationLite.Disposable[" + ((Object) this.f92449b) + "]";
        }
    }

    public static final class b implements Serializable {

        public static final long f92450c = -8759979445933046293L;

        public final Throwable f92451b;

        public b(Throwable th2) {
            this.f92451b = th2;
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                return He.b.c(this.f92451b, ((b) obj).f92451b);
            }
            return false;
        }

        public int hashCode() {
            return this.f92451b.hashCode();
        }

        public String toString() {
            return "NotificationLite.Error[" + ((Object) this.f92451b) + "]";
        }
    }

    public static final class c implements Serializable {

        public static final long f92452c = -1322257508628817540L;

        public final hn.d f92453b;

        public c(hn.d dVar) {
            this.f92453b = dVar;
        }

        public String toString() {
            return "NotificationLite.Subscription[" + ((Object) this.f92453b) + "]";
        }
    }

    public static <T> boolean a(Object obj, I<? super T> i10) {
        if (obj == COMPLETE) {
            i10.a();
            return true;
        }
        if (obj instanceof b) {
            i10.onError(((b) obj).f92451b);
            return true;
        }
        i10.h(obj);
        return false;
    }

    public static <T> boolean b(Object obj, hn.c<? super T> cVar) {
        if (obj == COMPLETE) {
            cVar.a();
            return true;
        }
        if (obj instanceof b) {
            cVar.onError(((b) obj).f92451b);
            return true;
        }
        cVar.h(obj);
        return false;
    }

    public static <T> boolean c(Object obj, I<? super T> i10) {
        if (obj == COMPLETE) {
            i10.a();
            return true;
        }
        if (obj instanceof b) {
            i10.onError(((b) obj).f92451b);
            return true;
        }
        if (obj instanceof a) {
            i10.e(((a) obj).f92449b);
            return false;
        }
        i10.h(obj);
        return false;
    }

    public static <T> boolean d(Object obj, hn.c<? super T> cVar) {
        if (obj == COMPLETE) {
            cVar.a();
            return true;
        }
        if (obj instanceof b) {
            cVar.onError(((b) obj).f92451b);
            return true;
        }
        if (obj instanceof c) {
            cVar.j(((c) obj).f92453b);
            return false;
        }
        cVar.h(obj);
        return false;
    }

    public static Object e() {
        return COMPLETE;
    }

    public static Object g(De.c cVar) {
        return new a(cVar);
    }

    public static Object h(Throwable th2) {
        return new b(th2);
    }

    public static De.c i(Object obj) {
        return ((a) obj).f92449b;
    }

    public static Throwable j(Object obj) {
        return ((b) obj).f92451b;
    }

    public static hn.d k(Object obj) {
        return ((c) obj).f92453b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T m(Object obj) {
        return obj;
    }

    public static boolean o(Object obj) {
        return obj == COMPLETE;
    }

    public static boolean q(Object obj) {
        return obj instanceof a;
    }

    public static boolean r(Object obj) {
        return obj instanceof b;
    }

    public static boolean s(Object obj) {
        return obj instanceof c;
    }

    public static <T> Object u(T t10) {
        return t10;
    }

    public static Object v(hn.d dVar) {
        return new c(dVar);
    }

    @Override
    public String toString() {
        return "NotificationLite.Complete";
    }
}
