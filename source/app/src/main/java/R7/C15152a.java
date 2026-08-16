package r7;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;

public class C15152a {

    public Camera f108717a;

    public int f108718b;

    public C15152a() {
    }

    public Camera a() {
        return this.f108717a;
    }

    public int b() {
        return this.f108718b;
    }

    public void c(Camera camera) {
        this.f108717a = camera;
    }

    public void d(int verticeIndex) {
        this.f108718b = verticeIndex;
    }

    public C15152a(Camera camera) {
        this.f108717a = camera;
    }

    public C15152a(Camera camera, int verticeIndex) {
        this.f108717a = camera;
        this.f108718b = verticeIndex;
    }
}
