package vc;

import JAVARuntime.Point3;
import JAVARuntime.Point3Buffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;

public class n {

    public NativeIntBuffer f121470a;

    public Point3Buffer f121471b;

    public n(int capacity) {
        this.f121470a = new NativeIntBuffer(capacity * 3);
    }

    public Point3[] a() {
        Point3[] point3Arr = new Point3[b()];
        for (int i10 = 0; i10 < b(); i10++) {
            point3Arr[i10] = e(i10);
        }
        return point3Arr;
    }

    public int b() {
        return this.f121470a.capacity() / 3;
    }

    public n c() {
        return new n(this.f121470a.m1251clone());
    }

    public void d() {
        this.f121470a.destroy();
    }

    public Point3 e(int idx) {
        return f(idx, new Point3());
    }

    public Point3 f(int idx, Point3 out) {
        int i10 = idx * 3;
        out.setX(this.f121470a.get(i10));
        out.setY(this.f121470a.get(i10 + 1));
        out.setZ(this.f121470a.get(i10 + 2));
        return out;
    }

    public NativeIntBuffer g() {
        return this.f121470a;
    }

    public int h(int idx) {
        return this.f121470a.get(idx * 3);
    }

    public int i(int idx) {
        return this.f121470a.get((idx * 3) + 1);
    }

    public int j(int idx) {
        return this.f121470a.get((idx * 3) + 2);
    }

    public void k(int idx) {
        this.f121470a.position(idx * 3);
    }

    public void l(int x10, int y10, int z10) {
        this.f121470a.put(x10);
        this.f121470a.put(y10);
        this.f121470a.put(z10);
    }

    public void m(Point3 vector3) {
        this.f121470a.put(vector3.getX());
        this.f121470a.put(vector3.getY());
        this.f121470a.put(vector3.getZ());
    }

    public void n(int idx, int a10) {
        int i10 = idx * 3;
        this.f121470a.set(i10, a10);
        this.f121470a.set(i10 + 1, a10);
        this.f121470a.set(i10 + 2, a10);
    }

    public void o(int idx, int x10, int y10, int z10) {
        int i10 = idx * 3;
        this.f121470a.set(i10, x10);
        this.f121470a.set(i10 + 1, y10);
        this.f121470a.set(i10 + 2, z10);
    }

    public void p(int idx, Point3 vector3) {
        int i10 = idx * 3;
        this.f121470a.set(i10, vector3.getX());
        this.f121470a.set(i10 + 1, vector3.getY());
        this.f121470a.set(i10 + 2, vector3.getZ());
    }

    public void q(NativeIntBuffer buffer) {
        this.f121470a = buffer;
    }

    public void r(Point3Buffer run) {
        this.f121471b = run;
    }

    public Point3Buffer s() {
        Point3Buffer point3Buffer = this.f121471b;
        if (point3Buffer != null) {
            return point3Buffer;
        }
        Point3Buffer point3Buffer2 = new Point3Buffer(this);
        this.f121471b = point3Buffer2;
        return point3Buffer2;
    }

    public n(NativeIntBuffer buffer) {
        this.f121470a = buffer;
    }
}
