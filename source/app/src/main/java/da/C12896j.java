package da;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkinnedModelRenderer.SkinnedModelRenderer;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import java.util.HashMap;
import java.util.Map;

@Deprecated
public class C12896j {

    public final Mc.a<C12900n> f84473a = new Mc.a<>();

    public final Map<Vertex, C12900n> f84474b = new HashMap();

    public final Map<ModelRenderer, C12900n> f84475c = new HashMap();

    public final Map<SkinnedModelRenderer, C12900n> f84476d = new HashMap();

    public final Mc.a<ModelRenderer> f84477e = new Mc.a<>();

    public final Mc.a<SkinnedModelRenderer> f84478f = new Mc.a<>();

    public final void a(ModelRenderer mr) {
        mr.getClass();
        if (mr.getVertex() == null) {
            return;
        }
        C12900n c12900n = this.f84474b.get(mr.getVertex());
        if (c12900n == null) {
            c12900n = new C12900n(mr.getVertex());
            this.f84474b.put(mr.getVertex(), c12900n);
            this.f84473a.add(c12900n);
        }
        c12900n.f84487c.add(mr);
        this.f84475c.put(mr, c12900n);
        this.f84477e.add(mr);
    }

    public final void b(SkinnedModelRenderer mr) {
        mr.getClass();
        if (mr.getVertex() == null) {
            return;
        }
        C12900n c12900n = this.f84474b.get(mr.getVertex());
        if (c12900n == null) {
            c12900n = new C12900n(mr.getVertex());
            this.f84474b.put(mr.getVertex(), c12900n);
            this.f84473a.add(c12900n);
        }
        c12900n.f84488d.add(mr);
        this.f84476d.put(mr, c12900n);
        this.f84478f.add(mr);
    }

    public ModelRenderer c(int idx) {
        return this.f84477e.get(idx);
    }

    public int d() {
        return this.f84477e.size();
    }

    public C12900n e(int idx) {
        return this.f84473a.get(idx);
    }

    public int f() {
        return this.f84473a.size();
    }

    public SkinnedModelRenderer g(int idx) {
        return this.f84478f.get(idx);
    }

    public int h() {
        return this.f84478f.size();
    }

    public Vertex i(int idx) {
        return this.f84473a.get(idx).f84485a;
    }

    public int j() {
        return this.f84473a.size();
    }

    public void k(ModelRenderer mr) {
        o(mr);
    }

    public void l(SkinnedModelRenderer mr) {
        p(mr);
    }

    public void m(ModelRenderer mr) {
        o(mr);
        a(mr);
    }

    public void n(SkinnedModelRenderer mr) {
        p(mr);
        b(mr);
    }

    public final void o(ModelRenderer mr) {
        mr.getClass();
        C12900n remove = this.f84475c.remove(mr);
        if (remove != null) {
            remove.f84487c.remove(mr);
            if (remove.d()) {
                this.f84473a.remove(remove);
                this.f84474b.remove(remove.f84485a);
            }
        }
        this.f84477e.remove(mr);
    }

    public final void p(SkinnedModelRenderer mr) {
        mr.getClass();
        C12900n remove = this.f84476d.remove(mr);
        if (remove != null) {
            remove.f84488d.remove(mr);
            if (remove.d()) {
                this.f84473a.remove(remove);
                this.f84474b.remove(remove.f84485a);
            }
        }
        this.f84478f.remove(mr);
    }
}
