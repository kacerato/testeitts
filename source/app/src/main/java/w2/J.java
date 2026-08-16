package w2;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import javax.annotation.CheckForNull;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import v2.InterfaceC15800a;

@InterfaceC15894k
@v2.b(emulated = true)
public final class J {

    public static class b<T> implements I<T>, Serializable {

        public static final long f126148c = 0;

        public final List<? extends I<? super T>> f126149b;

        @Override
        public boolean apply(@E T t10) {
            for (int i10 = 0; i10 < this.f126149b.size(); i10++) {
                if (!this.f126149b.get(i10).apply(t10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof b) {
                return this.f126149b.equals(((b) obj).f126149b);
            }
            return false;
        }

        public int hashCode() {
            return this.f126149b.hashCode() + 306654252;
        }

        public String toString() {
            return J.w("and", this.f126149b);
        }

        public b(List<? extends I<? super T>> list) {
            this.f126149b = list;
        }
    }

    public static class c<A, B> implements I<A>, Serializable {

        public static final long f126150d = 0;

        public final I<B> f126151b;

        public final InterfaceC15902t<A, ? extends B> f126152c;

        @Override
        public boolean apply(@E A a10) {
            return this.f126151b.apply(this.f126152c.apply(a10));
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f126152c.equals(cVar.f126152c) && this.f126151b.equals(cVar.f126151b);
        }

        public int hashCode() {
            return this.f126152c.hashCode() ^ this.f126151b.hashCode();
        }

        public String toString() {
            String valueOf = String.valueOf(this.f126151b);
            String valueOf2 = String.valueOf(this.f126152c);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 2 + valueOf2.length());
            sb2.append(valueOf);
            sb2.append("(");
            sb2.append(valueOf2);
            sb2.append(")");
            return sb2.toString();
        }

        public c(I<B> i10, InterfaceC15902t<A, ? extends B> interfaceC15902t) {
            this.f126151b = (I) H.E(i10);
            this.f126152c = (InterfaceC15902t) H.E(interfaceC15902t);
        }
    }

    @v2.c
    public static class d extends e {

        public static final long f126153d = 0;

        public d(String str) {
            super(G.b(str));
        }

        @Override
        public String toString() {
            String e10 = this.f126155b.e();
            StringBuilder sb2 = new StringBuilder(String.valueOf(e10).length() + 28);
            sb2.append("Predicates.containsPattern(");
            sb2.append(e10);
            sb2.append(")");
            return sb2.toString();
        }
    }

    @v2.c
    public static class e implements I<CharSequence>, Serializable {

        public static final long f126154c = 0;

        public final AbstractC15891h f126155b;

        public e(AbstractC15891h abstractC15891h) {
            this.f126155b = (AbstractC15891h) H.E(abstractC15891h);
        }

        @Override
        public boolean apply(CharSequence charSequence) {
            return this.f126155b.d(charSequence).b();
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            return B.a(this.f126155b.e(), eVar.f126155b.e()) && this.f126155b.b() == eVar.f126155b.b();
        }

        public int hashCode() {
            return B.b(this.f126155b.e(), Integer.valueOf(this.f126155b.b()));
        }

