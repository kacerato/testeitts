package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.internal.AbstractC9907vK;
import com.android.tools.r8.internal.C9360s30;
import com.android.tools.r8.internal.EnumC6871d70;
import com.android.tools.r8.internal.Y10;
import com.android.tools.r8.shaking.AbstractC11250i4;
import java.util.Collections;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;

public abstract class AbstractC11147c3 {

    public static class a {

        public final Y10 f57209a = new Y10();

        public a a(boolean z10, AbstractC11250i4 abstractC11250i4) {
            this.f57209a.a(abstractC11250i4, z10);
            return this;
        }

        public AbstractC11147c3 a() {
            Y10 y10 = this.f57209a;
            int i10 = y10.f45901d;
            while (true) {
                int i11 = i10 - 1;
                if (i10 == 0) {
                    Y10 y102 = this.f57209a;
                    if (y102.f45901d == 1) {
                        return new b((AbstractC11250i4) AbstractC9907vK.a(new C9360s30(y102.f45901d, y102.f45899b)));
                    }
                    Y10 y103 = this.f57209a;
                    return new C11181e3(new C9360s30(y103.f45901d, y103.f45899b));
                }
                if (y10.f45900c[i11]) {
                    return new C11164d3(this.f57209a);
                }
                i10 = i11;
            }
        }
    }

    public static class b extends AbstractC11147c3 {

        final AbstractC11250i4 f57210a;

        public b(AbstractC11250i4 abstractC11250i4) {
            this.f57210a = abstractC11250i4;
        }

        @Override
        public final void a(StringBuilder sb2) {
            sb2.append(this.f57210a.toString());
        }

        @Override
        public final com.android.tools.r8.graph.M2 b() {
            return this.f57210a.b();
        }

        @Override
        public final Set c() {
            AbstractC11250i4 abstractC11250i4 = this.f57210a;
            abstractC11250i4.getClass();
            if (abstractC11250i4 instanceof AbstractC11250i4.b) {
                return Collections.singleton(this.f57210a.b());
            }
            AbstractC11250i4 abstractC11250i42 = this.f57210a;
            abstractC11250i42.getClass();
            if (abstractC11250i42 instanceof C11334n4) {
                return this.f57210a.c();
            }
            return null;
        }

        @Override
        public final boolean e() {
            AbstractC11250i4 abstractC11250i4 = this.f57210a;
            abstractC11250i4.getClass();
            return abstractC11250i4 instanceof AbstractC11250i4.b;
        }

        @Override
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            return Objects.equals(this.f57210a, ((b) obj).f57210a);
        }

        @Override
        public final boolean f() {
            AbstractC11250i4 abstractC11250i4 = this.f57210a;
            abstractC11250i4.getClass();
            if (abstractC11250i4 instanceof AbstractC11250i4.b) {
                return true;
            }
            AbstractC11250i4 abstractC11250i42 = this.f57210a;
            abstractC11250i42.getClass();
            return abstractC11250i42 instanceof C11334n4;
        }

        @Override
        public final int g() {
            return 1;
        }

        @Override
        public final int hashCode() {
            return Objects.hash(this.f57210a);
        }

        @Override
        public final boolean a(com.android.tools.r8.graph.M2 m22) {
            return this.f57210a.b(m22);
        }

        @Override
        public final Iterable a(Predicate predicate) {
            return this.f57210a.a(predicate);
        }

        @Override
        public final AbstractC11147c3 a(C4724u1 c4724u1) {
            return new b(this.f57210a.a(c4724u1));
        }

        @Override
        public final void a(Consumer consumer) {
            consumer.accept(this.f57210a);
        }
    }

    public AbstractC11147c3 a(C4724u1 c4724u1) {
        return this;
    }

    public abstract void a(StringBuilder sb2);

    public abstract void a(Consumer consumer);

    public abstract boolean a(com.android.tools.r8.graph.M2 m22);

    public com.android.tools.r8.graph.M2 b() {
        return null;
    }

    public Set<com.android.tools.r8.graph.M2> c() {
        return null;
    }

    public final Iterable<AbstractC11401r4> d() {
        return a(EnumC6871d70.f47286b);
    }

    public abstract boolean e();

    public abstract boolean equals(Object obj);

    public abstract boolean f();

    public abstract int g();

    public abstract int hashCode();

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        a(sb2);
        return sb2.toString();
    }

    public static a a() {
        return new a();
    }

    public static AbstractC11147c3 a(AbstractC11250i4 abstractC11250i4) {
        return new b(abstractC11250i4);
    }

    public final void a(final Consumer consumer, final Predicate predicate) {
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC11147c3.a(Predicate.this, consumer, (AbstractC11250i4) obj);
            }
        });
    }

    public static void a(Predicate predicate, Consumer consumer, AbstractC11250i4 abstractC11250i4) {
        if (predicate.test(abstractC11250i4)) {
            consumer.accept(abstractC11250i4);
        }
    }

    public Iterable a(Predicate predicate) {
        return Collections.EMPTY_LIST;
    }
}
