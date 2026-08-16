package com.android.tools.r8.graph;

import androidx.exifinterface.media.ExifInterface;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Predicate;

public class V3 implements InterfaceC4368b4 {

    public static final boolean f36905d = true;

    public final AbstractC10992r0 f36906a;

    public final Predicate f36907b;

    public final StringBuilder f36908c = new StringBuilder();

    public V3(AbstractC10992r0 abstractC10992r0, Predicate<M2> predicate) {
        this.f36906a = abstractC10992r0;
        this.f36907b = predicate;
    }

    @Override
    public final M2 a(M2 m22) {
        return m22;
    }

    public H3.e b(H3.e eVar) {
        a(eVar, false);
        return eVar;
    }

    @Override
    public final List c(List list) {
        if (list.isEmpty()) {
            return list;
        }
        this.f36908c.append("<");
        list.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                V3.this.a((H3.f) obj);
            }
        });
        this.f36908c.append(">");
        return list;
    }

    @Override
    public final List d(List list) {
        this.f36908c.append("(");
        list.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                V3.this.a((H3.i) obj);
            }
        });
        this.f36908c.append(")");
        return list;
    }

    @Override
    public final List e(List list) {
        list.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                V3.this.b((H3.c) obj);
            }
        });
        return list;
    }

    public String toString() {
        return this.f36908c.toString();
    }

    public H3.g a(H3.g gVar) {
        return gVar.a(this);
    }

    @Override
    public final List b(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            H3.i iVar = (H3.i) it.next();
            this.f36908c.append("^");
            a(iVar);
        }
        return list;
    }

    @Override
    public final H3.h a(H3.h hVar) {
        if (hVar.a()) {
            this.f36908c.append("V");
            return hVar;
        }
        a(hVar.f36400a);
        return hVar;
    }

    public final H3.c b(H3.c cVar) {
        a((H3.e) cVar, false);
        return cVar;
    }

    public final H3.e c(H3.e eVar) {
        this.f36908c.append(b3.s.f32937c);
        a(eVar, false);
        return eVar;
    }

    @Override
    public final H3.e a(H3.e eVar) {
        this.f36908c.append(b3.s.f32937c);
        if (eVar.a()) {
            return eVar;
        }
        a(eVar, false);
        return eVar;
    }

    @Override
    public final List a(List list) {
        list.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                V3.this.c((H3.e) obj);
            }
        });
        return list;
    }

    @Override
    public final H3.c a(H3.c cVar) {
        if (cVar == null) {
            this.f36908c.append("Ljava/lang/Object;");
            return cVar;
        }
        a((H3.e) cVar, false);
        return cVar;
    }

    @Override
    public final H3.i a(H3.i iVar) {
        iVar.getClass();
        if (iVar instanceof I3) {
            this.f36908c.append(iVar.c().f36443a.V0());
            return iVar;
        }
        a(iVar.d(), false);
        return iVar;
    }

    @Override
    public final H3.c a(H3.c cVar, H3.c cVar2) {
        a((H3.e) cVar, true);
        return cVar;
    }

    @Override
    public final List a(M2 m22, M2 m23, List list) {
        if (list.isEmpty()) {
            return list;
        }
        this.f36908c.append("<");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            H3.e eVar = (H3.e) it.next();
            H3.k j10 = eVar.j();
            if (j10 != H3.k.f36404c) {
                if (!f36905d && j10 == H3.k.f36403b) {
                    throw new AssertionError();
                }
                this.f36908c.append(j10 == H3.k.f36406e ? "+" : "-");
            }
            a((H3.i) eVar);
        }
        this.f36908c.append(">");
        return list;
    }

    public final H3.f a(H3.f fVar) {
        this.f36908c.append(fVar.f36390a);
        return fVar.a(this);
    }

    public final void a(H3.e eVar, boolean z10) {
        if (eVar.n()) {
            this.f36908c.append("*");
            return;
        }
        if (eVar.o()) {
            StringBuilder sb2 = this.f36908c;
            sb2.append(ExifInterface.GPS_DIRECTION_TRUE);
            sb2.append(eVar.i().f36402b);
            sb2.append(";");
            return;
        }
        if (eVar.l()) {
            this.f36908c.append("[");
            eVar.g().a(this);
            return;
        }
        boolean z11 = f36905d;
        if (!z11 && !eVar.m()) {
            throw new AssertionError();
        }
        H3.c h10 = eVar.h();
        if (h10.a()) {
            return;
        }
        H3.c cVar = h10.f36387d;
        if (cVar != null) {
            a((H3.e) cVar, true);
        }
        String l22 = this.f36906a.c(h10.f36385b).toString();
        H3.c cVar2 = h10.f36387d;
        if (cVar2 == null) {
            StringBuilder sb3 = this.f36908c;
            sb3.append("L");
            sb3.append(C4932Bl.f(l22));
        } else {
            M2 m22 = cVar2.f36385b;
            String a10 = C4932Bl.a(this.f36906a.c(m22).toString(), l22);
            if (a10 == null && this.f36907b.test(h10.f36385b)) {
                if (!z11 && !l22.equals(h10.f36385b.V0())) {
                    throw new AssertionError();
                }
                a10 = C4932Bl.a(m22.V0(), l22);
            }
            if (a10 == null) {
                return;
            }
            StringBuilder sb4 = this.f36908c;
            sb4.append(".");
            sb4.append(a10);
        }
        a(null, null, h10.f36386c);
        if (z10) {
            return;
        }
        this.f36908c.append(";");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.AbstractCollection, java.util.List] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.AbstractCollection, java.util.List] */
    public H3.b a(H3.b bVar) {
        c((List) bVar.f36381a);
        a(bVar.f36382b);
        e(bVar.f36383c);
        return bVar;
    }
}
