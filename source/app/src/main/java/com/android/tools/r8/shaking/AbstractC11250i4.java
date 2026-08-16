package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C8674nx0;
import com.android.tools.r8.internal.WB;
import com.android.tools.r8.shaking.C11384q3;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;

public abstract class AbstractC11250i4 {

    public static final boolean f57412a = true;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a {

        public static final a f57413b = new a(0, SuffixConstants.EXTENSION_CLASS);

        public static final a f57414c = new a(1, "TYPE");

        public a(int i10, String str) {
        }
    }

    public static class b extends AbstractC11250i4 {

        public final com.android.tools.r8.graph.M2 f57415b;

        public b(com.android.tools.r8.graph.M2 m22) {
            this.f57415b = m22;
        }

        @Override
        public final b a() {
            return this;
        }

        @Override
        public final boolean b(com.android.tools.r8.graph.M2 m22) {
            return this.f57415b == m22;
        }

        @Override
        public final boolean equals(Object obj) {
            if (obj instanceof b) {
                return this.f57415b.equals(((b) obj).f57415b);
            }
            return false;
        }

        @Override
        public final int hashCode() {
            return this.f57415b.hashCode();
        }

        @Override
        public final String toString() {
            return this.f57415b.j0();
        }

        @Override
        public com.android.tools.r8.graph.M2 b() {
            return this.f57415b;
        }
    }

    public b a() {
        return null;
    }

    public com.android.tools.r8.graph.M2 b() {
        if (f57412a) {
            return null;
        }
        throw new AssertionError();
    }

    public abstract boolean b(com.android.tools.r8.graph.M2 m22);

    public Set c() {
        if (f57412a) {
            return null;
        }
        throw new AssertionError();
    }

    public boolean d() {
        return this instanceof C11266j4;
    }

    public abstract boolean equals(Object obj);

    public abstract int hashCode();

    public abstract String toString();

    public AbstractC11250i4 a(C4724u1 c4724u1) {
        return this;
    }

    public void a(Consumer consumer) {
    }

    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.M2 m22) {
        if (b(m22)) {
            return true;
        }
        C8674nx0 c8674nx0 = c4798y.f38393H;
        if (c8674nx0 != null) {
            return c8674nx0.f51120a.d(m22).stream().anyMatch(new C6(this));
        }
        return false;
    }

    public static List a(List list, final Predicate predicate) {
        if (list.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        final ArrayList arrayList = new ArrayList();
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC11250i4.a(Predicate.this, arrayList, (AbstractC11401r4) obj);
            }
        };
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((AbstractC11250i4) it.next()).a(consumer);
        }
        return arrayList;
    }

    public static void a(Predicate predicate, List list, AbstractC11401r4 abstractC11401r4) {
        if (predicate.test(abstractC11401r4)) {
            list.add(abstractC11401r4);
        }
    }

    public static List a(List list, C4724u1 c4724u1) {
        if (list.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        int i10 = AbstractC7552hC.f48487c;
        Object[] objArr = new Object[4];
        Iterator it = list.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            AbstractC11250i4 a10 = ((AbstractC11250i4) it.next()).a(c4724u1);
            int i12 = i11 + 1;
            if (objArr.length < i12) {
                objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i12));
            }
            objArr[i11] = a10;
            i11 = i12;
        }
        return AbstractC7552hC.b(i11, objArr);
    }

    public static AbstractC11250i4 a(C11384q3.a aVar, a aVar2, C4724u1 c4724u1) {
        String str;
        if (aVar == null || (str = aVar.f57729a) == null) {
            return null;
        }
        char c10 = '\uffff';
        switch (str.hashCode()) {
            case 37:
                if (str.equals(ve.j.f121589a)) {
                    c10 = 0;
                    break;
                }
                break;
            case 42:
                if (str.equals("*")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1344:
                if (str.equals("**")) {
                    c10 = 2;
                    break;
                }
                break;
            case 41706:
                if (str.equals("***")) {
                    c10 = 3;
                    break;
                }
                break;
            case 45678:
                if (str.equals("...")) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return C11300l4.f57510c;
            case 1:
                return C11317m4.f57534e;
            case 2:
                return C11317m4.f57533d;
            case 3:
                return C11266j4.f57449c;
            case 4:
                return C11283k4.f57471b;
            default:
                if (aVar.f57730b.isEmpty()) {
                    return new b(c4724u1.d(C4932Bl.H(aVar.f57729a)));
                }
                return new C11351o4(aVar, aVar2);
        }
    }

    public static AbstractC11250i4 a(com.android.tools.r8.graph.M2 m22) {
        return new b(m22);
    }

    public Iterable a(Predicate predicate) {
        return Collections.EMPTY_LIST;
    }
}
