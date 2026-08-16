package N8;

import com.itsmagic.engine.Engines.Engine.Batching.Exceptions.NullPointerBatcherException;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import java.util.HashMap;
import java.util.Map;

public class i {

    public final h f15837a;

    public final h f15838b;

    public final Map<ModelRenderer, h> f15839c = new HashMap();

    public final int f15840d;

    public final int f15841e;

    public final int f15842f;

    public final int f15843g;

    public final int f15844h;

    public final int f15845i;

    public interface a {
        int a(ModelRenderer modelRenderer);

        float[] b(ModelRenderer modelRenderer, float[] out);

        boolean c(ModelRenderer modelRenderer);
    }

    public i(int maxDynamicBatcherVertices, int maxDynamicBatcherTriangles, int maxStaticBatcherVertices, int maxStaticBatcherTriangles, int minDynamicBatchModels, int minStaticBatchModels) {
        this.f15840d = maxDynamicBatcherVertices;
        this.f15841e = maxDynamicBatcherTriangles;
        this.f15843g = maxStaticBatcherVertices;
        this.f15844h = maxStaticBatcherTriangles;
        this.f15842f = minDynamicBatchModels;
        this.f15845i = minStaticBatchModels;
        this.f15837a = new h(maxDynamicBatcherVertices, maxDynamicBatcherTriangles, minDynamicBatchModels);
        this.f15838b = new h(maxStaticBatcherVertices, maxStaticBatcherTriangles, minStaticBatchModels);
    }

    public void a(ModelRenderer mr) {
        if (mr == null) {
            throw new NullPointerBatcherException("ModelRenderer can't be null");
        }
        if (mr.billboard || this.f15839c.containsKey(mr)) {
            return;
        }
        if (c(mr)) {
            this.f15837a.e(mr);
            this.f15839c.put(mr, this.f15837a);
        } else if (d(mr)) {
            this.f15838b.e(mr);
            this.f15839c.put(mr, this.f15838b);
        }
    }

    public int b() {
        return this.f15837a.f() + this.f15838b.f();
    }

    public final boolean c(ModelRenderer renderer) {
        return false;
    }

    public final boolean d(ModelRenderer renderer) {
        return false;
    }

    public void e() {
        this.f15837a.h();
        this.f15838b.h();
    }

    public Vertex f(int idx) {
        return this.f15837a.f() > idx ? this.f15837a.i(idx) : this.f15838b.i(idx - this.f15837a.f());
    }

    public boolean g() {
        return this.f15837a.j() || this.f15838b.j();
    }

    public void h(ModelRenderer mr) {
        if (mr == null) {
            throw new NullPointerBatcherException("ModelRenderer can't be null");
        }
        if (this.f15839c.containsKey(mr)) {
            h hVar = this.f15839c.get(mr);
            if (hVar == null) {
                throw new RuntimeException("Failed, batch should not be null at this point");
            }
            try {
                hVar.m(mr);
            } catch (Exception e10) {
                e10.printStackTrace();
                this.f15839c.remove(mr);
            }
        }
    }

    public void i(ModelRenderer mr) {
        if (mr == null) {
            throw new NullPointerBatcherException("ModelRenderer can't be null");
        }
        if (this.f15839c.containsKey(mr)) {
            h hVar = this.f15839c.get(mr);
            if (hVar == null) {
                throw new RuntimeException("Failed, batch should not be null at this point");
            }
            hVar.n(mr);
            this.f15839c.remove(mr);
        }
    }

    public void j(boolean requireTBN) {
        p6.g L12 = p6.d.E1() ? p6.d.L1("update dynamic") : null;
        this.f15837a.o(requireTBN);
        p6.d.J1(L12);
        p6.g L13 = p6.d.E1() ? p6.d.L1("update static") : null;
        this.f15838b.o(requireTBN);
        p6.d.J1(L13);
    }
}
