package com.google.protobuf;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

public final class x2 {

    public static final Unsafe f69718a = T();

    public static final Class<?> f69719b = C12671f.b();

    public static final boolean f69720c = s(Long.TYPE);

    public static final boolean f69721d = s(Integer.TYPE);

    public static final e f69722e = P();

    public static final boolean f69723f = w0();

    public static final boolean f69724g = v0();

    public static final long f69725h;

    public static final long f69726i;

    public static final long f69727j;

    public static final long f69728k;

    public static final long f69729l;

    public static final long f69730m;

    public static final long f69731n;

    public static final long f69732o;

    public static final long f69733p;

    public static final long f69734q;

    public static final long f69735r;

    public static final long f69736s;

    public static final long f69737t;

    public static final long f69738u;

    public static final int f69739v = 8;

    public static final int f69740w = 7;

    public static final int f69741x;

    public static final boolean f69742y;

    public class a implements PrivilegedExceptionAction<Unsafe> {
        @Override
        public Unsafe run() throws Exception {
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            return null;
        }
    }

    public static final class b extends e {

        public static final long f69743b = -1;

        public b(Unsafe unsafe) {
            super(unsafe);
        }

        public static int C(long address) {
            return (int) address;
        }

        @Override
        public boolean B() {
            return false;
        }

        @Override
        public void c(long srcOffset, byte[] target, long targetIndex, long length) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void d(byte[] src, long srcIndex, long targetOffset, long length) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean e(Object target, long offset) {
            return x2.f69742y ? x2.y(target, offset) : x2.z(target, offset);
        }

        @Override
        public byte f(long address) {
            throw new UnsupportedOperationException();
        }

        @Override
        public byte g(Object target, long offset) {
            return x2.f69742y ? x2.D(target, offset) : x2.E(target, offset);
        }

        @Override
        public double h(Object target, long offset) {
            return Double.longBitsToDouble(m(target, offset));
        }

        @Override
        public float i(Object target, long offset) {
            return Float.intBitsToFloat(k(target, offset));
        }

        @Override
        public int j(long address) {
            throw new UnsupportedOperationException();
        }

        @Override
        public long l(long address) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Object o(Field field) {
            try {
                return field.get(null);
            } catch (IllegalAccessException unused) {
                return null;
            }
        }

        @Override
        public void q(Object target, long offset, boolean value) {
            if (x2.f69742y) {
                x2.c0(target, offset, value);
            } else {
                x2.d0(target, offset, value);
            }
        }

