package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.internal.AbstractC4895Av0;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC9907vK;
import com.android.tools.r8.internal.C9073qK;
import com.android.tools.r8.internal.V60;
import com.android.tools.r8.shaking.AbstractC11250i4;
import java.util.Collection;
import java.util.Collections;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public final class C11181e3 extends AbstractC11147c3 {

    public static final boolean f57253c = true;

    public final AbstractC7552hC f57254a;

    public Set f57255b;

    public C11181e3(Collection collection) {
        this.f57254a = AbstractC7552hC.a(collection);
        if (!f57253c && f() && c().size() <= 1) {
            throw new AssertionError();
        }
    }

    public static boolean b(AbstractC11250i4 abstractC11250i4) {
        abstractC11250i4.getClass();
        return (abstractC11250i4 instanceof AbstractC11250i4.b) || (abstractC11250i4 instanceof C11334n4);
    }

    @Override
    public final Set c() {
        if (this.f57255b == null) {
            if (AbstractC9907vK.a(this.f57254a, new V60() {
                @Override
                public final boolean apply(Object obj) {
                    return C11181e3.b((AbstractC11250i4) obj);
                }
            })) {
                this.f57255b = AbstractC5513Ll0.c();
                AbstractC4895Av0 it = this.f57254a.iterator();
                while (it.hasNext()) {
                    AbstractC11250i4 abstractC11250i4 = (AbstractC11250i4) it.next();
                    abstractC11250i4.getClass();
                    if (abstractC11250i4 instanceof AbstractC11250i4.b) {
                        this.f57255b.add(abstractC11250i4.b());
                    } else {
                        if (!f57253c && !(abstractC11250i4 instanceof C11334n4)) {
                            throw new AssertionError();
                        }
                        this.f57255b.addAll(abstractC11250i4.c());
                    }
                }
            } else {
                this.f57255b = Collections.EMPTY_SET;
            }
        }
        if (this.f57255b.isEmpty()) {
            return null;
        }
        return this.f57255b;
    }

    @Override
    public final boolean e() {
        return false;
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C11181e3.class != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.f57254a, ((C11181e3) obj).f57254a);
    }

    @Override
    public final boolean f() {
        return c() != null;
    }

    @Override
    public final int g() {
        return this.f57254a.size();
    }

    @Override
    public final int hashCode() {
        return Objects.hash(this.f57254a);
    }

    @Override
    public final void a(StringBuilder sb2) {
        AbstractC4895Av0 it = this.f57254a.iterator();
        boolean z10 = true;
        while (it.hasNext()) {
            AbstractC11250i4 abstractC11250i4 = (AbstractC11250i4) it.next();
            if (!z10) {
                sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
            }
            sb2.append((Object) abstractC11250i4);
            z10 = false;
        }
    }

    @Override
    public final C11181e3 a(final C4724u1 c4724u1) {
        return new C11181e3((Collection) this.f57254a.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                AbstractC11250i4 a10;
                a10 = ((AbstractC11250i4) obj).a(C4724u1.this);
                return a10;
            }
        }).collect(Collectors.toList()));
    }

    @Override
    public final boolean a(final com.android.tools.r8.graph.M2 m22) {
        return AbstractC9907vK.b(this.f57254a, new V60() {
            @Override
            public final boolean apply(Object obj) {
                boolean b10;
                b10 = ((AbstractC11250i4) obj).b(com.android.tools.r8.graph.M2.this);
                return b10;
            }
        });
    }

    @Override
    public final Iterable a(final Predicate predicate) {
        return C9073qK.a(this.f57254a, new Function() {
            @Override
            public final Object apply(Object obj) {
                Iterable a10;
                a10 = ((AbstractC11250i4) obj).a(Predicate.this);
                return a10;
            }
        });
    }

    @Override
    public final void a(Consumer consumer) {
        this.f57254a.forEach(consumer);
    }
}
