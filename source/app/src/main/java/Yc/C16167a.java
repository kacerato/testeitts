package yc;

import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.Objects;

public class C16167a {

    public final int f130169a;

    public int f130170b;

    public final EnumC2223a f130171c;

    public final ByteBuffer f130172d;

    public final FloatBuffer f130173e;

    public enum EnumC2223a {
        SIGNED_BYTE_NORMALIZED(0),
        NORMAL_VECTOR(0),
        UNSIGNED_BYTE_NORMALIZED(3),
        COLOR(3),
        UNSIGNED_BYTE(4),
        FLOAT16(1),
        FLOAT32(2);

        private final int nativeType;

        EnumC2223a(int nativeType) {
            this.nativeType = nativeType;
        }

        public int b() {
            return this.nativeType;
        }
    }

    public C16167a(int capacity) {
        this(capacity, EnumC2223a.FLOAT32);
    }

    public FloatBuffer A() {
        return this.f130173e;
    }

    public int B() {
        return this.f130170b;
    }

    public EnumC2223a C() {
        return this.f130171c;
    }

    public boolean D() {
        return this.f130170b < this.f130169a;
    }

    public void E(int position) {
        this.f130170b = position;
    }

    public void F(float value) {
        c();
        b(this.f130170b);
        this.f130173e.put(this.f130170b, value);
        this.f130170b++;
    }

    public void G(float x10, float y10) {
        c();
        int i10 = this.f130170b;
        if (i10 + 1 < this.f130169a) {
            S(i10, x10, y10);
            this.f130170b += 2;
            return;
        }
        throw new IndexOutOfBoundsException("position + 1 cant be >= capacity (" + (this.f130170b + 1) + ") vs (" + this.f130169a + ")");
    }

    public void H(float x10, float y10, float z10) {
        c();
        int i10 = this.f130170b;
        if (i10 + 2 < this.f130169a) {
            T(i10, x10, y10, z10);
            this.f130170b += 3;
            return;
        }
        throw new IndexOutOfBoundsException("position + 2 cant be >= capacity (" + (this.f130170b + 2) + ") vs (" + this.f130169a + ")");
    }

    public void I(Vector2 value) {
        G(value.f79838x, value.f79839y);
    }

    public void J(Vector3 value) {
        H(value.getX(), value.getY(), value.getZ());
    }

    public void K(Vector2f value) {
        G(value.f81609x, value.f81610y);
    }

    public void L(Vector3f value) {
        H(value.f81611x, value.f81612y, value.f81613z);
    }

    public void M(C16167a buffer) {
        Y(this.f130170b, buffer);
        this.f130170b += buffer.f130169a;
    }

    public void N(C16167a buffer, int count) {
        Z(this.f130170b, buffer, 0, count);
        this.f130170b += count;
    }

    public void O(float[] value) {
        c();
        if (value == null) {
            throw new NullPointerException("value can't be null");
        }
        int i10 = this.f130170b;
        if ((value.length + i10) - 1 >= this.f130169a) {
            throw new IndexOutOfBoundsException("position cant be >= capacity");
        }
        b0(i10, value, 0, value.length);
        this.f130170b += value.length;
    }

    public void P(short[] value) {
        c();
        if (value == null) {
            throw new NullPointerException("value can't be null");
        }
        if ((this.f130170b + value.length) - 1 >= this.f130169a) {
            throw new IndexOutOfBoundsException("position cant be >= capacity");
        }
        for (short s10 : value) {
            F(s10);
        }
    }

    public void Q(float value, int count) {
        l(this.f130170b, value, count);
        this.f130170b += count;
    }

    public void R(int index, float value) {
        c();
        b(index);
        this.f130173e.put(index, value);
    }

    public void S(int baseIndex, float x10, float y10) {
        c();
        d(baseIndex, 2);
        this.f130173e.put(baseIndex, x10);
        this.f130173e.put(baseIndex + 1, y10);
    }

    public void T(int baseIndex, float x10, float y10, float z10) {
        c();
        d(baseIndex, 3);
        this.f130173e.put(baseIndex, x10);
        this.f130173e.put(baseIndex + 1, y10);
        this.f130173e.put(baseIndex + 2, z10);
    }

