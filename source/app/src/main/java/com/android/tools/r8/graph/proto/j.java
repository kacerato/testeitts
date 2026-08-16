package com.android.tools.r8.graph.proto;

import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4723u0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4823z5;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.I2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC4952Bv;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.internal.C7564hG;
import com.android.tools.r8.internal.C8704o7;
import com.android.tools.r8.internal.TF;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;

public final class j {

    public static final j f37620d = new j();

    public static final boolean f37621e = true;

    public final List f37622a;

    public final c f37623b;

    public final k f37624c;

    public j() {
        this.f37622a = Collections.EMPTY_LIST;
        this.f37624c = null;
        this.f37623b = c.f37602f;
    }

    public static j a(List list, k kVar, c cVar) {
        if (list.isEmpty() && kVar == null && cVar.b()) {
            return f37620d;
        }
        return new j(list, kVar, cVar);
    }

    public final boolean b() {
        return this.f37624c != null;
    }

    public final boolean c() {
        return this.f37622a.isEmpty() && this.f37624c == null && this.f37623b.b();
    }

    public final boolean equals(Object obj) {
        if (obj != null && j.class == obj.getClass()) {
            j jVar = (j) obj;
            if (this.f37622a.equals(jVar.f37622a) && Objects.equals(this.f37624c, jVar.f37624c) && this.f37623b.equals(jVar.f37623b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f37622a, this.f37624c, this.f37623b);
    }

    public final Consumer a(final C4516j1 c4516j1) {
        return new Consumer() {
            @Override
            public final void accept(Object obj) {
                j.this.a(c4516j1, (C4516j1.a) obj);
            }
        };
    }

    public final j a(j jVar) {
        k kVar;
        if (c()) {
            return jVar;
        }
        if (jVar.c()) {
            return this;
        }
        int i10 = AbstractC7552hC.f48487c;
        AbstractC7552hC a10 = new C7051eC().b((Iterable) this.f37622a).b((Iterable) jVar.f37622a).a();
        if (b()) {
            kVar = this.f37624c;
            kVar.getClass();
            if (jVar.b()) {
                kVar = kVar.a(jVar.f37624c);
            }
        } else {
            kVar = jVar.f37624c;
        }
        return new j(a10, kVar, this.f37623b.a(jVar.f37623b));
    }

    public j(List list, k kVar, c cVar) {
        boolean z10 = f37621e;
        if (!z10 && cVar == null) {
            throw new AssertionError();
        }
        this.f37622a = list;
        this.f37624c = kVar;
        this.f37623b = cVar;
        if (!z10 && c()) {
            throw new AssertionError();
        }
    }

    public final boolean a() {
        return !this.f37622a.isEmpty();
    }

    public final A2 a(H5 h52, C4724u1 c4724u1) {
        I2 a10;
        if (c()) {
            return h52.getReference();
        }
        if (c()) {
            a10 = h52.getReference().y0();
        } else {
            k kVar = this.f37624c;
            M2 e10 = kVar != null ? kVar.e() : h52.E();
            M2[] m2Arr = h52.C().f36675b;
            if (!c()) {
                int length = m2Arr.length;
                c cVar = this.f37623b;
                M2[] m2Arr2 = new M2[this.f37622a.size() + (length - (c.a(Integer.MAX_VALUE, cVar.f37604a) - C8704o7.a(!h52.d().w0() && cVar.a(0).c())))];
                int i10 = !h52.d().w0() ? 1 : 0;
                int i11 = 0;
                for (int i12 = 0; i12 < m2Arr.length; i12++) {
                    b a11 = this.f37623b.a(i12 + i10);
                    a11.getClass();
                    if (a11 instanceof a) {
                        m2Arr2[i11] = m2Arr[i12];
                        i11++;
                    } else if (a11 instanceof k) {
                        k b10 = a11.b();
                        if (!f37621e && m2Arr[i12] != b10.f()) {
                            throw new AssertionError();
                        }
                        m2Arr2[i11] = b10.e();
                        i11++;
                    } else {
                        continue;
                    }
                }
                Iterator it = this.f37622a.iterator();
                while (it.hasNext()) {
                    m2Arr2[i11] = ((AbstractC4952Bv) it.next()).a(c4724u1);
                    i11++;
                }
                m2Arr = m2Arr2;
            }
            a10 = c4724u1.a(e10, m2Arr);
        }
        A2 reference = h52.getReference();
        return c4724u1.a(reference.f38297f, a10, reference.f38298g);
    }

    public final j a(List list) {
        if (list.isEmpty()) {
            return this;
        }
        ArrayList arrayList = new ArrayList(list.size() + this.f37622a.size());
        arrayList.addAll(this.f37622a);
        arrayList.addAll(list);
        return new j(arrayList, this.f37624c, this.f37623b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(C4516j1 c4516j1, C4516j1.a aVar) {
        if (aVar.f37335g.isEmpty()) {
            return;
        }
        c cVar = this.f37623b;
        d dVar = cVar.f37606c;
        dVar.getClass();
        if (dVar instanceof f) {
            C7564hG c7564hG = new C7564hG(((TF) cVar.f37604a.values()).f44427b);
            while (true) {
                if (c7564hG.hasNext()) {
                    if (((b) c7564hG.a().f42117c).c()) {
                        break;
                    }
                } else if (!a()) {
                    return;
                }
            }
        }
        ArrayList arrayList = new ArrayList(aVar.f37335g.f38467b.length);
        int i10 = 0;
        for (int i11 = 0; i11 < c4516j1.V0().size(); i11++) {
            if (!cVar.a((!c4516j1.w0()) + i11).c()) {
                C4823z5 c4823z5 = aVar.f37335g;
                c4823z5.getClass();
                if (!C4823z5.f38466e && i11 < 0) {
                    throw new AssertionError();
                }
                if (i11 < c4823z5.f38468c) {
                    i10++;
                } else {
                    arrayList.add(aVar.f37335g.j(i11));
                }
            }
        }
        if (arrayList.isEmpty()) {
            aVar.f37335g = C4823z5.f38465d;
            return;
        }
        d dVar2 = cVar.f37606c;
        dVar2.getClass();
        if (!(dVar2 instanceof f)) {
            if (i10 > 0) {
                aVar.f37335g = C4823z5.f38465d;
                return;
            }
            List asList = Arrays.asList(new C4723u0[c4516j1.V0().size()]);
            for (int i12 = i10; i12 < c4516j1.V0().size(); i12++) {
                asList.set(cVar.f37606c.a((!c4516j1.w0()) + i12) - (!c4516j1.w0() ? 1 : 0), (C4723u0) arrayList.get(i12 - i10));
            }
            i10 = 0;
            arrayList = asList;
        }
        if (a()) {
            for (int i13 = 0; i13 < this.f37622a.size(); i13++) {
                arrayList.add(C4723u0.l0());
            }
        }
        aVar.f37335g = C4823z5.a((C4723u0[]) arrayList.toArray(C4723u0.f37803f), i10);
    }
}
