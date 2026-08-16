package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC6114Vx;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C6057Ux;
import com.android.tools.r8.internal.C9073qK;
import com.android.tools.r8.internal.GK;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import org.openjdk.tools.doclint.DocLint;
import w2.C15883c;

public class R3 {

    public final List f56920a;

    public final S2 f56921b;

    public final S2 f56922c;

    public final U3 f56923d;

    public final AbstractC11250i4 f56924e;

    public final Y3 f56925f;

    public final List f56926g;

    public final T3 f56927h;

    public static class a {

        public static final boolean f56928i = true;

        public List f56929a = Collections.EMPTY_LIST;

        public S2 f56930b = new S2();

        public final S2 f56931c = new S2();

        public U3 f56932d;

        public AbstractC11250i4 f56933e;

        public Y3 f56934f;

        public List f56935g;

        public T3 f56936h;

        public a a(U3 u32) {
            this.f56932d = u32;
            return this;
        }

        public R3 a() {
            if (!f56928i && this.f56932d == null) {
                throw new AssertionError();
            }
            return new R3(this.f56929a, this.f56930b, this.f56931c, this.f56932d, this.f56933e, this.f56934f, this.f56935g, this.f56936h);
        }
    }

    public R3(List list, S2 s22, S2 s23, U3 u32, AbstractC11250i4 abstractC11250i4, Y3 y32, List list2, T3 t32) {
        this.f56920a = list;
        this.f56921b = s22;
        this.f56922c = s23;
        this.f56923d = u32;
        this.f56924e = abstractC11250i4;
        this.f56925f = y32;
        this.f56926g = list2 != null ? Collections.unmodifiableList(list2) : null;
        this.f56927h = t32;
    }

    public static a a() {
        return new a();
    }

    public S2 b() {
        return this.f56921b;
    }

    public List<AbstractC11250i4> c() {
        return this.f56920a;
    }

    public List<AbstractC11250i4> d() {
        return this.f56926g;
    }

