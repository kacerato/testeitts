package vc;

import Ic.C2634m;
import com.itsmagic.engine.Engines.Native.Base.NativeCharBuffer;
import uc.C15593a;

public class i extends C2634m {

    public NativeCharBuffer f121463b;

    public i(int capacity) {
        if (capacity > 0) {
            this.f121463b = C15593a.h(capacity);
        } else {
            z();
        }
    }

    public int A() {
        if (q()) {
            return 0;
        }
        return this.f121463b.capacity();
    }

    public boolean B(NativeCharBuffer nativeCharBuffer) {
        NativeCharBuffer nativeCharBuffer2 = this.f121463b;
        if (nativeCharBuffer2 == null || nativeCharBuffer == null) {
            return false;
        }
        return nativeCharBuffer2.startsWith(nativeCharBuffer);
    }

    public boolean C(i nativeCharBuffer) {
        NativeCharBuffer nativeCharBuffer2;
        NativeCharBuffer nativeCharBuffer3 = this.f121463b;
        if (nativeCharBuffer3 == null || nativeCharBuffer == null || (nativeCharBuffer2 = nativeCharBuffer.f121463b) == null) {
            return false;
        }
        return nativeCharBuffer3.startsWith(nativeCharBuffer2);
    }

    public void D(int startIdx) {
        if (q()) {
            return;
        }
        if (startIdx < 0 || startIdx > capacity()) {
            throw new IndexOutOfBoundsException("startIdx out of bounds");
        }
        if (startIdx == capacity()) {
            z();
            return;
        }
        NativeCharBuffer nativeCharBuffer = this.f121463b;
        NativeCharBuffer nativeCharBuffer2 = new NativeCharBuffer(capacity() - startIdx);
        nativeCharBuffer2.set(0, nativeCharBuffer, startIdx, capacity() - startIdx);
        this.f121463b = nativeCharBuffer2;
        nativeCharBuffer.destroyImmediate();
    }

    public void E(int startIdx, int endIndex) {
        if (q()) {
            return;
        }
        if (startIdx < 0 || endIndex < startIdx || endIndex > capacity()) {
            throw new IndexOutOfBoundsException("substring range out of bounds");
        }
        int i10 = endIndex - startIdx;
        if (i10 == 0) {
            z();
            return;
        }
        NativeCharBuffer nativeCharBuffer = this.f121463b;
        NativeCharBuffer nativeCharBuffer2 = new NativeCharBuffer(i10);
        nativeCharBuffer2.set(0, nativeCharBuffer, startIdx, i10);
        this.f121463b = nativeCharBuffer2;
        nativeCharBuffer.destroyImmediate();
    }

    public int capacity() {
        if (q()) {
            return 0;
        }
        return this.f121463b.capacity();
    }

    public void e(i str) {
        if (str == null || str.q()) {
            return;
        }
        NativeCharBuffer nativeCharBuffer = this.f121463b;
        if (nativeCharBuffer == null) {
            NativeCharBuffer nativeCharBuffer2 = new NativeCharBuffer(str.capacity());
            nativeCharBuffer2.set(0, str.f121463b);
            this.f121463b = nativeCharBuffer2;
        } else {
            NativeCharBuffer nativeCharBuffer3 = new NativeCharBuffer(capacity() + str.capacity());
            nativeCharBuffer3.set(0, nativeCharBuffer);
            nativeCharBuffer3.set(nativeCharBuffer.capacity(), str.f121463b);
            this.f121463b = nativeCharBuffer3;
            nativeCharBuffer.destroyImmediate();
        }
    }

    public boolean equalsNative(NativeCharBuffer nativeCharBuffer) {
        NativeCharBuffer nativeCharBuffer2 = this.f121463b;
        if (nativeCharBuffer2 == null || nativeCharBuffer == null) {
            return false;
        }
        return nativeCharBuffer2.equalsNative(nativeCharBuffer);
    }

    public boolean equalsNativeIgnoreCase(NativeCharBuffer nativeCharBuffer) {
        NativeCharBuffer nativeCharBuffer2 = this.f121463b;
        if (nativeCharBuffer2 == null || nativeCharBuffer == null) {
            return false;
        }
        return nativeCharBuffer2.equalsNativeIgnoreCase(nativeCharBuffer);
    }

