package N8;

import Ic.C2634m;
import com.itsmagic.engine.Engines.Engine.Batching.Exceptions.NullPointerBatcherException;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class h extends C2634m {

    public final int f15830b;

    public final int f15831c;

    public final List<c> f15832d = new SteppedArrayList();

    public final Map<ModelRenderer, c> f15833e = new HashMap();

    public final List<c> f15834g = new SteppedArrayList();

    public final Set<c> f15835i = new HashSet();

    public final int f15836j;

    public h(int maxVertices, int maxTriangles, int minBatchModels) {
        this.f15830b = maxVertices;
        this.f15831c = maxTriangles;
        this.f15836j = minBatchModels;
    }

    public void e(ModelRenderer mr) {
        c k10;
        if (mr == null) {
            throw new NullPointerBatcherException("ModelRenderer can't be null");
        }
        if (mr.billboard || this.f15833e.containsKey(mr) || (k10 = k(mr)) == null) {
            return;
        }
        k10.e(mr);
        this.f15833e.put(mr, k10);
    }

    public int f() {
        return this.f15834g.size();
    }

    public void h() {
        this.f15834g.clear();
        this.f15835i.clear();
        this.f15832d.clear();
    }

    public Vertex i(int idx) {
        return this.f15834g.get(idx).j();
    }

    public boolean j() {
        return !this.f15834g.isEmpty();
    }

    public final c k(ModelRenderer mr) {
        if (mr == null) {
            throw new NullPointerException("ModelRenderer can't be null");
        }
        for (int size = this.f15832d.size() - 1; size >= 0; size--) {
            c cVar = this.f15832d.get(size);
            if (cVar.f(mr)) {
                return cVar;
            }
        }
        c cVar2 = new c(this.f15830b, this.f15831c);
        this.f15832d.add(cVar2);
        if (cVar2.f(mr)) {
            return cVar2;
        }
        return null;
    }

    public boolean l(ModelRenderer mr) {
        if (mr != null) {
            return this.f15833e.containsKey(mr);
        }
        throw new NullPointerBatcherException("ModelRenderer can't be null");
    }

    public void m(ModelRenderer mr) {
        if (mr == null) {
            throw new NullPointerBatcherException("ModelRenderer can't be null");
        }
        if (!this.f15833e.containsKey(mr)) {
            throw new RuntimeException("MR is not on this batcher");
        }
        c cVar = this.f15833e.get(mr);
        if (cVar == null) {
            throw new RuntimeException("Failed, batch should not be null at this point");
        }
        cVar.m(mr);
    }

    public void n(ModelRenderer mr) {
        if (mr == null) {
            throw new NullPointerBatcherException("ModelRenderer can't be null");
        }
        if (this.f15833e.containsKey(mr)) {
            c cVar = this.f15833e.get(mr);
            if (cVar == null) {
                throw new RuntimeException("Failed, batch should not be null at this point");
            }
            if (!cVar.n(mr)) {
                throw new RuntimeException("Failed to remove");
            }
            if (cVar.l() <= 0) {
                this.f15832d.remove(cVar);
                this.f15834g.remove(cVar);
                this.f15835i.remove(cVar);
            }
            this.f15833e.remove(mr);
        }
    }

    public void o(boolean requireTBN) {
        p6.g L12 = p6.d.E1() ? p6.d.L1("Group [" + this.f15832d.size() + "]") : null;
        for (int i10 = 0; i10 < this.f15832d.size(); i10++) {
            c cVar = this.f15832d.get(i10);
            if (cVar != null) {
                if (cVar.l() >= this.f15836j) {
                    p6.g L13 = p6.d.E1() ? p6.d.L1("Batcher-" + i10) : null;
                    if (cVar.o(requireTBN)) {
                        if (cVar.j() != null) {
                            if (!this.f15835i.contains(cVar)) {
                                this.f15834g.add(cVar);
                                this.f15835i.add(cVar);
                            }
                        } else if (this.f15835i.contains(cVar)) {
                            this.f15834g.remove(cVar);
                            this.f15835i.remove(cVar);
                        }
                    }
                    p6.d.J1(L13);
                } else if (this.f15835i.contains(cVar)) {
                    cVar.h();
                    this.f15834g.remove(cVar);
                    this.f15835i.remove(cVar);
                }
            }
        }
        p6.d.J1(L12);
    }
}
