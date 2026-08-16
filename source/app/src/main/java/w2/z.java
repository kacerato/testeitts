package w2;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import javax.annotation.CheckForNull;
import org.eclipse.jdt.internal.core.JavaElement;

@InterfaceC15894k
@v2.b
public final class z {

    public static final class b {

        public final String f126392a;

        public final C2084b f126393b;

        public C2084b f126394c;

        public boolean f126395d;

        public boolean f126396e;

        public static final class a extends C2084b {
            public a() {
                super();
            }
        }

        public static class C2084b {

            @CheckForNull
            public String f126397a;

            @CheckForNull
            public Object f126398b;

            @CheckForNull
            public C2084b f126399c;

            public C2084b() {
            }
        }

        public static boolean u(Object obj) {
            return obj instanceof CharSequence ? ((CharSequence) obj).length() == 0 : obj instanceof Collection ? ((Collection) obj).isEmpty() : obj instanceof Map ? ((Map) obj).isEmpty() : obj instanceof C ? !((C) obj).e() : obj.getClass().isArray() && Array.getLength(obj) == 0;
        }

        @I2.a
        public b a(String str, char c10) {
            return m(str, String.valueOf(c10));
        }

        @I2.a
        public b b(String str, double d10) {
            return m(str, String.valueOf(d10));
        }

        @I2.a
        public b c(String str, float f10) {
            return m(str, String.valueOf(f10));
        }

        @I2.a
        public b d(String str, int i10) {
            return m(str, String.valueOf(i10));
        }

        @I2.a
        public b e(String str, long j10) {
            return m(str, String.valueOf(j10));
        }

        @I2.a
        public b f(String str, @CheckForNull Object obj) {
            return j(str, obj);
        }

        @I2.a
        public b g(String str, boolean z10) {
            return m(str, String.valueOf(z10));
        }

        public final C2084b h() {
            C2084b c2084b = new C2084b();
            this.f126394c.f126399c = c2084b;
            this.f126394c = c2084b;
            return c2084b;
        }

        public final b i(@CheckForNull Object obj) {
            h().f126398b = obj;
            return this;
        }

        public final b j(String str, @CheckForNull Object obj) {
            C2084b h10 = h();
            h10.f126398b = obj;
            h10.f126397a = (String) H.E(str);
            return this;
        }

        public final a k() {
            a aVar = new a();
            this.f126394c.f126399c = aVar;
            this.f126394c = aVar;
            return aVar;
        }

        public final b l(Object obj) {
            k().f126398b = obj;
            return this;
        }

        public final b m(String str, Object obj) {
            a k10 = k();
            k10.f126398b = obj;
            k10.f126397a = (String) H.E(str);
            return this;
        }

        @I2.a
        public b n(char c10) {
            return l(String.valueOf(c10));
        }

        @I2.a
        public b o(double d10) {
            return l(String.valueOf(d10));
        }

        @I2.a
        public b p(float f10) {
            return l(String.valueOf(f10));
        }

        @I2.a
        public b q(int i10) {
            return l(String.valueOf(i10));
        }

        @I2.a
        public b r(long j10) {
            return l(String.valueOf(j10));
        }

        @I2.a
        public b s(@CheckForNull Object obj) {
            return i(obj);
        }

        @I2.a
        public b t(boolean z10) {
            return l(String.valueOf(z10));
        }

        public String toString() {
            boolean z10 = this.f126395d;
            boolean z11 = this.f126396e;
            StringBuilder sb2 = new StringBuilder(32);
            sb2.append(this.f126392a);
            sb2.append(JavaElement.JEM_COMPILATIONUNIT);
            String str = "";
            for (C2084b c2084b = this.f126393b.f126399c; c2084b != null; c2084b = c2084b.f126399c) {
                Object obj = c2084b.f126398b;
                if (!(c2084b instanceof a)) {
                    if (obj == null) {
                        if (z10) {
                        }
                    } else if (z11 && u(obj)) {
                    }
                }
                sb2.append(str);
                String str2 = c2084b.f126397a;
                if (str2 != null) {
                    sb2.append(str2);
                    sb2.append('=');
                }
                if (obj == null || !obj.getClass().isArray()) {
                    sb2.append(obj);
                } else {
                    String deepToString = Arrays.deepToString(new Object[]{obj});
                    sb2.append((CharSequence) deepToString, 1, deepToString.length() - 1);
                }
                str = ", ";
            }
            sb2.append(JavaElement.JEM_ANNOTATION);
            return sb2.toString();
        }

        @I2.a
        public b v() {
            this.f126395d = true;
            return this;
        }

        public b(String str) {
            C2084b c2084b = new C2084b();
            this.f126393b = c2084b;
            this.f126394c = c2084b;
            this.f126395d = false;
            this.f126396e = false;
            this.f126392a = (String) H.E(str);
        }
    }

    public static <T> T a(@CheckForNull T t10, T t11) {
        if (t10 != null) {
            return t10;
        }
        if (t11 != null) {
            return t11;
        }
        throw new NullPointerException("Both parameters are null");
    }

    public static b b(Class<?> cls) {
        return new b(cls.getSimpleName());
    }

    public static b c(Object obj) {
        return new b(obj.getClass().getSimpleName());
    }

    public static b d(String str) {
        return new b(str);
    }
}
