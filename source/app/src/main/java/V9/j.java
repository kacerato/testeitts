package V9;

import com.itsmagic.engine.Engines.Engine.ImGUI.Vectors.Vec2I;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;

public class j {

    public Vec2I f26693a;

    public Vec2I f26694b;

    public GameObject f26695c;

    public j() {
    }

    public Vec2I a() {
        return this.f26693a;
    }

    public GameObject b() {
        return this.f26695c;
    }

    public Vec2I c() {
        return this.f26694b;
    }

    public void d(Vec2I from) {
        this.f26693a = from;
    }

    public void e(GameObject target) {
        this.f26695c = target;
    }

    public void f(Vec2I to) {
        this.f26694b = to;
    }

    public j(Vec2I from, Vec2I to, GameObject target) {
        this.f26693a = from;
        this.f26694b = to;
        this.f26695c = target;
    }
}
