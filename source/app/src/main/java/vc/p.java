package vc;

import JAVARuntime.Vector2Buffer;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;

public class p {

    public k f121475a;

    public NativeFloatBuffer f121476b;

    public Vector2Buffer f121477c;

    public p(int capacity) {
        k kVar = new k(capacity * 2);
        this.f121475a = kVar;
        this.f121476b = kVar.g();
    }

    public Vector2[] a() {
        Vector2[] vector2Arr = new Vector2[b()];
        for (int i10 = 0; i10 < b(); i10++) {
            vector2Arr[i10] = f(i10);
        }
        return vector2Arr;
    }

    public int b() {
        return this.f121476b.capacity() / 2;
    }

    public p c(boolean deepClone) {
        return deepClone ? new p(h().m1250clone()) : new p(h());
    }

    public p d() {
        return c(true);
    }

    public void e() {
        this.f121476b.destroy();
    }

    public Vector2 f(int idx) {
        return g(idx, new Vector2());
    }

    public Vector2 g(int idx, Vector2 out) {
        int i10 = idx * 2;
        out.B0(this.f121476b.get(i10));
        out.C0(this.f121476b.get(i10 + 1));
        return out;
    }

    public NativeFloatBuffer h() {
        return this.f121476b;
    }

    public float i(int idx) {
        return this.f121476b.get(idx * 2);
    }

    public float j(int idx) {
        return this.f121476b.get((idx * 2) + 1);
    }

    public void k(int add) {
        p(b() + add);
    }

    public void l(int idx) {
        this.f121476b.position(idx * 2);
    }

    public void m(float x10, float y10) {
        this.f121476b.put(x10);
        this.f121476b.put(y10);
    }

    public void n(Vector2 vector) {
        this.f121476b.put(vector.getX());
        this.f121476b.put(vector.getY());
    }

    public void o(int idx) {
        while (idx < b() - 1) {
            int i10 = idx + 1;
            r(idx, i(i10), j(i10));
            idx = i10;
        }
        this.f121475a.i(-1);
    }

    public void p(int newCapacity) {
        this.f121475a.o(newCapacity * 2, true);
        this.f121476b = this.f121475a.g();
    }

    public void q(int idx, float a10) {
        r(idx, a10, a10);
    }

    public void r(int idx, float x10, float y10) {
        int i10 = idx * 2;
        this.f121476b.set(i10, x10);
        this.f121476b.set(i10 + 1, y10);
    }

    public void s(int idx, Vector2 vector) {
        r(idx, vector.f79838x, vector.f79839y);
    }

    public void t(int idx, Vector3 vector3) {
        r(idx, vector3.getX(), vector3.getY());
    }

    public void u(NativeFloatBuffer buffer) {
        this.f121476b = buffer;
        this.f121475a = new k(buffer);
    }

    public void v(float x10, float y10) {
        r(b() - 1, x10, y10);
    }

    public void w(Vector2Buffer run) {
        this.f121477c = run;
    }

    public Vector2Buffer x() {
        Vector2Buffer vector2Buffer = this.f121477c;
        if (vector2Buffer != null) {
            return vector2Buffer;
        }
        Vector2Buffer vector2Buffer2 = new Vector2Buffer(this);
        this.f121477c = vector2Buffer2;
        return vector2Buffer2;
    }

    public p(k dataBase) {
        this.f121475a = dataBase;
    }

    public p(NativeFloatBuffer buffer) {
        this.f121476b = buffer;
        this.f121475a = new k(buffer);
    }
}
