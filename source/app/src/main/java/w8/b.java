package W8;

import Db.a;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.math.Transform;

public class b {

    public CollisionShape f27326a;

    public Transform f27327b;

    public a.c f27328c;

    public boolean f27329d;

    public b(CollisionShape shape) {
        this.f27326a = shape;
        this.f27327b = null;
        this.f27328c = null;
        this.f27329d = false;
    }

    public a.c a() {
        return this.f27328c;
    }

    public CollisionShape b() {
        return this.f27326a;
    }

    public Transform c() {
        return this.f27327b;
    }

    public boolean d() {
        return this.f27329d;
    }

    public void e() {
        a.c cVar = this.f27328c;
        if (cVar != null) {
            cVar.h();
            this.f27328c = null;
        }
    }

    public void f(a.c collisionBvhCacheEntry) {
        this.f27328c = collisionBvhCacheEntry;
    }

    public void g(boolean scaleBaked) {
        this.f27329d = scaleBaked;
    }

    public void h(CollisionShape shape) {
        this.f27326a = shape;
    }

    public void i(Transform transform) {
        this.f27327b = transform;
    }

    public b(CollisionShape shape, Transform transform) {
        this.f27326a = shape;
        this.f27327b = transform;
        this.f27328c = null;
        this.f27329d = false;
    }

    public b(CollisionShape shape, a.c collisionBvhCacheEntry, boolean scaleBaked) {
        this.f27326a = shape;
        this.f27327b = null;
        this.f27328c = collisionBvhCacheEntry;
        this.f27329d = scaleBaked;
    }
}
