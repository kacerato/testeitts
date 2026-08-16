package com.android.tools.r8.graph;

import com.android.tools.r8.graph.D3;
import com.android.tools.r8.internal.AbstractC9530t40;
import com.android.tools.r8.internal.C6501av0;
import com.android.tools.r8.internal.C8704o7;
import java.util.ArrayList;
import java.util.function.Consumer;
import java.util.function.Predicate;

public abstract class AbstractC4821z3 extends D3 {

    public static final boolean f38460e = true;

    public final D3.a f38461b;

    public final ArrayList f38462c;

    public final ArrayList f38463d;

    public AbstractC4821z3(D3.a aVar, ArrayList arrayList, ArrayList arrayList2) {
        boolean z10 = f38460e;
        if (!z10 && aVar != null && aVar.d().f0()) {
            throw new AssertionError();
        }
        if (!z10 && !arrayList2.stream().allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((AbstractC4783x3) obj).x();
            }
        })) {
            throw new AssertionError();
        }
        if (!z10) {
            if (arrayList2.size() + arrayList.size() + C8704o7.a(aVar != null) <= 1) {
                throw new AssertionError((Object) "Should have been a single or failed result");
            }
        }
        this.f38461b = aVar;
        this.f38462c = arrayList;
        this.f38463d = arrayList2;
    }

    @Override
    public final AbstractC9530t40 a(D5 d52, C4798y c4798y, C4514j c4514j) {
        throw new C6501av0("Should not be called on MultipleFieldResolutionResult");
    }

    @Override
    public final Z5 g() {
        return null;
    }

    @Override
    public final boolean j() {
        return this.f38463d.isEmpty();
    }

    @Override
    public final boolean s() {
        D3.a aVar = this.f38461b;
        return aVar != null && aVar.s();
    }

    @Override
    public final boolean t() {
        return this.f38461b != null;
    }

    @Override
    public final boolean u() {
        D3.a aVar = this.f38461b;
        return aVar != null && aVar.u();
    }

    @Override
    public final boolean v() {
        return t() || !this.f38462c.isEmpty();
    }

    @Override
    public final boolean w() {
        return true;
    }

    @Override
    public final boolean x() {
        return !this.f38463d.isEmpty();
    }

    @Override
    public final void a(Consumer consumer, Consumer consumer2, Consumer consumer3) {
        D3.a aVar = this.f38461b;
        if (aVar != null) {
            consumer.accept(aVar);
        }
        this.f38462c.forEach(consumer2);
        this.f38463d.forEach(consumer3);
    }
}
