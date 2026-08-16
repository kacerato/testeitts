package L8;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;
import java.util.HashMap;
import java.util.Map;

public class e {

    public final Map<Ac.b, GameObject> f11659a = new HashMap();

    public final Map<GameObject, Map<Ac.b, Component>> f11660b = new HashMap();

    public Component a(GameObject gameObject, Ac.b guid) {
        if (guid == null) {
            throw new NullPointerException("guid can`t be null");
        }
        Map<Ac.b, Component> map = this.f11660b.get(gameObject);
        if (map == null) {
            map = new HashMap<>();
            this.f11660b.put(gameObject, map);
        }
        Component component = map.get(guid);
        if (component != null) {
            return component;
        }
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            Component L10 = gameObject.L(i10);
            if (L10.getGuid().e(guid)) {
                map.put(guid, L10);
                return L10;
            }
        }
        return null;
    }

    public GameObject b(GameObject animationPlayerObject, Ac.b guid) {
        if (guid == null) {
            throw new NullPointerException("guid can`t be null");
        }
        GameObject gameObject = this.f11659a.get(guid);
        if (gameObject != null) {
            return gameObject;
        }
        GameObject l10 = C13317e.l(animationPlayerObject, guid);
        this.f11659a.put(guid, l10);
        return l10;
    }
}
