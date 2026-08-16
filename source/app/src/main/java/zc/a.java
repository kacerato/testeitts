package Zc;

import JAVARuntime.GizmoObject;
import JAVARuntime.Vertex;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class a {

    public int f31111a;

    public final List<GizmoObject> f31112b;

    public final ColorINT f31113c;

    public float f31114d;

    public int f31115e;

    public a() {
        this.f31112b = new SteppedArrayList();
        this.f31113c = new ColorINT();
        this.f31114d = 0.3f;
        this.f31115e = 0;
    }

    public void a(float x10, float y10, float z10) {
        int size = this.f31112b.size();
        int i10 = this.f31115e;
        if (size <= i10) {
            throw new IndexOutOfBoundsException("Increase total at setTotal()");
        }
        GizmoObject gizmoObject = this.f31112b.get(i10);
        gizmoObject.setPosition(x10, y10, z10);
        Ub.a.a(gizmoObject);
        this.f31115e++;
    }

    public void b(Vector3 position) {
        int size = this.f31112b.size();
        int i10 = this.f31115e;
        if (size <= i10) {
            throw new IndexOutOfBoundsException("Increase total at setTotal()");
        }
        GizmoObject gizmoObject = this.f31112b.get(i10);
        gizmoObject.setPosition(position.toJAVARuntime());
        Ub.a.a(gizmoObject);
        this.f31115e++;
    }

    public void c() {
        this.f31115e = 0;
    }

    public void d(ColorINT color) {
        if (Q8.a.b(this.f31113c, color)) {
            return;
        }
        this.f31113c.K(color);
        f(color);
    }

    public void e(int t10) {
        int i10 = this.f31111a;
        int i11 = 0;
        if (t10 <= i10) {
            int i12 = i10 - t10;
            while (i11 < i12) {
                this.f31112b.remove(r4.size() - 1);
                i11++;
            }
            return;
        }
        int i13 = t10 - i10;
        while (i11 < i13) {
            GizmoObject gizmoObject = new GizmoObject(Vertex.loadPrimitive(10));
            gizmoObject.setColor(this.f31113c.e0());
            gizmoObject.setScale(this.f31114d);
            this.f31112b.add(gizmoObject);
            i11++;
        }
    }

    public final void f(ColorINT color) {
        for (int i10 = 0; i10 < this.f31112b.size(); i10++) {
            this.f31112b.get(i10).setColor(color.e0());
        }
    }

    public a(ColorINT color) {
        this.f31112b = new SteppedArrayList();
        ColorINT colorINT = new ColorINT();
        this.f31113c = colorINT;
        this.f31114d = 0.3f;
        this.f31115e = 0;
        colorINT.K(color);
    }

    public a(ColorINT color, float scale) {
        this.f31112b = new SteppedArrayList();
        ColorINT colorINT = new ColorINT();
        this.f31113c = colorINT;
        this.f31114d = 0.3f;
        this.f31115e = 0;
        colorINT.K(color);
        this.f31114d = scale;
    }
}
