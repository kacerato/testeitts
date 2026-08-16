package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.internal.C9073qK;
import com.android.tools.r8.internal.C9360s30;
import com.android.tools.r8.internal.W10;
import com.android.tools.r8.internal.X10;
import com.android.tools.r8.internal.Y10;
import com.android.tools.r8.shaking.AbstractC11147c3;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public final class C11164d3 extends AbstractC11147c3 {

    public final Y10 f57234a;

    public C11164d3(Y10 y10) {
        this.f57234a = y10;
    }

    @Override
    public final void a(StringBuilder sb2) {
        W10 w10 = new W10(new X10(this.f57234a));
        boolean z10 = true;
        while (w10.hasNext()) {
            com.android.tools.r8.internal.W0 w02 = (com.android.tools.r8.internal.W0) w10.next();
            if (!z10) {
                sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
            }
            if (w02.f45255c) {
                sb2.append('!');
            }
            sb2.append(((AbstractC11250i4) w02.f45254b).toString());
            z10 = false;
        }
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
        if (obj == null || C11164d3.class != obj.getClass()) {
            return false;
        }
        return this.f57234a.equals(((C11164d3) obj).f57234a);
    }

    @Override
    public final boolean f() {
        return false;
    }

    @Override
    public final int g() {
        return this.f57234a.f45901d;
    }

    @Override
    public final int hashCode() {
        return Objects.hash(this.f57234a);
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.M2 m22) {
        W10 w10 = new W10(new X10(this.f57234a));
        boolean z10 = false;
        while (w10.hasNext()) {
            com.android.tools.r8.internal.W0 w02 = (com.android.tools.r8.internal.W0) w10.next();
            if (((AbstractC11250i4) w02.f45254b).b(m22)) {
                return !w02.f45255c;
            }
            z10 = w02.f45255c;
        }
        return z10;
    }

    @Override
    public final Iterable a(final Predicate predicate) {
        Y10 y10 = this.f57234a;
        return C9073qK.a(new C9360s30(y10.f45901d, y10.f45899b), new Function() {
            @Override
            public final Object apply(Object obj) {
                Iterable a10;
                a10 = ((AbstractC11250i4) obj).a(Predicate.this);
                return a10;
            }
        });
    }

    @Override
    public final AbstractC11147c3 a(final C4724u1 c4724u1) {
        final AbstractC11147c3.a a10 = AbstractC11147c3.a();
        this.f57234a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Boolean bool = (Boolean) obj2;
                AbstractC11147c3.a.this.a(bool.booleanValue(), ((AbstractC11250i4) obj).a(c4724u1));
            }
        });
        return a10.a();
    }

    @Override
    public final void a(final Consumer consumer) {
        new X10(this.f57234a).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Consumer.this.accept((AbstractC11250i4) ((com.android.tools.r8.internal.W0) obj).getKey());
            }
        });
    }
}
