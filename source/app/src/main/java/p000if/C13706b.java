package p000if;

import com.jme3.math.Vector3f;
import com.jme3.scene.Geometry;
import com.jme3.scene.Node;
import java.util.Deque;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.logging.Logger;

public class C13706b {

    public static final Logger f92081f = Logger.getLogger(C13706b.class.getName());

    public static final boolean f92082g = false;

    public final Deque<Geometry> f92083a = new LinkedList();

    public int f92084b = 9999;

    public int f92085c = 0;

    public int f92086d = 0;

    public final Node f92087e = new Node("Decal Node");

    public void a(Geometry geometry) {
        b((Geometry) geometry.deepClone());
    }

    public void b(Geometry geometry) {
        int triangleCount = geometry.getTriangleCount();
        geometry.setName("decal #" + this.f92085c);
        this.f92085c = this.f92085c + 1;
        this.f92083a.addLast(geometry);
        this.f92087e.attachChild(geometry);
        this.f92086d += triangleCount;
        e();
    }

    public int c() {
        return this.f92084b;
    }

    public Node d() {
        return this.f92087e;
    }

    public void e() {
        while (this.f92086d > this.f92084b) {
            Geometry removeFirst = this.f92083a.removeFirst();
            removeFirst.removeFromParent();
            this.f92086d -= removeFirst.getTriangleCount();
        }
    }

    public void f() {
        this.f92083a.clear();
        this.f92087e.detachAllChildren();
        this.f92086d = 0;
    }

    public void g(int i10) {
        C13702E.F(i10, "new limit");
        this.f92084b = i10;
        e();
    }

    public void h(Vector3f vector3f) {
        C13702E.d(vector3f, "offset");
        Iterator<Geometry> it = this.f92083a.iterator();
        while (it.hasNext()) {
            it.next().move(vector3f);
        }
    }
}
