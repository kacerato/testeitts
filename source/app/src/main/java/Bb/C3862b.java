package bb;

import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import db.C12902b;
import java.util.List;

public class C3862b extends f {

    public final List<C12902b> f33052l;

    public Vector3 f33053m;

    public C3862b() {
        this.f33053m = new Vector3(0.0f, 1.0f, 0.0f);
        this.f33052l = new SteppedArrayList();
    }

    public List<C12902b> w() {
        List<Vector3> r10 = super.r();
        this.f33052l.clear();
        int i10 = 0;
        if (!r10.isEmpty()) {
            Vector3 k10 = super.k(0);
            Vector3 vector3 = r10.get(0);
            C12902b c12902b = new C12902b();
            c12902b.f84492a = k10;
            c12902b.f84493b = vector3.sub(k10).normalize();
            Vector3 normalize = this.f33053m.normalize();
            c12902b.f84495d = normalize;
            Vector3 crossProduct = Vector3.crossProduct(c12902b.f84493b, normalize);
            c12902b.f84494c = crossProduct;
            crossProduct.normalizeLocal();
            this.f33052l.add(c12902b);
        }
        while (i10 < r10.size() - 1) {
            Vector3 vector32 = r10.get(i10);
            i10++;
            Vector3 vector33 = r10.get(i10);
            C12902b c12902b2 = new C12902b();
            c12902b2.f84492a = vector32;
            c12902b2.f84493b = vector33.sub(vector32).normalize();
            Vector3 normalize2 = this.f33053m.normalize();
            c12902b2.f84495d = normalize2;
            Vector3 crossProduct2 = Vector3.crossProduct(c12902b2.f84493b, normalize2);
            c12902b2.f84494c = crossProduct2;
            crossProduct2.normalizeLocal();
            this.f33052l.add(c12902b2);
        }
        if (r10.size() >= 2) {
            Vector3 vector34 = r10.get(r10.size() - 2);
            Vector3 vector35 = r10.get(r10.size() - 1);
            C12902b c12902b3 = new C12902b();
            c12902b3.f84492a = vector35;
            c12902b3.f84493b = vector35.sub(vector34).normalize();
            Vector3 normalize3 = this.f33053m.normalize();
            c12902b3.f84495d = normalize3;
            Vector3 crossProduct3 = Vector3.crossProduct(c12902b3.f84493b, normalize3);
            c12902b3.f84494c = crossProduct3;
            crossProduct3.normalizeLocal();
            this.f33052l.add(c12902b3);
        }
        if (!r10.isEmpty()) {
            Vector3 vector36 = r10.get(r10.size() - 1);
            Vector3 k11 = super.k(super.m() - 1);
            C12902b c12902b4 = new C12902b();
            c12902b4.f84492a = k11;
            c12902b4.f84493b = k11.sub(vector36).normalize();
            Vector3 normalize4 = this.f33053m.normalize();
            c12902b4.f84495d = normalize4;
            Vector3 crossProduct4 = Vector3.crossProduct(c12902b4.f84493b, normalize4);
            c12902b4.f84494c = crossProduct4;
            crossProduct4.normalizeLocal();
            this.f33052l.add(c12902b4);
        }
        return this.f33052l;
    }

    public C3862b(float pointSize, Vector3 upAxis) {
        super(pointSize);
        this.f33053m = new Vector3(0.0f, 1.0f, 0.0f);
        this.f33052l = new SteppedArrayList();
        this.f33053m = upAxis;
    }

    public C3862b(List<Vector3> points, float pointSize, Vector3 upAxis) {
        super(points, pointSize);
        this.f33053m = new Vector3(0.0f, 1.0f, 0.0f);
        this.f33052l = new SteppedArrayList();
        this.f33053m = upAxis;
    }

    public C3862b(boolean continuous, float pointSize, Vector3 upAxis) {
        super(continuous, pointSize);
        this.f33053m = new Vector3(0.0f, 1.0f, 0.0f);
        this.f33052l = new SteppedArrayList();
        this.f33053m = upAxis;
    }

    public C3862b(List<Vector3> points, boolean continuous, float pointSize, Vector3 upAxis) {
        super(points, continuous, pointSize);
        this.f33053m = new Vector3(0.0f, 1.0f, 0.0f);
        this.f33052l = new SteppedArrayList();
        this.f33053m = upAxis;
    }
}
