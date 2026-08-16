package vc;

import JAVARuntime.OHIntDataBase;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import uc.C15593a;

public class l {

    public NativeIntBuffer f121467a;

    public OHIntDataBase f121468b;

    public l(int capacity) {
        this.f121467a = C15593a.o(capacity);
    }

    public int a() {
        return this.f121467a.capacity();
    }

    public l clone() {
        l lVar = new l(this.f121467a.capacity());
        lVar.f121467a.position(0);
        lVar.f121467a.put(this.f121467a);
        return lVar;
    }

    public void c(int size) {
        n(a() - size, true);
    }

    public void d(int value) {
        this.f121467a.fill(value);
    }

    public int e(int idx) {
        return this.f121467a.get(idx);
    }

    public NativeIntBuffer f() {
        return this.f121467a;
    }

    public int[] g() {
        return this.f121467a.toArray();
    }

    public void h(int size) {
        n(a() + size, true);
    }

    public void i(int position) {
        this.f121467a.position(position);
    }

    public void j(int value) {
        this.f121467a.put(value);
    }

    public void k(int[] value) {
        this.f121467a.put(value);
    }

    public void l(int idx) {
        while (idx < a() - 1) {
            int i10 = idx + 1;
            o(idx, e(i10));
            idx = i10;
        }
        h(-1);
    }

    public void m(int newCapacity) {
        n(newCapacity, true);
    }

    public void n(int newCapacity, boolean copyData) {
        if (newCapacity != this.f121467a.capacity()) {
            NativeIntBuffer o10 = C15593a.o(newCapacity);
            if (copyData) {
                int i10 = 0;
                if (newCapacity > this.f121467a.capacity()) {
                    while (i10 < this.f121467a.capacity()) {
                        o10.put(this.f121467a.get(i10));
                        i10++;
                    }
                } else if (newCapacity < this.f121467a.capacity()) {
                    while (i10 < newCapacity) {
                        o10.put(this.f121467a.get(i10));
                        i10++;
                    }
                }
            }
            this.f121467a.destroy();
            this.f121467a = o10;
        }
    }

    public void o(int position, int value) {
        this.f121467a.position(position);
        this.f121467a.put(value);
    }

    public void p(int value) {
        this.f121467a.position(r0.capacity() - 1);
        this.f121467a.put(value);
    }

    public void q(OHIntDataBase run) {
        this.f121468b = run;
    }

    public int r() {
        return this.f121467a.capacity();
    }

    public OHIntDataBase s() {
        OHIntDataBase oHIntDataBase = this.f121468b;
        if (oHIntDataBase != null) {
            return oHIntDataBase;
        }
        OHIntDataBase oHIntDataBase2 = new OHIntDataBase(this);
        this.f121468b = oHIntDataBase2;
        return oHIntDataBase2;
    }

    public l(NativeIntBuffer buffer) {
        this.f121467a = buffer;
    }
}