        public String toString() {
            String bVar = z.c(this.f126155b).f(ClasspathEntry.TAG_PATTERN, this.f126155b.e()).d("pattern.flags", this.f126155b.b()).toString();
            StringBuilder sb2 = new StringBuilder(String.valueOf(bVar).length() + 21);
            sb2.append("Predicates.contains(");
            sb2.append(bVar);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static class f<T> implements I<T>, Serializable {

        public static final long f126156c = 0;

        public final Collection<?> f126157b;

        @Override
        public boolean apply(@E T t10) {
            try {
                return this.f126157b.contains(t10);
            } catch (ClassCastException | NullPointerException unused) {
                return false;
            }
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof f) {
                return this.f126157b.equals(((f) obj).f126157b);
            }
            return false;
        }

        public int hashCode() {
            return this.f126157b.hashCode();
        }

        public String toString() {
            String valueOf = String.valueOf(this.f126157b);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 15);
            sb2.append("Predicates.in(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }

        public f(Collection<?> collection) {
            this.f126157b = (Collection) H.E(collection);
        }
    }

    @v2.c
    public static class g<T> implements I<T>, Serializable {

        public static final long f126158c = 0;

        public final Class<?> f126159b;

        @Override
        public boolean apply(@E T t10) {
            return this.f126159b.isInstance(t10);
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            return (obj instanceof g) && this.f126159b == ((g) obj).f126159b;
        }

        public int hashCode() {
            return this.f126159b.hashCode();
        }

        public String toString() {
            String name = this.f126159b.getName();
            StringBuilder sb2 = new StringBuilder(name.length() + 23);
            sb2.append("Predicates.instanceOf(");
            sb2.append(name);
            sb2.append(")");
            return sb2.toString();
        }

        public g(Class<?> cls) {
            this.f126159b = (Class) H.E(cls);
        }
    }

    public static class h implements I<Object>, Serializable {

        public static final long f126160c = 0;

        public final Object f126161b;

        public <T> I<T> a() {
            return this;
        }

        @Override
        public boolean apply(@CheckForNull Object obj) {
            return this.f126161b.equals(obj);
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof h) {
                return this.f126161b.equals(((h) obj).f126161b);
            }
            return false;
        }

        public int hashCode() {
            return this.f126161b.hashCode();
        }

        public String toString() {
            String valueOf = String.valueOf(this.f126161b);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 20);
            sb2.append("Predicates.equalTo(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }

        public h(Object obj) {
            this.f126161b = obj;
        }
    }

    public static class i<T> implements I<T>, Serializable {

        public static final long f126162c = 0;

        public final I<T> f126163b;

        public i(I<T> i10) {
            this.f126163b = (I) H.E(i10);
        }

        @Override
        public boolean apply(@E T t10) {
            return !this.f126163b.apply(t10);
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof i) {
                return this.f126163b.equals(((i) obj).f126163b);
            }
            return false;
        }

        public int hashCode() {
            return ~this.f126163b.hashCode();
        }

        public String toString() {
            String valueOf = String.valueOf(this.f126163b);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 16);
            sb2.append("Predicates.not(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class j implements I<Object> {
        public static final j ALWAYS_TRUE = new a("ALWAYS_TRUE", 0);
        public static final j ALWAYS_FALSE = new b("ALWAYS_FALSE", 1);
        public static final j IS_NULL = new c("IS_NULL", 2);
        public static final j NOT_NULL = new d("NOT_NULL", 3);
        private static final j[] $VALUES = a();

        public enum a extends j {
            public a(String str, int i10) {
                super(str, i10);
            }

            @Override
            public boolean apply(@CheckForNull Object obj) {
                return true;
            }

            @Override
            public String toString() {
                return "Predicates.alwaysTrue()";
            }
        }

        public enum b extends j {
            public b(String str, int i10) {
                super(str, i10);
            }

            @Override
            public boolean apply(@CheckForNull Object obj) {
                return false;
            }

            @Override
            public String toString() {
                return "Predicates.alwaysFalse()";
            }
        }

        public enum c extends j {
            public c(String str, int i10) {
                super(str, i10);
            }

            @Override
            public boolean apply(@CheckForNull Object obj) {
                return obj == null;
            }

            @Override
            public String toString() {
                return "Predicates.isNull()";
            }
        }

        public enum d extends j {
            public d(String str, int i10) {
                super(str, i10);
            }

            @Override
            public boolean apply(@CheckForNull Object obj) {
                return obj != null;
            }

            @Override
            public String toString() {
                return "Predicates.notNull()";
            }
        }

        public j(String str, int i10) {
        }

        public static j[] a() {
            return new j[]{ALWAYS_TRUE, ALWAYS_FALSE, IS_NULL, NOT_NULL};
        }

        public static j valueOf(String str) {
            return (j) Enum.valueOf(j.class, str);
        }

        public static j[] values() {
            return (j[]) $VALUES.clone();
        }

        public <T> I<T> b() {
            return this;
        }
    }

    public static class k<T> implements I<T>, Serializable {

        public static final long f126164c = 0;

        public final List<? extends I<? super T>> f126165b;

        @Override
        public boolean apply(@E T t10) {
            for (int i10 = 0; i10 < this.f126165b.size(); i10++) {
                if (this.f126165b.get(i10).apply(t10)) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof k) {
                return this.f126165b.equals(((k) obj).f126165b);
            }
            return false;
        }

        public int hashCode() {
            return this.f126165b.hashCode() + 87855567;
        }

        public String toString() {
            return J.w("or", this.f126165b);
        }

        public k(List<? extends I<? super T>> list) {
            this.f126165b = list;
        }
    }

    @v2.c
    public static class l implements I<Class<?>>, Serializable {

        public static final long f126166c = 0;

        public final Class<?> f126167b;

        @Override
        public boolean apply(Class<?> cls) {
            return this.f126167b.isAssignableFrom(cls);
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            return (obj instanceof l) && this.f126167b == ((l) obj).f126167b;
        }

        public int hashCode() {
            return this.f126167b.hashCode();
        }

        public String toString() {
            String name = this.f126167b.getName();
            StringBuilder sb2 = new StringBuilder(name.length() + 22);
            sb2.append("Predicates.subtypeOf(");
            sb2.append(name);
            sb2.append(")");
            return sb2.toString();
        }

        public l(Class<?> cls) {
            this.f126167b = (Class) H.E(cls);
        }
    }

    @v2.b(serializable = true)
    public static <T> I<T> b() {
        return j.ALWAYS_FALSE.b();
    }

    @v2.b(serializable = true)
    public static <T> I<T> c() {
        return j.ALWAYS_TRUE.b();
    }

    public static <T> I<T> d(Iterable<? extends I<? super T>> iterable) {
        return new b(k(iterable));
    }

    public static <T> I<T> e(I<? super T> i10, I<? super T> i11) {
        return new b(g((I) H.E(i10), (I) H.E(i11)));
    }

    @SafeVarargs
    public static <T> I<T> f(I<? super T>... iArr) {
        return new b(l(iArr));
    }

    public static <T> List<I<? super T>> g(I<? super T> i10, I<? super T> i11) {
        return Arrays.asList(i10, i11);
    }

    public static <A, B> I<A> h(I<B> i10, InterfaceC15902t<A, ? extends B> interfaceC15902t) {
        return new c(i10, interfaceC15902t);
    }

    @v2.c("java.util.regex.Pattern")
    public static I<CharSequence> i(Pattern pattern) {
        return new e(new C15906x(pattern));
    }

    @v2.c
    public static I<CharSequence> j(String str) {
        return new d(str);
    }

    public static <T> List<T> k(Iterable<T> iterable) {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(H.E(it.next()));
        }
        return arrayList;
    }

