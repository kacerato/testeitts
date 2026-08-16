package kotlin.jvm.internal;

import Nf.g;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import nf.InterfaceC14392B;

public class w0 {
    public static int A(Object obj) {
        if (obj instanceof F) {
            return ((F) obj).getArity();
        }
        if (obj instanceof Mf.a) {
            return 0;
        }
        if (obj instanceof Mf.l) {
            return 1;
        }
        if (obj instanceof Mf.p) {
            return 2;
        }
        if (obj instanceof Mf.q) {
            return 3;
        }
        if (obj instanceof Mf.r) {
            return 4;
        }
        if (obj instanceof Mf.s) {
            return 5;
        }
        if (obj instanceof Mf.t) {
            return 6;
        }
        if (obj instanceof Mf.u) {
            return 7;
        }
        if (obj instanceof Mf.v) {
            return 8;
        }
        if (obj instanceof Mf.w) {
            return 9;
        }
        if (obj instanceof Mf.b) {
            return 10;
        }
        if (obj instanceof Mf.c) {
            return 11;
        }
        if (obj instanceof Mf.d) {
            return 12;
        }
        if (obj instanceof Mf.e) {
            return 13;
        }
        if (obj instanceof Mf.f) {
            return 14;
        }
        if (obj instanceof Mf.g) {
            return 15;
        }
        if (obj instanceof Mf.h) {
            return 16;
        }
        if (obj instanceof Mf.i) {
            return 17;
        }
        if (obj instanceof Mf.j) {
            return 18;
        }
        if (obj instanceof Mf.k) {
            return 19;
        }
        if (obj instanceof Mf.m) {
            return 20;
        }
        if (obj instanceof Mf.n) {
            return 21;
        }
        return obj instanceof Mf.o ? 22 : -1;
    }

    public static boolean B(Object obj, int i10) {
        return (obj instanceof InterfaceC14392B) && A(obj) == i10;
    }

    public static boolean C(Object obj) {
        return (obj instanceof Collection) && (!(obj instanceof Nf.a) || (obj instanceof Nf.b));
    }

    public static boolean D(Object obj) {
        return (obj instanceof Iterable) && (!(obj instanceof Nf.a) || (obj instanceof Nf.c));
    }

    public static boolean E(Object obj) {
        return (obj instanceof Iterator) && (!(obj instanceof Nf.a) || (obj instanceof Nf.d));
    }

    public static boolean F(Object obj) {
        return (obj instanceof List) && (!(obj instanceof Nf.a) || (obj instanceof Nf.e));
    }

    public static boolean G(Object obj) {
        return (obj instanceof ListIterator) && (!(obj instanceof Nf.a) || (obj instanceof Nf.f));
    }

    public static boolean H(Object obj) {
        return (obj instanceof Map) && (!(obj instanceof Nf.a) || (obj instanceof Nf.g));
    }

    public static boolean I(Object obj) {
        return (obj instanceof Map.Entry) && (!(obj instanceof Nf.a) || (obj instanceof g.a));
    }

    public static boolean J(Object obj) {
        return (obj instanceof Set) && (!(obj instanceof Nf.a) || (obj instanceof Nf.h));
    }

    public static <T extends Throwable> T K(T t10) {
        return (T) M.B(t10, w0.class.getName());
    }

    public static ClassCastException L(ClassCastException classCastException) {
        throw ((ClassCastException) K(classCastException));
    }

    public static void M(Object obj, String str) {
        N((obj == null ? "null" : obj.getClass().getName()) + " cannot be cast to " + str);
    }

    public static void N(String str) {
        throw L(new ClassCastException(str));
    }

    public static Collection a(Object obj) {
        if ((obj instanceof Nf.a) && !(obj instanceof Nf.b)) {
            M(obj, "kotlin.collections.MutableCollection");
        }
        return s(obj);
    }

    public static Collection b(Object obj, String str) {
        if ((obj instanceof Nf.a) && !(obj instanceof Nf.b)) {
            N(str);
        }
        return s(obj);
    }

    public static Iterable c(Object obj) {
        if ((obj instanceof Nf.a) && !(obj instanceof Nf.c)) {
            M(obj, "kotlin.collections.MutableIterable");
        }
        return t(obj);
    }

