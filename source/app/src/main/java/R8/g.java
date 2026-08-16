package R8;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import java.lang.ref.WeakReference;

public class g<T> {

    public WeakReference<Component> f22628a;

    public Ac.b f22629b;

    public g(Component component) {
        this.f22628a = null;
        this.f22628a = new WeakReference<>(component);
    }

    /* JADX WARN: Incorrect return type in method signature: <T:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;>()TT; */
    public Component a() {
        return this.f22628a.get();
    }

    public boolean b() {
        return this.f22628a.get() != null;
    }
}
