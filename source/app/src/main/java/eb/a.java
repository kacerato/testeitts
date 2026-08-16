package Eb;

import Ib.k;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.jme3.bullet.collision.shapes.HullCollisionShape;
import java.util.List;

public class a {

    public Vertex f5756a;

    public List<HullCollisionShape> f5757b;

    public Vertex f5758c;

    public Vertex a() {
        return this.f5756a;
    }

    public List<HullCollisionShape> b() {
        return this.f5757b;
    }

    public Vertex c() {
        if (this.f5758c == null) {
            this.f5758c = k.j(this.f5756a);
        }
        return this.f5758c;
    }

    public void d(Vertex convexMesh) {
        this.f5756a = convexMesh;
    }

    public void e(List<HullCollisionShape> shapes) {
        this.f5757b = shapes;
    }
}
