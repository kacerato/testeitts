package eb;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import java.util.List;

public class i extends C13051b {

    public Class f85425a;

    public String f85426b;

    public String f85427c;

    public i(Class type, String originComponent, String requestedComponentName) {
        this.f85425a = type;
        this.f85426b = originComponent;
        this.f85427c = requestedComponentName;
    }

    @Override
    public boolean a(List<Component> componentList, List<Component> appendComponentList, h requireCallbacks) {
        for (int i10 = 0; i10 < componentList.size(); i10++) {
            if (this.f85425a.isAssignableFrom(componentList.get(i10).getClass())) {
                return true;
            }
        }
        if (appendComponentList != null) {
            for (int i11 = 0; i11 < appendComponentList.size(); i11++) {
                if (this.f85425a.isAssignableFrom(appendComponentList.get(i11).getClass())) {
                    return true;
                }
            }
        }
        try {
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
        } catch (InstantiationException e11) {
            e11.printStackTrace();
        }
        if (requireCallbacks.c((Component) this.f85425a.newInstance())) {
            return true;
        }
        requireCallbacks.b("Ops!", this.f85426b + " needs a " + this.f85427c + " on the same object: " + requireCallbacks.a().P0());
        return false;
    }

    @Override
    public boolean b(List<Component> componentList) {
        for (int i10 = 0; i10 < componentList.size(); i10++) {
            if (this.f85425a.isAssignableFrom(componentList.get(i10).getClass())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean c(Component component) {
        return this.f85425a.isAssignableFrom(component.getClass());
    }

    @Override
    public boolean d() {
        return true;
    }
}
