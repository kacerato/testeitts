package com.google.protobuf;

import com.google.protobuf.C12699o0;
import com.google.protobuf.D0;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import w2.C15883c;

@B
public final class N1 {

    public static final Class<?> f68806a = D();

    public static final q2<?, ?> f68807b = F(false);

    public static final q2<?, ?> f68808c = F(true);

    public static final q2<?, ?> f68809d = new t2();

    public static final int f68810e = 40;

    public static int A(List<Long> list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof O0) {
            O0 o02 = (O0) list;
            i10 = 0;
            while (i11 < size) {
                i10 += CodedOutputStream.b1(o02.getLong(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += CodedOutputStream.b1(list.get(i11).longValue());
                i11++;
            }
        }
        return i10;
    }

    public static void A0(int fieldNumber, String value, C2 writer) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.e(fieldNumber, value);
    }

    @A
    public static <UT, UB> UB B(Object obj, int i10, List<Integer> list, D0.d<?> dVar, UB ub2, q2<UT, UB> q2Var) {
        if (dVar == null) {
            return ub2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                Integer num = list.get(i12);
                int intValue = num.intValue();
                if (dVar.findValueByNumber(intValue) != null) {
                    if (i12 != i11) {
                        list.set(i11, num);
                    }
                    i11++;
                } else {
                    ub2 = (UB) Q(obj, i10, intValue, ub2, q2Var);
                }
            }
            if (i11 != size) {
                list.subList(i11, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int intValue2 = it.next().intValue();
                if (dVar.findValueByNumber(intValue2) == null) {
                    ub2 = (UB) Q(obj, i10, intValue2, ub2, q2Var);
                    it.remove();
                }
            }
        }
        return ub2;
    }