    public void U(int baseIndex, float x10, float y10, float z10, float w10) {
        c();
        d(baseIndex, 4);
        this.f130173e.put(baseIndex, x10);
        this.f130173e.put(baseIndex + 1, y10);
        this.f130173e.put(baseIndex + 2, z10);
        this.f130173e.put(baseIndex + 3, w10);
    }

    public void V(int baseIndex, Vector3 vector3) {
        T(baseIndex, vector3.getX(), vector3.getY(), vector3.getZ());
    }

    public void W(int baseIndex, Vector4 vector4) {
        U(baseIndex, vector4.f79845x, vector4.f79846y, vector4.f79847z, vector4.f79844w);
    }

    public void X(int baseIndex, Vector3f vector3) {
        T(baseIndex, vector3.f81611x, vector3.f81612y, vector3.f81613z);
    }

    public void Y(int baseIndex, C16167a other) {
        Z(baseIndex, other, 0, other.f130169a);
    }

    public void Z(int baseIndex, C16167a other, int start, int count) {
        c();
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
        if (other.f130169a < i10) {
            throw new IndexOutOfBoundsException("start+count cant be > other.capacity");
        }
        d(baseIndex, count);
        if (count == 0) {
            return;
        }
        FloatBuffer duplicate = other.f130173e.duplicate();
        duplicate.position(start).limit(i10);
        FloatBuffer duplicate2 = this.f130173e.duplicate();
        duplicate2.position(baseIndex);
        duplicate2.put(duplicate);
    }

    public int a() {
        return this.f130169a;
    }

    public void a0(int baseIndex, float[] values) {
        b0(baseIndex, values, 0, values.length);
    }

    public final void b(int index) {
        if (index < 0) {
            throw new IndexOutOfBoundsException("index cant be < 0");
        }
        if (index < this.f130169a) {
            return;
        }
        throw new IndexOutOfBoundsException("index cant be >= capacity (" + index + ") vs (" + this.f130169a + ")");
    }

    public void b0(int baseIndex, float[] values, int start, int count) {
        c();
        Objects.requireNonNull(values, "values can't be null");
        if (values.length < start + count) {
            throw new IndexOutOfBoundsException("start+count cant be > values.length");
        }
        d(baseIndex, count);
        if (count == 0) {
            return;
        }
        FloatBuffer duplicate = this.f130173e.duplicate();
        duplicate.position(baseIndex);
        duplicate.put(values, start, count);
    }

    public final void c() {
    }

    public void c0(float[] values) {
        b0(0, values, 0, values.length);
    }

    public final void d(int baseIndex, int count) {
        int i10;
        if (baseIndex < 0) {
            throw new IndexOutOfBoundsException("baseIndex cant be < 0");
        }
        if (count < 0) {
            throw new IndexOutOfBoundsException("count cant be < 0");
        }
        if (count != 0 && (i10 = baseIndex + (count - 1)) >= this.f130169a) {
            throw new IndexOutOfBoundsException("baseIndex + (count-1) cant be >= capacity (" + i10 + ") >= (" + this.f130169a + ")");
        }
    }

    public void d0(float[] values, int count) {
        b0(0, values, 0, count);
    }

    public C16167a clone() {
        C16167a c16167a = new C16167a(this.f130169a, this.f130171c);
        c16167a.E(0);
        c16167a.M(this);
        c16167a.E(0);
        return c16167a;
    }

    public void e0(int index, byte value) {
        R(index, value);
    }

    public C16167a f(C16167a buffer) {
        C16167a c16167a = new C16167a(a() + buffer.a());
        c16167a.E(0);
        c16167a.M(this);
        c16167a.M(buffer);
        c16167a.E(0);
        return c16167a;
    }

    public void f0(int index, double value) {
        R(index, (float) value);
    }

    public C16167a g(C16167a buffer) {
        return f(buffer);
    }

    public void g0(int index, float value) {
        R(index, value);
    }

    public void h() {
    }

    public void h0(int index, int value) {
        R(index, value);
    }

