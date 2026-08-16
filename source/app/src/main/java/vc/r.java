package vc;

import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.jme3.math.FastMath;
import com.jme3.math.Vector4f;

public class r {

    public k f121481a;

    public NativeFloatBuffer f121482b;

    public r(int capacity) {
        k kVar = new k(capacity * 4);
        this.f121481a = kVar;
        this.f121482b = kVar.g();
    }

    public void A(int idx, Quaternion vector4) {
        this.f121482b.set(idx * 4, vector4.getX(), vector4.getY(), vector4.getZ(), vector4.I());
    }

    public void B(int idx, Vector4 vector4) {
        this.f121482b.set(idx * 4, vector4.f79845x, vector4.f79846y, vector4.f79847z, vector4.f79844w);
    }

    public void C(NativeFloatBuffer buffer) {
        this.f121482b = buffer;
        this.f121481a = new k(buffer);
    }

    public void a(int idx, float x10, float y10, float z10, float w10) {
        z(idx, o(idx) + x10, p(idx) + y10, q(idx) + z10, n(idx) + w10);
    }

    public void b(int idx, Vector4 vector4) {
        a(idx, vector4.f79845x, vector4.f79846y, vector4.f79847z, vector4.f79844w);
    }

    public Vector4[] c() {
        Vector4[] vector4Arr = new Vector4[d()];
        for (int i10 = 0; i10 < d(); i10++) {
            vector4Arr[i10] = i(i10);
        }
        return vector4Arr;
    }

    public int d() {
        return this.f121482b.capacity() / 4;
    }

    public r e(boolean deepClone) {
        return deepClone ? new r(l().m1250clone()) : new r(l());
    }

    public r f() {
        return e(true);
    }

    public void g() {
        this.f121482b.destroy();
    }

    public Quaternion h(int idx, Quaternion out) {
        int i10 = idx * 4;
        out.setX(this.f121482b.get(i10));
        out.setY(this.f121482b.get(i10 + 1));
        out.setZ(this.f121482b.get(i10 + 2));
        out.G0(this.f121482b.get(i10 + 3));
        return out;
    }

    public Vector4 i(int idx) {
        return j(idx, new Vector4());
    }

    public Vector4 j(int idx, Vector4 out) {
        int i10 = idx * 4;
        out.n(this.f121482b.get(i10));
        out.o(this.f121482b.get(i10 + 1));
        out.p(this.f121482b.get(i10 + 2));
        out.m(this.f121482b.get(i10 + 3));
        return out;
    }

    public Vector4f k(int idx, Vector4f out) {
        int i10 = idx * 4;
        out.setX(this.f121482b.get(i10));
        out.setY(this.f121482b.get(i10 + 1));
        out.setZ(this.f121482b.get(i10 + 2));
        out.setW(this.f121482b.get(i10 + 3));
        return out;
    }

    public NativeFloatBuffer l() {
        return this.f121482b;
    }

    public Quaternion m(int idx) {
        return new Quaternion(j(idx, new Vector4()));
    }

    public float n(int idx) {
        return this.f121482b.get((idx * 4) + 3);
    }

    public float o(int idx) {
        return this.f121482b.get(idx * 4);
    }

    public float p(int idx) {
        return this.f121482b.get((idx * 4) + 1);
    }

    public float q(int idx) {
        return this.f121482b.get((idx * 4) + 2);
    }

    public void r(int add) {
        x(d() + add);
    }

    public void s(int idx) {
        float o10 = o(idx);
        float p10 = p(idx);
        float q10 = q(idx);
        float n10 = n(idx);
        float f10 = (o10 * o10) + (p10 * p10) + (q10 * q10);
        if (f10 != 1.0f && f10 != 0.0f) {
            float sqrt = 1.0f / FastMath.sqrt(f10);
            o10 *= sqrt;
            p10 *= sqrt;
            q10 *= sqrt;
            n10 *= sqrt;
        }
        z(idx, o10, p10, q10, n10);
    }

    public void t(int idx) {
        this.f121482b.position(idx * 4);
    }

    public void u(float x10, float y10, float z10, float w10) {
        this.f121482b.put(x10);
        this.f121482b.put(y10);
        this.f121482b.put(z10);
        this.f121482b.put(w10);
    }

    public void v(Vector4 vector4) {
        this.f121482b.put(vector4.f79845x);
        this.f121482b.put(vector4.f79846y);
        this.f121482b.put(vector4.f79847z);
        this.f121482b.put(vector4.f79844w);
    }

    public void w(int idx) {
        while (true) {
            int i10 = idx;
            if (i10 >= d() - 1) {
                this.f121481a.i(-1);
                this.f121482b = this.f121481a.g();
                return;
            } else {
                idx = i10 + 1;
                z(i10, o(idx), p(idx), q(idx), n(idx));
            }
        }
    }

    public void x(int newCapacity) {
        this.f121481a.o(newCapacity * 4, true);
        this.f121482b = this.f121481a.g();
    }

    public void y(int idx, float a10) {
        this.f121482b.set(idx * 4, a10, a10, a10, a10);
    }

    public void z(int idx, float x10, float y10, float z10, float w10) {
        this.f121482b.set(idx * 4, x10, y10, z10, w10);
    }

    public r(k dataBase) {
        this.f121481a = dataBase;
        this.f121482b = dataBase.g();
    }

    public r(NativeFloatBuffer buffer) {
        this.f121482b = buffer;
        this.f121481a = new k(buffer);
    }
}
