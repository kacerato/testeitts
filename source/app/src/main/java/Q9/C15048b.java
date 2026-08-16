package q9;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkinnedModelRenderer.SkinnedModelRenderer;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import eb.C13051b;
import eb.h;
import java.util.List;

public class C15048b extends C13051b {
    @Override
    public boolean a(List<Component> componentList, List<Component> unused, h requireCallbacks) {
        for (int i10 = 0; i10 < componentList.size(); i10++) {
            if (componentList.get(i10) instanceof SkinnedModelRenderer) {
                requireCallbacks.b("Ops!", "A SkinnedModelRenderer component is already associated with this object\nDue the skeleton hierarchy, only one SkinnedModelRenderer per object is allowed. " + requireCallbacks.a().P0());
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean b(List<Component> componentList) {
        for (int i10 = 0; i10 < componentList.size(); i10++) {
            if (componentList.get(i10) instanceof SkinnedModelRenderer) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean c(Component component) {
        return false;
    }

    @Override
    public boolean d() {
        return true;
    }
}
