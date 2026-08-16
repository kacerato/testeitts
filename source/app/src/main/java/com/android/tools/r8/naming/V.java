package com.android.tools.r8.naming;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.internal.AbstractC9907vK;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C6246Ye;
import com.android.tools.r8.internal.C7660hs1;
import com.android.tools.r8.internal.C9663tt0;
import com.android.tools.r8.internal.O40;
import com.android.tools.r8.internal.V60;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.references.TypeReference;
import java.io.IOException;
import java.io.StringWriter;
import java.lang.constant.ConstantDescs;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.function.Function;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.openjdk.tools.doclint.DocLint;
import w2.C15883c;

public class V implements U, Comparable<V> {

    public static final List f55766f = Collections.EMPTY_LIST;

    public final c f55767b;

    public final c f55768c;

    public final Position f55769d;

    public List f55770e = f55766f;

    public static class a extends c {

        public static final boolean f55771d = true;

        public final String f55772c;

        public a(String str, String str2) {
            super(str);
            this.f55772c = str2;
        }

        @Override
        public final a a() {
            return this;
        }

        @Override
        public final c b(String str) {
            if (!f55771d && d()) {
                throw new AssertionError();
            }
            return new a(str + "." + this.f55777a, this.f55772c);
        }

        @Override
        public final int e() {
            return 2;
        }

        @Override
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f55777a.equals(aVar.f55777a) && this.f55772c.equals(aVar.f55772c);
        }

        @Override
        public final int hashCode() {
            return this.f55772c.hashCode() + (this.f55777a.hashCode() * 31);
        }

        @Override
        public final String toString() {
            return this.f55772c + " " + this.f55777a;
        }

        public static a a(C4554l1 c4554l1) {
            return new a(c4554l1.f38298g.j0(), c4554l1.f37449i.j0());
        }

        public C4554l1 a(C4724u1 c4724u1, com.android.tools.r8.graph.M2 m22) {
            return c4724u1.a(m22, c4724u1.d(C4932Bl.H(this.f55772c)), c4724u1.b(this.f55777a));
        }

        @Override
        public final c a(String str) {
            return new a(str, this.f55772c);
        }

        @Override
        public final c a(Function function, String str) {
            return new a(str, C4932Bl.a(function, this.f55772c));
        }

