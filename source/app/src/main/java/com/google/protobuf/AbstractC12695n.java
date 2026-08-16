package com.google.protobuf;

import com.google.protobuf.A2;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.R0;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;

@B
public abstract class AbstractC12695n implements E1 {

    public static final int f69370c = 3;

    public static final int f69371d = 7;

    public static class a {

        public static final int[] f69372a;

        static {
            int[] iArr = new int[A2.b.values().length];
            f69372a = iArr;
            try {
                iArr[A2.b.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f69372a[A2.b.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f69372a[A2.b.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f69372a[A2.b.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f69372a[A2.b.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f69372a[A2.b.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f69372a[A2.b.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f69372a[A2.b.INT32.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f69372a[A2.b.INT64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f69372a[A2.b.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f69372a[A2.b.SFIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f69372a[A2.b.SFIXED64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f69372a[A2.b.SINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f69372a[A2.b.SINT64.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f69372a[A2.b.STRING.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f69372a[A2.b.UINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f69372a[A2.b.UINT64.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    public static final class b extends AbstractC12695n {

        public final boolean f69373e;

        public final byte[] f69374f;

        public int f69375g;

        public final int f69376h;

        public int f69377i;

        public int f69378j;

        public int f69379k;

        public b(ByteBuffer bytebuf, boolean bufferIsImmutable) {
            super(null);
            this.f69373e = bufferIsImmutable;
            this.f69374f = bytebuf.array();
            int arrayOffset = bytebuf.arrayOffset() + bytebuf.position();
            this.f69375g = arrayOffset;
            this.f69376h = arrayOffset;
            this.f69377i = bytebuf.arrayOffset() + bytebuf.limit();
        }

        @Override
        public void A(List<Integer> target) throws IOException {
            int i10;
            int i11;
            if (!(target instanceof C0)) {
                int b10 = A2.b(this.f69378j);
                if (b10 == 2) {
                    int h02 = h0();
                    r0(h02);
                    int i12 = this.f69375g + h02;
                    while (this.f69375g < i12) {
                        target.add(Integer.valueOf(b0()));
                    }
                    return;
                }
                if (b10 != 5) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                do {
                    target.add(Integer.valueOf(S()));
                    if (W()) {
                        return;
                    } else {
                        i10 = this.f69375g;
                    }
                } while (h0() == this.f69378j);
                this.f69375g = i10;
                return;
            }
            C0 c02 = (C0) target;
            int b11 = A2.b(this.f69378j);
            if (b11 == 2) {
                int h03 = h0();
                r0(h03);
                int i13 = this.f69375g + h03;
                while (this.f69375g < i13) {
                    c02.Cc(b0());
                }
                return;
            }
            if (b11 != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                c02.Cc(S());
                if (W()) {
                    return;
                } else {
                    i11 = this.f69375g;
                }
            } while (h0() == this.f69378j);
            this.f69375g = i11;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        @Deprecated
        public <T> void B(List<T> target, L1<T> schema, C12666d0 extensionRegistry) throws IOException {
            int i10;
            if (A2.b(this.f69378j) != 3) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int i11 = this.f69378j;
            do {
                target.add(Z(schema, extensionRegistry));
                if (W()) {
                    return;
                } else {
                    i10 = this.f69375g;
                }
            } while (h0() == i11);
            this.f69375g = i10;
        }

        @Override
        public boolean C() throws IOException {
            m0(0);
            return h0() != 0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public <T> void D(List<T> target, L1<T> schema, C12666d0 extensionRegistry) throws IOException {
            int i10;
            if (A2.b(this.f69378j) != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int i11 = this.f69378j;
            do {
                target.add(e0(schema, extensionRegistry));
                if (W()) {
                    return;
                } else {
                    i10 = this.f69375g;
                }
            } while (h0() == i11);
            this.f69375g = i10;
        }

        @Override
        public void E(List<Long> target) throws IOException {
            int i10;
            int i11;
            if (!(target instanceof O0)) {
                int b10 = A2.b(this.f69378j);
                if (b10 != 0) {
                    if (b10 != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int h02 = this.f69375g + h0();
                    while (this.f69375g < h02) {
                        target.add(Long.valueOf(i0()));
                    }
                    l0(h02);
                    return;
                }
                do {
                    target.add(Long.valueOf(j()));
                    if (W()) {
                        return;
                    } else {
                        i10 = this.f69375g;
                    }
                } while (h0() == this.f69378j);
                this.f69375g = i10;
                return;
            }
            O0 o02 = (O0) target;
            int b11 = A2.b(this.f69378j);
            if (b11 != 0) {
                if (b11 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int h03 = this.f69375g + h0();
                while (this.f69375g < h03) {
                    o02.x7(i0());
                }
                l0(h03);
                return;
            }
            do {
                o02.x7(j());
                if (W()) {
                    return;
                } else {
                    i11 = this.f69375g;
                }
            } while (h0() == this.f69378j);
            this.f69375g = i11;
        }

        @Override
        public void F(List<Long> target) throws IOException {
            int i10;
            int i11;
            if (!(target instanceof O0)) {
                int b10 = A2.b(this.f69378j);
                if (b10 != 0) {
                    if (b10 != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int h02 = this.f69375g + h0();
                    while (this.f69375g < h02) {
                        target.add(Long.valueOf(i0()));
                    }
                    l0(h02);
                    return;
                }
                do {
                    target.add(Long.valueOf(y()));
                    if (W()) {
                        return;
                    } else {
                        i10 = this.f69375g;
                    }
                } while (h0() == this.f69378j);
                this.f69375g = i10;
                return;
            }
            O0 o02 = (O0) target;
            int b11 = A2.b(this.f69378j);
            if (b11 != 0) {
                if (b11 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int h03 = this.f69375g + h0();
                while (this.f69375g < h03) {
                    o02.x7(i0());
                }
                l0(h03);
                return;
            }
            do {
                o02.x7(y());
                if (W()) {
                    return;
                } else {
                    i11 = this.f69375g;
                }
            } while (h0() == this.f69378j);
            this.f69375g = i11;
        }

        @Override
        public void G(List<Integer> target) throws IOException {
            int i10;
            int i11;
            if (!(target instanceof C0)) {
                int b10 = A2.b(this.f69378j);
                if (b10 != 0) {
                    if (b10 != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int h02 = this.f69375g + h0();
                    while (this.f69375g < h02) {
                        target.add(Integer.valueOf(h0()));
                    }
                    return;
                }
                do {
                    target.add(Integer.valueOf(d()));
                    if (W()) {
                        return;
                    } else {
                        i10 = this.f69375g;
                    }
                } while (h0() == this.f69378j);
                this.f69375g = i10;
                return;
            }
            C0 c02 = (C0) target;
            int b11 = A2.b(this.f69378j);
            if (b11 != 0) {
                if (b11 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int h03 = this.f69375g + h0();
                while (this.f69375g < h03) {
                    c02.Cc(h0());
                }
                return;
            }
            do {
                c02.Cc(d());
                if (W()) {
                    return;
                } else {
                    i11 = this.f69375g;
                }
            } while (h0() == this.f69378j);
            this.f69375g = i11;
        }

        @Override
        @Deprecated
        public <T> T H(Class<T> cls, C12666d0 c12666d0) throws IOException {
            m0(3);
            return (T) Z(C12732z1.a().i(cls), c12666d0);
        }

        @Override
        public void I(List<String> target) throws IOException {
            g0(target, true);
        }

        @Override
        public int J() throws IOException {
            m0(0);
            return h0();
        }

        @Override
        public void K(List<Long> target) throws IOException {
            int i10;
            int i11;
            if (!(target instanceof O0)) {
                int b10 = A2.b(this.f69378j);
                if (b10 != 1) {
                    if (b10 != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int h02 = h0();
                    s0(h02);
                    int i12 = this.f69375g + h02;
                    while (this.f69375g < i12) {
                        target.add(Long.valueOf(d0()));
                    }
                    return;
                }
                do {
                    target.add(Long.valueOf(z()));
                    if (W()) {
                        return;
                    } else {
                        i10 = this.f69375g;
                    }
                } while (h0() == this.f69378j);
                this.f69375g = i10;
                return;
            }
            O0 o02 = (O0) target;
            int b11 = A2.b(this.f69378j);
            if (b11 != 1) {
                if (b11 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int h03 = h0();
                s0(h03);
                int i13 = this.f69375g + h03;
                while (this.f69375g < i13) {
                    o02.x7(d0());
                }
                return;
            }
            do {
                o02.x7(z());
                if (W()) {
                    return;
                } else {
                    i11 = this.f69375g;
                }
            } while (h0() == this.f69378j);
            this.f69375g = i11;
        }

        @Override
        public void L(List<Integer> target) throws IOException {
            int i10;
            int i11;
            if (!(target instanceof C0)) {
                int b10 = A2.b(this.f69378j);
                if (b10 != 0) {
                    if (b10 != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int h02 = this.f69375g + h0();
                    while (this.f69375g < h02) {
                        target.add(Integer.valueOf(h0()));
                    }
                    return;
                }
                do {
                    target.add(Integer.valueOf(c()));
                    if (W()) {
                        return;
                    } else {
                        i10 = this.f69375g;
                    }
                } while (h0() == this.f69378j);
                this.f69375g = i10;
                return;
            }
            C0 c02 = (C0) target;
            int b11 = A2.b(this.f69378j);
            if (b11 != 0) {
                if (b11 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int h03 = this.f69375g + h0();
                while (this.f69375g < h03) {
                    c02.Cc(h0());
                }
                return;
            }
            do {
                c02.Cc(c());
                if (W()) {
                    return;
                } else {
                    i11 = this.f69375g;
                }
            } while (h0() == this.f69378j);
            this.f69375g = i11;
        }

        @Override
        public <T> T M(Class<T> cls, C12666d0 c12666d0) throws IOException {
            m0(2);
            return (T) e0(C12732z1.a().i(cls), c12666d0);
        }

        @Override
        public int N() throws IOException {
            m0(5);
            return a0();
        }

        @Override
        @Deprecated
        public <T> void O(List<T> target, Class<T> targetType, C12666d0 extensionRegistry) throws IOException {
            B(target, C12732z1.a().i(targetType), extensionRegistry);
        }

        @Override
        public long P() throws IOException {
            m0(0);
            return C.d(i0());
        }

        @Override
        public String Q() throws IOException {
            return f0(false);
        }

        @Override
        public <T> T R(L1<T> l12, C12666d0 c12666d0) throws IOException {
            m0(2);
            return (T) e0(l12, c12666d0);
        }

        @Override
        public int S() throws IOException {
            m0(5);
            return a0();
        }

        @Override
        public String T() throws IOException {
            return f0(true);
        }

        @Override
        public int U() {
            return this.f69375g - this.f69376h;
        }

        public final boolean W() {
            return this.f69375g == this.f69377i;
        }

        public final byte X() throws IOException {
            int i10 = this.f69375g;
            if (i10 == this.f69377i) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            byte[] bArr = this.f69374f;
            this.f69375g = i10 + 1;
            return bArr[i10];
        }

        public final Object Y(A2.b fieldType, Class<?> messageType, C12666d0 extensionRegistry) throws IOException {
            switch (a.f69372a[fieldType.ordinal()]) {
                case 1:
                    return Boolean.valueOf(C());
                case 2:
                    return h();
                case 3:
                    return Double.valueOf(readDouble());
                case 4:
                    return Integer.valueOf(d());
                case 5:
                    return Integer.valueOf(N());
                case 6:
                    return Long.valueOf(z());
                case 7:
                    return Float.valueOf(readFloat());
                case 8:
                    return Integer.valueOf(J());
                case 9:
                    return Long.valueOf(y());
                case 10:
                    return M(messageType, extensionRegistry);
                case 11:
                    return Integer.valueOf(S());
                case 12:
                    return Long.valueOf(b());
                case 13:
                    return Integer.valueOf(e());
                case 14:
                    return Long.valueOf(P());
                case 15:
                    return T();
                case 16:
                    return Integer.valueOf(c());
                case 17:
                    return Long.valueOf(j());
                default:
                    throw new RuntimeException("unsupported field type.");
            }
        }

        public final <T> T Z(L1<T> schema, C12666d0 extensionRegistry) throws IOException {
            T a10 = schema.a();
            k(a10, schema, extensionRegistry);
            schema.M1(a10);
            return a10;
        }

        @Override
        public void a(List<Long> target) throws IOException {
            int i10;
            int i11;
            if (!(target instanceof O0)) {
                int b10 = A2.b(this.f69378j);
                if (b10 != 0) {
                    if (b10 != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int h02 = this.f69375g + h0();
                    while (this.f69375g < h02) {
                        target.add(Long.valueOf(C.d(i0())));
                    }
                    return;
                }
                do {
                    target.add(Long.valueOf(P()));
                    if (W()) {
                        return;
                    } else {
                        i10 = this.f69375g;
                    }
                } while (h0() == this.f69378j);
                this.f69375g = i10;
                return;
            }
            O0 o02 = (O0) target;
            int b11 = A2.b(this.f69378j);
            if (b11 != 0) {
                if (b11 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int h03 = this.f69375g + h0();
                while (this.f69375g < h03) {
                    o02.x7(C.d(i0()));
                }
                return;
            }
            do {
                o02.x7(P());
                if (W()) {
                    return;
                } else {
                    i11 = this.f69375g;
                }
            } while (h0() == this.f69378j);
            this.f69375g = i11;
        }

        public final int a0() throws IOException {
            k0(4);
            return b0();
        }

        @Override
        public long b() throws IOException {
            m0(1);
            return c0();
        }

        public final int b0() {
            int i10 = this.f69375g;
            byte[] bArr = this.f69374f;
            this.f69375g = i10 + 4;
            return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
        }

        @Override
        public int c() throws IOException {
            m0(0);
            return h0();
        }

        public final long c0() throws IOException {
            k0(8);
            return d0();
        }

        @Override
        public int d() throws IOException {
            m0(0);
            return h0();
        }

        public final long d0() {
            int i10 = this.f69375g;
            byte[] bArr = this.f69374f;
            this.f69375g = i10 + 8;
            return ((bArr[i10 + 7] & 255) << 56) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
        }

        @Override
        public int e() throws IOException {
            m0(0);
            return C.c(h0());
        }

        public final <T> T e0(L1<T> schema, C12666d0 extensionRegistry) throws IOException {
            T a10 = schema.a();
            s(a10, schema, extensionRegistry);
            schema.M1(a10);
            return a10;
        }

        @Override
        public void f(List<Boolean> target) throws IOException {
            int i10;
            int i11;
            if (!(target instanceof C12712t)) {
                int b10 = A2.b(this.f69378j);
                if (b10 != 0) {
                    if (b10 != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int h02 = this.f69375g + h0();
                    while (this.f69375g < h02) {
                        target.add(Boolean.valueOf(h0() != 0));
                    }
                    l0(h02);
                    return;
                }
                do {
                    target.add(Boolean.valueOf(C()));
                    if (W()) {
                        return;
                    } else {
                        i10 = this.f69375g;
                    }
                } while (h0() == this.f69378j);
                this.f69375g = i10;
                return;
            }
            C12712t c12712t = (C12712t) target;
            int b11 = A2.b(this.f69378j);
            if (b11 != 0) {
                if (b11 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int h03 = this.f69375g + h0();
                while (this.f69375g < h03) {
                    c12712t.l4(h0() != 0);
                }
                l0(h03);
                return;
            }
            do {
                c12712t.l4(C());
                if (W()) {
                    return;
                } else {
                    i11 = this.f69375g;
                }
            } while (h0() == this.f69378j);
            this.f69375g = i11;
        }

        public String f0(boolean requireUtf8) throws IOException {
            m0(2);
            int h02 = h0();
            if (h02 == 0) {
                return "";
            }
            k0(h02);
            if (requireUtf8) {
                byte[] bArr = this.f69374f;
                int i10 = this.f69375g;
                if (!Utf8.u(bArr, i10, i10 + h02)) {
                    throw InvalidProtocolBufferException.invalidUtf8();
                }
            }
            String str = new String(this.f69374f, this.f69375g, h02, D0.f67922b);
            this.f69375g += h02;
            return str;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public <K, V> void g(Map<K, V> target, R0.b<K, V> metadata, C12666d0 extensionRegistry) throws IOException {
            m0(2);
            int h02 = h0();
            k0(h02);
            int i10 = this.f69377i;
            this.f69377i = this.f69375g + h02;
            try {
                Object obj = metadata.f68862b;
                Object obj2 = metadata.f68864d;
                while (true) {
                    int q10 = q();
                    if (q10 == Integer.MAX_VALUE) {
                        target.put(obj, obj2);
                        return;
                    }
                    if (q10 == 1) {
                        obj = Y(metadata.f68861a, null, null);
                    } else if (q10 != 2) {
                        try {
                            if (!v()) {
                                throw new InvalidProtocolBufferException("Unable to parse map entry.");
                                break;
                            }
                        } catch (InvalidProtocolBufferException.InvalidWireTypeException unused) {
                            if (!v()) {
                                throw new InvalidProtocolBufferException("Unable to parse map entry.");
                            }
                        }
                    } else {
                        obj2 = Y(metadata.f68863c, metadata.f68864d.getClass(), extensionRegistry);
                    }
                }
            } finally {
                this.f69377i = i10;
            }
        }

        public void g0(List<String> target, boolean requireUtf8) throws IOException {
            int i10;
            int i11;
            if (A2.b(this.f69378j) != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            if (!(target instanceof K0) || requireUtf8) {
                do {
                    target.add(f0(requireUtf8));
                    if (W()) {
                        return;
                    } else {
                        i10 = this.f69375g;
                    }
                } while (h0() == this.f69378j);
                this.f69375g = i10;
                return;
            }
            K0 k02 = (K0) target;
            do {
                k02.b3(h());
                if (W()) {
                    return;
                } else {
                    i11 = this.f69375g;
                }
            } while (h0() == this.f69378j);
            this.f69375g = i11;
        }

        @Override
        public int getTag() {
            return this.f69378j;
        }

        @Override
        public AbstractC12724x h() throws IOException {
            m0(2);
            int h02 = h0();
            if (h02 == 0) {
                return AbstractC12724x.f69696g;
            }
            k0(h02);
            AbstractC12724x l02 = this.f69373e ? AbstractC12724x.l0(this.f69374f, this.f69375g, h02) : AbstractC12724x.v(this.f69374f, this.f69375g, h02);
            this.f69375g += h02;
            return l02;
        }

        public final int h0() throws IOException {
            int i10;
            int i11 = this.f69375g;
            int i12 = this.f69377i;
            if (i12 == i11) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            byte[] bArr = this.f69374f;
            int i13 = i11 + 1;
            byte b10 = bArr[i11];
            if (b10 >= 0) {
                this.f69375g = i13;
                return b10;
            }
            if (i12 - i13 < 9) {
                return (int) j0();
            }
            int i14 = i11 + 2;
            int i15 = (bArr[i13] << 7) ^ b10;
            if (i15 < 0) {
                i10 = i15 ^ (-128);
            } else {
                int i16 = i11 + 3;
                int i17 = (bArr[i14] << 14) ^ i15;
                if (i17 >= 0) {
                    i10 = i17 ^ 16256;
                } else {
                    int i18 = i11 + 4;
                    int i19 = i17 ^ (bArr[i16] << 21);
                    if (i19 < 0) {
                        i10 = (-2080896) ^ i19;
                    } else {
                        i16 = i11 + 5;
                        byte b11 = bArr[i18];
                        int i20 = (i19 ^ (b11 << 28)) ^ 266354560;
                        if (b11 < 0) {
                            i18 = i11 + 6;
                            if (bArr[i16] < 0) {
                                i16 = i11 + 7;
                                if (bArr[i18] < 0) {
                                    i18 = i11 + 8;
                                    if (bArr[i16] < 0) {
                                        i16 = i11 + 9;
                                        if (bArr[i18] < 0) {
                                            int i21 = i11 + 10;
                                            if (bArr[i16] < 0) {
                                                throw InvalidProtocolBufferException.malformedVarint();
                                            }
                                            i14 = i21;
                                            i10 = i20;
                                        }
                                    }
                                }
                            }
                            i10 = i20;
                        }
                        i10 = i20;
                    }
                    i14 = i18;
                }
                i14 = i16;
            }
            this.f69375g = i14;
            return i10;
        }

        @Override
        public void i(List<Integer> target) throws IOException {
            int i10;
            int i11;
            if (!(target instanceof C0)) {
                int b10 = A2.b(this.f69378j);
                if (b10 != 0) {
                    if (b10 != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int h02 = this.f69375g + h0();
                    while (this.f69375g < h02) {
                        target.add(Integer.valueOf(C.c(h0())));
                    }
                    return;
                }
                do {
                    target.add(Integer.valueOf(e()));
                    if (W()) {
                        return;
                    } else {
                        i10 = this.f69375g;
                    }
                } while (h0() == this.f69378j);
                this.f69375g = i10;
                return;
            }
            C0 c02 = (C0) target;
            int b11 = A2.b(this.f69378j);
            if (b11 != 0) {
                if (b11 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int h03 = this.f69375g + h0();
                while (this.f69375g < h03) {
                    c02.Cc(C.c(h0()));
                }
                return;
            }
            do {
                c02.Cc(e());
                if (W()) {
                    return;
                } else {
                    i11 = this.f69375g;
                }
            } while (h0() == this.f69378j);
            this.f69375g = i11;
        }

        public long i0() throws IOException {
            long j10;
            long j11;
            long j12;
            int i10 = this.f69375g;
            int i11 = this.f69377i;
            if (i11 == i10) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            byte[] bArr = this.f69374f;
            int i12 = i10 + 1;
            byte b10 = bArr[i10];
            if (b10 >= 0) {
                this.f69375g = i12;
                return b10;
            }
            if (i11 - i12 < 9) {
                return j0();
            }
            int i13 = i10 + 2;
            int i14 = (bArr[i12] << 7) ^ b10;
            if (i14 < 0) {
                j10 = i14 ^ (-128);
            } else {
                int i15 = i10 + 3;
                int i16 = (bArr[i13] << 14) ^ i14;
                if (i16 >= 0) {
                    j10 = i16 ^ 16256;
                    i13 = i15;
                } else {
                    int i17 = i10 + 4;
                    int i18 = i16 ^ (bArr[i15] << 21);
                    if (i18 < 0) {
                        long j13 = (-2080896) ^ i18;
                        i13 = i17;
                        j10 = j13;
                    } else {
                        long j14 = i18;
                        i13 = i10 + 5;
                        long j15 = j14 ^ (bArr[i17] << 28);
                        if (j15 >= 0) {
                            j12 = 266354560;
                        } else {
                            int i19 = i10 + 6;
                            long j16 = j15 ^ (bArr[i13] << 35);
                            if (j16 < 0) {
                                j11 = -34093383808L;
                            } else {
                                i13 = i10 + 7;
                                j15 = j16 ^ (bArr[i19] << 42);
                                if (j15 >= 0) {
                                    j12 = 4363953127296L;
                                } else {
                                    i19 = i10 + 8;
                                    j16 = j15 ^ (bArr[i13] << 49);
                                    if (j16 < 0) {
                                        j11 = -558586000294016L;
                                    } else {
                                        i13 = i10 + 9;
                                        long j17 = (j16 ^ (bArr[i19] << 56)) ^ 71499008037633920L;
                                        if (j17 < 0) {
                                            int i20 = i10 + 10;
                                            if (bArr[i13] < 0) {
                                                throw InvalidProtocolBufferException.malformedVarint();
                                            }
                                            i13 = i20;
                                        }
                                        j10 = j17;
                                    }
                                }
                            }
                            j10 = j16 ^ j11;
                            i13 = i19;
                        }
                        j10 = j15 ^ j12;
                    }
                }
            }
            this.f69375g = i13;
            return j10;
        }

        @Override
        public long j() throws IOException {
            m0(0);
            return i0();
        }

        public final long j0() throws IOException {
            long j10 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                j10 |= (r3 & Byte.MAX_VALUE) << i10;
                if ((X() & 128) == 0) {
                    return j10;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override
        public <T> void k(T target, L1<T> schema, C12666d0 extensionRegistry) throws IOException {
            int i10 = this.f69379k;
            this.f69379k = A2.c(A2.a(this.f69378j), 4);
            try {
                schema.P1(target, this, extensionRegistry);
                if (this.f69378j == this.f69379k) {
                } else {
                    throw InvalidProtocolBufferException.parseFailure();
                }
            } finally {
                this.f69379k = i10;
            }
        }

        public final void k0(int size) throws IOException {
            if (size < 0 || size > this.f69377i - this.f69375g) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override
        @Deprecated
        public <T> T l(L1<T> l12, C12666d0 c12666d0) throws IOException {
            m0(3);
            return (T) Z(l12, c12666d0);
        }

        public final void l0(int expectedPosition) throws IOException {
            if (this.f69375g != expectedPosition) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override
        public <T> void m(List<T> target, Class<T> targetType, C12666d0 extensionRegistry) throws IOException {
            D(target, C12732z1.a().i(targetType), extensionRegistry);
        }

        public final void m0(int requiredWireType) throws IOException {
            if (A2.b(this.f69378j) != requiredWireType) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }

        @Override
        public void n(List<Long> target) throws IOException {
            int i10;
            int i11;
            if (!(target instanceof O0)) {
                int b10 = A2.b(this.f69378j);
                if (b10 != 1) {
                    if (b10 != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int h02 = h0();
                    s0(h02);
                    int i12 = this.f69375g + h02;
                    while (this.f69375g < i12) {
                        target.add(Long.valueOf(d0()));
                    }
                    return;
                }
                do {
                    target.add(Long.valueOf(b()));
                    if (W()) {
                        return;
                    } else {
                        i10 = this.f69375g;
                    }
                } while (h0() == this.f69378j);
                this.f69375g = i10;
                return;
            }
            O0 o02 = (O0) target;
            int b11 = A2.b(this.f69378j);
            if (b11 != 1) {
                if (b11 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int h03 = h0();
                s0(h03);
                int i13 = this.f69375g + h03;
                while (this.f69375g < i13) {
                    o02.x7(d0());
                }
                return;
            }
            do {
                o02.x7(b());
                if (W()) {
                    return;
                } else {
                    i11 = this.f69375g;
                }
            } while (h0() == this.f69378j);
            this.f69375g = i11;
        }

        public final void n0(final int size) throws IOException {
            k0(size);
            this.f69375g += size;
        }

        @Override
        public void o(List<Integer> target) throws IOException {
            int i10;
            int i11;
            if (!(target instanceof C0)) {
                int b10 = A2.b(this.f69378j);
                if (b10 != 0) {
                    if (b10 != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int h02 = this.f69375g + h0();
                    while (this.f69375g < h02) {
                        target.add(Integer.valueOf(h0()));
                    }
                    l0(h02);
                    return;
                }
                do {
                    target.add(Integer.valueOf(J()));
                    if (W()) {
                        return;
                    } else {
                        i10 = this.f69375g;
                    }
                } while (h0() == this.f69378j);
                this.f69375g = i10;
                return;
            }
            C0 c02 = (C0) target;
            int b11 = A2.b(this.f69378j);
            if (b11 != 0) {
                if (b11 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int h03 = this.f69375g + h0();
                while (this.f69375g < h03) {
                    c02.Cc(h0());
                }
                l0(h03);
                return;
            }
            do {
                c02.Cc(J());
                if (W()) {
                    return;
                } else {
                    i11 = this.f69375g;
                }
            } while (h0() == this.f69378j);
            this.f69375g = i11;
        }

        public final void o0() throws IOException {
            int i10 = this.f69379k;
            this.f69379k = A2.c(A2.a(this.f69378j), 4);
            while (q() != Integer.MAX_VALUE && v()) {
            }
            if (this.f69378j != this.f69379k) {
                throw InvalidProtocolBufferException.parseFailure();
            }
            this.f69379k = i10;
        }

        @Override
        public void p(List<Integer> target) throws IOException {
            int i10;
            int i11;
            if (!(target instanceof C0)) {
                int b10 = A2.b(this.f69378j);
                if (b10 == 2) {
                    int h02 = h0();
                    r0(h02);
                    int i12 = this.f69375g + h02;
                    while (this.f69375g < i12) {
                        target.add(Integer.valueOf(b0()));
                    }
                    return;
                }
                if (b10 != 5) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                do {
                    target.add(Integer.valueOf(N()));
                    if (W()) {
                        return;
                    } else {
                        i10 = this.f69375g;
                    }
                } while (h0() == this.f69378j);
                this.f69375g = i10;
                return;
            }
            C0 c02 = (C0) target;
            int b11 = A2.b(this.f69378j);
            if (b11 == 2) {
                int h03 = h0();
                r0(h03);
                int i13 = this.f69375g + h03;
                while (this.f69375g < i13) {
                    c02.Cc(b0());
                }
                return;
            }
            if (b11 != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                c02.Cc(N());
                if (W()) {
                    return;
                } else {
                    i11 = this.f69375g;
                }
            } while (h0() == this.f69378j);
            this.f69375g = i11;
        }

        public final void p0() throws IOException {
            int i10 = this.f69377i;
            int i11 = this.f69375g;
            if (i10 - i11 >= 10) {
                byte[] bArr = this.f69374f;
                int i12 = 0;
                while (i12 < 10) {
                    int i13 = i11 + 1;
                    if (bArr[i11] >= 0) {
                        this.f69375g = i13;
                        return;
                    } else {
                        i12++;
                        i11 = i13;
                    }
                }
            }
            q0();
        }

        @Override
        public int q() throws IOException {
            if (W()) {
                return Integer.MAX_VALUE;
            }
            int h02 = h0();
            this.f69378j = h02;
            if (h02 == this.f69379k) {
                return Integer.MAX_VALUE;
            }
            return A2.a(h02);
        }

        public final void q0() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (X() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override
        public void r(List<String> target) throws IOException {
            g0(target, false);
        }

        public final void r0(int bytes) throws IOException {
            k0(bytes);
            if ((bytes & 3) != 0) {
                throw InvalidProtocolBufferException.parseFailure();
            }
        }

        @Override
        public double readDouble() throws IOException {
            m0(1);
            return Double.longBitsToDouble(c0());
        }

        @Override
        public float readFloat() throws IOException {
            m0(5);
            return Float.intBitsToFloat(a0());
        }

        @Override
        public <T> void s(T target, L1<T> schema, C12666d0 extensionRegistry) throws IOException {
            int h02 = h0();
            k0(h02);
            int i10 = this.f69377i;
            int i11 = this.f69375g + h02;
            this.f69377i = i11;
            try {
                schema.P1(target, this, extensionRegistry);
                if (this.f69375g == i11) {
                } else {
                    throw InvalidProtocolBufferException.parseFailure();
                }
            } finally {
                this.f69377i = i10;
            }
        }

        public final void s0(int bytes) throws IOException {
            k0(bytes);
            if ((bytes & 7) != 0) {
                throw InvalidProtocolBufferException.parseFailure();
            }
        }

        @Override
        public void t(List<Float> target) throws IOException {
            int i10;
            int i11;
            if (!(target instanceof C12705q0)) {
                int b10 = A2.b(this.f69378j);
                if (b10 == 2) {
                    int h02 = h0();
                    r0(h02);
                    int i12 = this.f69375g + h02;
                    while (this.f69375g < i12) {
                        target.add(Float.valueOf(Float.intBitsToFloat(b0())));
                    }
                    return;
                }
                if (b10 != 5) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                do {
                    target.add(Float.valueOf(readFloat()));
                    if (W()) {
                        return;
                    } else {
                        i10 = this.f69375g;
                    }
                } while (h0() == this.f69378j);
                this.f69375g = i10;
                return;
            }
            C12705q0 c12705q0 = (C12705q0) target;
            int b11 = A2.b(this.f69378j);
            if (b11 == 2) {
                int h03 = h0();
                r0(h03);
                int i13 = this.f69375g + h03;
                while (this.f69375g < i13) {
                    c12705q0.k9(Float.intBitsToFloat(b0()));
                }
                return;
            }
            if (b11 != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                c12705q0.k9(readFloat());
                if (W()) {
                    return;
                } else {
                    i11 = this.f69375g;
                }
            } while (h0() == this.f69378j);
            this.f69375g = i11;
        }

        @Override
        public boolean v() throws IOException {
            int i10;
            if (W() || (i10 = this.f69378j) == this.f69379k) {
                return false;
            }
            int b10 = A2.b(i10);
            if (b10 == 0) {
                p0();
                return true;
            }
            if (b10 == 1) {
                n0(8);
                return true;
            }
            if (b10 == 2) {
                n0(h0());
                return true;
            }
            if (b10 == 3) {
                o0();
                return true;
            }
            if (b10 != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            n0(4);
            return true;
        }

        @Override
        public void w(List<AbstractC12724x> target) throws IOException {
            int i10;
            if (A2.b(this.f69378j) != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                target.add(h());
                if (W()) {
                    return;
                } else {
                    i10 = this.f69375g;
                }
            } while (h0() == this.f69378j);
            this.f69375g = i10;
        }

        @Override
        public void x(List<Double> target) throws IOException {
            int i10;
            int i11;
            if (!(target instanceof J)) {
                int b10 = A2.b(this.f69378j);
                if (b10 != 1) {
                    if (b10 != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int h02 = h0();
                    s0(h02);
                    int i12 = this.f69375g + h02;
                    while (this.f69375g < i12) {
                        target.add(Double.valueOf(Double.longBitsToDouble(d0())));
                    }
                    return;
                }
                do {
                    target.add(Double.valueOf(readDouble()));
                    if (W()) {
                        return;
                    } else {
                        i10 = this.f69375g;
                    }
                } while (h0() == this.f69378j);
                this.f69375g = i10;
                return;
            }
            J j10 = (J) target;
            int b11 = A2.b(this.f69378j);
            if (b11 != 1) {
                if (b11 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int h03 = h0();
                s0(h03);
                int i13 = this.f69375g + h03;
                while (this.f69375g < i13) {
                    j10.G7(Double.longBitsToDouble(d0()));
                }
                return;
            }
            do {
                j10.G7(readDouble());
                if (W()) {
                    return;
                } else {
                    i11 = this.f69375g;
                }
            } while (h0() == this.f69378j);
            this.f69375g = i11;
        }

        @Override
        public long y() throws IOException {
            m0(0);
            return i0();
        }

        @Override
        public long z() throws IOException {
            m0(1);
            return c0();
        }
    }

    public AbstractC12695n(a aVar) {
        this();
    }

    public static AbstractC12695n V(ByteBuffer buffer, boolean bufferIsImmutable) {
        if (buffer.hasArray()) {
            return new b(buffer, bufferIsImmutable);
        }
        throw new IllegalArgumentException("Direct buffers not yet supported");
    }

    public abstract int U();

    @Override
    public boolean u() {
        return false;
    }

    public AbstractC12695n() {
    }
}
