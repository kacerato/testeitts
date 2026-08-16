package vc;

import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.jme3.math.Vector4f;

public class C15826b extends r {

    public float[] f121447c;

    public int f121448d;

    public C15826b(int capacity) {
        super(capacity);
        this.f121447c = new float[capacity * 4];
    }

    @Override
    public void B(int idx, Vector4 vector4) {
        float[] fArr = this.f121447c;
        int i10 = idx * 4;
        fArr[i10] = vector4.f79845x;
        fArr[i10 + 1] = vector4.f79846y;
        fArr[i10 + 2] = vector4.f79847z;
        int i11 = i10 + 3;
        fArr[i11] = vector4.f79844w;
        this.f121448d = Nc.b.U0(this.f121448d, i11);
    }

    @Override
    public void C(NativeFloatBuffer buffer) {
        this.f121482b = buffer;
        this.f121447c = new float[buffer.capacity()];
    }

    public void D() {
        int i10 = this.f121448d;
        if (i10 > 0) {
            NativeFloatBuffer nativeFloatBuffer = this.f121482b;
            nativeFloatBuffer.set(this.f121447c, Nc.b.K(i10 + 1, nativeFloatBuffer.capacity()));
            this.f121448d = 0;
        }
    }

    @Override
    public C15826b e(boolean deepClone) {
        return deepClone ? new C15826b(l().m1250clone()) : new C15826b(l());
    }

    @Override
    public C15826b f() {
        return e(true);
    }

    @Override
    public Vector4[] c() {
        Vector4[] vector4Arr = new Vector4[d()];
        for (int i10 = 0; i10 < d(); i10++) {
            vector4Arr[i10] = i(i10);
        }
        return vector4Arr;
    }

    @Override
    public Vector4 j(int idx, Vector4 out) {
        int i10 = idx * 4;
        out.n(this.f121447c[i10]);
        out.o(this.f121447c[i10 + 1]);
        out.p(this.f121447c[i10 + 2]);
        out.m(this.f121447c[i10 + 3]);
        return out;
    }

    @Override
    public Vector4f k(int idx, Vector4f out) {
        int i10 = idx * 4;
        out.setX(this.f121447c[i10]);
        out.setY(this.f121447c[i10 + 1]);
        out.setZ(this.f121447c[i10 + 2]);
        out.setW(this.f121447c[i10 + 3]);
        return out;
    }

    @Override
    public float n(int idx) {
        return this.f121447c[(idx * 4) + 3];
    }

    @Override
    public float o(int idx) {
        return this.f121447c[idx * 4];
    }

    @Override
    public float p(int idx) {
        return this.f121447c[(idx * 4) + 1];
    }

    @Override
    public float q(int idx) {
        return this.f121447c[(idx * 4) + 2];
    }

    @Override
    public void y(int idx, float a10) {
        float[] fArr = this.f121447c;
        int i10 = idx * 4;
        fArr[i10] = a10;
        fArr[i10 + 1] = a10;
        fArr[i10 + 2] = a10;
        int i11 = i10 + 3;
        fArr[i11] = a10;
        this.f121448d = Nc.b.U0(this.f121448d, i11);
    }

    @Override
    public void z(int idx, float x10, float y10, float z10, float w10) {
        float[] fArr = this.f121447c;
        int i10 = idx * 4;
        fArr[i10] = x10;
        fArr[i10 + 1] = y10;
        fArr[i10 + 2] = z10;
        int i11 = i10 + 3;
        fArr[i11] = w10;
        this.f121448d = Nc.b.U0(this.f121448d, i11);
    }

    public C15826b(NativeFloatBuffer buffer) {
        super(buffer);
        this.f121447c = new float[buffer.capacity()];
    }
}
