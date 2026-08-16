package com.android.tools.r8.graph;

import com.android.tools.r8.graph.C4765w4;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.naming.C10912b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.function.Consumer;

public abstract class AbstractC4780x0 implements InterfaceC4403d1 {

    public static final boolean f38362g = true;

    public final AbstractC7552hC f38363a;

    public final C10912b f38364b;

    public final C8659ns0 f38365c;

    public final C8570nJ f38366d;

    public final C4724u1 f38367e;

    public final C4818z0 f38368f;

    public AbstractC4780x0(C10912b c10912b, C4818z0 c4818z0, AbstractC7552hC abstractC7552hC, C8570nJ c8570nJ, C8659ns0 c8659ns0) {
        this.f38364b = c10912b;
        this.f38368f = c4818z0;
        this.f38363a = abstractC7552hC;
        this.f38366d = c8570nJ;
        this.f38367e = c8570nJ.f50660a;
        this.f38365c = c8659ns0;
    }

    public static List a(ArrayList arrayList) {
        arrayList.sort(Comparator.comparing(new Dh()));
        return arrayList;
    }

    public abstract void a(Consumer consumer);

    @Override
    public final C4724u1 b() {
        return this.f38367e;
    }

    public abstract void b(Consumer consumer);

    public abstract H2 c(M2 m22);

    public abstract AbstractC4761w0 c();

    public Collection<H2> d() {
        Collection<H2> h10 = h();
        if (f38362g || C8570nJ.f50578e2) {
            return h10;
        }
        ArrayList arrayList = new ArrayList(h10);
        Collections.shuffle(arrayList);
        return AbstractC7552hC.a(arrayList);
    }

    public Collection<H2> e() {
        Comparator comparing = Comparator.comparing(new Dh());
        if (this.f38366d.f50599F1.f50861b) {
            comparing = comparing.reversed();
        }
        ArrayList arrayList = new ArrayList(h());
        arrayList.sort(comparing);
        return arrayList;
    }

    public final C4818z0 f() {
        return this.f38368f;
    }

    @Override
    public abstract E0 g(M2 m22);

    public C10912b g() {
        return this.f38364b;
    }

    public abstract Collection h();

    public abstract C4462g3 i();

    public static C4765w4.a a(C8570nJ c8570nJ, C8659ns0 c8659ns0) {
        return new C4765w4.a(c8570nJ, c8659ns0);
    }

    public C4462g3 a() {
        throw new C5417Jv0("Cannot use a LazyDexApplication where a DirectDexApplication is expected.");
    }
}
