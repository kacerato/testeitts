package bb;

import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import db.C12901a;
import java.util.List;

public class C3861a extends C3865e {

    public final List<C12901a> f33049l;

    public final Vector3 f33050m;

    public final Vector3 f33051n;

    public C3861a() {
        this.f33050m = new Vector3(0.0f, 1.0f, 0.0f);
        this.f33051n = new Vector3();
        this.f33049l = new SteppedArrayList();
    }

    public List<C12901a> x() {
        List<Vector2> r10 = super.r();
        this.f33049l.clear();
        int i10 = 0;
        while (i10 < r10.size() - 1) {
            Vector2 vector2 = r10.get(i10);
            i10++;
            Vector2 vector22 = r10.get(i10);
            C12901a c12901a = new C12901a();
            c12901a.f84489a = vector2;
            c12901a.f84490b = vector22.q0(vector2).j0();
            Vector2 vector23 = c12901a.f84490b;
            Vector3 triangleNormal = Vector3.triangleNormal(this.f33051n, new Vector3(vector23.f79838x, 0.0f, vector23.f79839y), this.f33050m);
            c12901a.f84491c = new Vector2(triangleNormal.getX(), triangleNormal.getZ());
            this.f33049l.add(c12901a);
        }
        if (r10.size() >= 2) {
            Vector2 vector24 = r10.get(r10.size() - 2);
            Vector2 vector25 = r10.get(r10.size() - 1);
            C12901a c12901a2 = new C12901a();
            c12901a2.f84489a = vector25;
            c12901a2.f84490b = vector25.q0(vector24).j0();
            Vector2 vector26 = c12901a2.f84490b;
            Vector3 triangleNormal2 = Vector3.triangleNormal(this.f33051n, new Vector3(vector26.f79838x, 0.0f, vector26.f79839y), this.f33050m);
            c12901a2.f84491c = new Vector2(triangleNormal2.getX(), triangleNormal2.getZ());
            this.f33049l.add(c12901a2);
        }
        return this.f33049l;
    }

    public C3861a(float pointSize) {
        super(pointSize);
        this.f33050m = new Vector3(0.0f, 1.0f, 0.0f);
        this.f33051n = new Vector3();
        this.f33049l = new SteppedArrayList();
    }

    public C3861a(List<Vector2> points, float pointSize) {
        super(points, pointSize);
        this.f33050m = new Vector3(0.0f, 1.0f, 0.0f);
        this.f33051n = new Vector3();
        this.f33049l = new SteppedArrayList();
    }

    public C3861a(boolean continuous, float pointSize) {
        super(continuous, pointSize);
        this.f33050m = new Vector3(0.0f, 1.0f, 0.0f);
        this.f33051n = new Vector3();
        this.f33049l = new SteppedArrayList();
    }

    public C3861a(List<Vector2> points, boolean continuous, float pointSize) {
        super(points, continuous, pointSize);
        this.f33050m = new Vector3(0.0f, 1.0f, 0.0f);
        this.f33051n = new Vector3();
        this.f33049l = new SteppedArrayList();
    }
}
