package com.google.protobuf;

import com.google.protobuf.A2;
import com.google.protobuf.C2;
import com.google.protobuf.R0;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@B
public final class E implements C2 {

    public final CodedOutputStream f68032a;

    public static class a {

        public static final int[] f68033a;

        static {
            int[] iArr = new int[A2.b.values().length];
            f68033a = iArr;
            try {
                iArr[A2.b.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f68033a[A2.b.FIXED32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f68033a[A2.b.INT32.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f68033a[A2.b.SFIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f68033a[A2.b.SINT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f68033a[A2.b.UINT32.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f68033a[A2.b.FIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f68033a[A2.b.INT64.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f68033a[A2.b.SFIXED64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f68033a[A2.b.SINT64.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f68033a[A2.b.UINT64.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f68033a[A2.b.STRING.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public E(CodedOutputStream output) {
        CodedOutputStream codedOutputStream = (CodedOutputStream) D0.e(output, "output");
        this.f68032a = codedOutputStream;
        codedOutputStream.f67889a = this;
    }

    public static E T(CodedOutputStream output) {
        E e10 = output.f67889a;
        return e10 != null ? e10 : new E(output);
    }

    private void a0(int fieldNumber, Object value) throws IOException {
        if (value instanceof String) {
            this.f68032a.e(fieldNumber, (String) value);
        } else {
            this.f68032a.h(fieldNumber, (AbstractC12724x) value);
        }
    }

    @Override
    public void A(int fieldNumber, List<String> value) throws IOException {
        int i10 = 0;
        if (!(value instanceof K0)) {
            while (i10 < value.size()) {
                this.f68032a.e(fieldNumber, value.get(i10));
                i10++;
            }
        } else {
            K0 k02 = (K0) value;
            while (i10 < value.size()) {
                a0(fieldNumber, k02.Ee(i10));
                i10++;
            }
        }
    }

    @Override
    public void B(int fieldNumber, Object value, L1 schema) throws IOException {
        this.f68032a.G1(fieldNumber, (InterfaceC12659b1) value, schema);
    }

    @Override
    public void C(int fieldNumber, long value) throws IOException {
        this.f68032a.C(fieldNumber, value);
    }

    @Override
    public void D(int fieldNumber, List<Long> value, boolean packed) throws IOException {
        int i10 = 0;
        if (!packed) {
            while (i10 < value.size()) {
                this.f68032a.l(fieldNumber, value.get(i10).longValue());
                i10++;
            }
            return;
        }
        this.f68032a.g2(fieldNumber, 2);
        int i11 = 0;
        for (int i12 = 0; i12 < value.size(); i12++) {
            i11 += CodedOutputStream.U0(value.get(i12).longValue());
        }
        this.f68032a.h2(i11);
        while (i10 < value.size()) {
            this.f68032a.e2(value.get(i10).longValue());
            i10++;
        }
    }

    @Override
    public void E(int fieldNumber, List<Integer> value, boolean packed) throws IOException {
        int i10 = 0;
        if (!packed) {
            while (i10 < value.size()) {
                this.f68032a.Q(fieldNumber, value.get(i10).intValue());
                i10++;
            }
            return;
        }
        this.f68032a.g2(fieldNumber, 2);
        int i11 = 0;
        for (int i12 = 0; i12 < value.size(); i12++) {
            i11 += CodedOutputStream.l0(value.get(i12).intValue());
        }
        this.f68032a.h2(i11);
        while (i10 < value.size()) {
            this.f68032a.B1(value.get(i10).intValue());
            i10++;
        }
    }

    @Override
    public void F(int fieldNumber, List<?> value, L1 schema) throws IOException {
        for (int i10 = 0; i10 < value.size(); i10++) {
            B(fieldNumber, value.get(i10), schema);
        }
    }

    @Override
    public void G(int fieldNumber, double value) throws IOException {
        this.f68032a.G(fieldNumber, value);
    }

    @Override
    public void H(int fieldNumber, List<Long> value, boolean packed) throws IOException {
        int i10 = 0;
        if (!packed) {
            while (i10 < value.size()) {
                this.f68032a.C(fieldNumber, value.get(i10).longValue());
                i10++;
            }
            return;
        }
        this.f68032a.g2(fieldNumber, 2);
        int i11 = 0;
        for (int i12 = 0; i12 < value.size(); i12++) {
            i11 += CodedOutputStream.Q0(value.get(i12).longValue());
        }
        this.f68032a.h2(i11);
        while (i10 < value.size()) {
            this.f68032a.c2(value.get(i10).longValue());
            i10++;
        }
    }

    @Override
    public void I(int fieldNumber, Object value, L1 schema) throws IOException {
        this.f68032a.M1(fieldNumber, (InterfaceC12659b1) value, schema);
    }

    @Override
    public C2.a J() {
        return C2.a.ASCENDING;
    }

    @Override
    public void K(int fieldNumber, Object value) throws IOException {
        this.f68032a.L1(fieldNumber, (InterfaceC12659b1) value);
    }

    @Override
    public void L(int fieldNumber, long value) throws IOException {
        this.f68032a.L(fieldNumber, value);
    }

    @Override
    public void M(int fieldNumber, List<Integer> value, boolean packed) throws IOException {
        int i10 = 0;
        if (!packed) {
            while (i10 < value.size()) {
                this.f68032a.r(fieldNumber, value.get(i10).intValue());
                i10++;
            }
            return;
        }
        this.f68032a.g2(fieldNumber, 2);
        int i11 = 0;
        for (int i12 = 0; i12 < value.size(); i12++) {
            i11 += CodedOutputStream.O0(value.get(i12).intValue());
        }
        this.f68032a.h2(i11);
        while (i10 < value.size()) {
            this.f68032a.b2(value.get(i10).intValue());
            i10++;
        }
    }

    @Override
    public void N(int fieldNumber, List<Boolean> value, boolean packed) throws IOException {
        int i10 = 0;
        if (!packed) {
            while (i10 < value.size()) {
                this.f68032a.q(fieldNumber, value.get(i10).booleanValue());
                i10++;
            }
            return;
        }
        this.f68032a.g2(fieldNumber, 2);
        int i11 = 0;
        for (int i12 = 0; i12 < value.size(); i12++) {
            i11 += CodedOutputStream.b0(value.get(i12).booleanValue());
        }
        this.f68032a.h2(i11);
        while (i10 < value.size()) {
            this.f68032a.t1(value.get(i10).booleanValue());
            i10++;
        }
    }

    @Override
    @Deprecated
    public void O(int fieldNumber, Object value) throws IOException {
        this.f68032a.F1(fieldNumber, (InterfaceC12659b1) value);
    }

    @Override
    public void P(int fieldNumber, float value) throws IOException {
        this.f68032a.P(fieldNumber, value);
    }

    @Override
    public void Q(int fieldNumber, int value) throws IOException {
        this.f68032a.Q(fieldNumber, value);
    }

    @Override
    public void R(int fieldNumber, List<Long> value, boolean packed) throws IOException {
        int i10 = 0;
        if (!packed) {
            while (i10 < value.size()) {
                this.f68032a.L(fieldNumber, value.get(i10).longValue());
                i10++;
            }
            return;
        }
        this.f68032a.g2(fieldNumber, 2);
        int i11 = 0;
        for (int i12 = 0; i12 < value.size(); i12++) {
            i11 += CodedOutputStream.z0(value.get(i12).longValue());
        }
        this.f68032a.h2(i11);
        while (i10 < value.size()) {
            this.f68032a.K1(value.get(i10).longValue());
            i10++;
        }
    }

    @Override
    public void S(int fieldNumber, int value) throws IOException {
        this.f68032a.S(fieldNumber, value);
    }

    public int U() {
        return this.f68032a.f1();
    }

    public final <V> void V(int fieldNumber, boolean key, V value, R0.b<Boolean, V> metadata) throws IOException {
        this.f68032a.g2(fieldNumber, 2);
        this.f68032a.h2(R0.b(metadata, Boolean.valueOf(key), value));
        R0.l(this.f68032a, metadata, Boolean.valueOf(key), value);
    }

    public final <V> void W(int fieldNumber, R0.b<Integer, V> metadata, Map<Integer, V> map) throws IOException {
        int size = map.size();
        int[] iArr = new int[size];
        Iterator<Integer> it = map.o().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            iArr[i10] = it.next().intValue();
            i10++;
        }
        Arrays.sort(iArr);
        for (int i11 = 0; i11 < size; i11++) {
            int i12 = iArr[i11];
            V v10 = map.get(Integer.valueOf(i12));
            this.f68032a.g2(fieldNumber, 2);
            this.f68032a.h2(R0.b(metadata, Integer.valueOf(i12), v10));
            R0.l(this.f68032a, metadata, Integer.valueOf(i12), v10);
        }
    }

    public final <V> void X(int fieldNumber, R0.b<Long, V> metadata, Map<Long, V> map) throws IOException {
        int size = map.size();
        long[] jArr = new long[size];
        Iterator<Long> it = map.o().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            jArr[i10] = it.next().longValue();
            i10++;
        }
        Arrays.sort(jArr);
        for (int i11 = 0; i11 < size; i11++) {
            long j10 = jArr[i11];
            V v10 = map.get(Long.valueOf(j10));
            this.f68032a.g2(fieldNumber, 2);
            this.f68032a.h2(R0.b(metadata, Long.valueOf(j10), v10));
            R0.l(this.f68032a, metadata, Long.valueOf(j10), v10);
        }
    }

    public final <K, V> void Y(int fieldNumber, R0.b<K, V> metadata, Map<K, V> map) throws IOException {
        switch (a.f68033a[metadata.f68861a.ordinal()]) {
            case 1:
                V v10 = map.get(Boolean.FALSE);
                if (v10 != null) {
                    V(fieldNumber, false, v10, metadata);
                }
                V v11 = map.get(Boolean.TRUE);
                if (v11 != null) {
                    V(fieldNumber, true, v11, metadata);
                    return;
                }
                return;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                W(fieldNumber, metadata, map);
                return;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                X(fieldNumber, metadata, map);
                return;
            case 12:
                Z(fieldNumber, metadata, map);
                return;
            default:
                throw new IllegalArgumentException("does not support key type: " + ((Object) metadata.f68861a));
        }
    }

    public final <V> void Z(int fieldNumber, R0.b<String, V> metadata, Map<String, V> map) throws IOException {
        int size = map.size();
        String[] strArr = new String[size];
        Iterator<String> it = map.o().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            strArr[i10] = it.next();
            i10++;
        }
        Arrays.sort(strArr);
        for (int i11 = 0; i11 < size; i11++) {
            String str = strArr[i11];
            V v10 = map.get(str);
            this.f68032a.g2(fieldNumber, 2);
            this.f68032a.h2(R0.b(metadata, str, v10));
            R0.l(this.f68032a, metadata, str, v10);
        }
    }

    @Override
    public void a(int fieldNumber, List<Float> value, boolean packed) throws IOException {
        int i10 = 0;
        if (!packed) {
            while (i10 < value.size()) {
                this.f68032a.P(fieldNumber, value.get(i10).floatValue());
                i10++;
            }
            return;
        }
        this.f68032a.g2(fieldNumber, 2);
        int i11 = 0;
        for (int i12 = 0; i12 < value.size(); i12++) {
            i11 += CodedOutputStream.r0(value.get(i12).floatValue());
        }
        this.f68032a.h2(i11);
        while (i10 < value.size()) {
            this.f68032a.E1(value.get(i10).floatValue());
            i10++;
        }
    }

    @Override
    public final void b(int fieldNumber, Object value) throws IOException {
        if (value instanceof AbstractC12724x) {
            this.f68032a.Y1(fieldNumber, (AbstractC12724x) value);
        } else {
            this.f68032a.P1(fieldNumber, (InterfaceC12659b1) value);
        }
    }

    @Override
    public void c(int fieldNumber, int value) throws IOException {
        this.f68032a.c(fieldNumber, value);
    }

    @Override
    @Deprecated
    public void d(int fieldNumber, List<?> value) throws IOException {
        for (int i10 = 0; i10 < value.size(); i10++) {
            O(fieldNumber, value.get(i10));
        }
    }

    @Override
    public void e(int fieldNumber, String value) throws IOException {
        this.f68032a.e(fieldNumber, value);
    }

    @Override
    public void f(int fieldNumber, long value) throws IOException {
        this.f68032a.f(fieldNumber, value);
    }

    @Override
    public void g(int fieldNumber, List<Integer> value, boolean packed) throws IOException {
        int i10 = 0;
        if (!packed) {
            while (i10 < value.size()) {
                this.f68032a.i(fieldNumber, value.get(i10).intValue());
                i10++;
            }
            return;
        }
        this.f68032a.g2(fieldNumber, 2);
        int i11 = 0;
        for (int i12 = 0; i12 < value.size(); i12++) {
            i11 += CodedOutputStream.x0(value.get(i12).intValue());
        }
        this.f68032a.h2(i11);
        while (i10 < value.size()) {
            this.f68032a.J1(value.get(i10).intValue());
            i10++;
        }
    }

    @Override
    public void h(int fieldNumber, AbstractC12724x value) throws IOException {
        this.f68032a.h(fieldNumber, value);
    }

    @Override
    public void i(int fieldNumber, int value) throws IOException {
        this.f68032a.i(fieldNumber, value);
    }

    @Override
    public void j(int fieldNumber, List<Integer> value, boolean packed) throws IOException {
        int i10 = 0;
        if (!packed) {
            while (i10 < value.size()) {
                this.f68032a.c(fieldNumber, value.get(i10).intValue());
                i10++;
            }
            return;
        }
        this.f68032a.g2(fieldNumber, 2);
        int i11 = 0;
        for (int i12 = 0; i12 < value.size(); i12++) {
            i11 += CodedOutputStream.n0(value.get(i12).intValue());
        }
        this.f68032a.h2(i11);
        while (i10 < value.size()) {
            this.f68032a.C1(value.get(i10).intValue());
            i10++;
        }
    }

    @Override
    public void k(int fieldNumber, List<Integer> value, boolean packed) throws IOException {
        int i10 = 0;
        if (!packed) {
            while (i10 < value.size()) {
                this.f68032a.m(fieldNumber, value.get(i10).intValue());
                i10++;
            }
            return;
        }
        this.f68032a.g2(fieldNumber, 2);
        int i11 = 0;
        for (int i12 = 0; i12 < value.size(); i12++) {
            i11 += CodedOutputStream.Z0(value.get(i12).intValue());
        }
        this.f68032a.h2(i11);
        while (i10 < value.size()) {
            this.f68032a.h2(value.get(i10).intValue());
            i10++;
        }
    }

    @Override
    public void l(int fieldNumber, long value) throws IOException {
        this.f68032a.l(fieldNumber, value);
    }

    @Override
    public void m(int fieldNumber, int value) throws IOException {
        this.f68032a.m(fieldNumber, value);
    }

    @Override
    public void n(int fieldNumber, List<Long> value, boolean packed) throws IOException {
        int i10 = 0;
        if (!packed) {
            while (i10 < value.size()) {
                this.f68032a.f(fieldNumber, value.get(i10).longValue());
                i10++;
            }
            return;
        }
        this.f68032a.g2(fieldNumber, 2);
        int i11 = 0;
        for (int i12 = 0; i12 < value.size(); i12++) {
            i11 += CodedOutputStream.b1(value.get(i12).longValue());
        }
        this.f68032a.h2(i11);
        while (i10 < value.size()) {
            this.f68032a.i2(value.get(i10).longValue());
            i10++;
        }
    }

    @Override
    public void o(int fieldNumber, long value) throws IOException {
        this.f68032a.o(fieldNumber, value);
    }

    @Override
    public void p(int fieldNumber, List<?> value) throws IOException {
        for (int i10 = 0; i10 < value.size(); i10++) {
            K(fieldNumber, value.get(i10));
        }
    }

    @Override
    public void q(int fieldNumber, boolean value) throws IOException {
        this.f68032a.q(fieldNumber, value);
    }

    @Override
    public void r(int fieldNumber, int value) throws IOException {
        this.f68032a.r(fieldNumber, value);
    }

    @Override
    @Deprecated
    public void s(int fieldNumber) throws IOException {
        this.f68032a.g2(fieldNumber, 3);
    }

    @Override
    public void t(int fieldNumber, List<Long> value, boolean packed) throws IOException {
        int i10 = 0;
        if (!packed) {
            while (i10 < value.size()) {
                this.f68032a.o(fieldNumber, value.get(i10).longValue());
                i10++;
            }
            return;
        }
        this.f68032a.g2(fieldNumber, 2);
        int i11 = 0;
        for (int i12 = 0; i12 < value.size(); i12++) {
            i11 += CodedOutputStream.p0(value.get(i12).longValue());
        }
        this.f68032a.h2(i11);
        while (i10 < value.size()) {
            this.f68032a.D1(value.get(i10).longValue());
            i10++;
        }
    }

    @Override
    public <K, V> void u(int fieldNumber, R0.b<K, V> metadata, Map<K, V> map) throws IOException {
        if (this.f68032a.h1()) {
            Y(fieldNumber, metadata, map);
            return;
        }
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.f68032a.g2(fieldNumber, 2);
            this.f68032a.h2(R0.b(metadata, entry.getKey(), entry.getValue()));
            R0.l(this.f68032a, metadata, entry.getKey(), entry.getValue());
        }
    }

    @Override
    @Deprecated
    public void v(int fieldNumber) throws IOException {
        this.f68032a.g2(fieldNumber, 4);
    }

    @Override
    public void w(int fieldNumber, List<Integer> value, boolean packed) throws IOException {
        int i10 = 0;
        if (!packed) {
            while (i10 < value.size()) {
                this.f68032a.S(fieldNumber, value.get(i10).intValue());
                i10++;
            }
            return;
        }
        this.f68032a.g2(fieldNumber, 2);
        int i11 = 0;
        for (int i12 = 0; i12 < value.size(); i12++) {
            i11 += CodedOutputStream.S0(value.get(i12).intValue());
        }
        this.f68032a.h2(i11);
        while (i10 < value.size()) {
            this.f68032a.d2(value.get(i10).intValue());
            i10++;
        }
    }

    @Override
    public void x(int fieldNumber, List<Double> value, boolean packed) throws IOException {
        int i10 = 0;
        if (!packed) {
            while (i10 < value.size()) {
                this.f68032a.G(fieldNumber, value.get(i10).doubleValue());
                i10++;
            }
            return;
        }
        this.f68032a.g2(fieldNumber, 2);
        int i11 = 0;
        for (int i12 = 0; i12 < value.size(); i12++) {
            i11 += CodedOutputStream.j0(value.get(i12).doubleValue());
        }
        this.f68032a.h2(i11);
        while (i10 < value.size()) {
            this.f68032a.A1(value.get(i10).doubleValue());
            i10++;
        }
    }

    @Override
    public void y(int fieldNumber, List<AbstractC12724x> value) throws IOException {
        for (int i10 = 0; i10 < value.size(); i10++) {
            this.f68032a.h(fieldNumber, value.get(i10));
        }
    }

    @Override
    public void z(int fieldNumber, List<?> value, L1 schema) throws IOException {
        for (int i10 = 0; i10 < value.size(); i10++) {
            I(fieldNumber, value.get(i10), schema);
        }
    }
}
