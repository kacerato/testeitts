package vc;

import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.jme3.math.FastMath;
import com.jme3.math.Vector3f;
import yc.C16167a;

public class C15828d {

    public C15827c f121450a;

    public C16167a f121451b;

    public C15828d(int capacity) {
        C15827c c15827c = new C15827c(capacity * 3);
        this.f121450a = c15827c;
        this.f121451b = c15827c.g();
    }

    public void A(int idx, float x10, float y10, float z10) {
        this.f121451b.T(idx * 3, x10, y10, z10);
    }

    public void B(int idx, Vector2 vector) {
        this.f121451b.S(idx * 3, vector.f79838x, vector.f79839y);
    }

    public void C(int idx, Vector3 vector3) {
        this.f121451b.T(idx * 3, vector3.getX(), vector3.getY(), vector3.getZ());
    }

    public void D(C16167a buffer) {
        this.f121451b = buffer;
        this.f121450a = new C15827c(buffer);
    }

    public void E(float x10, float y10, float z10) {
        A(d() - 1, x10, y10, z10);
    }

    public Vector3[] F() {
        Vector3[] vector3Arr = new Vector3[d()];
        for (int i10 = 0; i10 < d(); i10++) {
            vector3Arr[i10] = h(i10);
        }
        return vector3Arr;
    }

    public void a(int idx, float x10, float y10, float z10) {
        A(idx, m(idx) + x10, n(idx) + y10, o(idx) + z10);
    }

    public void b(int idx, Vector3 vector3) {
        a(idx, vector3.getX(), vector3.getY(), vector3.getZ());
    }

    public Vector3[] c() {
        Vector3[] vector3Arr = new Vector3[d()];
        for (int i10 = 0; i10 < d(); i10++) {
            vector3Arr[i10] = h(i10);
        }
        return vector3Arr;
    }

    public int d() {
        return this.f121451b.a() / 3;
    }

    public C15828d e(boolean deepClone) {
        return deepClone ? new C15828d(k().clone()) : new C15828d(k());
    }

    public C15828d f() {
        return e(true);
    }

    public void g() {
        this.f121451b.h();
    }

    public Vector3 h(int idx) {
        return i(idx, new Vector3());
    }

    public Vector3 i(int idx, Vector3 out) {
        int i10 = idx * 3;
        out.setX(this.f121451b.n(i10));
        out.setY(this.f121451b.n(i10 + 1));
        out.setZ(this.f121451b.n(i10 + 2));
        return out;
    }

    public Vector3f j(int idx, Vector3f out) {
        int i10 = idx * 3;
        out.setX(this.f121451b.n(i10));
        out.setY(this.f121451b.n(i10 + 1));
        out.setZ(this.f121451b.n(i10 + 2));
        return out;
    }

    public C16167a k() {
        return this.f121451b;
    }

    public int l() {
        return this.f121451b.B() / 3;
    }

    public float m(int idx) {
        return this.f121451b.n(idx * 3);
    }

    public float n(int idx) {
        return this.f121451b.n((idx * 3) + 1);
    }

    public float o(int idx) {
        return this.f121451b.n((idx * 3) + 2);
    }

    public void p(int add) {
        y(d() + add);
    }

    public void q(int idx) {
        float m10 = m(idx);
        float n10 = n(idx);
        float o10 = o(idx);
        float f10 = (m10 * m10) + (n10 * n10) + (o10 * o10);
        if (f10 != 1.0f && f10 != 0.0f) {
            float sqrt = 1.0f / FastMath.sqrt(f10);
            m10 *= sqrt;
            n10 *= sqrt;
            o10 *= sqrt;
        }
        A(idx, m10, n10, o10);
    }

    public void r(int idx) {
        this.f121451b.E(idx * 3);
    }

    public void s(float x10, float y10, float z10) {
        this.f121451b.H(x10, y10, z10);
    }

    public void t(Vector2 vector) {
        this.f121451b.H(vector.f79838x, vector.f79839y, 0.0f);
    }

    public void u(Vector3 vector3) {
        this.f121451b.H(vector3.getX(), vector3.getY(), vector3.getZ());
    }

    public void v(Vector3f vector3) {
        this.f121451b.H(vector3.getX(), vector3.getY(), vector3.getZ());
    }

    public void w(javax.vecmath.Vector3f vector3) {
        this.f121451b.H(vector3.getX(), vector3.getY(), vector3.getZ());
    }

    public void x(int idx) {
        if (d() <= idx) {
            throw new IndexOutOfBoundsException("" + idx);
        }
        while (idx < d() - 1) {
            int i10 = idx + 1;
            A(idx, m(i10), n(i10), o(i10));
            idx = i10;
        }
        this.f121450a.i(-1);
        this.f121451b = this.f121450a.g();
    }

    public void y(int newCapacity) {
        this.f121450a.o(newCapacity * 3, true);
        this.f121451b = this.f121450a.g();
    }

    public void z(int idx, float a10) {
        this.f121451b.T(idx * 3, a10, a10, a10);
    }

    public C15828d(C15827c dataBase) {
        this.f121450a = dataBase;
        this.f121451b = dataBase.g();
    }

    public C15828d(C16167a buffer) {
        this.f121451b = buffer;
        this.f121450a = new C15827c(buffer);
    }
}
