package vc;

import com.itsmagic.engine.Engines.Native.Base.NativeShortBuffer;
import uc.C15593a;

public class m {

    public NativeShortBuffer f121469a;

    public m(int capacity) {
        this.f121469a = C15593a.r(capacity);
    }

    public int a() {
        return this.f121469a.capacity();
    }

    public m clone() {
        m mVar = new m(this.f121469a.capacity());
        mVar.f121469a.position(0);
        mVar.f121469a.put(this.f121469a);
        mVar.f121469a.position(0);
        return mVar;
    }

    public void c(int size) {
        m(a() - size, true);
    }

    public void d() {
        NativeShortBuffer nativeShortBuffer = this.f121469a;
        if (nativeShortBuffer != null) {
            nativeShortBuffer.destroy();
            this.f121469a = null;
        }
    }

    public float e(int idx) {
        return this.f121469a.get(idx);
    }

    public NativeShortBuffer f() {
        return this.f121469a;
    }

    public short[] g() {
        return this.f121469a.toArray();
    }

    public void h(int size) {
        m(a() + size, true);
    }

    public void i(int position) {
        this.f121469a.position(position);
    }

    public void j(short value) {
        this.f121469a.put(value);
    }

    public void k(short[] value) {
        this.f121469a.put(value);
    }

    public void l(int newCapacity) {
        m(newCapacity, true);
    }

    public void m(int newCapacity, boolean copyData) {
        if (newCapacity != this.f121469a.capacity()) {
            NativeShortBuffer r10 = C15593a.r(newCapacity);
            if (copyData) {
                int i10 = 0;
                if (newCapacity > this.f121469a.capacity()) {
                    while (i10 < this.f121469a.capacity()) {
                        r10.put(this.f121469a.get(i10));
                        i10++;
                    }
                } else if (newCapacity < this.f121469a.capacity()) {
                    while (i10 < newCapacity) {
                        r10.put(this.f121469a.get(i10));
                        i10++;
                    }
                }
            }
            this.f121469a.destroy();
            this.f121469a = r10;
        }
    }

    public void n(int position, short value) {
        this.f121469a.position(position);
        this.f121469a.put(value);
    }

    public void o(short value) {
        this.f121469a.position(r0.capacity() - 1);
        this.f121469a.put(value);
    }

    public int p() {
        return this.f121469a.capacity();
    }

    public m(NativeShortBuffer buffer) {
        this.f121469a = buffer;
    }
}
