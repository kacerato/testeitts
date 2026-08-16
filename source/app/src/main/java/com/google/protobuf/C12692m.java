package com.google.protobuf;

import com.google.protobuf.A2;
import com.google.protobuf.AbstractC12719v0;
import com.google.protobuf.D0;
import java.io.IOException;

@B
public final class C12692m {

    public static class a {

        public static final int[] f69353a;

        static {
            int[] iArr = new int[A2.b.values().length];
            f69353a = iArr;
            try {
                iArr[A2.b.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f69353a[A2.b.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f69353a[A2.b.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f69353a[A2.b.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f69353a[A2.b.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f69353a[A2.b.UINT32.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f69353a[A2.b.FIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f69353a[A2.b.SFIXED64.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f69353a[A2.b.FIXED32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f69353a[A2.b.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f69353a[A2.b.BOOL.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f69353a[A2.b.SINT32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f69353a[A2.b.SINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f69353a[A2.b.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f69353a[A2.b.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f69353a[A2.b.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f69353a[A2.b.GROUP.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f69353a[A2.b.MESSAGE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    public static int A(int tag, byte[] data, int position, int limit, D0.k<?> list, b registers) {
        C0 c02 = (C0) list;
        int I10 = I(data, position, registers);
        c02.Cc(C.c(registers.f69354a));
        while (I10 < limit) {
            int I11 = I(data, I10, registers);
            if (tag != registers.f69354a) {
                break;
            }
            I10 = I(data, I11, registers);
            c02.Cc(C.c(registers.f69354a));
        }
        return I10;
    }

    public static int B(int tag, byte[] data, int position, int limit, D0.k<?> list, b registers) {
        O0 o02 = (O0) list;
        int L10 = L(data, position, registers);
        o02.x7(C.d(registers.f69355b));
        while (L10 < limit) {
            int I10 = I(data, L10, registers);
            if (tag != registers.f69354a) {
                break;
            }
            L10 = L(data, I10, registers);
            o02.x7(C.d(registers.f69355b));
        }
        return L10;
    }

    public static int C(byte[] data, int position, b registers) throws InvalidProtocolBufferException {
        int I10 = I(data, position, registers);
        int i10 = registers.f69354a;
        if (i10 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i10 == 0) {
            registers.f69356c = "";
            return I10;
        }
        registers.f69356c = new String(data, I10, i10, D0.f67922b);
        return I10 + i10;
    }

    public static int D(int tag, byte[] data, int position, int limit, D0.k<?> list, b registers) throws InvalidProtocolBufferException {
        int I10 = I(data, position, registers);
        int i10 = registers.f69354a;
        if (i10 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i10 == 0) {
            list.add("");
        } else {
            list.add(new String(data, I10, i10, D0.f67922b));
            I10 += i10;
        }
        while (I10 < limit) {
            int I11 = I(data, I10, registers);
            if (tag != registers.f69354a) {
                break;
            }
            I10 = I(data, I11, registers);
            int i11 = registers.f69354a;
            if (i11 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            if (i11 == 0) {
                list.add("");
            } else {
                list.add(new String(data, I10, i11, D0.f67922b));
                I10 += i11;
            }
        }
        return I10;
    }

    public static int E(int tag, byte[] data, int position, int limit, D0.k<?> list, b registers) throws InvalidProtocolBufferException {
        int I10 = I(data, position, registers);
        int i10 = registers.f69354a;
        if (i10 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i10 == 0) {
            list.add("");
        } else {
            int i11 = I10 + i10;
            if (!Utf8.u(data, I10, i11)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            list.add(new String(data, I10, i10, D0.f67922b));
            I10 = i11;
        }
        while (I10 < limit) {
            int I11 = I(data, I10, registers);
            if (tag != registers.f69354a) {
                break;
            }
            I10 = I(data, I11, registers);
            int i12 = registers.f69354a;
            if (i12 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            if (i12 == 0) {
                list.add("");
            } else {
                int i13 = I10 + i12;
                if (!Utf8.u(data, I10, i13)) {
                    throw InvalidProtocolBufferException.invalidUtf8();
                }
                list.add(new String(data, I10, i12, D0.f67922b));
                I10 = i13;
            }
        }
        return I10;
    }

    public static int F(byte[] data, int position, b registers) throws InvalidProtocolBufferException {
        int I10 = I(data, position, registers);
        int i10 = registers.f69354a;
        if (i10 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i10 == 0) {
            registers.f69356c = "";
            return I10;
        }
        registers.f69356c = Utf8.h(data, I10, i10);
        return I10 + i10;
    }

    public static int G(int tag, byte[] data, int position, int limit, s2 unknownFields, b registers) throws InvalidProtocolBufferException {
        if (A2.a(tag) == 0) {
            throw InvalidProtocolBufferException.invalidTag();
        }
        int b10 = A2.b(tag);
        if (b10 == 0) {
            int L10 = L(data, position, registers);
            unknownFields.r(tag, Long.valueOf(registers.f69355b));
            return L10;
        }
        if (b10 == 1) {
            unknownFields.r(tag, Long.valueOf(j(data, position)));
            return position + 8;
        }
        if (b10 == 2) {
            int I10 = I(data, position, registers);
            int i10 = registers.f69354a;
            if (i10 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            if (i10 > data.length - I10) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (i10 == 0) {
                unknownFields.r(tag, AbstractC12724x.f69696g);
            } else {
                unknownFields.r(tag, AbstractC12724x.v(data, I10, i10));
            }
            return I10 + i10;
        }
        if (b10 != 3) {
            if (b10 != 5) {
                throw InvalidProtocolBufferException.invalidTag();
            }
            unknownFields.r(tag, Integer.valueOf(h(data, position)));
            return position + 4;
        }
        s2 o10 = s2.o();
        int i11 = (tag & (-8)) | 4;
        int i12 = 0;
        while (true) {
            if (position >= limit) {
                break;
            }
            int I11 = I(data, position, registers);
            int i13 = registers.f69354a;
            if (i13 == i11) {
                i12 = i13;
                position = I11;
                break;
            }
            i12 = i13;
            position = G(i13, data, I11, limit, o10, registers);
        }
        if (position > limit || i12 != i11) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        unknownFields.r(tag, o10);
        return position;
    }

    public static int H(int firstByte, byte[] data, int position, b registers) {
        int i10 = firstByte & 127;
        int i11 = position + 1;
        byte b10 = data[position];
        if (b10 >= 0) {
            registers.f69354a = i10 | (b10 << 7);
            return i11;
        }
        int i12 = i10 | ((b10 & Byte.MAX_VALUE) << 7);
        int i13 = position + 2;
        byte b11 = data[i11];
        if (b11 >= 0) {
            registers.f69354a = i12 | (b11 << 14);
            return i13;
        }
        int i14 = i12 | ((b11 & Byte.MAX_VALUE) << 14);
        int i15 = position + 3;
        byte b12 = data[i13];
        if (b12 >= 0) {
            registers.f69354a = i14 | (b12 << 21);
            return i15;
        }
        int i16 = i14 | ((b12 & Byte.MAX_VALUE) << 21);
        int i17 = position + 4;
        byte b13 = data[i15];
        if (b13 >= 0) {
            registers.f69354a = i16 | (b13 << 28);
            return i17;
        }
        int i18 = i16 | ((b13 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i19 = i17 + 1;
            if (data[i17] >= 0) {
                registers.f69354a = i18;
                return i19;
            }
            i17 = i19;
        }
    }

    public static int I(byte[] data, int position, b registers) {
        int i10 = position + 1;
        byte b10 = data[position];
        if (b10 < 0) {
            return H(b10, data, i10, registers);
        }
        registers.f69354a = b10;
        return i10;
    }

    public static int J(int tag, byte[] data, int position, int limit, D0.k<?> list, b registers) {
        C0 c02 = (C0) list;
        int I10 = I(data, position, registers);
        c02.Cc(registers.f69354a);
        while (I10 < limit) {
            int I11 = I(data, I10, registers);
            if (tag != registers.f69354a) {
                break;
            }
            I10 = I(data, I11, registers);
            c02.Cc(registers.f69354a);
        }
        return I10;
    }

    public static int K(long firstByte, byte[] data, int position, b registers) {
        int i10 = position + 1;
        byte b10 = data[position];
        long j10 = (firstByte & 127) | ((b10 & Byte.MAX_VALUE) << 7);
        int i11 = 7;
        while (b10 < 0) {
            int i12 = i10 + 1;
            byte b11 = data[i10];
            i11 += 7;
            j10 |= (b11 & Byte.MAX_VALUE) << i11;
            i10 = i12;
            b10 = b11;
        }
        registers.f69355b = j10;
        return i10;
    }

    public static int L(byte[] data, int position, b registers) {
        int i10 = position + 1;
        long j10 = data[position];
        if (j10 < 0) {
            return K(j10, data, i10, registers);
        }
        registers.f69355b = j10;
        return i10;
    }

    public static int M(int tag, byte[] data, int position, int limit, D0.k<?> list, b registers) {
        O0 o02 = (O0) list;
        int L10 = L(data, position, registers);
        o02.x7(registers.f69355b);
        while (L10 < limit) {
            int I10 = I(data, L10, registers);
            if (tag != registers.f69354a) {
                break;
            }
            L10 = L(data, I10, registers);
            o02.x7(registers.f69355b);
        }
        return L10;
    }

    public static int N(Object msg, L1 schema, byte[] data, int position, int limit, int endGroup, b registers) throws IOException {
        int a02 = ((C12676g1) schema).a0(msg, data, position, limit, endGroup, registers);
        registers.f69356c = msg;
        return a02;
    }

    public static int O(Object msg, L1 schema, byte[] data, int position, int limit, b registers) throws IOException {
        int i10 = position + 1;
        int i11 = data[position];
        if (i11 < 0) {
            i10 = H(i11, data, i10, registers);
            i11 = registers.f69354a;
        }
        int i12 = i10;
        if (i11 < 0 || i11 > limit - i12) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        int i13 = i11 + i12;
        schema.L1(msg, data, i12, i13, registers);
        registers.f69356c = msg;
        return i13;
    }

    public static int P(int tag, byte[] data, int position, int limit, b registers) throws InvalidProtocolBufferException {
        if (A2.a(tag) == 0) {
            throw InvalidProtocolBufferException.invalidTag();
        }
        int b10 = A2.b(tag);
        if (b10 == 0) {
            return L(data, position, registers);
        }
        if (b10 == 1) {
            return position + 8;
        }
        if (b10 == 2) {
            return I(data, position, registers) + registers.f69354a;
        }
        if (b10 != 3) {
            if (b10 == 5) {
                return position + 4;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }
        int i10 = (tag & (-8)) | 4;
        int i11 = 0;
        while (position < limit) {
            position = I(data, position, registers);
            i11 = registers.f69354a;
            if (i11 == i10) {
                break;
            }
            position = P(i11, data, position, limit, registers);
        }
        if (position > limit || i11 != i10) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        return position;
    }

    public static int a(int tag, byte[] data, int position, int limit, D0.k<?> list, b registers) {
        C12712t c12712t = (C12712t) list;
        int L10 = L(data, position, registers);
        c12712t.l4(registers.f69355b != 0);
        while (L10 < limit) {
            int I10 = I(data, L10, registers);
            if (tag != registers.f69354a) {
                break;
            }
            L10 = L(data, I10, registers);
            c12712t.l4(registers.f69355b != 0);
        }
        return L10;
    }

    public static int b(byte[] data, int position, b registers) throws InvalidProtocolBufferException {
        int I10 = I(data, position, registers);
        int i10 = registers.f69354a;
        if (i10 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i10 > data.length - I10) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        if (i10 == 0) {
            registers.f69356c = AbstractC12724x.f69696g;
            return I10;
        }
        registers.f69356c = AbstractC12724x.v(data, I10, i10);
        return I10 + i10;
    }

    public static int c(int tag, byte[] data, int position, int limit, D0.k<?> list, b registers) throws InvalidProtocolBufferException {
        int I10 = I(data, position, registers);
        int i10 = registers.f69354a;
        if (i10 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i10 > data.length - I10) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        if (i10 == 0) {
            list.add(AbstractC12724x.f69696g);
        } else {
            list.add(AbstractC12724x.v(data, I10, i10));
            I10 += i10;
        }
        while (I10 < limit) {
            int I11 = I(data, I10, registers);
            if (tag != registers.f69354a) {
                break;
            }
            I10 = I(data, I11, registers);
            int i11 = registers.f69354a;
            if (i11 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            if (i11 > data.length - I10) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (i11 == 0) {
                list.add(AbstractC12724x.f69696g);
            } else {
                list.add(AbstractC12724x.v(data, I10, i11));
                I10 += i11;
            }
        }
        return I10;
    }

    public static double d(byte[] data, int position) {
        return Double.longBitsToDouble(j(data, position));
    }

    public static int e(int tag, byte[] data, int position, int limit, D0.k<?> list, b registers) {
        J j10 = (J) list;
        j10.G7(d(data, position));
        int i10 = position + 8;
        while (i10 < limit) {
            int I10 = I(data, i10, registers);
            if (tag != registers.f69354a) {
                break;
            }
            j10.G7(d(data, I10));
            i10 = I10 + 8;
        }
        return i10;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:44:0x0122. Please report as an issue. */
    public static int f(int tag, byte[] data, int position, int limit, AbstractC12719v0.e<?, ?> message, AbstractC12719v0.h<?, ?> extension, q2<s2, s2> unknownFieldSchema, b registers) throws IOException {
        C12699o0<AbstractC12719v0.g> c12699o0 = message.f69600i;
        int i10 = tag >>> 3;
        if (extension.f69613d.Z1() && extension.f69613d.i2()) {
            switch (a.f69353a[extension.b().ordinal()]) {
                case 1:
                    J j10 = new J();
                    int s10 = s(data, position, j10, registers);
                    c12699o0.P(extension.f69613d, j10);
                    return s10;
                case 2:
                    C12705q0 c12705q0 = new C12705q0();
                    int v10 = v(data, position, c12705q0, registers);
                    c12699o0.P(extension.f69613d, c12705q0);
                    return v10;
                case 3:
                case 4:
                    O0 o02 = new O0();
                    int z10 = z(data, position, o02, registers);
                    c12699o0.P(extension.f69613d, o02);
                    return z10;
                case 5:
                case 6:
                    C0 c02 = new C0();
                    int y10 = y(data, position, c02, registers);
                    c12699o0.P(extension.f69613d, c02);
                    return y10;
                case 7:
                case 8:
                    O0 o03 = new O0();
                    int u10 = u(data, position, o03, registers);
                    c12699o0.P(extension.f69613d, o03);
                    return u10;
                case 9:
                case 10:
                    C0 c03 = new C0();
                    int t10 = t(data, position, c03, registers);
                    c12699o0.P(extension.f69613d, c03);
                    return t10;
                case 11:
                    C12712t c12712t = new C12712t();
                    int r10 = r(data, position, c12712t, registers);
                    c12699o0.P(extension.f69613d, c12712t);
                    return r10;
                case 12:
                    C0 c04 = new C0();
                    int w10 = w(data, position, c04, registers);
                    c12699o0.P(extension.f69613d, c04);
                    return w10;
                case 13:
                    O0 o04 = new O0();
                    int x10 = x(data, position, o04, registers);
                    c12699o0.P(extension.f69613d, o04);
                    return x10;
                case 14:
                    C0 c05 = new C0();
                    int y11 = y(data, position, c05, registers);
                    N1.B(message, i10, c05, extension.f69613d.W1(), null, unknownFieldSchema);
                    c12699o0.P(extension.f69613d, c05);
                    return y11;
                default:
                    throw new IllegalStateException("Type cannot be packed: " + ((Object) extension.f69613d.U1()));
            }
        }
        Object obj = null;
        if (extension.b() == A2.b.ENUM) {
            position = I(data, position, registers);
            if (extension.f69613d.W1().findValueByNumber(registers.f69354a) == null) {
                N1.Q(message, i10, registers.f69354a, null, unknownFieldSchema);
                return position;
            }
            obj = Integer.valueOf(registers.f69354a);
        } else {
            switch (a.f69353a[extension.b().ordinal()]) {
                case 1:
                    obj = Double.valueOf(d(data, position));
                    position += 8;
                    break;
                case 2:
                    obj = Float.valueOf(l(data, position));
                    position += 4;
                    break;
                case 3:
                case 4:
                    position = L(data, position, registers);
                    obj = Long.valueOf(registers.f69355b);
                    break;
                case 5:
                case 6:
                    position = I(data, position, registers);
                    obj = Integer.valueOf(registers.f69354a);
                    break;
                case 7:
                case 8:
                    obj = Long.valueOf(j(data, position));
                    position += 8;
                    break;
                case 9:
                case 10:
                    obj = Integer.valueOf(h(data, position));
                    position += 4;
                    break;
                case 11:
                    position = L(data, position, registers);
                    obj = Boolean.valueOf(registers.f69355b != 0);
                    break;
                case 12:
                    position = I(data, position, registers);
                    obj = Integer.valueOf(C.c(registers.f69354a));
                    break;
                case 13:
                    position = L(data, position, registers);
                    obj = Long.valueOf(C.d(registers.f69355b));
                    break;
                case 14:
                    throw new IllegalStateException("Shouldn't reach here.");
                case 15:
                    position = b(data, position, registers);
                    obj = registers.f69356c;
                    break;
                case 16:
                    position = C(data, position, registers);
                    obj = registers.f69356c;
                    break;
                case 17:
                    int i11 = (i10 << 3) | 4;
                    L1 i12 = C12732z1.a().i(extension.c().getClass());
                    if (extension.f()) {
                        int n10 = n(i12, data, position, limit, i11, registers);
                        c12699o0.h(extension.f69613d, registers.f69356c);
                        return n10;
                    }
                    Object u11 = c12699o0.u(extension.f69613d);
                    if (u11 == null) {
                        u11 = i12.a();
                        c12699o0.P(extension.f69613d, u11);
                    }
                    return N(u11, i12, data, position, limit, i11, registers);
                case 18:
                    L1 i13 = C12732z1.a().i(extension.c().getClass());
                    if (extension.f()) {
                        int p10 = p(i13, data, position, limit, registers);
                        c12699o0.h(extension.f69613d, registers.f69356c);
                        return p10;
                    }
                    Object u12 = c12699o0.u(extension.f69613d);
                    if (u12 == null) {
                        u12 = i13.a();
                        c12699o0.P(extension.f69613d, u12);
                    }
                    return O(u12, i13, data, position, limit, registers);
            }
        }
        if (extension.f()) {
            c12699o0.h(extension.f69613d, obj);
        } else {
            c12699o0.P(extension.f69613d, obj);
        }
        return position;
    }

    public static int g(int tag, byte[] data, int position, int limit, Object message, InterfaceC12659b1 defaultInstance, q2<s2, s2> unknownFieldSchema, b registers) throws IOException {
        AbstractC12719v0.h c10 = registers.f69357d.c(defaultInstance, tag >>> 3);
        if (c10 == null) {
            return G(tag, data, position, limit, C12676g1.p(message), registers);
        }
        AbstractC12719v0.e eVar = (AbstractC12719v0.e) message;
        eVar.n7();
        return f(tag, data, position, limit, eVar, c10, unknownFieldSchema, registers);
    }

    public static int h(byte[] data, int position) {
        return ((data[position + 3] & 255) << 24) | (data[position] & 255) | ((data[position + 1] & 255) << 8) | ((data[position + 2] & 255) << 16);
    }

    public static int i(int tag, byte[] data, int position, int limit, D0.k<?> list, b registers) {
        C0 c02 = (C0) list;
        c02.Cc(h(data, position));
        int i10 = position + 4;
        while (i10 < limit) {
            int I10 = I(data, i10, registers);
            if (tag != registers.f69354a) {
                break;
            }
            c02.Cc(h(data, I10));
            i10 = I10 + 4;
        }
        return i10;
    }

    public static long j(byte[] data, int position) {
        return ((data[position + 7] & 255) << 56) | (data[position] & 255) | ((data[position + 1] & 255) << 8) | ((data[position + 2] & 255) << 16) | ((data[position + 3] & 255) << 24) | ((data[position + 4] & 255) << 32) | ((data[position + 5] & 255) << 40) | ((data[position + 6] & 255) << 48);
    }

    public static int k(int tag, byte[] data, int position, int limit, D0.k<?> list, b registers) {
        O0 o02 = (O0) list;
        o02.x7(j(data, position));
        int i10 = position + 8;
        while (i10 < limit) {
            int I10 = I(data, i10, registers);
            if (tag != registers.f69354a) {
                break;
            }
            o02.x7(j(data, I10));
            i10 = I10 + 8;
        }
        return i10;
    }

    public static float l(byte[] data, int position) {
        return Float.intBitsToFloat(h(data, position));
    }

    public static int m(int tag, byte[] data, int position, int limit, D0.k<?> list, b registers) {
        C12705q0 c12705q0 = (C12705q0) list;
        c12705q0.k9(l(data, position));
        int i10 = position + 4;
        while (i10 < limit) {
            int I10 = I(data, i10, registers);
            if (tag != registers.f69354a) {
                break;
            }
            c12705q0.k9(l(data, I10));
            i10 = I10 + 4;
        }
        return i10;
    }

    public static int n(L1 schema, byte[] data, int position, int limit, int endGroup, b registers) throws IOException {
        Object a10 = schema.a();
        int N10 = N(a10, schema, data, position, limit, endGroup, registers);
        schema.M1(a10);
        registers.f69356c = a10;
        return N10;
    }

    public static int o(L1 schema, int tag, byte[] data, int position, int limit, D0.k<?> list, b registers) throws IOException {
        int i10 = (tag & (-8)) | 4;
        int n10 = n(schema, data, position, limit, i10, registers);
        list.add(registers.f69356c);
        while (n10 < limit) {
            int I10 = I(data, n10, registers);
            if (tag != registers.f69354a) {
                break;
            }
            n10 = n(schema, data, I10, limit, i10, registers);
            list.add(registers.f69356c);
        }
        return n10;
    }

    public static int p(L1 schema, byte[] data, int position, int limit, b registers) throws IOException {
        Object a10 = schema.a();
        int O10 = O(a10, schema, data, position, limit, registers);
        schema.M1(a10);
        registers.f69356c = a10;
        return O10;
    }

    public static int q(L1<?> schema, int tag, byte[] data, int position, int limit, D0.k<?> list, b registers) throws IOException {
        int p10 = p(schema, data, position, limit, registers);
        list.add(registers.f69356c);
        while (p10 < limit) {
            int I10 = I(data, p10, registers);
            if (tag != registers.f69354a) {
                break;
            }
            p10 = p(schema, data, I10, limit, registers);
            list.add(registers.f69356c);
        }
        return p10;
    }

    public static int r(byte[] data, int position, D0.k<?> list, b registers) throws IOException {
        C12712t c12712t = (C12712t) list;
        int I10 = I(data, position, registers);
        int i10 = registers.f69354a + I10;
        while (I10 < i10) {
            I10 = L(data, I10, registers);
            c12712t.l4(registers.f69355b != 0);
        }
        if (I10 == i10) {
            return I10;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    public static int s(byte[] data, int position, D0.k<?> list, b registers) throws IOException {
        J j10 = (J) list;
        int I10 = I(data, position, registers);
        int i10 = registers.f69354a + I10;
        while (I10 < i10) {
            j10.G7(d(data, I10));
            I10 += 8;
        }
        if (I10 == i10) {
            return I10;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    public static int t(byte[] data, int position, D0.k<?> list, b registers) throws IOException {
        C0 c02 = (C0) list;
        int I10 = I(data, position, registers);
        int i10 = registers.f69354a + I10;
        while (I10 < i10) {
            c02.Cc(h(data, I10));
            I10 += 4;
        }
        if (I10 == i10) {
            return I10;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    public static int u(byte[] data, int position, D0.k<?> list, b registers) throws IOException {
        O0 o02 = (O0) list;
        int I10 = I(data, position, registers);
        int i10 = registers.f69354a + I10;
        while (I10 < i10) {
            o02.x7(j(data, I10));
            I10 += 8;
        }
        if (I10 == i10) {
            return I10;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    public static int v(byte[] data, int position, D0.k<?> list, b registers) throws IOException {
        C12705q0 c12705q0 = (C12705q0) list;
        int I10 = I(data, position, registers);
        int i10 = registers.f69354a + I10;
        while (I10 < i10) {
            c12705q0.k9(l(data, I10));
            I10 += 4;
        }
        if (I10 == i10) {
            return I10;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    public static int w(byte[] data, int position, D0.k<?> list, b registers) throws IOException {
        C0 c02 = (C0) list;
        int I10 = I(data, position, registers);
        int i10 = registers.f69354a + I10;
        while (I10 < i10) {
            I10 = I(data, I10, registers);
            c02.Cc(C.c(registers.f69354a));
        }
        if (I10 == i10) {
            return I10;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    public static int x(byte[] data, int position, D0.k<?> list, b registers) throws IOException {
        O0 o02 = (O0) list;
        int I10 = I(data, position, registers);
        int i10 = registers.f69354a + I10;
        while (I10 < i10) {
            I10 = L(data, I10, registers);
            o02.x7(C.d(registers.f69355b));
        }
        if (I10 == i10) {
            return I10;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    public static int y(byte[] data, int position, D0.k<?> list, b registers) throws IOException {
        C0 c02 = (C0) list;
        int I10 = I(data, position, registers);
        int i10 = registers.f69354a + I10;
        while (I10 < i10) {
            I10 = I(data, I10, registers);
            c02.Cc(registers.f69354a);
        }
        if (I10 == i10) {
            return I10;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    public static int z(byte[] data, int position, D0.k<?> list, b registers) throws IOException {
        O0 o02 = (O0) list;
        int I10 = I(data, position, registers);
        int i10 = registers.f69354a + I10;
        while (I10 < i10) {
            I10 = L(data, I10, registers);
            o02.x7(registers.f69355b);
        }
        if (I10 == i10) {
            return I10;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    public static final class b {

        public int f69354a;

        public long f69355b;

        public Object f69356c;

        public final C12666d0 f69357d;

        public b() {
            this.f69357d = C12666d0.d();
        }

        public b(C12666d0 extensionRegistry) {
            extensionRegistry.getClass();
            this.f69357d = extensionRegistry;
        }
    }
}