    public Y3 e() {
        return this.f56925f;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof R3)) {
            return false;
        }
        R3 r32 = (R3) obj;
        if (!this.f56920a.equals(r32.f56920a) || !this.f56921b.equals(r32.f56921b) || !this.f56922c.equals(r32.f56922c) || this.f56923d != r32.f56923d) {
            return false;
        }
        Y3 y32 = this.f56925f;
        if (y32 == null ? r32.f56925f != null : !y32.equals(r32.f56925f)) {
            return false;
        }
        AbstractC11250i4 abstractC11250i4 = this.f56924e;
        if (abstractC11250i4 == null ? r32.f56924e != null : !abstractC11250i4.equals(r32.f56924e)) {
            return false;
        }
        List list = this.f56926g;
        List list2 = r32.f56926g;
        return list != null ? list.equals(list2) : list2 == null;
    }

    public S2 f() {
        return this.f56922c;
    }

    public T3 g() {
        return this.f56927h;
    }

    public U3 h() {
        return this.f56923d;
    }

    public final int hashCode() {
        int hashCode = ((((this.f56920a.hashCode() * 31) + this.f56921b.f56965a) * 31) + this.f56922c.f56965a) * 31;
        U3 u32 = this.f56923d;
        int hashCode2 = (hashCode + (u32 != null ? u32.hashCode() : 0)) * 31;
        AbstractC11250i4 abstractC11250i4 = this.f56924e;
        int hashCode3 = (hashCode2 + (abstractC11250i4 != null ? abstractC11250i4.hashCode() : 0)) * 31;
        Y3 y32 = this.f56925f;
        int hashCode4 = (hashCode3 + (y32 != null ? y32.hashCode() : 0)) * 31;
        List list = this.f56926g;
        return hashCode4 + (list != null ? list.hashCode() : 0);
    }

    public AbstractC11250i4 i() {
        return this.f56924e;
    }

    public final boolean j() {
        return ((GK) a(new C11441ta()).iterator()).hasNext();
    }

    public boolean k() {
        return this.f56927h != null;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0042. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:15:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        Iterator it = this.f56920a.iterator();
        while (it.hasNext()) {
            K3.a(sb2, "@", (AbstractC11250i4) it.next());
        }
        K3.a(sb2, null, this.f56921b);
        K3.a(sb2, null, this.f56922c.toString().replace(" ", " !"));
        switch (Q3.f56902a[h().ordinal()]) {
            case 1:
                sb2.append("*");
                if (k()) {
                    sb2.append(this.f56927h.toString());
                }
                return sb2.toString();
            case 2:
                sb2.append("<fields>");
                if (k()) {
                }
                return sb2.toString();
            case 3:
                sb2.append((Object) i());
                sb2.append(C15883c.f126249O);
                sb2.append((Object) e());
                if (k()) {
                }
                return sb2.toString();
            case 4:
                sb2.append("<methods>");
                if (k()) {
                }
                return sb2.toString();
            case 8:
                sb2.append((Object) i());
                sb2.append(C15883c.f126249O);
            case 5:
            case 6:
            case 7:
                sb2.append((Object) e());
                sb2.append('(');
                sb2.append(C10656zq0.a(DocLint.SEPARATOR, (Iterable) d()));
                sb2.append(')');
                if (k()) {
                }
                return sb2.toString();
            default:
                throw new C5417Jv0("Unknown kind of member rule");
        }
    }

    public final boolean a(com.android.tools.r8.graph.F0 f02, C4798y c4798y, Consumer consumer, D d10) {
        AbstractC5308Hz v10 = c4798y.v();
        C4554l1 reference = f02.getReference();
        v10.getClass();
        C4554l1 a10 = v10.a(AbstractC5308Hz.g(), reference);
        int i10 = Q3.f56902a[h().ordinal()];
        if (i10 == 1 || i10 == 2) {
            if (b().a(f02.getAccessFlags()) && f().b(f02.getAccessFlags())) {
                return I4.a(this.f56920a, f02, consumer);
            }
            return false;
        }
        if (i10 != 3) {
            return false;
        }
        if (e().a(d10.a(a10.f38298g)) && b().a(f02.getAccessFlags()) && f().b(f02.getAccessFlags()) && i().a(c4798y, a10.f37449i)) {
            return I4.a(this.f56920a, f02, consumer);
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00b8, code lost:
    
        if (r6.d().f1() != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0034, code lost:
    
        if (r5.f56924e.a(r7, r0.z0()) == false) goto L46;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0025. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(com.android.tools.r8.graph.H0 h02, C4798y c4798y, Consumer consumer, D d10) {
        AbstractC5308Hz v10 = c4798y.v();
        com.android.tools.r8.graph.A2 reference = h02.getReference();
        v10.getClass();
        com.android.tools.r8.graph.A2 a10 = v10.a(AbstractC5308Hz.g(), reference);
        int i10 = Q3.f56902a[h().ordinal()];
        if (i10 != 1) {
            switch (i10) {
                case 4:
                    break;
                case 5:
                case 6:
                case 7:
                    if (!e().a(d10.a(a10.f38298g)) || !b().a(h02.getAccessFlags()) || !f().b(h02.getAccessFlags()) || !I4.a(this.f56920a, h02, consumer)) {
                        return false;
                    }
                    List<AbstractC11250i4> d11 = d();
                    if (d11.size() == 1) {
                        AbstractC11250i4 abstractC11250i4 = d11.get(0);
                        abstractC11250i4.getClass();
                        if (abstractC11250i4 instanceof C11283k4) {
                            return true;
                        }
                    }
                    com.android.tools.r8.graph.M2[] m2Arr = a10.x0().f36675b;
                    if (m2Arr.length == d11.size()) {
                        for (int i11 = 0; i11 < m2Arr.length; i11++) {
                            if (!d11.get(i11).a(c4798y, m2Arr[i11])) {
                                return false;
                            }
                        }
                        return true;
                    }
                    return false;
                case 8:
                    break;
                default:
                    return false;
            }
        }
        if (b().a(h02.getAccessFlags()) && f().b(h02.getAccessFlags())) {
            return I4.a(this.f56920a, h02, consumer);
        }
        return false;
    }

    public final C6057Ux a(final Predicate predicate) {
        Iterable iterable;
        Iterable iterable2;
        Iterable a10;
        List a11 = AbstractC11250i4.a(this.f56920a, predicate);
        AbstractC11250i4 abstractC11250i4 = this.f56924e;
        if (abstractC11250i4 != null) {
            iterable = abstractC11250i4.a(predicate);
        } else {
            iterable = Collections.EMPTY_LIST;
        }
        Y3 y32 = this.f56925f;
        V3 v32 = Y3.f57128a;
        if (y32 != null) {
            iterable2 = y32.a(predicate);
        } else {
            iterable2 = Collections.EMPTY_LIST;
        }
        List list = this.f56926g;
        if (list == null) {
            a10 = Collections.EMPTY_LIST;
        } else {
            a10 = C9073qK.a(list, new Function() {
                @Override
                public final Object apply(Object obj) {
                    Iterable a12;
                    a12 = ((AbstractC11250i4) obj).a(Predicate.this);
                    return a12;
                }
            });
        }
        return AbstractC6114Vx.b(a11, iterable, iterable2, a10);
    }

    public final R3 a(final C4724u1 c4724u1) {
        return new R3(AbstractC11250i4.a(c(), c4724u1), b(), f(), h(), i() == null ? null : i().a(c4724u1), e() == null ? null : e().a(), d() == null ? null : (List) d().stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                AbstractC11250i4 a10;
                a10 = ((AbstractC11250i4) obj).a(C4724u1.this);
                return a10;
            }
        }).collect(Collectors.toList()), g());
    }
}
