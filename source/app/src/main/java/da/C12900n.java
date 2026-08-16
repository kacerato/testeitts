package da;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkinnedModelRenderer.SkinnedModelRenderer;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import java.util.List;

@Deprecated
public class C12900n {

    public final Vertex f84485a;

    public final Mc.a<Vertex> f84486b = new Mc.a<>();

    public final Mc.a<ModelRenderer> f84487c = new Mc.a<>();

    public final Mc.a<SkinnedModelRenderer> f84488d = new Mc.a<>();

    public C12900n(Vertex vertex) {
        this.f84485a = vertex;
    }

    public List<Vertex> a() {
        return this.f84486b.a();
    }

    public List<ModelRenderer> b() {
        return this.f84487c.a();
    }

    public List<SkinnedModelRenderer> c() {
        return this.f84488d.a();
    }

    public boolean d() {
        return this.f84487c.isEmpty() && this.f84488d.isEmpty();
    }
}