    public boolean i(C16167a buffer) {
        if (buffer == null || buffer.f130169a != this.f130169a) {
            return false;
        }
        for (int i10 = 0; i10 < this.f130169a; i10++) {
            if (Float.compare(n(i10), buffer.n(i10)) != 0) {
                return false;
            }
        }
        return true;
    }

    public void i0(int index, short value) {
        R(index, value);
    }

    public float j(int index) {
        return this.f130173e.get(index);
    }

    public void j0(int position) {
        this.f130170b = position;
    }

    public void k(float value) {
        l(0, value, this.f130169a);
    }

    public float[] k0() {
        int i10 = this.f130169a;
        float[] fArr = new float[i10];
        q(0, fArr, 0, i10);
        return fArr;
    }

    public void l(int baseIndex, float value, int count) {
        c();
        d(baseIndex, count);
        for (int i10 = 0; i10 < count; i10++) {
            this.f130173e.put(baseIndex + i10, value);
        }
    }

    public FloatBuffer l0() {
        return A();
    }

    public void m(float[] array) {
        if (array.length != this.f130169a) {
            throw new IllegalArgumentException("Array size must be == buffer capacity");
        }
        r(array);
    }

    public boolean m0() {
        return true;
    }

    public float n(int index) {
        c();
        b(index);
        return this.f130173e.get(index);
    }

    public void o(int baseIndex, Vector3 vector3) {
        c();
        if (vector3 == null) {
            throw new NullPointerException("vector3 can't be null");
        }
        d(baseIndex, 3);
        vector3.setX(n(baseIndex));
        vector3.setY(n(baseIndex + 1));
        vector3.setZ(n(baseIndex + 2));
    }

    public void p(int baseIndex, float[] values) {
        q(baseIndex, values, 0, values.length);
    }

    public void q(int baseIndex, float[] values, int start, int count) {
        c();
        Objects.requireNonNull(values, "values can't be null");
        if (values.length < start + count) {
            throw new IndexOutOfBoundsException("start+count cant be > values.length");
        }
        d(baseIndex, count);
        if (count == 0) {
            return;
        }
        FloatBuffer duplicate = this.f130173e.duplicate();
        duplicate.position(baseIndex);
        duplicate.get(values, start, count);
    }

    public void r(float[] values) {
        q(0, values, 0, values.length);
    }

    public void s(float[] values, int count) {
        q(0, values, 0, count);
    }

    public byte t(int index) {
        return (byte) n(index);
    }

    public double u(int index) {
        return n(index);
    }

    public float v(int index) {
        return n(index);
    }

    public int w(int index) {
        return (int) n(index);
    }

    public short x(int index) {
        return (short) n(index);
    }

    public int y() {
        return this.f130169a;
    }

    public ByteBuffer z() {
        return this.f130172d;
    }

    public C16167a(int capacity, EnumC2223a precision) {
        this.f130170b = 0;
        if (capacity > 0) {
            this.f130169a = capacity;
            this.f130171c = precision == null ? EnumC2223a.FLOAT32 : precision;
            ByteBuffer order = ByteBuffer.allocateDirect(capacity * 4).order(ByteOrder.nativeOrder());
            this.f130172d = order;
            this.f130173e = order.asFloatBuffer();
            k(0.0f);
            E(0);
            return;
        }
        throw new RuntimeException("Invalid capacity:" + capacity);
    }

    public C16167a(float[] array) {
        this(array, EnumC2223a.FLOAT32);
    }

    public C16167a(float[] array, EnumC2223a precision) {
        this.f130170b = 0;
        if (array != null) {
            if (array.length > 0) {
                int length = array.length;
                this.f130169a = length;
                this.f130171c = precision == null ? EnumC2223a.FLOAT32 : precision;
                ByteBuffer order = ByteBuffer.allocateDirect(length * 4).order(ByteOrder.nativeOrder());
                this.f130172d = order;
                this.f130173e = order.asFloatBuffer();
                this.f130170b = 0;
                O(array);
                this.f130170b = 0;
                return;
            }
            throw new RuntimeException("Array is empty");
        }
        throw new RuntimeException("Invalid array");
    }
}
