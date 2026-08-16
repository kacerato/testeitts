package R8;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import java.lang.ref.WeakReference;

public class b {

    public WeakReference<Component> f22617a;

    public b(Component vertex) {
        this.f22617a = null;
        this.f22617a = new WeakReference<>(vertex);
    }

    public Component a() {
        return this.f22617a.get();
    }

    public boolean b() {
        return this.f22617a.get() != null;
    }
}