        @Override
        public void r(long address, byte value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void s(Object target, long offset, byte value) {
            if (x2.f69742y) {
                x2.h0(target, offset, value);
            } else {
                x2.i0(target, offset, value);
            }
        }

        @Override
        public void t(Object target, long offset, double value) {
            y(target, offset, Double.doubleToLongBits(value));
        }

        @Override
        public void u(Object target, long offset, float value) {
            w(target, offset, Float.floatToIntBits(value));
        }

        @Override
        public void v(long address, int value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void x(long address, long value) {
            throw new UnsupportedOperationException();
        }
    }

    public static final class c extends e {
        public c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override
        public boolean B() {
            return false;
        }

        @Override
        public void c(long srcOffset, byte[] target, long targetIndex, long length) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void d(byte[] src, long srcIndex, long targetOffset, long length) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean e(Object target, long offset) {
            return x2.f69742y ? x2.y(target, offset) : x2.z(target, offset);
        }

        @Override
        public byte f(long address) {
            throw new UnsupportedOperationException();
        }

        @Override
        public byte g(Object target, long offset) {
            return x2.f69742y ? x2.D(target, offset) : x2.E(target, offset);
        }

        @Override
        public double h(Object target, long offset) {
            return Double.longBitsToDouble(m(target, offset));
        }

        @Override
        public float i(Object target, long offset) {
            return Float.intBitsToFloat(k(target, offset));
        }

        @Override
        public int j(long address) {
            throw new UnsupportedOperationException();
        }

        @Override
        public long l(long address) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Object o(Field field) {
            try {
                return field.get(null);
            } catch (IllegalAccessException unused) {
                return null;
            }
        }

        @Override
        public void q(Object target, long offset, boolean value) {
            if (x2.f69742y) {
                x2.c0(target, offset, value);
            } else {
                x2.d0(target, offset, value);
            }
        }

        @Override
        public void r(long address, byte value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void s(Object target, long offset, byte value) {
            if (x2.f69742y) {
                x2.h0(target, offset, value);
            } else {
                x2.i0(target, offset, value);
            }
        }

        @Override
        public void t(Object target, long offset, double value) {
            y(target, offset, Double.doubleToLongBits(value));
        }

        @Override
        public void u(Object target, long offset, float value) {
            w(target, offset, Float.floatToIntBits(value));
        }

        @Override
        public void v(long address, int value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void x(long address, long value) {
            throw new UnsupportedOperationException();
        }
    }

    public static final class d extends e {
        public d(Unsafe unsafe) {
            super(unsafe);
        }

        @Override
        public boolean A() {
            if (!super.A()) {
                return false;
            }
            try {
                Class<?> cls = this.f69744a.getClass();
                Class<Long> cls2 = Long.TYPE;
                cls.getMethod("getByte", Object.class, cls2);
                cls.getMethod("putByte", Object.class, cls2, Byte.TYPE);
                cls.getMethod("getBoolean", Object.class, cls2);
                cls.getMethod("putBoolean", Object.class, cls2, Boolean.TYPE);
                cls.getMethod("getFloat", Object.class, cls2);
                cls.getMethod("putFloat", Object.class, cls2, Float.TYPE);
                cls.getMethod("getDouble", Object.class, cls2);
                cls.getMethod("putDouble", Object.class, cls2, Double.TYPE);
                return true;
            } catch (Throwable th2) {
                x2.X(th2);
                return false;
            }
        }

        @Override
        public boolean B() {
            if (!super.B()) {
                return false;
            }
            try {
                Class<?> cls = this.f69744a.getClass();
                Class<Long> cls2 = Long.TYPE;
                cls.getMethod("getByte", cls2);
                cls.getMethod("putByte", cls2, Byte.TYPE);
                cls.getMethod("getInt", cls2);
                cls.getMethod("putInt", cls2, Integer.TYPE);
                cls.getMethod("getLong", cls2);
                cls.getMethod("putLong", cls2, cls2);
                cls.getMethod("copyMemory", cls2, cls2, cls2);
                cls.getMethod("copyMemory", Object.class, cls2, Object.class, cls2, cls2);
                return true;
            } catch (Throwable th2) {
                x2.X(th2);
                return false;
            }
        }

        @Override
        public void c(long srcOffset, byte[] target, long targetIndex, long length) {
            this.f69744a.copyMemory((Object) null, srcOffset, target, x2.f69725h + targetIndex, length);
        }

        @Override
        public void d(byte[] src, long srcIndex, long targetOffset, long length) {
            this.f69744a.copyMemory(src, x2.f69725h + srcIndex, (Object) null, targetOffset, length);
        }

        @Override
        public boolean e(Object target, long offset) {
            return this.f69744a.getBoolean(target, offset);
        }

        @Override
        public byte f(long address) {
            return this.f69744a.getByte(address);
        }

        @Override
        public byte g(Object target, long offset) {
            return this.f69744a.getByte(target, offset);
        }

        @Override
        public double h(Object target, long offset) {
            return this.f69744a.getDouble(target, offset);
        }

        @Override
        public float i(Object target, long offset) {
            return this.f69744a.getFloat(target, offset);
        }

        @Override
        public int j(long address) {
            return this.f69744a.getInt(address);
        }

        @Override
        public long l(long address) {
            return this.f69744a.getLong(address);
        }

        @Override
        public Object o(Field field) {
            return n(this.f69744a.staticFieldBase(field), this.f69744a.staticFieldOffset(field));
        }

        @Override
        public void q(Object target, long offset, boolean value) {
            this.f69744a.putBoolean(target, offset, value);
        }

        @Override
        public void r(long address, byte value) {
            this.f69744a.putByte(address, value);
        }

        @Override
        public void s(Object target, long offset, byte value) {
            this.f69744a.putByte(target, offset, value);
        }

        @Override
        public void t(Object target, long offset, double value) {
            this.f69744a.putDouble(target, offset, value);
        }

        @Override
        public void u(Object target, long offset, float value) {
            this.f69744a.putFloat(target, offset, value);
        }

        @Override
        public void v(long address, int value) {
            this.f69744a.putInt(address, value);
        }

        @Override
        public void x(long address, long value) {
            this.f69744a.putLong(address, value);
        }
    }

    public static abstract class e {

        public Unsafe f69744a;

        public e(Unsafe unsafe) {
            this.f69744a = unsafe;
        }

        public boolean A() {
            Unsafe unsafe = this.f69744a;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("arrayBaseOffset", Class.class);
                cls.getMethod("arrayIndexScale", Class.class);
                Class<Long> cls2 = Long.TYPE;
                cls.getMethod("getInt", Object.class, cls2);
                cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
                cls.getMethod("getLong", Object.class, cls2);
                cls.getMethod("putLong", Object.class, cls2, cls2);
                cls.getMethod("getObject", Object.class, cls2);
                cls.getMethod("putObject", Object.class, cls2, Object.class);
                return true;
            } catch (Throwable th2) {
                x2.X(th2);
                return false;
            }
        }

        public boolean B() {
            Unsafe unsafe = this.f69744a;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("getLong", Object.class, Long.TYPE);
                return x2.b() != null;
            } catch (Throwable th2) {
                x2.X(th2);
                return false;
            }
        }

        public final int a(Class<?> clazz) {
            return this.f69744a.arrayBaseOffset(clazz);
        }

        public final int b(Class<?> clazz) {
            return this.f69744a.arrayIndexScale(clazz);
        }

        public abstract void c(long srcOffset, byte[] target, long targetIndex, long length);

        public abstract void d(byte[] src, long srcIndex, long targetOffset, long length);

        public abstract boolean e(Object target, long offset);

        public abstract byte f(long address);

        public abstract byte g(Object target, long offset);

        public abstract double h(Object target, long offset);

        public abstract float i(Object target, long offset);

        public abstract int j(long address);

        public final int k(Object target, long offset) {
            return this.f69744a.getInt(target, offset);
        }

        public abstract long l(long address);

        public final long m(Object target, long offset) {
            return this.f69744a.getLong(target, offset);
        }

        public final Object n(Object target, long offset) {
            return this.f69744a.getObject(target, offset);
        }

        public abstract Object o(Field field);

        public final long p(Field field) {
            return this.f69744a.objectFieldOffset(field);
        }

        public abstract void q(Object target, long offset, boolean value);

        public abstract void r(long address, byte value);

        public abstract void s(Object target, long offset, byte value);

        public abstract void t(Object target, long offset, double value);

        public abstract void u(Object target, long offset, float value);

        public abstract void v(long address, int value);

        public final void w(Object target, long offset, int value) {
            this.f69744a.putInt(target, offset, value);
        }

        public abstract void x(long address, long value);

        public final void y(Object target, long offset, long value) {
            this.f69744a.putLong(target, offset, value);
        }

        public final void z(Object target, long offset, Object value) {
            this.f69744a.putObject(target, offset, value);
        }
    }

    static {
        long m10 = m(byte[].class);
        f69725h = m10;
        f69726i = m(boolean[].class);
        f69727j = n(boolean[].class);
        f69728k = m(int[].class);
        f69729l = n(int[].class);
        f69730m = m(long[].class);
        f69731n = n(long[].class);
        f69732o = m(float[].class);
        f69733p = n(float[].class);
        f69734q = m(double[].class);
        f69735r = n(double[].class);
        f69736s = m(Object[].class);
        f69737t = n(Object[].class);
        f69738u = u(o());
        f69741x = (int) (m10 & 7);
        f69742y = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    public static byte A(long address) {
        return f69722e.f(address);
    }

    public static byte B(Object target, long offset) {
        return f69722e.g(target, offset);
    }

    public static byte C(byte[] target, long index) {
        return f69722e.g(target, f69725h + index);
    }

    public static byte D(Object target, long offset) {
        return (byte) ((K(target, (-4) & offset) >>> ((int) (((~offset) & 3) << 3))) & 255);
    }

    public static byte E(Object target, long offset) {
        return (byte) ((K(target, (-4) & offset) >>> ((int) ((offset & 3) << 3))) & 255);
    }

    public static double F(Object target, long offset) {
        return f69722e.h(target, offset);
    }

    public static double G(double[] target, long index) {
        return f69722e.h(target, f69734q + (index * f69735r));
    }

    public static float H(Object target, long offset) {
        return f69722e.i(target, offset);
    }

    public static float I(float[] target, long index) {
        return f69722e.i(target, f69732o + (index * f69733p));
    }

    public static int J(long address) {
        return f69722e.j(address);
    }

    public static int K(Object target, long offset) {
        return f69722e.k(target, offset);
    }

    public static int L(int[] target, long index) {
        return f69722e.k(target, f69728k + (index * f69729l));
    }

    public static long M(long address) {
        return f69722e.l(address);
    }

    public static long N(Object target, long offset) {
        return f69722e.m(target, offset);
    }

    public static long O(long[] target, long index) {
        return f69722e.m(target, f69730m + (index * f69731n));
    }

    public static e P() {
        Unsafe unsafe = f69718a;
        if (unsafe == null) {
            return null;
        }
        if (!C12671f.c()) {
            return new d(unsafe);
        }
        if (f69720c) {
            return new c(unsafe);
        }
        if (f69721d) {
            return new b(unsafe);
        }
        return null;
    }

    public static Object Q(Object target, long offset) {
        return f69722e.n(target, offset);
    }

    public static Object R(Object[] target, long index) {
        return f69722e.n(target, f69736s + (index * f69737t));
    }

    public static Object S(Field field) {
        return f69722e.o(field);
    }

    public static Unsafe T() {
        try {
            return (Unsafe) AccessController.doPrivileged(new a());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean U() {
        return f69724g;
    }

    public static boolean V() {
        return f69723f;
    }

    public static boolean W() {
        return f69720c;
    }

    public static void X(Throwable e10) {
        Logger.getLogger(x2.class.getName()).log(Level.WARNING, "platform method missing - proto runtime falling back to safer methods: " + ((Object) e10));
    }

    public static int Y(byte[] left, int leftOff, byte[] right, int rightOff, int length) {
        if (leftOff < 0 || rightOff < 0 || length < 0 || leftOff + length > left.length || rightOff + length > right.length) {
            throw new IndexOutOfBoundsException();
        }
        int i10 = 0;
        if (f69724g) {
            for (int i11 = (f69741x + leftOff) & 7; i10 < length && (i11 & 7) != 0; i11++) {
                if (left[leftOff + i10] != right[rightOff + i10]) {
                    return i10;
                }
                i10++;
            }
            int i12 = ((length - i10) & (-8)) + i10;
            while (i10 < i12) {
                long j10 = f69725h;
                long j11 = i10;
                long N10 = N(left, leftOff + j10 + j11);
                long N11 = N(right, j10 + rightOff + j11);
                if (N10 != N11) {
                    return i10 + v(N10, N11);
                }
                i10 += 8;
            }
        }
        while (i10 < length) {
            if (left[leftOff + i10] != right[rightOff + i10]) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static long Z(Field field) {
        return f69722e.p(field);
    }

    public static void a0(Object target, long offset, boolean value) {
        f69722e.q(target, offset, value);
    }

    public static Field b() {
        return o();
    }

    public static void b0(boolean[] target, long index, boolean value) {
        f69722e.q(target, f69726i + (index * f69727j), value);
    }

    public static void c0(Object obj, long j10, boolean z10) {
        h0(obj, j10, z10 ? (byte) 1 : (byte) 0);
    }

    public static void d0(Object obj, long j10, boolean z10) {
        i0(obj, j10, z10 ? (byte) 1 : (byte) 0);
    }

    public static void e0(long address, byte value) {
        f69722e.r(address, value);
    }

    public static void f0(Object target, long offset, byte value) {
        f69722e.s(target, offset, value);
    }

    public static void g0(byte[] target, long index, byte value) {
        f69722e.s(target, f69725h + index, value);
    }

    public static void h0(Object target, long offset, byte value) {
        long j10 = (-4) & offset;
        int K10 = K(target, j10);
        int i10 = ((~((int) offset)) & 3) << 3;
        o0(target, j10, ((255 & value) << i10) | (K10 & (~(255 << i10))));
    }

    public static void i0(Object target, long offset, byte value) {
        long j10 = (-4) & offset;
        int i10 = (((int) offset) & 3) << 3;
        o0(target, j10, ((255 & value) << i10) | (K(target, j10) & (~(255 << i10))));
    }

    public static void j0(Object target, long offset, double value) {
        f69722e.t(target, offset, value);
    }

    public static long k(ByteBuffer buffer) {
        return f69722e.m(buffer, f69738u);
    }

    public static void k0(double[] target, long index, double value) {
        f69722e.t(target, f69734q + (index * f69735r), value);
    }

    public static <T> T l(Class<T> cls) {
        try {
            return (T) f69718a.allocateInstance(cls);
        } catch (InstantiationException e10) {
            throw new IllegalStateException(e10);
        }
    }

    public static void l0(Object target, long offset, float value) {
        f69722e.u(target, offset, value);
    }

    public static int m(Class<?> clazz) {
        if (f69724g) {
            return f69722e.a(clazz);
        }
        return -1;
    }

    public static void m0(float[] target, long index, float value) {
        f69722e.u(target, f69732o + (index * f69733p), value);
    }

    public static int n(Class<?> clazz) {
        if (f69724g) {
            return f69722e.b(clazz);
        }
        return -1;
    }

    public static void n0(long address, int value) {
        f69722e.v(address, value);
    }

    public static Field o() {
        Field t10;
        if (C12671f.c() && (t10 = t(Buffer.class, "effectiveDirectAddress")) != null) {
            return t10;
        }
        Field t11 = t(Buffer.class, "address");
        if (t11 == null || t11.getType() != Long.TYPE) {
            return null;
        }
        return t11;
    }

    public static void o0(Object target, long offset, int value) {
        f69722e.w(target, offset, value);
    }

    public static void p(long srcOffset, byte[] target, long targetIndex, long length) {
        f69722e.c(srcOffset, target, targetIndex, length);
    }

    public static void p0(int[] target, long index, int value) {
        f69722e.w(target, f69728k + (index * f69729l), value);
    }

    public static void q(byte[] src, long srcIndex, long targetOffset, long length) {
        f69722e.d(src, srcIndex, targetOffset, length);
    }

    public static void q0(long address, long value) {
        f69722e.x(address, value);
    }

    public static void r(byte[] src, long srcIndex, byte[] target, long targetIndex, long length) {
        System.arraycopy(src, (int) srcIndex, target, (int) targetIndex, (int) length);
    }

    public static void r0(Object target, long offset, long value) {
        f69722e.y(target, offset, value);
    }

    public static boolean s(Class<?> addressClass) {
        if (!C12671f.c()) {
            return false;
        }
        try {
            Class<?> cls = f69719b;
            Class<Boolean> cls2 = Boolean.TYPE;
            cls.getMethod("peekLong", addressClass, cls2);
            cls.getMethod("pokeLong", addressClass, Long.TYPE, cls2);
            Class<Integer> cls3 = Integer.TYPE;
            cls.getMethod("pokeInt", addressClass, cls3, cls2);
            cls.getMethod("peekInt", addressClass, cls2);
            cls.getMethod("pokeByte", addressClass, Byte.TYPE);
            cls.getMethod("peekByte", addressClass);
            cls.getMethod("pokeByteArray", addressClass, byte[].class, cls3, cls3);
            cls.getMethod("peekByteArray", addressClass, byte[].class, cls3, cls3);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void s0(long[] target, long index, long value) {
        f69722e.y(target, f69730m + (index * f69731n), value);
    }

    public static Field t(Class<?> clazz, String fieldName) {
        try {
            return clazz.getDeclaredField(fieldName);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void t0(Object target, long offset, Object value) {
        f69722e.z(target, offset, value);
    }

    public static long u(Field field) {
        e eVar;
        if (field == null || (eVar = f69722e) == null) {
            return -1L;
        }
        return eVar.p(field);
    }

    public static void u0(Object[] target, long index, Object value) {
        f69722e.z(target, f69736s + (index * f69737t), value);
    }

    public static int v(long left, long right) {
        return (f69742y ? Long.numberOfLeadingZeros(left ^ right) : Long.numberOfTrailingZeros(left ^ right)) >> 3;
    }

    public static boolean v0() {
        e eVar = f69722e;
        if (eVar == null) {
            return false;
        }
        return eVar.A();
    }

    public static boolean w(Object target, long offset) {
        return f69722e.e(target, offset);
    }

    public static boolean w0() {
        e eVar = f69722e;
        if (eVar == null) {
            return false;
        }
        return eVar.B();
    }

    public static boolean x(boolean[] target, long index) {
        return f69722e.e(target, f69726i + (index * f69727j));
    }

    public static boolean y(Object target, long offset) {
        return D(target, offset) != 0;
    }

    public static boolean z(Object target, long offset) {
        return E(target, offset) != 0;
    }
}
