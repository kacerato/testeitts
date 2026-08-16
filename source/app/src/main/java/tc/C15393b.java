package tc;

import com.itsmagic.engine.Engines.Engine.Vector.Vector2;

public class C15393b {

    public final Vector2 f117271a = new Vector2();

    public boolean f117272b = false;

    public boolean f117273c = false;

    public Vector2 a() {
        return this.f117271a;
    }

    public boolean b() {
        return this.f117273c;
    }

    public boolean c() {
        return this.f117272b;
    }

    public void d(boolean mouse) {
        this.f117273c = mouse;
    }

    public void e(float x10, float y10) {
        Vector2 vector2 = this.f117271a;
        vector2.f79838x = x10;
        vector2.f79839y = y10;
    }

    public void f(boolean pressed) {
        this.f117272b = pressed;
    }
}
