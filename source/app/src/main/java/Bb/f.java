package bb;

import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import java.util.List;

public class f extends C3864d {

    public float f33073i;

    public List<Vector3> f33074j;

    public float f33075k;

    public f() {
        this.f33073i = 0.5f;
        this.f33074j = null;
        this.f33075k = 0.0f;
    }

    public List<Vector3> r() {
        this.f33075k = this.f33073i;
        List<Vector3> g10 = super.g((int) (u() / this.f33073i));
        this.f33074j = g10;
        return g10;
    }

    public List<Vector3> s(List<Vector3> list) {
        r();
        list.clear();
        list.addAll(this.f33074j);
        return this.f33074j;
    }

    public float t() {
        return this.f33073i;
    }

    public final float u() {
        float f10 = 0.0f;
        int i10 = 0;
        while (i10 < m() - 1) {
            Vector3 k10 = k(i10);
            i10++;
            f10 += k10.distance(k(i10));
        }
        return f10;
    }

    public void v(float pointSize) {
        this.f33073i = pointSize;
    }

    public f(float pointSize) {
        this.f33074j = null;
        this.f33075k = 0.0f;
        this.f33073i = pointSize;
    }

    public f(List<Vector3> points, float pointSize) {
        super(points);
        this.f33074j = null;
        this.f33075k = 0.0f;
        this.f33073i = pointSize;
    }

    public f(boolean continuous, float pointSize) {
        super(continuous);
        this.f33074j = null;
        this.f33075k = 0.0f;
        this.f33073i = pointSize;
    }

    public f(List<Vector3> points, boolean continuous, float pointSize) {
        super(points, continuous);
        this.f33074j = null;
        this.f33075k = 0.0f;
        this.f33073i = pointSize;
    }
}
