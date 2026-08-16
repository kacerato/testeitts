package vc;

import JAVARuntime.ShortVector3Buffer;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Native.Base.NativeShortBuffer;
import com.jme3.math.FastMath;
import com.jme3.math.Vector3f;

public class o {

    public m f121472a;

    public NativeShortBuffer f121473b;

    public ShortVector3Buffer f121474c;

    public o(int capacity) {
        m mVar = new m(capacity * 3);
        this.f121472a = mVar;
        this.f121473b = mVar.f();
    }

    public void A(int idx, float x10, float y10, float z10) {
        this.f121473b.set(idx * 3, (short) x10, (short) y10, (short) z10);
    }

    public void B(int idx, Vector2 vector) {
        this.f121473b.set(idx * 3, (short) vector.f79838x, (short) vector.f79839y);
    }

    public void C(int idx, Vector3 vector3) {
        this.f121473b.set(idx * 3, (short) vector3.getX(), (short) vector3.getY(), (short) vector3.getZ());
    }

    public void D(NativeShortBuffer buffer) {
        this.f121473b = buffer;
        this.f121472a = new m(buffer);
    }

    public void E(float x10, float y10, float z10) {
        A(d() - 1, x10, y10, z10);
    }

    public void F(ShortVector3Buffer run) {
        this.f121474c = run;
    }

    public ShortVector3Buffer G() {
        ShortVector3Buffer shortVector3Buffer = this.f121474c;
        if (shortVector3Buffer != null) {
            return shortVector3Buffer;
        }
        ShortVector3Buffer shortVector3Buffer2 = new ShortVector3Buffer(this);
        this.f121474c = shortVector3Buffer2;
        return shortVector3Buffer2;
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
        return this.f121473b.capacity() / 3;
    }

    public o e(boolean deepClone) {
        return deepClone ? new o(k().m1252clone()) : new o(k());
    }

    public o f() {
        return e(true);
    }

    public void g() {
        this.f121473b.destroy();
    }

    public Vector3 h(int idx) {
        return i(idx, new Vector3());
    }

    public Vector3 i(int idx, Vector3 out) {
        int i10 = idx * 3;
        out.setX(this.f121473b.get(i10));
        out.setY(this.f121473b.get(i10 + 1));
        out.setZ(this.f121473b.get(i10 + 2));
        return out;
    }

    public Vector3f j(int idx, Vector3f out) {
        int i10 = idx * 3;
        out.setX(this.f121473b.get(i10));
        out.setY(this.f121473b.get(i10 + 1));
        out.setZ(this.f121473b.get(i10 + 2));
        return out;
    }

    public NativeShortBuffer k() {
        return this.f121473b;
    }

    public int l() {
        return this.f121473b.getPosition() / 3;
    }

    public float m(int idx) {
        return this.f121473b.get(idx * 3);
    }

    public float n(int idx) {
        return this.f121473b.get((idx * 3) + 1);
    }

    public float o(int idx) {
        return this.f121473b.get((idx * 3) + 2);
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
        this.f121473b.position(idx * 3);
    }

    public void s(float x10, float y10, float z10) {
        this.f121473b.put((short) x10, (short) y10, (short) z10);
    }

    public void t(Vector2 vector) {
        this.f121473b.put((short) vector.f79838x, (short) vector.f79839y, (short) 0);
    }

    public void u(Vector3 vector3) {
        this.f121473b.put((short) vector3.getX(), (short) vector3.getY(), (short) vector3.getZ());
    }

    public void v(Vector3f vector3) {
        this.f121473b.put((short) vector3.getX(), (short) vector3.getY(), (short) vector3.getZ());
    }

    public void w(javax.vecmath.Vector3f vector3) {
        this.f121473b.put((short) vector3.getX(), (short) vector3.getY(), (short) vector3.getZ());
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
        this.f121472a.h(-1);
        this.f121473b = this.f121472a.f();
    }

    public void y(int newCapacity) {
        this.f121472a.m(newCapacity * 3, true);
        this.f121473b = this.f121472a.f();
    }

    public void z(int idx, float a10) {
        short s10 = (short) a10;
        this.f121473b.set(idx * 3, s10, s10, s10);
    }

    public o(m dataBase) {
        this.f121472a = dataBase;
        this.f121473b = dataBase.f();
    }

    public o(NativeShortBuffer buffer) {
        this.f121473b = buffer;
        this.f121472a = new m(buffer);
    }
}