    public void f(char[] str) {
        if (str == null || str.length == 0) {
            return;
        }
        NativeCharBuffer nativeCharBuffer = this.f121463b;
        if (nativeCharBuffer == null) {
            NativeCharBuffer nativeCharBuffer2 = new NativeCharBuffer(str.length);
            nativeCharBuffer2.set(0, str);
            this.f121463b = nativeCharBuffer2;
        } else {
            NativeCharBuffer nativeCharBuffer3 = new NativeCharBuffer(capacity() + str.length);
            nativeCharBuffer3.set(0, nativeCharBuffer);
            nativeCharBuffer3.set(nativeCharBuffer.capacity(), str);
            this.f121463b = nativeCharBuffer3;
            nativeCharBuffer.destroyImmediate();
        }
    }

    public char get(int idx) {
        return this.f121463b.get(idx);
    }

    public void h(i str) {
        if (str == null || str.q()) {
            return;
        }
        NativeCharBuffer nativeCharBuffer = this.f121463b;
        if (nativeCharBuffer == null) {
            NativeCharBuffer nativeCharBuffer2 = new NativeCharBuffer(str.capacity());
            nativeCharBuffer2.set(0, str.f121463b);
            this.f121463b = nativeCharBuffer2;
        } else {
            NativeCharBuffer nativeCharBuffer3 = new NativeCharBuffer(capacity() + str.capacity());
            nativeCharBuffer3.set(0, str.f121463b);
            nativeCharBuffer3.set(str.capacity(), nativeCharBuffer);
            this.f121463b = nativeCharBuffer3;
            nativeCharBuffer.destroyImmediate();
        }
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    public void i(char[] str) {
        if (str == null || str.length <= 0) {
            return;
        }
        NativeCharBuffer nativeCharBuffer = this.f121463b;
        if (nativeCharBuffer == null) {
            NativeCharBuffer nativeCharBuffer2 = new NativeCharBuffer(str.length);
            nativeCharBuffer2.set(0, str);
            this.f121463b = nativeCharBuffer2;
        } else {
            NativeCharBuffer nativeCharBuffer3 = new NativeCharBuffer(capacity() + str.length);
            nativeCharBuffer3.set(0, str);
            nativeCharBuffer3.set(str.length, nativeCharBuffer);
            this.f121463b = nativeCharBuffer3;
            nativeCharBuffer.destroyImmediate();
        }
    }

    public void j(int size) {
        w(capacity() - size, true);
    }

    public boolean k(i nativeCharBuffer) {
        NativeCharBuffer nativeCharBuffer2;
        NativeCharBuffer nativeCharBuffer3 = this.f121463b;
        if (nativeCharBuffer3 == null || nativeCharBuffer == null || (nativeCharBuffer2 = nativeCharBuffer.f121463b) == null) {
            return false;
        }
        if (nativeCharBuffer3 == nativeCharBuffer2) {
            return true;
        }
        return nativeCharBuffer3.equalsNative(nativeCharBuffer2);
    }

    public boolean l(i nativeCharBuffer) {
        NativeCharBuffer nativeCharBuffer2;
        NativeCharBuffer nativeCharBuffer3 = this.f121463b;
        if (nativeCharBuffer3 == null || nativeCharBuffer == null || (nativeCharBuffer2 = nativeCharBuffer.f121463b) == null) {
            return false;
        }
        if (nativeCharBuffer3 == nativeCharBuffer2) {
            return true;
        }
        return nativeCharBuffer3.equalsNativeIgnoreCase(nativeCharBuffer2);
    }

    public char[] m() {
        if (q()) {
            throw new RuntimeException("Can't get bytes on a empty buffer");
        }
        return this.f121463b.array();
    }

    public void n(int size) {
        w(capacity() + size, true);
    }

    public int o(NativeCharBuffer nativeCharBuffer) {
        NativeCharBuffer nativeCharBuffer2 = this.f121463b;
        if (nativeCharBuffer2 == null || nativeCharBuffer == null) {
            return -1;
        }
        return nativeCharBuffer2.indexOf(nativeCharBuffer);
    }

    public int p(i nativeCharBuffer) {
        NativeCharBuffer nativeCharBuffer2;
        NativeCharBuffer nativeCharBuffer3 = this.f121463b;
        if (nativeCharBuffer3 == null || nativeCharBuffer == null || (nativeCharBuffer2 = nativeCharBuffer.f121463b) == null) {
            return -1;
        }
        return nativeCharBuffer3.indexOf(nativeCharBuffer2);
    }

    public void position(int position) {
        if (q()) {
            throw new RuntimeException("Can't set position on a empty string");
        }
        this.f121463b.position(position);
    }

    public void put(char[] value) {
        if (value != null) {
            if (value.length == 0) {
                return;
            }
            NativeCharBuffer nativeCharBuffer = this.f121463b;
            if (nativeCharBuffer != null) {
                nativeCharBuffer.put(value);
                return;
            }
            throw new RuntimeException("Can't put on an empty buffer");
        }
        throw new NullPointerException("value can't be null");
    }

    public boolean q() {
        return this.f121463b == null;
    }

    public NativeCharBuffer r() {
        return this.f121463b;
    }

    public boolean s() {
        return this.f121463b != null;
    }

    public void set(int baseIndex, NativeCharBuffer other, int start, int count) {
        if (count == 0) {
            return;
        }
        if (other != null) {
            if (this.f121463b == null) {
                this.f121463b = new NativeCharBuffer(baseIndex + count);
            }
            this.f121463b.set(baseIndex, other, start, count);
            return;
        }
        throw new NullPointerException("other can't be null");
    }

    public void u(i value) {
        NativeCharBuffer nativeCharBuffer;
        if (value == null || (nativeCharBuffer = value.f121463b) == null) {
            return;
        }
        NativeCharBuffer nativeCharBuffer2 = this.f121463b;
        if (nativeCharBuffer2 == null) {
            throw new RuntimeException("Can't put on an empty buffer");
        }
        nativeCharBuffer2.put(nativeCharBuffer);
    }

    public void v(int newCapacity) {
        w(newCapacity, true);
    }

    public void w(int newCapacity, boolean copyData) {
        x(newCapacity, copyData, true);
    }

    public void x(int newCapacity, boolean copyData, boolean destroyOld) {
        if (q() || newCapacity != this.f121463b.capacity()) {
            if (newCapacity <= 0) {
                z();
                return;
            }
            NativeCharBuffer h10 = C15593a.h(newCapacity);
            if (copyData && s()) {
                if (newCapacity > this.f121463b.capacity()) {
                    h10.set(0, this.f121463b);
                } else if (newCapacity < this.f121463b.capacity()) {
                    h10.set(0, this.f121463b, 0, newCapacity);
                }
            }
            if (s() && destroyOld) {
                this.f121463b.destroyImmediate();
            }
            this.f121463b = h10;
        }
    }

    public void y(int baseIndex, i other, int start, int count) {
        if (count == 0) {
            return;
        }
        if (other == null || other.f121463b == null) {
            throw new NullPointerException("other can't be null");
        }
        if (this.f121463b == null) {
            this.f121463b = new NativeCharBuffer(baseIndex + count);
        }
        this.f121463b.set(baseIndex, other.f121463b, start, count);
    }

    public void z() {
        NativeCharBuffer nativeCharBuffer = this.f121463b;
        if (nativeCharBuffer != null) {
            nativeCharBuffer.destroyImmediate();
        }
        this.f121463b = null;
    }

    public void set(int baseIndex, char[] other, int start, int count) {
        if (count == 0) {
            return;
        }
        if (other != null) {
            if (this.f121463b == null) {
                this.f121463b = new NativeCharBuffer(baseIndex + count);
            }
            this.f121463b.set(baseIndex, other, start, count);
            return;
        }
        throw new NullPointerException("other can't be null");
    }

    public void put(char value) {
        this.f121463b.put(value);
    }

    public void set(int position, char value) {
        this.f121463b.set(position, value);
    }

    public void set(int baseIndex, char[] values) {
        this.f121463b.set(baseIndex, values);
    }
}
