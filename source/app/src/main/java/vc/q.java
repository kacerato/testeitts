package vc;

import JAVARuntime.Vector3Buffer;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.jme3.math.FastMath;
import com.jme3.math.Vector3f;

public class q {

    public k f121478a;

    public NativeFloatBuffer f121479b;

    public Vector3Buffer f121480c;

    public q(int capacity) {
        k kVar = new k(capacity * 3);
        this.f121478a = kVar;
        this.f121479b = kVar.g();
    }

    public void A(int idx, float x10, float y10, float z10) {
        this.f121479b.set(idx * 3, x10, y10, z10);
    }

    public void B(int idx, Vector2 vector) {
        this.f121479b.set(idx * 3, vector.f79838x, vector.f79839y);
    }

    public void C(int idx, Vector3 vector3) {
        this.f121479b.set(idx * 3, vector3.getX(), vector3.getY(), vector3.getZ());
    }

    public void D(NativeFloatBuffer buffer) {
        this.f121479b = buffer;
        this.f121478a = new k(buffer);
    }

    public void E(float x10, float y10, float z10) {
        A(d() - 1, x10, y10, z10);
    }

    public void F(Vector3Buffer run) {
        this.f121480c = run;
    }

    public Vector3Buffer G() {
        Vector3Buffer vector3Buffer = this.f121480c;
        if (vector3Buffer != null) {
            return vector3Buffer;
        }
        Vector3Buffer vector3Buffer2 = new Vector3Buffer(this);
        this.f121480c = vector3Buffer2;
        return vector3Buffer2;
    }

    public Vector3[] H() {
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
        return this.f121479b.capacity() / 3;
    }

    public q e(boolean deepClone) {
        return deepClone ? new q(k().m1250clone()) : new q(k());
    }

    public q f() {
        return e(true);
    }

    public void g() {
        this.f121479b.destroy();
    }

    public Vector3 h(int idx) {
        return i(idx, new Vector3());
    }

    public Vector3 i(int idx, Vector3 out) {
        int i10 = idx * 3;
        out.setX(this.f121479b.get(i10));
        out.setY(this.f121479b.get(i10 + 1));
        out.setZ(this.f121479b.get(i10 + 2));
        return out;
    }

    public Vector3f j(int idx, Vector3f out) {
        int i10 = idx * 3;
        out.setX(this.f121479b.get(i10));
        out.setY(this.f121479b.get(i10 + 1));
        out.setZ(this.f121479b.get(i10 + 2));
        return out;
    }

    public NativeFloatBuffer k() {
        return this.f121479b;
    }

    public int l() {
        return this.f121479b.getPosition() / 3;
    }

    public float m(int idx) {
        return this.f121479b.get(idx * 3);
    }

    public float n(int idx) {
        return this.f121479b.get((idx * 3) + 1);
    }

    public float o(int idx) {
        return this.f121479b.get((idx * 3) + 2);
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
        this.f121479b.position(idx * 3);
    }

    public void s(float x10, float y10, float z10) {
        this.f121479b.put(x10, y10, z10);
    }

    public void t(Vector2 vector) {
        this.f121479b.put(vector.f79838x, vector.f79839y, 0.0f);
    }

    public void u(Vector3 vector3) {
        this.f121479b.put(vector3.getX(), vector3.getY(), vector3.getZ());
    }

    public void v(Vector3f vector3) {
        this.f121479b.put(vector3.getX(), vector3.getY(), vector3.getZ());
    }

    public void w(javax.vecmath.Vector3f vector3) {
        this.f121479b.put(vector3.getX(), vector3.getY(), vector3.getZ());
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
        this.f121478a.i(-1);
        this.f121479b = this.f121478a.g();
    }

    public void y(int newCapacity) {
        this.f121478a.o(newCapacity * 3, true);
        this.f121479b = this.f121478a.g();
    }

    public void z(int idx, float a10) {
        this.f121479b.set(idx * 3, a10, a10, a10);
    }

    public q(k dataBase) {
        this.f121478a = dataBase;
        this.f121479b = dataBase.g();
    }

    public q(NativeFloatBuffer buffer) {
        this.f121479b = buffer;
        this.f121478a = new k(buffer);
    }
}
