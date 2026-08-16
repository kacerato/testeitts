package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4281a;
import com.android.tools.r8.internal.C7608hb0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import org.openjdk.tools.doclint.DocLint;

public class C7608hb0 {

    public static final C7608hb0 f48612f = new C7608hb0(false, null, null);

    public static final boolean f48613g = true;

    public final boolean f48614a;

    public final C8107kb0 f48615b;

    public final C8107kb0 f48616c;

    public Consumer<C8570nJ> f48617d = C6628bi.b();

    public Consumer<C8570nJ> f48618e = C6628bi.b();

    public C7608hb0(boolean z10, C8107kb0 c8107kb0, C8107kb0 c8107kb02) {
        boolean z11 = f48613g;
        if (!z11 && z10 && c8107kb0.f49688a.isEmpty()) {
            throw new AssertionError();
        }
        if (!z11 && z10 && c8107kb02 == null) {
            throw new AssertionError();
        }
        this.f48614a = z10;
        this.f48615b = c8107kb0;
        this.f48616c = c8107kb02;
    }

    public static C7608hb0 a(String str, String str2) {
        if (str == null && str2 == null) {
            return b();
        }
        final a a10 = a();
        if (str != null) {
            C10647zn0 c10647zn0 = new C10647zn0(new C5776Qb(DocLint.SEPARATOR.charAt(0)));
            Iterator a11 = c10647zn0.a(new C5111En0(c10647zn0), str);
            ArrayList arrayList = new ArrayList();
            while (true) {
                AbstractC4995Cn0 abstractC4995Cn0 = (AbstractC4995Cn0) a11;
                if (!abstractC4995Cn0.hasNext()) {
                    break;
                }
                arrayList.add((String) abstractC4995Cn0.next());
            }
            List unmodifiableList = Collections.unmodifiableList(arrayList);
            Objects.requireNonNull(a10);
            unmodifiableList.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C7608hb0.a.this.b((String) obj);
                }
            });
        }
        if (str2 != null) {
            C10647zn0 c10647zn02 = new C10647zn0(new C5776Qb(DocLint.SEPARATOR.charAt(0)));
            Iterator a12 = c10647zn02.a(new C5111En0(c10647zn02), str2);
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                AbstractC4995Cn0 abstractC4995Cn02 = (AbstractC4995Cn0) a12;
                if (!abstractC4995Cn02.hasNext()) {
                    break;
                }
                arrayList2.add((String) abstractC4995Cn02.next());
            }
            List unmodifiableList2 = Collections.unmodifiableList(arrayList2);
            Objects.requireNonNull(a10);
            unmodifiableList2.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C7608hb0.a.this.a((String) obj);
                }
            });
        }
        return a10.a();
    }

    public static C7608hb0 b() {
        return f48612f;
    }

    public static class a {

        public static final boolean f48619c = true;

        public final C8107kb0 f48620a = new C8107kb0();

        public final C8107kb0 f48621b = new C8107kb0();

        public static InterfaceC7940jb0 c(String str) {
            boolean z10 = f48619c;
            if (!z10 && !str.startsWith("L")) {
                throw new AssertionError();
            }
            if (!z10 && str.indexOf(46) != -1) {
                throw new AssertionError();
            }
            if (str.equals("L**")) {
                return new C7188f2();
            }
            if (str.equals("L*")) {
                return new C5301Hv0();
            }
            if (str.endsWith("/**")) {
                return new C7532h50(AbstractC4281a.a(str, 2, 0));
            }
            if (str.endsWith("/*")) {
                return new C8198l50(AbstractC4281a.a(str, 1, 0));
            }
            if (str.endsWith("*")) {
                return new C5087Ed(AbstractC4281a.a(str, 1, 0));
            }
            return new C10282xd(str + ";");
        }

        public C7608hb0 a() {
            return new C7608hb0(!this.f48620a.f49688a.isEmpty(), this.f48620a, this.f48621b);
        }

        public a b() {
            C8107kb0 c8107kb0 = this.f48620a;
            c8107kb0.f49688a.add(new C7188f2());
            return this;
        }

        public a b(String str) {
            this.f48620a.f49688a.add(c("L" + C4932Bl.g(str)));
            return this;
        }

        public a a(String str) {
            this.f48621b.f49688a.add(c("L" + C4932Bl.g(str)));
            return this;
        }

        public a b(Class<?>... clsArr) {
            return b(Arrays.asList(clsArr));
        }

        public a a(Class<?>... clsArr) {
            return a(Arrays.asList(clsArr));
        }

        public a b(Collection<Class<?>> collection) {
            for (Class<?> cls : collection) {
                C8107kb0 c8107kb0 = this.f48620a;
                c8107kb0.f49688a.add(new C10282xd(C4932Bl.c(cls)));
            }
            return this;
        }

        public a a(Collection<Class<?>> collection) {
            for (Class<?> cls : collection) {
                C8107kb0 c8107kb0 = this.f48621b;
                c8107kb0.f49688a.add(new C10282xd(C4932Bl.c(cls)));
            }
            return this;
        }
    }

    public static a a() {
        return new a();
    }
}
