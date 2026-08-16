package bb;

import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import java.util.List;

public class C3865e extends C3863c {

    public float f33070i;

    public List<Vector2> f33071j;

    public float f33072k;

    public C3865e() {
        this.f33070i = 0.5f;
        this.f33071j = null;
        this.f33072k = 0.0f;
    }

    public List<Vector2> r() {
        float f10 = this.f33072k;
        float f11 = this.f33070i;
        if (f10 != f11 || this.f33071j == null) {
            this.f33072k = f11;
            this.f33071j = super.g((int) (v() / this.f33070i));
        }
        return this.f33071j;
    }

    public List<Vector2> s(List<Vector2> list) {
        r();
        list.clear();
        list.addAll(this.f33071j);
        return this.f33071j;
    }

    public float t() {
        return this.f33070i;
    }

    public void u() {
        this.f33071j = null;
    }

    public final float v() {
        float f10 = 0.0f;
        int i10 = 0;
        while (i10 < m() - 1) {
            Vector2 k10 = k(i10);
            i10++;
            f10 += k10.distance(k(i10));
        }
        return f10;
    }

    public void w(float pointSize) {
        this.f33070i = pointSize;
    }

    public C3865e(float pointSize) {
        this.f33071j = null;
        this.f33072k = 0.0f;
        this.f33070i = pointSize;
    }

    public C3865e(List<Vector2> points, float pointSize) {
        super(points);
        this.f33071j = null;
        this.f33072k = 0.0f;
        this.f33070i = pointSize;
    }

    public C3865e(boolean continuous, float pointSize) {
        super(continuous);
        this.f33071j = null;
        this.f33072k = 0.0f;
        this.f33070i = pointSize;
    }

    public C3865e(List<Vector2> points, boolean continuous, float pointSize) {
        super(points, continuous);
        this.f33071j = null;
        this.f33072k = 0.0f;
        this.f33070i = pointSize;
    }
}
