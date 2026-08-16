package v9;

import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.math.Transform;

public class C15811a {

    public final CollisionShape f121304a;

    public final Transform f121305b;

    public C15811a(CollisionShape shape, Transform bulletTransform) {
        this.f121304a = shape;
        this.f121305b = bulletTransform;
    }

    public Transform a() {
        return this.f121305b;
    }

    public CollisionShape b() {
        return this.f121304a;
    }
}
