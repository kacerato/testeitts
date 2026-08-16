package com.android.tools.r8.dex;

import com.android.tools.r8.graph.H2;
import com.android.tools.r8.internal.AbstractC9148qo0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.IH;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.function.ToIntFunction;

public final class l0 extends j0 {

    public static final boolean f35889k = true;

    public final ExecutorService f35890i;

    public final AbstractC9148qo0 f35891j;

    public l0(C4311k c4311k, Collection collection, C8570nJ c8570nJ, ExecutorService executorService, AbstractC9148qo0 abstractC9148qo0) {
        super(c4311k, collection, c8570nJ, abstractC9148qo0);
        this.f35890i = executorService;
        this.f35891j = abstractC9148qo0;
    }

    public static int b(t0 t0Var) {
        return t0Var.f35956b.f35937c.size();
    }

    @Override
    public final ArrayList a() {
        boolean z10 = f35889k;
        if (!z10 && this.f35868c.size() != 1) {
            throw new AssertionError();
        }
        int i10 = 0;
        if (!z10 && !((t0) this.f35868c.get(0)).f35956b.f35937c.isEmpty()) {
            throw new AssertionError();
        }
        int size = this.f35871d.size();
        a(this.f35871d);
        if (this.f35871d.isEmpty()) {
            return this.f35868c;
        }
        List list = this.f35868c;
        boolean isEmpty = this.f35873f.f35956b.f35937c.isEmpty();
        if (this.f35874g.f50605H1 && !isEmpty) {
            if (!z10 && this.f35868c.size() != 1) {
                throw new AssertionError();
            }
            if (!z10 && ((t0) this.f35868c.get(0)).f35956b.f35937c.isEmpty()) {
                throw new AssertionError();
            }
            list = Collections.EMPTY_LIST;
        }
        Map b10 = b();
        IH ih2 = new IH(1);
        if (isEmpty || !this.f35874g.f50608I1) {
            q0 q0Var = new q0(this.f35868c, list, this.f35866a, this.f35871d, this.f35872e, this.f35891j, ih2);
            q0Var.a();
            q0Var.a(q0Var.f35919a.f35917b);
        } else {
            Q q10 = new Q(this.f35873f, this.f35868c, list, this.f35871d, ih2, this.f35866a, this.f35890i);
            HashSet hashSet = new HashSet(q10.f35768f);
            LinkedList<O> linkedList = new LinkedList();
            while (!hashSet.isEmpty()) {
                H2 h22 = (H2) hashSet.iterator().next();
                O o10 = new O(q10);
                linkedList.add(o10);
                q10.a(hashSet, o10, h22);
                if (!Q.f35762k && o10.f35753b.isEmpty()) {
                    throw new AssertionError();
                }
            }
            q10.a(linkedList);
            if (!Q.f35762k) {
                int size2 = q10.f35768f.size();
                Iterator<E> it = linkedList.iterator();
                while (it.hasNext()) {
                    i10 += ((O) it.next()).f35753b.size();
                }
                if (size2 != i10) {
                    throw new AssertionError();
                }
            }
            linkedList.sort(null);
            Collections.reverse(linkedList);
            r0 r0Var = new r0(q10.f35765c, q10.f35766d, q10.f35769g, q10.f35770h);
            Iterator<E> it2 = linkedList.iterator();
            while (it2.hasNext()) {
                O o11 = (O) it2.next();
                if (o11.f35756e) {
                    it2.remove();
                    if (o11.f35754c < 65536 && o11.f35755d < 65536) {
                        if (!q10.f35767e.get(q10.f35764b.b())) {
                            if (q10.a(o11.f35753b, q10.f35764b)) {
                            }
                        }
                    }
                    N n10 = new N(q10, o11);
                    HashSet b11 = q10.b(n10.f35749b, q10.f35764b);
                    List a10 = q10.a(new O(q10, n10.f35748a), r0Var, Collections.singletonList(q10.f35764b));
                    HashSet hashSet2 = new HashSet(n10.f35750c);
                    hashSet2.addAll(b11);
                    q10.a(hashSet2, r0Var, a10);
                }
            }
            for (O o12 : linkedList) {
                if (!o12.f35756e) {
                    q10.a(o12, r0Var, Collections.EMPTY_LIST);
                }
            }
        }
        a(b10, this.f35891j);
        if (f35889k || size == this.f35868c.stream().mapToInt(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return com.android.tools.r8.dex.l0.b((com.android.tools.r8.dex.t0) obj);
            }
        }).sum()) {
            return this.f35868c;
        }
        throw new AssertionError();
    }
}