        @Override
        public final void a(StringWriter stringWriter) {
            stringWriter.append((CharSequence) this.f55772c);
            stringWriter.append(C15883c.f126249O);
            stringWriter.append((CharSequence) this.f55777a);
        }
    }

    public static class b extends c {

        public static final boolean f55773e = true;

        public final String f55774c;

        public final String[] f55775d;

        public b(String str, String str2, String[] strArr) {
            super(str);
            this.f55774c = str2;
            this.f55775d = strArr;
        }

        public static b a(String str, String str2) {
            return new b(str, C4932Bl.b(C9663tt0.a(str2, C9663tt0.e(str2), str2.length()).b()), com.android.tools.r8.internal.X3.a((Object[]) C9663tt0.b(str2), new Function() {
                @Override
                public final Object apply(Object obj) {
                    String b10;
                    b10 = C4932Bl.b(((C9663tt0) obj).b());
                    return b10;
                }
            }));
        }

        @Override
        public b b() {
            return this;
        }

        @Override
        public final int e() {
            return 1;
        }

        @Override
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f55774c.equals(bVar.f55774c) && this.f55777a.equals(bVar.f55777a) && Arrays.equals(this.f55775d, bVar.f55775d);
        }

        public String h() {
            StringBuilder sb2 = new StringBuilder("(");
            for (String str : this.f55775d) {
                sb2.append(C4932Bl.H(str));
            }
            sb2.append(')');
            sb2.append(C4932Bl.H(this.f55774c));
            return sb2.toString();
        }

        @Override
        public final int hashCode() {
            return ((this.f55777a.hashCode() + (this.f55774c.hashCode() * 17)) * 31) + Arrays.hashCode(this.f55775d);
        }

        public b i() {
            if (f55773e || d()) {
                return new b(g(), this.f55774c, this.f55775d);
            }
            throw new AssertionError();
        }

        @Override
        public String toString() {
            return this.f55774c + " " + this.f55777a + "(" + String.join(DocLint.SEPARATOR, this.f55775d) + ")";
        }

        @Override
        public final b a(final Function function, String str) {
            return new b(str, C4932Bl.a(function, this.f55774c), com.android.tools.r8.internal.X3.a((Object[]) this.f55775d, new Function() {
                @Override
                public final Object apply(Object obj) {
                    String a10;
                    a10 = C4932Bl.a(Function.this, (String) obj);
                    return a10;
                }
            }));
        }

        public b(String str, String str2, Collection<String> collection) {
            super(str);
            this.f55774c = str2;
            this.f55775d = (String[]) collection.toArray(C10656zq0.f54546b);
        }

        @Override
        public final c b(String str) {
            return new b(str + "." + this.f55777a, this.f55774c, this.f55775d);
        }

        public static b a(com.android.tools.r8.graph.A2 a22) {
            return a(a22, false);
        }

        public static b a(com.android.tools.r8.graph.A2 a22, boolean z10) {
            String[] strArr = new String[a22.w0()];
            com.android.tools.r8.graph.M2[] m2Arr = a22.f36127i.f36441f.f36675b;
            for (int i10 = 0; i10 < m2Arr.length; i10++) {
                strArr[i10] = m2Arr[i10].j0();
            }
            return new b(z10 ? a22.A0() : a22.f38298g.j0(), a22.f36127i.f36440e.j0(), strArr);
        }

        public static b a(MethodReference methodReference) {
            TypeReference returnType = methodReference.getReturnType();
            return new b(methodReference.getMethodName(), returnType == null ? "void" : returnType.getTypeName(), C6246Ye.a(methodReference.getFormalTypes(), new C7660hs1()));
        }

        public com.android.tools.r8.graph.A2 a(C4724u1 c4724u1, com.android.tools.r8.graph.M2 m22) {
            com.android.tools.r8.graph.M2[] m2Arr = new com.android.tools.r8.graph.M2[this.f55775d.length];
            int i10 = 0;
            while (true) {
                String[] strArr = this.f55775d;
                if (i10 < strArr.length) {
                    m2Arr[i10] = c4724u1.d(C4932Bl.H(strArr[i10]));
                    i10++;
                } else {
                    return c4724u1.a(m22, c4724u1.a(c4724u1.d(C4932Bl.H(this.f55774c)), m2Arr), c4724u1.b(this.f55777a));
                }
            }
        }

        public static b a(String[] strArr) {
            return new b(ConstantDescs.INIT_NAME, "void", strArr);
        }

        @Override
        public final c a(String str) {
            return new b(str, this.f55774c, this.f55775d);
        }

        @Override
        public final void a(StringWriter stringWriter) {
            stringWriter.append((CharSequence) this.f55774c).append(C15883c.f126249O).append((CharSequence) this.f55777a).append('(');
            int i10 = 0;
            while (true) {
                String[] strArr = this.f55775d;
                if (i10 < strArr.length) {
                    stringWriter.append((CharSequence) strArr[i10]);
                    if (i10 < this.f55775d.length - 1) {
                        stringWriter.append(IIndexConstants.PARAMETER_SEPARATOR);
                    }
                    i10++;
                } else {
                    stringWriter.append(')');
                    return;
                }
            }
        }
    }

    public static abstract class c {

        public static final boolean f55776b = true;

        public final String f55777a;

        public c(String str) {
            this.f55777a = str;
        }

        public a a() {
            return null;
        }

        public abstract c a(String str);

        public abstract c a(Function function, String str);

        public abstract void a(StringWriter stringWriter);

        public b b() {
            return null;
        }

        public abstract c b(String str);

        public String c() {
            return this.f55777a;
        }

        public boolean d() {
            return this.f55777a.indexOf(46) != -1;
        }

        public abstract int e();

        public abstract boolean equals(Object obj);

        public final String f() {
            if (!f55776b && !d()) {
                throw new AssertionError();
            }
            String str = this.f55777a;
            return str.substring(0, str.lastIndexOf(46));
        }

        public final String g() {
            if (!f55776b && !d()) {
                throw new AssertionError();
            }
            String str = this.f55777a;
            return str.substring(str.lastIndexOf(46) + 1);
        }

        public abstract int hashCode();

        public String toString() {
            try {
                StringWriter stringWriter = new StringWriter();
                a(stringWriter);
                return stringWriter.toString();
            } catch (IOException e10) {
                throw new C5417Jv0(e10);
            }
        }
    }

    public V(c cVar, c cVar2, Position position) {
        this.f55767b = cVar;
        this.f55768c = cVar2;
        this.f55769d = position;
    }

    @Override
    public c a() {
        return this.f55767b;
    }

    @Override
    public c b() {
        return this.f55768c;
    }

    @Override
    public String c() {
        return this.f55768c.c();
    }

    public final String d() {
        return this.f55767b.f55777a;
    }

    public final boolean e() {
        return AbstractC9907vK.b(this.f55770e, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return ((com.android.tools.r8.naming.mappinginformation.d) obj).p();
            }
        });
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof V)) {
            return false;
        }
        V v10 = (V) obj;
        return this.f55767b.equals(v10.f55767b) && this.f55768c.equals(v10.f55768c);
    }

    public boolean f() {
        for (com.android.tools.r8.naming.mappinginformation.e eVar : this.f55770e) {
            if (eVar.l() || (eVar instanceof O40)) {
                return true;
            }
        }
        return false;
    }

    public final boolean g() {
        return this.f55767b.e() == 2;
    }

    public final int hashCode() {
        return this.f55768c.hashCode() + (this.f55767b.hashCode() * 31);
    }

    public final String toString() {
        return this.f55767b.toString() + " -> " + this.f55768c.c();
    }

    @Override
    public final int compareTo(V v10) {
        return Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return Boolean.valueOf(((V) obj).g());
            }
        }).thenComparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((V) obj).c();
            }
        }).thenComparing(new C10994r2()).thenComparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return V.this.b((V) obj);
            }
        }).compare(this, v10);
    }

    public final String b(V v10) {
        return a().toString();
    }
}