    public static <T> List<T> l(T... tArr) {
        return k(Arrays.asList(tArr));
    }

    public static <T> I<T> m(@E T t10) {
        return t10 == null ? p() : new h(t10).a();
    }

    public static <T> I<T> n(Collection<? extends T> collection) {
        return new f(collection);
    }

    @v2.c
    public static <T> I<T> o(Class<?> cls) {
        return new g(cls);
    }

    @v2.b(serializable = true)
    public static <T> I<T> p() {
        return j.IS_NULL.b();
    }

    public static <T> I<T> q(I<T> i10) {
        return new i(i10);
    }

    @v2.b(serializable = true)
    public static <T> I<T> r() {
        return j.NOT_NULL.b();
    }

    public static <T> I<T> s(Iterable<? extends I<? super T>> iterable) {
        return new k(k(iterable));
    }

    public static <T> I<T> t(I<? super T> i10, I<? super T> i11) {
        return new k(g((I) H.E(i10), (I) H.E(i11)));
    }

    @SafeVarargs
    public static <T> I<T> u(I<? super T>... iArr) {
        return new k(l(iArr));
    }

    @v2.c
    @InterfaceC15800a
    public static I<Class<?>> v(Class<?> cls) {
        return new l(cls);
    }

    public static String w(String str, Iterable<?> iterable) {
        StringBuilder sb2 = new StringBuilder("Predicates.");
        sb2.append(str);
        sb2.append('(');
        boolean z10 = true;
        for (Object obj : iterable) {
            if (!z10) {
                sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
            }
            sb2.append(obj);
            z10 = false;
        }
        sb2.append(')');
        return sb2.toString();
    }
}
