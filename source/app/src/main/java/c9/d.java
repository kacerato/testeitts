package c9;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import java.lang.ref.WeakReference;

public class d {

    public final WeakReference<ModelRenderer> f34462a;

    public d(ModelRenderer modelRenderer) {
        this.f34462a = new WeakReference<>(modelRenderer);
    }

    public ModelRenderer a() {
        return this.f34462a.get();
    }

    public boolean b() {
        return this.f34462a.get() != null;
    }

    public boolean c() {
        return this.f34462a.get() != null;
    }
}
