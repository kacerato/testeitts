package vc;

import JAVARuntime.OHFloatDataBase;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import uc.C15593a;

public class k {

    public NativeFloatBuffer f121465a;

    public OHFloatDataBase f121466b;

    public k(int capacity) {
        this.f121465a = C15593a.j(capacity);
    }

    public int a() {
        return this.f121465a.capacity();
    }

    public k clone() {
        k kVar = new k(this.f121465a.capacity());
        kVar.f121465a.position(0);
        kVar.f121465a.put(this.f121465a);
        kVar.f121465a.position(0);
        return kVar;
    }

    public void c(int size) {
        o(a() - size, true);
    }

    public void d() {
        NativeFloatBuffer nativeFloatBuffer = this.f121465a;
        if (nativeFloatBuffer != null) {
            nativeFloatBuffer.destroy();
            this.f121465a = null;
        }
    }

    public void e(float value) {
        this.f121465a.position(0);
        NativeFloatBuffer nativeFloatBuffer = this.f121465a;
        nativeFloatBuffer.putFill(value, nativeFloatBuffer.capacity());
    }

    public float f(int idx) {
        return this.f121465a.get(idx);
    }

    public NativeFloatBuffer g() {
        return this.f121465a;
    }

    public float[] h() {
        return this.f121465a.toArray();
    }

    public void i(int size) {
        o(a() + size, true);
    }

    public void j(int position) {
        this.f121465a.position(position);
    }

    public void k(float value) {
        this.f121465a.put(value);
    }

    public void l(float[] value) {
        this.f121465a.put(value);
    }

    public void m(float value, int count) {
        this.f121465a.putFill(value, count);
    }

    public void n(int newCapacity) {
        o(newCapacity, true);
    }

    public void o(int newCapacity, boolean copyData) {
        if (newCapacity != this.f121465a.capacity()) {
            NativeFloatBuffer j10 = C15593a.j(newCapacity);
            if (copyData) {
                int i10 = 0;
                if (newCapacity > this.f121465a.capacity()) {
                    while (i10 < this.f121465a.capacity()) {
                        j10.put(this.f121465a.get(i10));
                        i10++;
                    }
                } else if (newCapacity < this.f121465a.capacity()) {
                    while (i10 < newCapacity) {
                        j10.put(this.f121465a.get(i10));
                        i10++;
                    }
                }
            }
            this.f121465a.destroy();
            this.f121465a = j10;
        }
    }

    public void p(int position, float value) {
        this.f121465a.position(position);
        this.f121465a.put(value);
    }

    public void q(float value) {
        this.f121465a.position(r0.capacity() - 1);
        this.f121465a.put(value);
    }

    public void r(OHFloatDataBase run) {
        this.f121466b = run;
    }

    public int s() {
        return this.f121465a.capacity();
    }

    public OHFloatDataBase t() {
        OHFloatDataBase oHFloatDataBase = this.f121466b;
        if (oHFloatDataBase != null) {
            return oHFloatDataBase;
        }
        OHFloatDataBase oHFloatDataBase2 = new OHFloatDataBase(this);
        this.f121466b = oHFloatDataBase2;
        return oHFloatDataBase2;
    }

    public k(NativeFloatBuffer buffer) {
        this.f121465a = buffer;
    }
}