    public static Iterable d(Object obj, String str) {
        if ((obj instanceof Nf.a) && !(obj instanceof Nf.c)) {
            N(str);
        }
        return t(obj);
    }

    public static Iterator e(Object obj) {
        if ((obj instanceof Nf.a) && !(obj instanceof Nf.d)) {
            M(obj, "kotlin.collections.MutableIterator");
        }
        return u(obj);
    }

    public static Iterator f(Object obj, String str) {
        if ((obj instanceof Nf.a) && !(obj instanceof Nf.d)) {
            N(str);
        }
        return u(obj);
    }

    public static List g(Object obj) {
        if ((obj instanceof Nf.a) && !(obj instanceof Nf.e)) {
            M(obj, "kotlin.collections.MutableList");
        }
        return v(obj);
    }

    public static List h(Object obj, String str) {
        if ((obj instanceof Nf.a) && !(obj instanceof Nf.e)) {
            N(str);
        }
        return v(obj);
    }

    public static ListIterator i(Object obj) {
        if ((obj instanceof Nf.a) && !(obj instanceof Nf.f)) {
            M(obj, "kotlin.collections.MutableListIterator");
        }
        return w(obj);
    }

    public static ListIterator j(Object obj, String str) {
        if ((obj instanceof Nf.a) && !(obj instanceof Nf.f)) {
            N(str);
        }
        return w(obj);
    }

    public static Map k(Object obj) {
        if ((obj instanceof Nf.a) && !(obj instanceof Nf.g)) {
            M(obj, "kotlin.collections.MutableMap");
        }
        return x(obj);
    }

    public static Map l(Object obj, String str) {
        if ((obj instanceof Nf.a) && !(obj instanceof Nf.g)) {
            N(str);
        }
        return x(obj);
    }

    public static Map.Entry m(Object obj) {
        if ((obj instanceof Nf.a) && !(obj instanceof g.a)) {
            M(obj, "kotlin.collections.MutableMap.MutableEntry");
        }
        return y(obj);
    }

    public static Map.Entry n(Object obj, String str) {
        if ((obj instanceof Nf.a) && !(obj instanceof g.a)) {
            N(str);
        }
        return y(obj);
    }

    public static Set o(Object obj) {
        if ((obj instanceof Nf.a) && !(obj instanceof Nf.h)) {
            M(obj, "kotlin.collections.MutableSet");
        }
        return z(obj);
    }

    public static Set p(Object obj, String str) {
        if ((obj instanceof Nf.a) && !(obj instanceof Nf.h)) {
            N(str);
        }
        return z(obj);
    }

    public static Object q(Object obj, int i10) {
        if (obj != null && !B(obj, i10)) {
            M(obj, "kotlin.jvm.functions.Function" + i10);
        }
        return obj;
    }

    public static Object r(Object obj, int i10, String str) {
        if (obj != null && !B(obj, i10)) {
            N(str);
        }
        return obj;
    }

    public static Collection s(Object obj) {
        try {
            return (Collection) obj;
        } catch (ClassCastException e10) {
            throw L(e10);
        }
    }

    public static Iterable t(Object obj) {
        try {
            return (Iterable) obj;
        } catch (ClassCastException e10) {
            throw L(e10);
        }
    }

    public static Iterator u(Object obj) {
        try {
            return (Iterator) obj;
        } catch (ClassCastException e10) {
            throw L(e10);
        }
    }

    public static List v(Object obj) {
        try {
            return (List) obj;
        } catch (ClassCastException e10) {
            throw L(e10);
        }
    }

    public static ListIterator w(Object obj) {
        try {
            return (ListIterator) obj;
        } catch (ClassCastException e10) {
            throw L(e10);
        }
    }

    public static Map x(Object obj) {
        try {
            return (Map) obj;
        } catch (ClassCastException e10) {
            throw L(e10);
        }
    }

    public static Map.Entry y(Object obj) {
        try {
            return (Map.Entry) obj;
        } catch (ClassCastException e10) {
            throw L(e10);
        }
    }

    public static Set z(Object obj) {
        try {
            return (Set) obj;
        } catch (ClassCastException e10) {
            throw L(e10);
        }
    }
}
