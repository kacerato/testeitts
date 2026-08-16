package yc;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;
import java.util.Objects;

public class C16168b {

    public final int f130174a;

    public int f130175b;

    public final ByteBuffer f130176c;

    public final IntBuffer f130177d;

    public C16168b(int capacity) {
        if (capacity > 0) {
            this.f130174a = capacity;
            ByteBuffer order = ByteBuffer.allocateDirect(capacity * 4).order(ByteOrder.nativeOrder());
            this.f130176c = order;
            this.f130177d = order.asIntBuffer();
            this.f130175b = 0;
            return;
        }
        throw new RuntimeException("Invalid capacity:" + capacity);
    }

    public static long y(C16168b buffer, long failCase) {
        return buffer == null ? failCase : buffer.x();
    }

    public IntBuffer A() {
        return this.f130177d;
    }

    public long B() {
        return 0L;
    }

    public int C() {
        return this.f130175b;
    }

    public boolean D() {
        return true;
    }

    public boolean E() {
        return false;
    }

    public ByteOrder F() {
        return ByteOrder.nativeOrder();
    }

    public void G(int position) {
        this.f130175b = position;
    }

    public void H(int value) {
        d();
        c(this.f130175b);
        this.f130177d.put(this.f130175b, value);
        this.f130175b++;
    }

    public void I(C16168b buffer) {
        O(this.f130175b, buffer);
        this.f130175b += buffer.f130174a;
    }

    public void J(C16168b buffer, int count) {
        P(this.f130175b, buffer, 0, count);
        this.f130175b += count;
    }

    public void K(int[] value) {
        d();
        Objects.requireNonNull(value, "value can't be null");
        if (value.length == 0) {
            return;
        }
        if (this.f130175b + (value.length - 1) >= this.f130174a) {
            throw new IndexOutOfBoundsException("position cant be >= capacity");
        }
        IntBuffer duplicate = this.f130177d.duplicate();
        duplicate.position(this.f130175b);
        duplicate.put(value, 0, value.length);
        this.f130175b += value.length;
    }

    public void L(int value, int count) {
        n(this.f130175b, value, count);
        this.f130175b += count;
    }

    public void M(C16168b buffer, int increment) {
        Q(this.f130175b, buffer, 0, buffer.f130174a, increment);
        this.f130175b += buffer.f130174a;
    }

    public void N(int index, int value) {
        d();
        c(index);
        this.f130177d.put(index, value);
    }

    public void O(int baseIndex, C16168b other) {
        P(baseIndex, other, 0, other.f130174a);
    }

    public void P(int baseIndex, C16168b other, int start, int count) {
        d();
        if (other == null) {
            throw new NullPointerException("other can't be null");
        }
        if (start < 0) {
            throw new IndexOutOfBoundsException("start cant be < 0");
        }
        if (count < 0) {
            throw new IndexOutOfBoundsException("count cant be < 0");
        }
        int i10 = start + count;
        if (other.f130174a < i10) {
            throw new IndexOutOfBoundsException("start+count cant be > other.capacity");
        }
        e(baseIndex, count);
        if (count == 0) {
            return;
        }
        IntBuffer duplicate = other.f130177d.duplicate();
        duplicate.position(start).limit(i10);
        IntBuffer duplicate2 = this.f130177d.duplicate();
        duplicate2.position(baseIndex);
        duplicate2.put(duplicate);
    }

    public void Q(int baseIndex, C16168b other, int start, int count, int increment) {
        d();
        if (other == null) {
            throw new NullPointerException("other can't be null");
        }
        if (start < 0) {
            throw new IndexOutOfBoundsException("start cant be < 0");
        }
        if (count < 0) {
            throw new IndexOutOfBoundsException("count cant be < 0");
        }
        if (other.f130174a < start + count) {
            throw new IndexOutOfBoundsException("start+count cant be > other.capacity");
        }
        e(baseIndex, count);
        for (int i10 = 0; i10 < count; i10++) {
            N(baseIndex + i10, other.q(start + i10) + increment);
        }
    }

    public void R(int index, byte value) {
        N(index, value);
    }

    public void S(int index, double value) {
        N(index, (int) value);
    }

    public void T(int index, float value) {
        N(index, (int) value);
    }

    public void U(int index, int value) {
        N(index, value);
    }

    public void V(int index, short value) {
        N(index, value);
    }

    public void W(int position) {
        this.f130175b = position;
    }

    public int[] X() {
        d();
        int[] iArr = new int[this.f130174a];
        IntBuffer duplicate = this.f130177d.duplicate();
        duplicate.clear().limit(this.f130174a);
        duplicate.get(iArr, 0, this.f130174a);
        return iArr;
    }