    public static void B0(int fieldNumber, List<String> value, C2 writer) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.A(fieldNumber, value);
    }

    @A
    public static <UT, UB> UB C(Object obj, int i10, List<Integer> list, D0.e eVar, UB ub2, q2<UT, UB> q2Var) {
        if (eVar == null) {
            return ub2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                Integer num = list.get(i12);
                int intValue = num.intValue();
                if (eVar.a(intValue)) {
                    if (i12 != i11) {
                        list.set(i11, num);
                    }
                    i11++;
                } else {
                    ub2 = (UB) Q(obj, i10, intValue, ub2, q2Var);
                }
            }
            if (i11 != size) {
                list.subList(i11, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int intValue2 = it.next().intValue();
                if (!eVar.a(intValue2)) {
                    ub2 = (UB) Q(obj, i10, intValue2, ub2, q2Var);
                    it.remove();
                }
            }
        }
        return ub2;
    }

    public static void C0(int fieldNumber, int value, C2 writer) throws IOException {
        if (value != 0) {
            writer.m(fieldNumber, value);
        }
    }

    public static Class<?> D() {
        try {
            return Class.forName("com.google.protobuf.w0");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void D0(int fieldNumber, List<Integer> value, C2 writer, boolean packed) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.k(fieldNumber, value, packed);
    }

    public static Object E(Class<?> clazz, String name) {
        try {
            Field[] declaredFields = Class.forName(clazz.getName() + "$" + R(name, true) + "DefaultEntryHolder").getDeclaredFields();
            if (declaredFields.length == 1) {
                return x2.S(declaredFields[0]);
            }
            throw new IllegalStateException("Unable to look up map field default entry holder class for " + name + " in " + clazz.getName());
        } catch (Throwable th2) {
            throw new RuntimeException(th2);
        }
    }

    public static void E0(int fieldNumber, long value, C2 writer) throws IOException {
        if (value != 0) {
            writer.f(fieldNumber, value);
        }
    }

    public static q2<?, ?> F(boolean proto3) {
        try {
            Class<?> G10 = G();
            if (G10 == null) {
                return null;
            }
            return (q2) G10.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(proto3));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void F0(int fieldNumber, List<Long> value, C2 writer, boolean packed) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.n(fieldNumber, value, packed);
    }

    public static Class<?> G() {
        return u2.class;
    }

    public static <T, FT extends C12699o0.c<FT>> void H(AbstractC12669e0<FT> schema, T message, T other) {
        C12699o0<FT> c10 = schema.c(other);
        if (c10.C()) {
            return;
        }
        schema.d(message).K(c10);
    }

    public static <T> void I(U0 mapFieldSchema, T message, T o10, long offset) {
        x2.t0(message, offset, mapFieldSchema.b(x2.Q(message, offset), x2.Q(o10, offset)));
    }

    public static <T, UT, UB> void J(q2<UT, UB> schema, T message, T other) {
        schema.p(message, schema.k(schema.g(message), schema.g(other)));
    }

    public static q2<?, ?> K() {
        return f68807b;
    }

    public static q2<?, ?> L() {
        return f68808c;
    }

    public static void M(Class<?> messageType) {
        Class<?> cls;
        if (!AbstractC12719v0.class.isAssignableFrom(messageType) && (cls = f68806a) != null && !cls.isAssignableFrom(messageType)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessageV3 or GeneratedMessageLite");
        }
    }

    public static boolean N(Object a10, Object b10) {
        return a10 == b10 || (a10 != null && a10.equals(b10));
    }

    public static boolean O(int lo, int hi2, int numFields) {
        if (hi2 < 40) {
            return true;
        }
        long j10 = hi2 - lo;
        long j11 = numFields;
        return j10 + 10 <= ((2 * j11) + 3) + ((j11 + 3) * 3);
    }

    public static boolean P(C12684j0[] fields) {
        if (fields.length == 0) {
            return false;
        }
        return O(fields[0].s(), fields[fields.length - 1].s(), fields.length);
    }

    @A
    public static <UT, UB> UB Q(Object obj, int i10, int i11, UB ub2, q2<UT, UB> q2Var) {
        if (ub2 == null) {
            ub2 = q2Var.f(obj);
        }
        q2Var.e(ub2, i10, i11);
        return ub2;
    }

    public static String R(String name, boolean capNext) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < name.length(); i10++) {
            char charAt = name.charAt(i10);
            if ('a' > charAt || charAt > 'z') {
                if ('A' > charAt || charAt > 'Z') {
                    if ('0' <= charAt && charAt <= '9') {
                        sb2.append(charAt);
                    }
                    capNext = true;
                } else if (i10 != 0 || capNext) {
                    sb2.append(charAt);
                } else {
                    sb2.append((char) (charAt + C15883c.f126249O));
                }
            } else if (capNext) {
                sb2.append((char) (charAt - ' '));
            } else {
                sb2.append(charAt);
            }
            capNext = false;
        }
        return sb2.toString();
    }

    public static q2<?, ?> S() {
        return f68809d;
    }

    public static void T(int fieldNumber, boolean value, C2 writer) throws IOException {
        if (value) {
            writer.q(fieldNumber, true);
        }
    }

    public static void U(int fieldNumber, List<Boolean> value, C2 writer, boolean packed) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.N(fieldNumber, value, packed);
    }

    public static void V(int fieldNumber, AbstractC12724x value, C2 writer) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.h(fieldNumber, value);
    }

    public static void W(int fieldNumber, List<AbstractC12724x> value, C2 writer) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.y(fieldNumber, value);
    }

    public static void X(int fieldNumber, double value, C2 writer) throws IOException {
        if (Double.doubleToRawLongBits(value) != 0) {
            writer.G(fieldNumber, value);
        }
    }

    public static void Y(int fieldNumber, List<Double> value, C2 writer, boolean packed) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.x(fieldNumber, value, packed);
    }

    public static void Z(int fieldNumber, int value, C2 writer) throws IOException {
        if (value != 0) {
            writer.Q(fieldNumber, value);
        }
    }

    public static int a(int fieldNumber, List<?> list, boolean packed) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return packed ? CodedOutputStream.X0(fieldNumber) + CodedOutputStream.D0(size) : size * CodedOutputStream.a0(fieldNumber, true);
    }

    public static void a0(int fieldNumber, List<Integer> value, C2 writer, boolean packed) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.E(fieldNumber, value, packed);
    }

    public static int b(List<?> list) {
        return list.size();
    }

    public static void b0(int fieldNumber, int value, C2 writer) throws IOException {
        if (value != 0) {
            writer.c(fieldNumber, value);
        }
    }

    public static int c(int fieldNumber, List<AbstractC12724x> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int X02 = size * CodedOutputStream.X0(fieldNumber);
        for (int i10 = 0; i10 < list.size(); i10++) {
            X02 += CodedOutputStream.h0(list.get(i10));
        }
        return X02;
    }

    public static void c0(int fieldNumber, List<Integer> value, C2 writer, boolean packed) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.j(fieldNumber, value, packed);
    }

    public static int d(int fieldNumber, List<Integer> list, boolean packed) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int e10 = e(list);
        return packed ? CodedOutputStream.X0(fieldNumber) + CodedOutputStream.D0(e10) : e10 + (size * CodedOutputStream.X0(fieldNumber));
    }

    public static void d0(int fieldNumber, long value, C2 writer) throws IOException {
        if (value != 0) {
            writer.o(fieldNumber, value);
        }
    }

    public static int e(List<Integer> list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C0) {
            C0 c02 = (C0) list;
            i10 = 0;
            while (i11 < size) {
                i10 += CodedOutputStream.l0(c02.getInt(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += CodedOutputStream.l0(list.get(i11).intValue());
                i11++;
            }
        }
        return i10;
    }

    public static void e0(int fieldNumber, List<Long> value, C2 writer, boolean packed) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.t(fieldNumber, value, packed);
    }

    public static int f(int fieldNumber, List<?> list, boolean packed) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return packed ? CodedOutputStream.X0(fieldNumber) + CodedOutputStream.D0(size * 4) : size * CodedOutputStream.m0(fieldNumber, 0);
    }

    public static void f0(int fieldNumber, float value, C2 writer) throws IOException {
        if (Float.floatToRawIntBits(value) != 0) {
            writer.P(fieldNumber, value);
        }
    }

    public static int g(List<?> list) {
        return list.size() * 4;
    }

    public static void g0(int fieldNumber, List<Float> value, C2 writer, boolean packed) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.a(fieldNumber, value, packed);
    }

    public static int h(int fieldNumber, List<?> list, boolean packed) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return packed ? CodedOutputStream.X0(fieldNumber) + CodedOutputStream.D0(size * 8) : size * CodedOutputStream.o0(fieldNumber, 0L);
    }

    public static void h0(int fieldNumber, List<?> value, C2 writer) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.d(fieldNumber, value);
    }

    public static int i(List<?> list) {
        return list.size() * 8;
    }

    public static void i0(int fieldNumber, List<?> value, C2 writer, L1 schema) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.F(fieldNumber, value, schema);
    }

    public static int j(int fieldNumber, List<InterfaceC12659b1> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            i10 += CodedOutputStream.s0(fieldNumber, list.get(i11));
        }
        return i10;
    }

    public static void j0(int fieldNumber, int value, C2 writer) throws IOException {
        if (value != 0) {
            writer.i(fieldNumber, value);
        }
    }

    public static int k(int fieldNumber, List<InterfaceC12659b1> list, L1 schema) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            i10 += CodedOutputStream.t0(fieldNumber, list.get(i11), schema);
        }
        return i10;
    }

    public static void k0(int fieldNumber, List<Integer> value, C2 writer, boolean packed) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.g(fieldNumber, value, packed);
    }

    public static int l(int fieldNumber, List<Integer> list, boolean packed) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m10 = m(list);
        return packed ? CodedOutputStream.X0(fieldNumber) + CodedOutputStream.D0(m10) : m10 + (size * CodedOutputStream.X0(fieldNumber));
    }

    public static void l0(int fieldNumber, long value, C2 writer) throws IOException {
        if (value != 0) {
            writer.L(fieldNumber, value);
        }
    }

    public static int m(List<Integer> list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C0) {
            C0 c02 = (C0) list;
            i10 = 0;
            while (i11 < size) {
                i10 += CodedOutputStream.x0(c02.getInt(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += CodedOutputStream.x0(list.get(i11).intValue());
                i11++;
            }
        }
        return i10;
    }

    public static void m0(int fieldNumber, List<Long> value, C2 writer, boolean packed) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.R(fieldNumber, value, packed);
    }

    public static int n(int fieldNumber, List<Long> list, boolean packed) {
        if (list.size() == 0) {
            return 0;
        }
        int o10 = o(list);
        return packed ? CodedOutputStream.X0(fieldNumber) + CodedOutputStream.D0(o10) : o10 + (list.size() * CodedOutputStream.X0(fieldNumber));
    }

    public static void n0(int fieldNumber, List<?> value, C2 writer) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        Iterator<?> it = value.iterator();
        while (it.hasNext()) {
            ((I0) it.next()).o(writer, fieldNumber);
        }
    }

    public static int o(List<Long> list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof O0) {
            O0 o02 = (O0) list;
            i10 = 0;
            while (i11 < size) {
                i10 += CodedOutputStream.z0(o02.getLong(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += CodedOutputStream.z0(list.get(i11).longValue());
                i11++;
            }
        }
        return i10;
    }

    public static void o0(int fieldNumber, Object value, C2 writer) throws IOException {
        if (value != null) {
            writer.K(fieldNumber, value);
        }
    }

    public static int p(int fieldNumber, Object value, L1 schema) {
        return value instanceof I0 ? CodedOutputStream.B0(fieldNumber, (I0) value) : CodedOutputStream.G0(fieldNumber, (InterfaceC12659b1) value, schema);
    }

    public static void p0(int fieldNumber, List<?> value, C2 writer) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.p(fieldNumber, value);
    }

    public static int q(int fieldNumber, List<?> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int X02 = CodedOutputStream.X0(fieldNumber) * size;
        for (int i10 = 0; i10 < size; i10++) {
            Object obj = list.get(i10);
            X02 += obj instanceof I0 ? CodedOutputStream.C0((I0) obj) : CodedOutputStream.H0((InterfaceC12659b1) obj);
        }
        return X02;
    }

    public static void q0(int fieldNumber, List<?> value, C2 writer, L1 schema) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.z(fieldNumber, value, schema);
    }

    public static int r(int fieldNumber, List<?> list, L1 schema) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int X02 = CodedOutputStream.X0(fieldNumber) * size;
        for (int i10 = 0; i10 < size; i10++) {
            Object obj = list.get(i10);
            X02 += obj instanceof I0 ? CodedOutputStream.C0((I0) obj) : CodedOutputStream.I0((InterfaceC12659b1) obj, schema);
        }
        return X02;
    }

    public static void r0(int fieldNumber, int value, C2 writer) throws IOException {
        if (value != 0) {
            writer.r(fieldNumber, value);
        }
    }

    public static int s(int fieldNumber, List<Integer> list, boolean packed) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int t10 = t(list);
        return packed ? CodedOutputStream.X0(fieldNumber) + CodedOutputStream.D0(t10) : t10 + (size * CodedOutputStream.X0(fieldNumber));
    }

    public static void s0(int fieldNumber, List<Integer> value, C2 writer, boolean packed) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.M(fieldNumber, value, packed);
    }

    public static int t(List<Integer> list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C0) {
            C0 c02 = (C0) list;
            i10 = 0;
            while (i11 < size) {
                i10 += CodedOutputStream.S0(c02.getInt(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += CodedOutputStream.S0(list.get(i11).intValue());
                i11++;
            }
        }
        return i10;
    }

    public static void t0(int fieldNumber, long value, C2 writer) throws IOException {
        if (value != 0) {
            writer.C(fieldNumber, value);
        }
    }

    public static int u(int fieldNumber, List<Long> list, boolean packed) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int v10 = v(list);
        return packed ? CodedOutputStream.X0(fieldNumber) + CodedOutputStream.D0(v10) : v10 + (size * CodedOutputStream.X0(fieldNumber));
    }

    public static void u0(int fieldNumber, List<Long> value, C2 writer, boolean packed) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.H(fieldNumber, value, packed);
    }

    public static int v(List<Long> list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof O0) {
            O0 o02 = (O0) list;
            i10 = 0;
            while (i11 < size) {
                i10 += CodedOutputStream.U0(o02.getLong(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += CodedOutputStream.U0(list.get(i11).longValue());
                i11++;
            }
        }
        return i10;
    }

    public static void v0(int fieldNumber, int value, C2 writer) throws IOException {
        if (value != 0) {
            writer.S(fieldNumber, value);
        }
    }

    public static int w(int fieldNumber, List<?> list) {
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        int X02 = CodedOutputStream.X0(fieldNumber) * size;
        if (list instanceof K0) {
            K0 k02 = (K0) list;
            while (i10 < size) {
                Object Ee2 = k02.Ee(i10);
                X02 += Ee2 instanceof AbstractC12724x ? CodedOutputStream.h0((AbstractC12724x) Ee2) : CodedOutputStream.W0((String) Ee2);
                i10++;
            }
        } else {
            while (i10 < size) {
                Object obj = list.get(i10);
                X02 += obj instanceof AbstractC12724x ? CodedOutputStream.h0((AbstractC12724x) obj) : CodedOutputStream.W0((String) obj);
                i10++;
            }
        }
        return X02;
    }

    public static void w0(int fieldNumber, List<Integer> value, C2 writer, boolean packed) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.w(fieldNumber, value, packed);
    }

    public static int x(int fieldNumber, List<Integer> list, boolean packed) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int y10 = y(list);
        return packed ? CodedOutputStream.X0(fieldNumber) + CodedOutputStream.D0(y10) : y10 + (size * CodedOutputStream.X0(fieldNumber));
    }

    public static void x0(int fieldNumber, long value, C2 writer) throws IOException {
        if (value != 0) {
            writer.l(fieldNumber, value);
        }
    }

    public static int y(List<Integer> list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C0) {
            C0 c02 = (C0) list;
            i10 = 0;
            while (i11 < size) {
                i10 += CodedOutputStream.Z0(c02.getInt(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += CodedOutputStream.Z0(list.get(i11).intValue());
                i11++;
            }
        }
        return i10;
    }

    public static void y0(int fieldNumber, List<Long> value, C2 writer, boolean packed) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.D(fieldNumber, value, packed);
    }

    public static int z(int fieldNumber, List<Long> list, boolean packed) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int A10 = A(list);
        return packed ? CodedOutputStream.X0(fieldNumber) + CodedOutputStream.D0(A10) : A10 + (size * CodedOutputStream.X0(fieldNumber));
    }

    public static void z0(int fieldNumber, Object value, C2 writer) throws IOException {
        if (value instanceof String) {
            A0(fieldNumber, (String) value, writer);
        } else {
            V(fieldNumber, (AbstractC12724x) value, writer);
        }
    }
}
