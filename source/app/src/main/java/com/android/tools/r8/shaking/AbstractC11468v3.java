package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC6114Vx;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C6057Ux;
import com.android.tools.r8.internal.C8674nx0;
import com.android.tools.r8.internal.C9073qK;
import com.android.tools.r8.internal.EnumC6871d70;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.shaking.AbstractC11250i4;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import org.openjdk.tools.doclint.DocLint;
import w2.C15883c;

public abstract class AbstractC11468v3 extends AbstractC11198f3 {

    public static final boolean f57912q = true;

    public boolean f57913o;

    public boolean f57914p;

    public AbstractC11468v3(Origin origin, Position position, String str, List list, S2 s22, S2 s23, boolean z10, EnumC11299l3 enumC11299l3, AbstractC11147c3 abstractC11147c3, List list2, AbstractC11250i4 abstractC11250i4, boolean z11, List list3) {
        super(origin, position, str, list, s22, s23, z10, enumC11299l3, abstractC11147c3, list2, abstractC11250i4, z11, list3);
        this.f57913o = false;
        this.f57914p = false;
    }

    public abstract String A();

    public String B() {
        return null;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof AbstractC11468v3)) {
            return false;
        }
        AbstractC11468v3 abstractC11468v3 = (AbstractC11468v3) obj;
        if (this.f57913o == abstractC11468v3.f57913o && Objects.equals(A(), abstractC11468v3.A()) && Objects.equals(z(), abstractC11468v3.z())) {
            return super.equals(abstractC11468v3);
        }
        return false;
    }

    @Override
    public int hashCode() {
        int hashCode = (A().hashCode() * 9) + (this.f57913o ? 1 : 0);
        String z10 = z();
        return (hashCode * 3) + (z10 != null ? z10.hashCode() : 0) + super.hashCode();
    }

    public boolean l() {
        return this instanceof C11481w;
    }

    public C11413s m() {
        return null;
    }

    public C11399r2 n() {
        return null;
    }

    public C11113a3 o() {
        return null;
    }

    public G3 p() {
        return null;
    }

    public K3 q() {
        return null;
    }

    public C11435t4 r() {
        return null;
    }

    public C11469v4 s() {
        return null;
    }

    public final void t() {
        this.f57914p = true;
    }

    public final Iterable u() {
        return a(new C11441ta());
    }

    public final Iterable<AbstractC11401r4> v() {
        return a(EnumC6871d70.f47286b);
    }

    public boolean w() {
        return false;
    }

    public final boolean x() {
        final com.android.tools.r8.internal.U6 u62 = new com.android.tools.r8.internal.U6(true);
        c().a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.internal.U6.this.c(false);
            }
        }, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return AbstractC11468v3.a((AbstractC11250i4) obj);
            }
        });
        return u62.a() && b().isEmpty() && a().f56965a == 0 && h().f56965a == 0 && !this.f57283g && d() == EnumC11299l3.f57506c && this.f57286j.isEmpty() && e() == null && g().isEmpty();
    }

    public final void y() {
        this.f57913o = true;
    }

    public String z() {
        return null;
    }

    public static boolean a(AbstractC11250i4 abstractC11250i4) {
        return !abstractC11250i4.d();
    }

    public final Iterable a(C4798y c4798y, com.android.tools.r8.graph.Y5 y52, Iterable iterable, Predicate predicate) {
        Iterable g10;
        if (c().f()) {
            g10 = c().c();
        } else {
            if (k()) {
                AbstractC11250i4 e10 = e();
                e10.getClass();
                if (e10 instanceof AbstractC11250i4.b) {
                    com.android.tools.r8.graph.M2 b10 = e().b();
                    C8674nx0 c8674nx0 = c4798y.f38393H;
                    if (c8674nx0 != null && c8674nx0.d(b10)) {
                        C8674nx0 c8674nx02 = c4798y.f38393H;
                        if (!C8674nx0.f51119d && !c8674nx02.f51120a.containsKey(b10)) {
                            throw new AssertionError();
                        }
                        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(c4798y.g((com.android.tools.r8.graph.M2) c8674nx02.f51120a.get(b10)));
                        if (!f57912q && a10 == null) {
                            throw new AssertionError();
                        }
                        g10 = AbstractC6114Vx.b(y52.g(b10), C9073qK.b(a10.getType()));
                    } else {
                        g10 = y52.g(b10);
                    }
                }
            }
            return iterable;
        }
        if (f57912q || g10 != null) {
            return com.android.tools.r8.graph.H2.a(g10, new C11451u3(this, c4798y, predicate));
        }
        throw new AssertionError();
    }

    public C6057Ux a(final Predicate predicate) {
        Iterable iterable;
        Iterable iterable2;
        Iterable iterable3;
        List a10 = AbstractC11250i4.a(b(), predicate);
        AbstractC11147c3 c10 = c();
        if (c10 != null) {
            iterable = c10.a(predicate);
        } else {
            iterable = Collections.EMPTY_LIST;
        }
        List a11 = AbstractC11250i4.a(this.f57286j, predicate);
        AbstractC11250i4 e10 = e();
        if (e10 != null) {
            iterable2 = e10.a(predicate);
        } else {
            iterable2 = Collections.EMPTY_LIST;
        }
        if (!this.f57289m.isEmpty()) {
            iterable3 = C9073qK.a(g(), new Function() {
                @Override
                public final Object apply(Object obj) {
                    Iterable a12;
                    a12 = ((R3) obj).a(Predicate.this);
                    return a12;
                }
            });
        } else {
            iterable3 = Collections.EMPTY_LIST;
        }
        return AbstractC6114Vx.a(a10, iterable, a11, iterable2, iterable3);
    }

    @Override
    public StringBuilder a(StringBuilder sb2) {
        sb2.append("-");
        sb2.append(A());
        C10656zq0.a(sb2, DocLint.SEPARATOR, z());
        C10656zq0.a(sb2, " ", B());
        sb2.append(C15883c.f126249O);
        super.a(sb2);
        return sb2;
    }
}
