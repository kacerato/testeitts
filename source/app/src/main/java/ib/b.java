package Ib;

import JAVARuntime.CompoundVertex;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Iterator;
import java.util.List;

public class b {

    public Vertex f8904a;

    public final List<a> f8905b = new SteppedArrayList();

    public CompoundVertex f8906c;

    public static class a {

        public Vertex f8907a;

        public com.itsmagic.engine.Engines.Engine.Vector.f f8908b;

        public int f8909c;

        public int f8910d;

        public int f8911e;

        public CompoundVertex.Part f8912f;

        public a(Vertex vertex, com.itsmagic.engine.Engines.Engine.Vector.f matrix4) {
            this.f8907a = vertex;
            this.f8908b = matrix4;
        }

        public com.itsmagic.engine.Engines.Engine.Vector.f i() {
            return this.f8908b;
        }

        public Vertex j() {
            return this.f8907a;
        }

        public void k(CompoundVertex.Part run) {
            this.f8912f = run;
        }

        public CompoundVertex.Part l() {
            CompoundVertex.Part part = this.f8912f;
            if (part != null) {
                return part;
            }
            CompoundVertex.Part part2 = new CompoundVertex.Part(this);
            this.f8912f = part2;
            return part2;
        }
    }

    public a a(Vertex vertex, Transform transform) {
        com.itsmagic.engine.Engines.Engine.Vector.f o02 = transform.o0();
        a aVar = new a(vertex, o02);
        Vertex vertex2 = this.f8904a;
        if (vertex2 != null) {
            aVar.f8909c = vertex2.j1();
            aVar.f8910d = this.f8904a.y0();
            aVar.f8911e = this.f8904a.G0();
            this.f8904a.x(vertex, o02);
        } else {
            this.f8904a = vertex.Y();
        }
        this.f8905b.add(aVar);
        return aVar;
    }

    public Vertex b() {
        if (this.f8905b.isEmpty()) {
            throw new RuntimeException("No bake yet, please add at least one vertex");
        }
        return this.f8904a;
    }

    public final void c() {
        this.f8904a = null;
        Iterator<a> it = this.f8905b.iterator();
        while (it.hasNext()) {
            com.itsmagic.engine.Engines.Engine.Vector.f fVar = it.next().f8908b;
            Vertex vertex = this.f8904a;
            if (vertex != null) {
                vertex.x(vertex, fVar);
            } else {
                this.f8904a = vertex.Y();
            }
        }
    }

    public void d(a part) {
        Vertex vertex = this.f8904a;
        if (vertex != null) {
            vertex.J1(part.f8907a, part.f8908b, part.f8909c, part.f8910d, part.f8911e);
        }
    }

    public void e(a part) {
        if (this.f8905b.remove(part)) {
            c();
        }
    }

    public void f(List<a> parts) {
        this.f8905b.removeAll(parts);
        c();
    }

    public void g(CompoundVertex run) {
        this.f8906c = run;
    }

    public CompoundVertex h() {
        CompoundVertex compoundVertex = this.f8906c;
        if (compoundVertex != null) {
            return compoundVertex;
        }
        CompoundVertex compoundVertex2 = new CompoundVertex(this);
        this.f8906c = compoundVertex2;
        return compoundVertex2;
    }
}
