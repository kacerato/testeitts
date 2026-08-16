package R8;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;

public class a<T extends Component> extends K8.f {

    public g<T> f22616b;

    public <T extends Component> T d(Component.e eVar, GameObject gameObject) {
        if (C13317e.G(gameObject)) {
            throw new NullPointerException("Can't search components on a null object");
        }
        g<T> gVar = this.f22616b;
        if (gVar != null && gVar.b()) {
            Component a10 = this.f22616b.a();
            if (C13317e.G(a10.f79250n) || a10.f79250n != gameObject) {
                this.f22616b = null;
            }
        }
        g<T> gVar2 = this.f22616b;
        if (gVar2 == null || !gVar2.b()) {
            T t10 = (T) gameObject.c0(eVar);
            if (t10 != null) {
                this.f22616b = new g<>(t10);
            }
            return t10;
        }
        g<T> gVar3 = this.f22616b;
        if (gVar3 == null || !gVar3.b()) {
            return null;
        }
        return (T) this.f22616b.a();
    }

    public <T extends Component> T e(String str, GameObject gameObject) {
        if (C13317e.G(gameObject)) {
            throw new NullPointerException("Can't search components on a null object");
        }
        if (str == null || str.isEmpty()) {
            throw new NullPointerException("tittle can't be empty or null");
        }
        g<T> gVar = this.f22616b;
        if (gVar != null && gVar.b()) {
            Component a10 = this.f22616b.a();
            if (C13317e.G(a10.f79250n) || a10.f79250n != gameObject) {
                this.f22616b = null;
            }
        }
        g<T> gVar2 = this.f22616b;
        if (gVar2 == null || !gVar2.b()) {
            T t10 = (T) gameObject.e0(str);
            if (t10 != null) {
                this.f22616b = new g<>(t10);
            }
            return t10;
        }
        g<T> gVar3 = this.f22616b;
        if (gVar3 == null || !gVar3.b()) {
            return null;
        }
        return (T) this.f22616b.a();
    }
}
