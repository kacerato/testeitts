package db;

import com.itsmagic.engine.Engines.Engine.Vector.Vector3;

public class C12902b {

    public Vector3 f84492a;

    public Vector3 f84493b;

    public Vector3 f84494c;

    public Vector3 f84495d;

    public C12902b() {
        this.f84495d = new Vector3(0.0f, 1.0f, 0.0f);
    }

    public Vector3 a() {
        return this.f84493b;
    }

    public Vector3 b() {
        return this.f84494c;
    }

    public Vector3 c() {
        return this.f84492a;
    }

    public Vector3 d() {
        return this.f84495d;
    }

    public void e(Vector3 direction) {
        this.f84493b = direction;
    }

    public void f(Vector3 perpDirection) {
        this.f84494c = perpDirection;
    }

    public void g(Vector3 position) {
        this.f84492a = position;
    }

    public void h(Vector3 upDirection) {
        this.f84495d = upDirection;
    }

    public C12902b(Vector3 position) {
        this.f84495d = new Vector3(0.0f, 1.0f, 0.0f);
        this.f84492a = position;
    }

    public C12902b(Vector3 position, Vector3 direction, Vector3 perpDirection, Vector3 upDirection) {
        new Vector3(0.0f, 1.0f, 0.0f);
        this.f84492a = position;
        this.f84493b = direction;
        this.f84494c = perpDirection;
        this.f84495d = upDirection;
    }
}
