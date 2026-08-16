package vc;

import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.jme3.math.Vector3f;

public class C15825a extends q {

    public float[] f121445d;

    public int f121446e;

    public C15825a(int capacity) {
        super(capacity);
        this.f121445d = new float[capacity * 3];
    }

    @Override
    public void A(int idx, float x10, float y10, float z10) {
        float[] fArr = this.f121445d;
        int i10 = idx * 3;
        fArr[i10] = x10;
        fArr[i10 + 1] = y10;
        int i11 = i10 + 2;
        fArr[i11] = z10;
        this.f121446e = Nc.b.U0(this.f121446e, i11);
    }

    @Override
    public void B(int idx, Vector2 vector) {
        float[] fArr = this.f121445d;
        int i10 = idx * 3;
        fArr[i10] = vector.f79838x;
        int i11 = i10 + 1;
        fArr[i11] = vector.f79839y;
        this.f121446e = Nc.b.U0(this.f121446e, i11);
    }

    @Override
    public void C(int idx, Vector3 vector3) {
        int i10 = idx * 3;
        this.f121445d[i10] = vector3.getX();
        this.f121445d[i10 + 1] = vector3.getY();
        int i11 = i10 + 2;
        this.f121445d[i11] = vector3.getZ();
        this.f121446e = Nc.b.U0(this.f121446e, i11);
    }

    @Override
    public void D(NativeFloatBuffer buffer) {
        this.f121479b = buffer;
        this.f121445d = new float[buffer.capacity()];
    }

    public void I() {
        int i10 = this.f121446e;
        if (i10 > 0) {
            NativeFloatBuffer nativeFloatBuffer = this.f121479b;
            nativeFloatBuffer.set(this.f121445d, Nc.b.K(i10 + 1, nativeFloatBuffer.capacity()));
            this.f121446e = 0;
        }
    }

    @Override
    public C15825a e(boolean deepClone) {
        return deepClone ? new C15825a(k().m1250clone()) : new C15825a(k());
    }

    @Override
    public C15825a f() {
        return e(true);
    }

    @Override
    public Vector3[] c() {
        Vector3[] vector3Arr = new Vector3[d()];
        for (int i10 = 0; i10 < d(); i10++) {
            vector3Arr[i10] = h(i10);
        }
        return vector3Arr;
    }

    @Override
    public Vector3 i(int idx, Vector3 out) {
        int i10 = idx * 3;
        out.setX(this.f121445d[i10]);
        out.setY(this.f121445d[i10 + 1]);
        out.setZ(this.f121445d[i10 + 2]);
        return out;
    }

    @Override
    public Vector3f j(int idx, Vector3f out) {
        int i10 = idx * 3;
        out.setX(this.f121445d[i10]);
        out.setY(this.f121445d[i10 + 1]);
        out.setZ(this.f121445d[i10 + 2]);
        return out;
    }

    @Override
    public float m(int idx) {
        return this.f121445d[idx * 3];
    }

    @Override
    public float n(int idx) {
        return this.f121445d[(idx * 3) + 1];
    }

    @Override
    public float o(int idx) {
        return this.f121445d[(idx * 3) + 2];
    }

    @Override
    public void z(int idx, float a10) {
        float[] fArr = this.f121445d;
        int i10 = idx * 3;
        fArr[i10] = a10;
        fArr[i10 + 1] = a10;
        int i11 = i10 + 2;
        fArr[i11] = a10;
        this.f121446e = Nc.b.U0(this.f121446e, i11);
    }

    public C15825a(NativeFloatBuffer buffer) {
        super(buffer);
        this.f121445d = new float[buffer.capacity()];
    }
}
