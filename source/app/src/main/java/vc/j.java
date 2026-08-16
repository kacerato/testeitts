package vc;

import com.itsmagic.engine.Engines.Native.Base.NativeByteBuffer;
import uc.C15593a;

public class j {

    public NativeByteBuffer f121464a;

    public j(int capacity) {
        this.f121464a = C15593a.g(capacity);
    }

    public int a() {
        return this.f121464a.capacity();
    }

    public void b(int size) {
        i(a() - size, true);
    }

    public byte c(int idx) {
        return this.f121464a.get(idx);
    }

    public byte[] d() {
        return this.f121464a.array();
    }

    public void e(int size) {
        i(a() + size, true);
    }

    public void f(int position) {
        this.f121464a.position(position);
    }

    public void g(byte[] bytes) {
        this.f121464a.put(bytes);
    }

    public void h(int newCapacity) {
        i(newCapacity, true);
    }

    public void i(int newCapacity, boolean copyData) {
        if (newCapacity != this.f121464a.capacity()) {
            NativeByteBuffer g10 = C15593a.g(newCapacity);
            if (copyData) {
                int i10 = 0;
                if (newCapacity > this.f121464a.capacity()) {
                    while (i10 < this.f121464a.capacity()) {
                        g10.put(this.f121464a.get(i10));
                        i10++;
                    }
                } else if (newCapacity < this.f121464a.capacity()) {
                    while (i10 < newCapacity) {
                        g10.put(this.f121464a.get(i10));
                        i10++;
                    }
                }
            }
            this.f121464a.destroy();
            this.f121464a = g10;
        }
    }

    public void j(int position, byte value) {
        this.f121464a.position(position);
        this.f121464a.put(value);
    }

    public int k() {
        return this.f121464a.capacity();
    }
}
