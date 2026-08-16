package Hb;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkinnedModelRenderer.SkinnedModelRenderer;
import java.lang.ref.WeakReference;

public class b {

    public final WeakReference<SkinnedModelRenderer> f8326a;

    public b(SkinnedModelRenderer modelRenderer) {
        this.f8326a = new WeakReference<>(modelRenderer);
    }

    public SkinnedModelRenderer a() {
        return this.f8326a.get();
    }

    public boolean b() {
        return this.f8326a.get() != null;
    }

    public boolean c() {
        return this.f8326a.get() != null;
    }
}
