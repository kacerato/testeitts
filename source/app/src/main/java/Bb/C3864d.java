package bb;

import JAVARuntime.NurbsPath3D;
import cb.x;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class C3864d {

    public final List<Vector3> f33062a;

    public x[] f33063b;

    public final x f33064c;

    public final x f33065d;

    public final cb.d<x> f33066e;

    public boolean f33067f;

    public final int f33068g;

    public NurbsPath3D f33069h;

    public C3864d() {
        this.f33063b = null;
        this.f33064c = new x();
        this.f33065d = new x();
        this.f33066e = new cb.d<>();
        this.f33067f = false;
        this.f33068g = 3;
        this.f33062a = new SteppedArrayList();
    }

    public void a(List<Vector3> path) {
        this.f33062a.addAll(path);
    }

    public void b(Vector3 vector) {
        this.f33062a.add(vector);
    }

    public void c() {
        this.f33062a.clear();
    }

    public final void d() {
        x[] xVarArr = this.f33063b;
        int i10 = 0;
        if (xVarArr != null && xVarArr.length == this.f33062a.size()) {
            while (i10 < this.f33062a.size()) {
                Vector3 vector3 = this.f33062a.get(i10);
                this.f33063b[i10].Q0(vector3.getX(), vector3.getY(), vector3.getZ());
                i10++;
            }
            this.f33066e.v(this.f33063b, 3, this.f33067f);
            return;
        }
        this.f33063b = new x[this.f33062a.size()];
        while (i10 < this.f33062a.size()) {
            Vector3 vector32 = this.f33062a.get(i10);
            this.f33063b[i10] = new x(vector32.getX(), vector32.getY(), vector32.getZ());
            i10++;
        }
        this.f33066e.v(this.f33063b, 3, this.f33067f);
    }

    public Vector3 e(float u10) {
        return f(u10, new Vector3());
    }

    public Vector3 f(float u10, Vector3 out) {
        d();
        this.f33066e.d(this.f33064c, u10);
        x xVar = this.f33064c;
        out.set(xVar.f34718b, xVar.f34719c, xVar.f34720d);
        return out;
    }

    public List<Vector3> g(int resolution) {
        return h(resolution, new SteppedArrayList());
    }

    public List<Vector3> h(int resolution, List<Vector3> list) {
        int i10 = resolution - 1;
        list.clear();
        for (int i11 = 0; i11 <= i10; i11++) {
            Vector3 vector3 = new Vector3();
            f(i11 / i10, vector3);
            list.add(vector3);
        }
        return list;
    }

    public List<JAVARuntime.Vector3> i(int resolution) {
        return j(resolution, new SteppedArrayList());
    }

    public List<JAVARuntime.Vector3> j(int resolution, List<JAVARuntime.Vector3> list) {
        int i10 = resolution - 1;
        Vector3 vector3 = new Vector3();
        list.clear();
        for (int i11 = 0; i11 <= i10; i11++) {
            f(i11 / i10, vector3);
            JAVARuntime.Vector3 vector32 = new JAVARuntime.Vector3();
            vector32.instance.set(vector3);
            list.add(vector32);
        }
        return list;
    }

    public Vector3 k(int i10) {
        return this.f33062a.get(i10);
    }

    public boolean l() {
        return this.f33067f;
    }

    public int m() {
        return this.f33062a.size();
    }

    public void n(int i10) {
        this.f33062a.remove(i10);
    }

    public void o(Vector3 vector3) {
        this.f33062a.remove(vector3);
    }

    public void p(boolean continuous) {
        this.f33067f = continuous;
        cb.d<x> dVar = this.f33066e;
        if (dVar.f34518d != continuous) {
            dVar.f34518d = continuous;
            x[] xVarArr = this.f33063b;
            if (xVarArr != null) {
                dVar.v(xVarArr, 3, continuous);
            }
        }
    }

    public NurbsPath3D q() {
        NurbsPath3D nurbsPath3D = this.f33069h;
        if (nurbsPath3D != null) {
            return nurbsPath3D;
        }
        NurbsPath3D nurbsPath3D2 = new NurbsPath3D(this);
        this.f33069h = nurbsPath3D2;
        return nurbsPath3D2;
    }

    public C3864d(List<Vector3> points) {
        this.f33063b = null;
        this.f33064c = new x();
        this.f33065d = new x();
        this.f33066e = new cb.d<>();
        this.f33067f = false;
        this.f33068g = 3;
        this.f33062a = points;
    }

    public C3864d(boolean continuous) {
        this.f33063b = null;
        this.f33064c = new x();
        this.f33065d = new x();
        this.f33066e = new cb.d<>();
        this.f33067f = false;
        this.f33068g = 3;
        this.f33062a = new SteppedArrayList();
        this.f33067f = continuous;
    }

    public C3864d(List<Vector3> points, boolean continuous) {
        this.f33063b = null;
        this.f33064c = new x();
        this.f33065d = new x();
        this.f33066e = new cb.d<>();
        this.f33068g = 3;
        this.f33062a = points;
        this.f33067f = continuous;
    }
}
