package N8;

import Ic.C2634m;
import com.itsmagic.engine.Engines.Engine.Batching.BakeBuilder;
import com.itsmagic.engine.Engines.Engine.Batching.Exceptions.LimitReachedBatcherException;
import com.itsmagic.engine.Engines.Engine.Batching.Exceptions.NullPointerBatcherException;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class c extends C2634m {

    public BakeBuilder f15787c;

    public Vertex f15788d;

    public final int f15789e;

    public final int f15790g;

    public int f15791i;

    public int f15792j;

    public final LinkedList<f> f15786b = new LinkedList<>();

    public boolean f15793k = false;

    public final float[] f15794l = new float[16];

    public boolean f15795m = false;

    public boolean f15796n = false;

    public final List<f> f15797o = new SteppedArrayList();

    public final Map<ModelRenderer, f> f15798p = new HashMap();

    public c(int maxVertices, int maxTriangles) {
        this.f15789e = maxVertices;
        this.f15790g = maxTriangles;
    }

    public boolean e(ModelRenderer modelRenderer) {
        f fVar;
        if (modelRenderer == null) {
            throw new NullPointerBatcherException("ModelRenderer can't be null");
        }
        if (this.f15798p.containsKey(modelRenderer)) {
            return false;
        }
        Vertex vertex = modelRenderer.getVertex();
        if (vertex == null) {
            throw new NullPointerBatcherException("ModelRenderer should have a vertex");
        }
        if (vertex.i1() == null) {
            throw new NullPointerBatcherException("ModelRenderer should have a vertex with vertices");
        }
        if (vertex.V0() == null) {
            throw new NullPointerBatcherException("ModelRenderer should have a vertex with triangles");
        }
        if (this.f15791i + vertex.j1() > this.f15789e) {
            throw new LimitReachedBatcherException("Theres not enough space to alloc this model renderer");
        }
        if (this.f15792j + vertex.W0() > this.f15790g) {
            throw new LimitReachedBatcherException("Theres not enough space to alloc this model renderer");
        }
        if (this.f15786b.isEmpty()) {
            fVar = new f();
        } else {
            fVar = this.f15786b.remove(0);
            fVar.a();
        }
        fVar.f15810a = modelRenderer;
        fVar.f15811b = vertex;
        fVar.f15812c = vertex.i1();
        fVar.f15813d = vertex.V0();
        fVar.f15819j = vertex.j1();
        fVar.f15818i = vertex.W0();
        fVar.f15823n = true;
        int i10 = this.f15791i;
        fVar.f15826q = i10;
        fVar.f15825p = this.f15792j;
        this.f15791i = i10 + vertex.j1();
        this.f15792j += vertex.W0();
        this.f15797o.add(fVar);
        this.f15798p.put(modelRenderer, fVar);
        this.f15793k = true;
        return true;
    }

    public boolean f(ModelRenderer modelRenderer) {
        if (modelRenderer == null) {
            throw new NullPointerBatcherException("ModelRenderer can't be null");
        }
        Vertex vertex = modelRenderer.getVertex();
        if (vertex == null) {
            throw new NullPointerBatcherException("ModelRenderer should have a vertex");
        }
        if (vertex.i1() == null) {
            throw new NullPointerBatcherException("ModelRenderer should have a vertex with vertices");
        }
        if (vertex.V0() != null) {
            return this.f15791i + vertex.j1() <= this.f15789e && this.f15792j + vertex.W0() <= this.f15790g;
        }
        throw new NullPointerBatcherException("ModelRenderer should have a vertex with triangles");
    }

    public void h() {
        this.f15788d = null;
        this.f15787c = null;
    }

    public boolean i(ModelRenderer modelRenderer) {
        if (modelRenderer != null) {
            return this.f15798p.containsKey(modelRenderer);
        }
        throw new NullPointerBatcherException("ModelRenderer can't be null");
    }

    public Vertex j() {
        return this.f15788d;
    }

    public ModelRenderer k(int i10) {
        return this.f15797o.get(i10).f15810a;
    }

    public int l() {
        return this.f15797o.size();
    }

    public void m(ModelRenderer modelRenderer) {
        if (modelRenderer == null) {
            throw new NullPointerBatcherException("ModelRenderer can't be null");
        }
        f fVar = this.f15798p.get(modelRenderer);
        if (fVar != null) {
            fVar.f15824o = true;
        } else {
            e(modelRenderer);
        }
    }

    public boolean n(ModelRenderer modelRenderer) {
        if (modelRenderer == null) {
            throw new NullPointerBatcherException("ModelRenderer can't be null");
        }
        f fVar = this.f15798p.get(modelRenderer);
        if (fVar == null) {
            return false;
        }
        this.f15797o.remove(fVar);
        this.f15798p.remove(modelRenderer);
        this.f15793k = true;
        fVar.a();
        if (this.f15786b.size() < 2) {
            this.f15786b.add(fVar);
        }
        this.f15795m = true;
        if (this.f15797o.isEmpty()) {
            this.f15788d = null;
            this.f15787c = null;
            this.f15796n = true;
        }
        return true;
    }

    public boolean o(boolean requireTBN) {
        boolean z10;
        BakeBuilder bakeBuilder = this.f15787c;
        if (bakeBuilder != null && bakeBuilder.e() != requireTBN) {
            Vertex vertex = this.f15788d;
            if (vertex != null) {
                vertex.Z();
            }
            this.f15787c = null;
        }
        boolean z11 = this.f15796n;
        this.f15796n = false;
        p6.g L12 = p6.d.E1() ? p6.d.L1("Update offsets") : null;
        if (this.f15795m) {
            this.f15795m = false;
            p();
        }
        p6.d.J1(L12);
        if (this.f15793k || this.f15787c == null) {
            this.f15793k = true;
            p6.g L13 = p6.d.E1() ? p6.d.L1("update models (rebuild mode)") : null;
            for (int i10 = 0; i10 < this.f15797o.size(); i10++) {
                f fVar = this.f15797o.get(i10);
                fVar.f15823n = false;
                fVar.f15824o = false;
            }
            p6.d.J1(L13);
            z10 = false;
        } else {
            p6.g L14 = p6.d.E1() ? p6.d.L1("update models (update mode)") : null;
            z10 = false;
            for (int i11 = 0; i11 < this.f15797o.size(); i11++) {
                f fVar2 = this.f15797o.get(i11);
                if (fVar2.f15823n) {
                    this.f15793k = true;
                } else if (fVar2.f15824o) {
                    this.f15787c.r(fVar2);
                    z10 = true;
                }
                fVar2.f15823n = false;
                fVar2.f15824o = false;
            }
            p6.d.J1(L14);
        }
        p6.g L15 = p6.d.E1() ? p6.d.L1("build bake") : null;
        if (this.f15793k) {
            Vertex vertex2 = this.f15788d;
            if (vertex2 != null) {
                vertex2.Z();
            }
            BakeBuilder bakeBuilder2 = new BakeBuilder(this.f15797o, requireTBN);
            this.f15787c = bakeBuilder2;
            this.f15788d = bakeBuilder2.d();
            this.f15793k = false;
            z11 = true;
        }
        p6.d.J1(L15);
        p6.g L16 = p6.d.E1() ? p6.d.L1("build aabb") : null;
        if (z10) {
            this.f15787c.m();
        }
        p6.d.J1(L16);
        return z11;
    }

    public final void p() {
        this.f15792j = 0;
        this.f15791i = 0;
        for (int i10 = 0; i10 < this.f15797o.size(); i10++) {
            f fVar = this.f15797o.get(i10);
            int i11 = this.f15791i;
            fVar.f15826q = i11;
            int i12 = this.f15792j;
            fVar.f15825p = i12;
            this.f15791i = i11 + fVar.f15819j;
            this.f15792j = i12 + fVar.f15818i;
        }
    }
}
