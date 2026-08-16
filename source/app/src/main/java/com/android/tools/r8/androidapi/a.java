package com.android.tools.r8.androidapi;

import com.android.tools.r8.androidapi.a;
import com.android.tools.r8.androidapi.f;
import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.J2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.C2;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C8570nJ;
import java.util.Iterator;
import java.util.function.Consumer;

public abstract class a {

    public final f.a[] f35590a = new f.a[C2.f39078P.d() + 1];

    public static class C0913a extends a {

        public final c f35591b;

        public final f.a f35592c;

        public final C5094Ef0 f35593d;

        public C0913a(C4798y c4798y) {
            this.f35591b = c.a(c4798y, this);
            this.f35592c = a(c4798y.E().z());
            this.f35593d = c4798y.E().f50691j;
        }

        @Override
        public final boolean a() {
            return true;
        }

        @Override
        public final void b() {
            this.f35591b.f35599e.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    a.C0913a.this.b((J2) obj);
                }
            });
        }

        @Override
        public final f a(Iterable iterable) {
            h hVar = h.f35609b;
            f fVar = this.f35592c;
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                M2 m22 = (M2) it.next();
                c cVar = this.f35591b;
                if (!c.f35594g) {
                    cVar.getClass();
                    if (fVar.x()) {
                        throw new AssertionError();
                    }
                }
                fVar = cVar.a(m22, hVar, false).a(fVar);
            }
            return fVar;
        }

        public final void b(J2 j22) {
            this.f35593d.warning(new AndroidApiUnknownReferenceDiagnostic(j22));
        }

        @Override
        public final f a(J2 j22, f fVar) {
            return this.f35591b.a(j22, fVar, false);
        }

        @Override
        public final f a(AbstractC4744v2 abstractC4744v2) {
            return this.f35591b.a(abstractC4744v2, h.f35609b, true);
        }
    }

    public a() {
        for (C2 c22 : C2.values()) {
            if (c22 != C2.MAIN && c22 != C2.EXTENSION) {
                this.f35590a[c22.d()] = new f.a(c22);
            }
        }
    }

    public final f.a a(C2 c22) {
        if (c22 == C2.MAIN) {
            int i10 = f.f35602a;
            return f.a.f35603c;
        }
        if (c22 == C2.EXTENSION) {
            int i11 = f.f35602a;
            return f.a.f35604d;
        }
        return this.f35590a[c22.d()];
    }

    public abstract f a(J2 j22, f fVar);

    public abstract f a(AbstractC4744v2 abstractC4744v2);

    public abstract f a(Iterable iterable);

    public abstract boolean a();

    public void b() {
    }

    public f a(J2 j22) {
        int i10 = f.f35602a;
        return a(j22, h.f35609b);
    }

    public static a a(C4798y<?> c4798y) {
        if (c4798y.E().a().f40654a) {
            return new C0913a(c4798y);
        }
        return new b();
    }

    public f a(C8570nJ c8570nJ) {
        if (c8570nJ.z() == C2.MAIN) {
            int i10 = f.f35602a;
            return f.a.f35603c;
        }
        return new f.a(c8570nJ.z());
    }
}
