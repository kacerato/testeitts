package db;

import com.itsmagic.engine.Engines.Engine.Vector.Vector2;

public class C12901a {

    public Vector2 f84489a;

    public Vector2 f84490b;

    public Vector2 f84491c;

    public Vector2 a() {
        return this.f84490b;
    }

    public Vector2 b() {
        return this.f84491c;
    }

    public Vector2 c() {
        return this.f84489a;
    }

    public void d(Vector2 direction) {
        this.f84490b = direction;
    }

    public void e(Vector2 perpDirection) {
        this.f84491c = perpDirection;
    }

    public void f(Vector2 position) {
        this.f84489a = position;
    }
}
