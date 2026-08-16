package ka;

import JAVARuntime.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import gb.C13317e;

public final class C13956e {
    public static Vector3 a(Vector3 value) {
        if (value != null) {
            return value.m1249clone();
        }
        return null;
    }

    public static GameObject b(GameObject object) {
        if (C13317e.J(object)) {
            return object;
        }
        return null;
    }

    public static Component c(com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component component) {
        if (component != null) {
            return component.toJAVARuntime();
        }
        return null;
    }
}