    public ByteBuffer Y() {
        return z();
    }

    public IntBuffer Z() {
        return A();
    }

    public ByteBuffer a() {
        d();
        int b10 = b();
        if (p() > 65535) {
            return Y();
        }
        ByteBuffer order = ByteBuffer.allocateDirect(b10 * 2).order(ByteOrder.nativeOrder());
        for (int i10 = 0; i10 < b10; i10++) {
            order.putShort((short) (q(i10) & 65535));
        }
        order.flip();
        return order;
    }

    public boolean a0() {
        return true;
    }

    public int b() {
        return this.f130174a;
    }

    public final boolean b0() {
        return true;
    }

    public final void c(int index) {
        if (index < 0) {
            throw new IndexOutOfBoundsException("index cant be < 0");
        }
        if (index >= this.f130174a) {
            throw new IndexOutOfBoundsException("index cant be >= capacity");
        }
    }

    public final void d() {
    }

    public final void e(int baseIndex, int count) {
        int i10;
        if (baseIndex < 0) {
            throw new IndexOutOfBoundsException("baseIndex cant be < 0");
        }
        if (count < 0) {
            throw new IndexOutOfBoundsException("count cant be < 0");
        }
        if (count != 0 && (i10 = baseIndex + (count - 1)) >= this.f130174a) {
            throw new IndexOutOfBoundsException("baseIndex + (count-1) cant be >= capacity (" + i10 + ") >= (" + this.f130174a + ")");
        }
    }

    public C16168b clone() {
        C16168b c16168b = new C16168b(this.f130174a);
        c16168b.G(0);
        c16168b.I(this);
        c16168b.G(0);
        return c16168b;
    }

    public C16168b g(C16168b buffer) {
        C16168b c16168b = new C16168b(b() + buffer.b());
        c16168b.G(0);
        c16168b.I(this);
        c16168b.I(buffer);
        c16168b.G(0);
        return c16168b;
    }

    public void h() {
    }

    public void i() {
        b0();
    }

    public void j() {
        System.out.println("Dumping HeapIntBuffer with capacity " + this.f130174a);
        for (int i10 = 0; i10 < this.f130174a; i10++) {
            System.out.println(i10 + ": " + q(i10));
        }
    }

    public boolean k(C16168b buffer) {
        if (buffer == null || buffer.f130174a != this.f130174a) {
            return false;
        }
        for (int i10 = 0; i10 < this.f130174a; i10++) {
            if (q(i10) != buffer.q(i10)) {
                return false;
            }
        }
        return true;
    }

    public int l(int index) {
        return this.f130177d.get(index);
    }

    public void m(int value) {
        n(0, value, this.f130174a);
    }

    public void n(int baseIndex, int value, int count) {
        d();
        e(baseIndex, count);
        for (int i10 = 0; i10 < count; i10++) {
            this.f130177d.put(baseIndex + i10, value);
        }
    }

    public void o(int[] array) {
        d();
        if (array.length != this.f130174a) {
            throw new IllegalArgumentException("Array size must be == buffer capacity");
        }
        IntBuffer duplicate = this.f130177d.duplicate();
        duplicate.clear().limit(this.f130174a);
        duplicate.get(array, 0, this.f130174a);
    }

    public int p() {
        d();
        if (this.f130174a <= 0) {
            return 0;
        }
        int i10 = this.f130177d.get(0);
        for (int i11 = 1; i11 < this.f130174a; i11++) {
            int i12 = this.f130177d.get(i11);
            if (i12 > i10) {
                i10 = i12;
            }
        }
        return i10;
    }

    public int q(int index) {
        d();
        c(index);
        return this.f130177d.get(index);
    }

    public byte r(int index) {
        return (byte) q(index);
    }

    public double s(int index) {
        return q(index);
    }

    public float t(int index) {
        return q(index);
    }

    public int u(int index) {
        return q(index);
    }

    public short v(int index) {
        return (short) q(index);
    }

    public int w() {
        return this.f130174a;
    }

    public long x() {
        return 0L;
    }

    public ByteBuffer z() {
        return this.f130176c;
    }

    public C16168b(int[] array) {
        if (array != null) {
            if (array.length > 0) {
                int length = array.length;
                this.f130174a = length;
                ByteBuffer order = ByteBuffer.allocateDirect(length * 4).order(ByteOrder.nativeOrder());
                this.f130176c = order;
                this.f130177d = order.asIntBuffer();
                this.f130175b = 0;
                K(array);
                this.f130175b = 0;
                return;
            }
            throw new RuntimeException("Array is empty");
        }
        throw new RuntimeException("Invalid array");
    }
}
