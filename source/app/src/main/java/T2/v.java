package T2;

import a1.InterfaceC3542j;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.core.IClasspathAttribute;

public final class v {

    public final F<?> f24030a;

    public final int f24031b;

    public final int f24032c;

    public v(Class<?> cls, int i10, int i11) {
        this((F<?>) F.b(cls), i10, i11);
    }

    public static v a(F<?> f10) {
        return new v(f10, 0, 2);
    }

    public static v b(Class<?> cls) {
        return new v(cls, 0, 2);
    }

    public static String c(int i10) {
        if (i10 == 0) {
            return InterfaceC3542j.f31597H;
        }
        if (i10 == 1) {
            return "provider";
        }
        if (i10 == 2) {
            return "deferred";
        }
        throw new AssertionError((Object) ("Unsupported injection: " + i10));
    }

    @Deprecated
    public static v i(Class<?> cls) {
        return new v(cls, 0, 0);
    }

    public static v j(F<?> f10) {
        return new v(f10, 0, 1);
    }

    public static v k(Class<?> cls) {
        return new v(cls, 0, 1);
    }

    public static v l(F<?> f10) {
        return new v(f10, 1, 0);
    }

    public static v m(Class<?> cls) {
        return new v(cls, 1, 0);
    }

    public static v n(F<?> f10) {
        return new v(f10, 1, 1);
    }

    public static v o(Class<?> cls) {
        return new v(cls, 1, 1);
    }

    public static v p(F<?> f10) {
        return new v(f10, 2, 0);
    }

    public static v q(Class<?> cls) {
        return new v(cls, 2, 0);
    }

    public static v r(F<?> f10) {
        return new v(f10, 2, 1);
    }

    public static v s(Class<?> cls) {
        return new v(cls, 2, 1);
    }

    public F<?> d() {
        return this.f24030a;
    }

    public boolean e() {
        return this.f24032c == 2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof v)) {
            return false;
        }
        v vVar = (v) obj;
        return this.f24030a.equals(vVar.f24030a) && this.f24031b == vVar.f24031b && this.f24032c == vVar.f24032c;
    }

    public boolean f() {
        return this.f24032c == 0;
    }

    public boolean g() {
        return this.f24031b == 1;
    }

    public boolean h() {
        return this.f24031b == 2;
    }

    public int hashCode() {
        return ((((this.f24030a.hashCode() ^ 1000003) * 1000003) ^ this.f24031b) * 1000003) ^ this.f24032c;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("Dependency{anInterface=");
        sb2.append((Object) this.f24030a);
        sb2.append(", type=");
        int i10 = this.f24031b;
        sb2.append(i10 == 1 ? "required" : i10 == 0 ? IClasspathAttribute.OPTIONAL : "set");
        sb2.append(", injection=");
        sb2.append(c(this.f24032c));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    public v(F<?> f10, int i10, int i11) {
        this.f24030a = (F) E.c(f10, "Null dependency anInterface.");
        this.f24031b = i10;
        this.f24032c = i11;
    }
}
