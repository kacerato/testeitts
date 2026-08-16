package com.google.protobuf;

import android.util.DisplayMetrics;
import com.google.protobuf.A2;
import com.google.protobuf.C2;
import com.google.protobuf.D0;
import com.google.protobuf.R0;
import com.google.protobuf.Utf8;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import og.ExecutorC14502a;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.luaj.vm2.Lua;

@B
public abstract class AbstractC12698o extends AbstractC12721w implements C2 {

    public static final int f69380e = 4096;

    public static final int f69381f = 1;

    public static final int f69382g = 2;

    public final AbstractC12715u f69383a;

    public final int f69384b;

    public final ArrayDeque<AbstractC12668e> f69385c;

    public int f69386d;

    public static class a {

        public static final int[] f69387a;

        static {
            int[] iArr = new int[A2.b.values().length];
            f69387a = iArr;
            try {
                iArr[A2.b.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f69387a[A2.b.FIXED32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f69387a[A2.b.FIXED64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f69387a[A2.b.INT32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f69387a[A2.b.INT64.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f69387a[A2.b.SFIXED32.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f69387a[A2.b.SFIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f69387a[A2.b.SINT32.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f69387a[A2.b.SINT64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f69387a[A2.b.STRING.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f69387a[A2.b.UINT32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f69387a[A2.b.UINT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f69387a[A2.b.FLOAT.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f69387a[A2.b.DOUBLE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f69387a[A2.b.MESSAGE.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f69387a[A2.b.BYTES.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f69387a[A2.b.ENUM.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    public static final class b extends AbstractC12698o {

        public ByteBuffer f69388h;

        public int f69389i;

        public int f69390j;

        public b(AbstractC12715u alloc, int chunkSize) {
            super(alloc, chunkSize, null);
            Z0();
        }

        private int Y0() {
            return this.f69389i - this.f69390j;
        }

        private int c1() {
            return this.f69390j + 1;
        }

        @Override
        public void A0(long value) {
            int i10 = this.f69390j;
            this.f69390j = i10 - 8;
            this.f69388h.putLong(i10 - 7, value);
        }

        @Override
        public void B(int fieldNumber, Object value, L1 schema) throws IOException {
            R0(fieldNumber, 4);
            schema.J1(value, this);
            R0(fieldNumber, 3);
        }

        @Override
        public void F0(int value) {
            if (value >= 0) {
                W0(value);
            } else {
                X0(value);
            }
        }

        @Override
        public void I(int fieldNumber, Object value, L1 schema) throws IOException {
            int c02 = c0();
            schema.J1(value, this);
            int c03 = c0() - c02;
            r0(10);
            W0(c03);
            R0(fieldNumber, 2);
        }

        @Override
        public void K(int fieldNumber, Object value) throws IOException {
            int c02 = c0();
            C12732z1.a().k(value, this);
            int c03 = c0() - c02;
            r0(10);
            W0(c03);
            R0(fieldNumber, 2);
        }

        @Override
        public void K0(int value) {
            W0(CodedOutputStream.c1(value));
        }

        @Override
        public void N0(long value) {
            X0(CodedOutputStream.d1(value));
        }

        @Override
        @Deprecated
        public void O(int fieldNumber, Object value) throws IOException {
            R0(fieldNumber, 4);
            C12732z1.a().k(value, this);
            R0(fieldNumber, 3);
        }

        @Override
        public void Q0(String in2) {
            int i10;
            int i11;
            int i12;
            char charAt;
            r0(in2.length());
            int length = in2.length() - 1;
            this.f69390j -= length;
            while (length >= 0 && (charAt = in2.charAt(length)) < '\u0080') {
                this.f69388h.put(this.f69390j + length, (byte) charAt);
                length--;
            }
            if (length == -1) {
                this.f69390j--;
                return;
            }
            this.f69390j += length;
            while (length >= 0) {
                char charAt2 = in2.charAt(length);
                if (charAt2 < '\u0080' && (i12 = this.f69390j) >= 0) {
                    ByteBuffer byteBuffer = this.f69388h;
                    this.f69390j = i12 - 1;
                    byteBuffer.put(i12, (byte) charAt2);
                } else if (charAt2 < '\u0800' && (i11 = this.f69390j) > 0) {
                    ByteBuffer byteBuffer2 = this.f69388h;
                    this.f69390j = i11 - 1;
                    byteBuffer2.put(i11, (byte) ((charAt2 & '?') | 128));
                    ByteBuffer byteBuffer3 = this.f69388h;
                    int i13 = this.f69390j;
                    this.f69390j = i13 - 1;
                    byteBuffer3.put(i13, (byte) ((charAt2 >>> 6) | 960));
                } else if ((charAt2 < '\ud800' || '\udfff' < charAt2) && (i10 = this.f69390j) > 1) {
                    ByteBuffer byteBuffer4 = this.f69388h;
                    this.f69390j = i10 - 1;
                    byteBuffer4.put(i10, (byte) ((charAt2 & '?') | 128));
                    ByteBuffer byteBuffer5 = this.f69388h;
                    int i14 = this.f69390j;
                    this.f69390j = i14 - 1;
                    byteBuffer5.put(i14, (byte) (((charAt2 >>> 6) & 63) | 128));
                    ByteBuffer byteBuffer6 = this.f69388h;
                    int i15 = this.f69390j;
                    this.f69390j = i15 - 1;
                    byteBuffer6.put(i15, (byte) ((charAt2 >>> '\f') | DisplayMetrics.DENSITY_XXHIGH));
                } else {
                    if (this.f69390j > 2) {
                        if (length != 0) {
                            char charAt3 = in2.charAt(length - 1);
                            if (Character.isSurrogatePair(charAt3, charAt2)) {
                                length--;
                                int codePoint = Character.toCodePoint(charAt3, charAt2);
                                ByteBuffer byteBuffer7 = this.f69388h;
                                int i16 = this.f69390j;
                                this.f69390j = i16 - 1;
                                byteBuffer7.put(i16, (byte) ((codePoint & 63) | 128));
                                ByteBuffer byteBuffer8 = this.f69388h;
                                int i17 = this.f69390j;
                                this.f69390j = i17 - 1;
                                byteBuffer8.put(i17, (byte) (((codePoint >>> 6) & 63) | 128));
                                ByteBuffer byteBuffer9 = this.f69388h;
                                int i18 = this.f69390j;
                                this.f69390j = i18 - 1;
                                byteBuffer9.put(i18, (byte) (((codePoint >>> 12) & 63) | 128));
                                ByteBuffer byteBuffer10 = this.f69388h;
                                int i19 = this.f69390j;
                                this.f69390j = i19 - 1;
                                byteBuffer10.put(i19, (byte) ((codePoint >>> 18) | 240));
                            }
                        }
                        throw new Utf8.UnpairedSurrogateException(length - 1, length);
                    }
                    r0(length);
                    length++;
                }
                length--;
            }
        }

        @Override
        public void R0(int fieldNumber, int wireType) {
            W0(A2.c(fieldNumber, wireType));
        }

        @Override
        public void S(int fieldNumber, int value) {
            r0(10);
            K0(value);
            R0(fieldNumber, 0);
        }

        @Override
        public void T(byte value) {
            ByteBuffer byteBuffer = this.f69388h;
            int i10 = this.f69390j;
            this.f69390j = i10 - 1;
            byteBuffer.put(i10, value);
        }

        @Override
        public void U(ByteBuffer value) {
            int remaining = value.remaining();
            if (c1() < remaining) {
                a1(remaining);
            }
            int i10 = this.f69390j - remaining;
            this.f69390j = i10;
            F0.e(this.f69388h, i10 + 1);
            this.f69388h.put(value);
        }

        @Override
        public void V(byte[] value, int offset, int length) {
            if (c1() < length) {
                a1(length);
            }
            int i10 = this.f69390j - length;
            this.f69390j = i10;
            F0.e(this.f69388h, i10 + 1);
            this.f69388h.put(value, offset, length);
        }

        @Override
        public void W(ByteBuffer value) {
            int remaining = value.remaining();
            if (c1() < remaining) {
                this.f69386d += remaining;
                this.f69385c.addFirst(AbstractC12668e.j(value));
                Z0();
            } else {
                int i10 = this.f69390j - remaining;
                this.f69390j = i10;
                F0.e(this.f69388h, i10 + 1);
                this.f69388h.put(value);
            }
        }

        @Override
        public void W0(int value) {
            if ((value & (-128)) == 0) {
                f1(value);
                return;
            }
            if ((value & Lua.MASK_Bx) == 0) {
                h1(value);
                return;
            }
            if (((-2097152) & value) == 0) {
                g1(value);
            } else if (((-268435456) & value) == 0) {
                e1(value);
            } else {
                d1(value);
            }
        }

        @Override
        public void X(byte[] value, int offset, int length) {
            if (c1() < length) {
                this.f69386d += length;
                this.f69385c.addFirst(AbstractC12668e.l(value, offset, length));
                Z0();
            } else {
                int i10 = this.f69390j - length;
                this.f69390j = i10;
                F0.e(this.f69388h, i10 + 1);
                this.f69388h.put(value, offset, length);
            }
        }

        @Override
        public void X0(long value) {
            switch (AbstractC12698o.a0(value)) {
                case 1:
                    n1(value);
                    return;
                case 2:
                    s1(value);
                    return;
                case 3:
                    r1(value);
                    return;
                case 4:
                    l1(value);
                    return;
                case 5:
                    k1(value);
                    return;
                case 6:
                    p1(value);
                    return;
                case 7:
                    o1(value);
                    return;
                case 8:
                    i1(value);
                    return;
                case 9:
                    m1(value);
                    return;
                case 10:
                    q1(value);
                    return;
                default:
                    return;
            }
        }

        public final void Z0() {
            b1(f0());
        }

        public final void a1(int capacity) {
            b1(g0(capacity));
        }

        @Override
        public void b0() {
            if (this.f69388h != null) {
                this.f69386d += Y0();
                F0.e(this.f69388h, this.f69390j + 1);
                this.f69388h = null;
                this.f69390j = 0;
                this.f69389i = 0;
            }
        }

        public final void b1(AbstractC12668e allocatedBuffer) {
            if (!allocatedBuffer.d()) {
                throw new RuntimeException("Allocated buffer does not have NIO buffer");
            }
            ByteBuffer f10 = allocatedBuffer.f();
            if (!f10.isDirect()) {
                throw new RuntimeException("Allocator returned non-direct buffer");
            }
            b0();
            this.f69385c.addFirst(allocatedBuffer);
            this.f69388h = f10;
            F0.c(f10, f10.capacity());
            F0.e(this.f69388h, 0);
            this.f69388h.order(ByteOrder.LITTLE_ENDIAN);
            int limit = this.f69388h.limit() - 1;
            this.f69389i = limit;
            this.f69390j = limit;
        }

        @Override
        public void c(int fieldNumber, int value) {
            r0(9);
            x0(value);
            R0(fieldNumber, 5);
        }

        @Override
        public int c0() {
            return this.f69386d + Y0();
        }

        public final void d1(int value) {
            ByteBuffer byteBuffer = this.f69388h;
            int i10 = this.f69390j;
            this.f69390j = i10 - 1;
            byteBuffer.put(i10, (byte) (value >>> 28));
            int i11 = this.f69390j;
            this.f69390j = i11 - 4;
            this.f69388h.putInt(i11 - 3, (value & 127) | 128 | ((((value >>> 21) & 127) | 128) << 24) | ((((value >>> 14) & 127) | 128) << 16) | ((((value >>> 7) & 127) | 128) << 8));
        }

        @Override
        public void e(int fieldNumber, String value) {
            int c02 = c0();
            Q0(value);
            int c03 = c0() - c02;
            r0(10);
            W0(c03);
            R0(fieldNumber, 2);
        }

        public final void e1(int value) {
            int i10 = this.f69390j;
            this.f69390j = i10 - 4;
            this.f69388h.putInt(i10 - 3, (value & 127) | 128 | ((266338304 & value) << 3) | (((2080768 & value) | 2097152) << 2) | (((value & 16256) | 16384) << 1));
        }

        @Override
        public void f(int fieldNumber, long value) {
            r0(15);
            X0(value);
            R0(fieldNumber, 0);
        }

        public final void f1(int value) {
            ByteBuffer byteBuffer = this.f69388h;
            int i10 = this.f69390j;
            this.f69390j = i10 - 1;
            byteBuffer.put(i10, (byte) value);
        }

        public final void g1(int value) {
            int i10 = this.f69390j - 3;
            this.f69390j = i10;
            this.f69388h.putInt(i10, (((value & 127) | 128) << 8) | ((2080768 & value) << 10) | (((value & 16256) | 16384) << 9));
        }

        @Override
        public void h(int fieldNumber, AbstractC12724x value) {
            try {
                value.q0(this);
                r0(10);
                W0(value.size());
                R0(fieldNumber, 2);
            } catch (IOException e10) {
                throw new RuntimeException(e10);
            }
        }

        public final void h1(int value) {
            int i10 = this.f69390j;
            this.f69390j = i10 - 2;
            this.f69388h.putShort(i10 - 1, (short) ((value & 127) | 128 | ((value & 16256) << 1)));
        }

        @Override
        public void i(int fieldNumber, int value) {
            r0(15);
            F0(value);
            R0(fieldNumber, 0);
        }

        public final void i1(long value) {
            int i10 = this.f69390j;
            this.f69390j = i10 - 8;
            this.f69388h.putLong(i10 - 7, (value & 127) | 128 | ((71494644084506624L & value) << 7) | (((558551906910208L & value) | 562949953421312L) << 6) | (((4363686772736L & value) | 4398046511104L) << 5) | (((34091302912L & value) | 34359738368L) << 4) | (((266338304 & value) | TagBits.HasUnresolvedMemberTypes) << 3) | (((2080768 & value) | 2097152) << 2) | (((16256 & value) | 16384) << 1));
        }

        public final void j1(long value) {
            int i10 = this.f69390j;
            this.f69390j = i10 - 8;
            this.f69388h.putLong(i10 - 7, (value & 127) | 128 | (((71494644084506624L & value) | 72057594037927936L) << 7) | (((558551906910208L & value) | 562949953421312L) << 6) | (((4363686772736L & value) | 4398046511104L) << 5) | (((34091302912L & value) | 34359738368L) << 4) | (((266338304 & value) | TagBits.HasUnresolvedMemberTypes) << 3) | (((2080768 & value) | 2097152) << 2) | (((16256 & value) | 16384) << 1));
        }

        public final void k1(long value) {
            int i10 = this.f69390j;
            this.f69390j = i10 - 5;
            this.f69388h.putLong(i10 - 7, (((value & 127) | 128) << 24) | ((34091302912L & value) << 28) | (((266338304 & value) | TagBits.HasUnresolvedMemberTypes) << 27) | (((2080768 & value) | 2097152) << 26) | (((16256 & value) | 16384) << 25));
        }

        @Override
        public void l(int fieldNumber, long value) {
            r0(15);
            N0(value);
            R0(fieldNumber, 0);
        }

        public final void l1(long value) {
            e1((int) value);
        }

        @Override
        public void m(int fieldNumber, int value) {
            r0(10);
            W0(value);
            R0(fieldNumber, 0);
        }

        public final void m1(long value) {
            ByteBuffer byteBuffer = this.f69388h;
            int i10 = this.f69390j;
            this.f69390j = i10 - 1;
            byteBuffer.put(i10, (byte) (value >>> 56));
            j1(value & 72057594037927935L);
        }

        public final void n1(long value) {
            f1((int) value);
        }

        @Override
        public void o(int fieldNumber, long value) {
            r0(13);
            A0(value);
            R0(fieldNumber, 1);
        }

        public final void o1(long value) {
            int i10 = this.f69390j - 7;
            this.f69390j = i10;
            this.f69388h.putLong(i10, (((value & 127) | 128) << 8) | ((558551906910208L & value) << 14) | (((4363686772736L & value) | 4398046511104L) << 13) | (((34091302912L & value) | 34359738368L) << 12) | (((266338304 & value) | TagBits.HasUnresolvedMemberTypes) << 11) | (((2080768 & value) | 2097152) << 10) | (((16256 & value) | 16384) << 9));
        }

        public final void p1(long value) {
            int i10 = this.f69390j;
            this.f69390j = i10 - 6;
            this.f69388h.putLong(i10 - 7, (((value & 127) | 128) << 16) | ((4363686772736L & value) << 21) | (((34091302912L & value) | 34359738368L) << 20) | (((266338304 & value) | TagBits.HasUnresolvedMemberTypes) << 19) | (((2080768 & value) | 2097152) << 18) | (((16256 & value) | 16384) << 17));
        }

        @Override
        public void q(int i10, boolean z10) {
            r0(6);
            T(z10 ? (byte) 1 : (byte) 0);
            R0(i10, 0);
        }

        public final void q1(long value) {
            ByteBuffer byteBuffer = this.f69388h;
            int i10 = this.f69390j;
            this.f69390j = i10 - 1;
            byteBuffer.put(i10, (byte) (value >>> 63));
            ByteBuffer byteBuffer2 = this.f69388h;
            int i11 = this.f69390j;
            this.f69390j = i11 - 1;
            byteBuffer2.put(i11, (byte) (((value >>> 56) & 127) | 128));
            j1(value & 72057594037927935L);
        }

        @Override
        public void r0(int size) {
            if (c1() < size) {
                a1(size);
            }
        }

        public final void r1(long value) {
            g1((int) value);
        }

        @Override
        @Deprecated
        public void s(int fieldNumber) {
            R0(fieldNumber, 3);
        }

        @Override
        public void s0(boolean z10) {
            T(z10 ? (byte) 1 : (byte) 0);
        }

        public final void s1(long value) {
            h1((int) value);
        }

        @Override
        @Deprecated
        public void v(int fieldNumber) {
            R0(fieldNumber, 4);
        }

        @Override
        public void x0(int value) {
            int i10 = this.f69390j;
            this.f69390j = i10 - 4;
            this.f69388h.putInt(i10 - 3, value);
        }
    }

    public static final class c extends AbstractC12698o {

        public AbstractC12668e f69391h;

        public byte[] f69392i;

        public int f69393j;

        public int f69394k;

        public int f69395l;

        public int f69396m;

        public int f69397n;

        public c(AbstractC12715u alloc, int chunkSize) {
            super(alloc, chunkSize, null);
            Z0();
        }

        private void Z0() {
            b1(j0());
        }

        private void a1(int capacity) {
            b1(k0(capacity));
        }

        private void b1(AbstractC12668e allocatedBuffer) {
            if (!allocatedBuffer.c()) {
                throw new RuntimeException("Allocator returned non-heap buffer");
            }
            b0();
            this.f69385c.addFirst(allocatedBuffer);
            this.f69391h = allocatedBuffer;
            this.f69392i = allocatedBuffer.a();
            int b10 = allocatedBuffer.b();
            this.f69394k = allocatedBuffer.e() + b10;
            int g10 = b10 + allocatedBuffer.g();
            this.f69393j = g10;
            this.f69395l = g10 - 1;
            int i10 = this.f69394k - 1;
            this.f69396m = i10;
            this.f69397n = i10;
        }

        private void d1(int value) {
            byte[] bArr = this.f69392i;
            int i10 = this.f69397n;
            int i11 = i10 - 1;
            this.f69397n = i11;
            bArr[i10] = (byte) (value >>> 28);
            int i12 = i10 - 2;
            this.f69397n = i12;
            bArr[i11] = (byte) (((value >>> 21) & 127) | 128);
            int i13 = i10 - 3;
            this.f69397n = i13;
            bArr[i12] = (byte) (((value >>> 14) & 127) | 128);
            int i14 = i10 - 4;
            this.f69397n = i14;
            bArr[i13] = (byte) (((value >>> 7) & 127) | 128);
            this.f69397n = i10 - 5;
            bArr[i14] = (byte) ((value & 127) | 128);
        }

        private void e1(int value) {
            byte[] bArr = this.f69392i;
            int i10 = this.f69397n;
            int i11 = i10 - 1;
            this.f69397n = i11;
            bArr[i10] = (byte) (value >>> 21);
            int i12 = i10 - 2;
            this.f69397n = i12;
            bArr[i11] = (byte) (((value >>> 14) & 127) | 128);
            int i13 = i10 - 3;
            this.f69397n = i13;
            bArr[i12] = (byte) (((value >>> 7) & 127) | 128);
            this.f69397n = i10 - 4;
            bArr[i13] = (byte) ((value & 127) | 128);
        }

        private void f1(int value) {
            byte[] bArr = this.f69392i;
            int i10 = this.f69397n;
            this.f69397n = i10 - 1;
            bArr[i10] = (byte) value;
        }

        private void g1(int value) {
            byte[] bArr = this.f69392i;
            int i10 = this.f69397n;
            int i11 = i10 - 1;
            this.f69397n = i11;
            bArr[i10] = (byte) (value >>> 14);
            int i12 = i10 - 2;
            this.f69397n = i12;
            bArr[i11] = (byte) (((value >>> 7) & 127) | 128);
            this.f69397n = i10 - 3;
            bArr[i12] = (byte) ((value & 127) | 128);
        }

        private void h1(int value) {
            byte[] bArr = this.f69392i;
            int i10 = this.f69397n;
            int i11 = i10 - 1;
            this.f69397n = i11;
            bArr[i10] = (byte) (value >>> 7);
            this.f69397n = i10 - 2;
            bArr[i11] = (byte) ((value & 127) | 128);
        }

        private void i1(long value) {
            byte[] bArr = this.f69392i;
            int i10 = this.f69397n;
            int i11 = i10 - 1;
            this.f69397n = i11;
            bArr[i10] = (byte) (value >>> 49);
            int i12 = i10 - 2;
            this.f69397n = i12;
            bArr[i11] = (byte) (((value >>> 42) & 127) | 128);
            int i13 = i10 - 3;
            this.f69397n = i13;
            bArr[i12] = (byte) (((value >>> 35) & 127) | 128);
            int i14 = i10 - 4;
            this.f69397n = i14;
            bArr[i13] = (byte) (((value >>> 28) & 127) | 128);
            int i15 = i10 - 5;
            this.f69397n = i15;
            bArr[i14] = (byte) (((value >>> 21) & 127) | 128);
            int i16 = i10 - 6;
            this.f69397n = i16;
            bArr[i15] = (byte) (((value >>> 14) & 127) | 128);
            int i17 = i10 - 7;
            this.f69397n = i17;
            bArr[i16] = (byte) (((value >>> 7) & 127) | 128);
            this.f69397n = i10 - 8;
            bArr[i17] = (byte) ((value & 127) | 128);
        }

        private void j1(long value) {
            byte[] bArr = this.f69392i;
            int i10 = this.f69397n;
            int i11 = i10 - 1;
            this.f69397n = i11;
            bArr[i10] = (byte) (value >>> 28);
            int i12 = i10 - 2;
            this.f69397n = i12;
            bArr[i11] = (byte) (((value >>> 21) & 127) | 128);
            int i13 = i10 - 3;
            this.f69397n = i13;
            bArr[i12] = (byte) (((value >>> 14) & 127) | 128);
            int i14 = i10 - 4;
            this.f69397n = i14;
            bArr[i13] = (byte) (((value >>> 7) & 127) | 128);
            this.f69397n = i10 - 5;
            bArr[i14] = (byte) ((value & 127) | 128);
        }

        private void k1(long value) {
            byte[] bArr = this.f69392i;
            int i10 = this.f69397n;
            int i11 = i10 - 1;
            this.f69397n = i11;
            bArr[i10] = (byte) (value >>> 21);
            int i12 = i10 - 2;
            this.f69397n = i12;
            bArr[i11] = (byte) (((value >>> 14) & 127) | 128);
            int i13 = i10 - 3;
            this.f69397n = i13;
            bArr[i12] = (byte) (((value >>> 7) & 127) | 128);
            this.f69397n = i10 - 4;
            bArr[i13] = (byte) ((value & 127) | 128);
        }

        private void l1(long value) {
            byte[] bArr = this.f69392i;
            int i10 = this.f69397n;
            int i11 = i10 - 1;
            this.f69397n = i11;
            bArr[i10] = (byte) (value >>> 56);
            int i12 = i10 - 2;
            this.f69397n = i12;
            bArr[i11] = (byte) (((value >>> 49) & 127) | 128);
            int i13 = i10 - 3;
            this.f69397n = i13;
            bArr[i12] = (byte) (((value >>> 42) & 127) | 128);
            int i14 = i10 - 4;
            this.f69397n = i14;
            bArr[i13] = (byte) (((value >>> 35) & 127) | 128);
            int i15 = i10 - 5;
            this.f69397n = i15;
            bArr[i14] = (byte) (((value >>> 28) & 127) | 128);
            int i16 = i10 - 6;
            this.f69397n = i16;
            bArr[i15] = (byte) (((value >>> 21) & 127) | 128);
            int i17 = i10 - 7;
            this.f69397n = i17;
            bArr[i16] = (byte) (((value >>> 14) & 127) | 128);
            int i18 = i10 - 8;
            this.f69397n = i18;
            bArr[i17] = (byte) (((value >>> 7) & 127) | 128);
            this.f69397n = i10 - 9;
            bArr[i18] = (byte) ((value & 127) | 128);
        }

        private void m1(long value) {
            byte[] bArr = this.f69392i;
            int i10 = this.f69397n;
            this.f69397n = i10 - 1;
            bArr[i10] = (byte) value;
        }

        private void n1(long value) {
            byte[] bArr = this.f69392i;
            int i10 = this.f69397n;
            int i11 = i10 - 1;
            this.f69397n = i11;
            bArr[i10] = (byte) (value >>> 42);
            int i12 = i10 - 2;
            this.f69397n = i12;
            bArr[i11] = (byte) (((value >>> 35) & 127) | 128);
            int i13 = i10 - 3;
            this.f69397n = i13;
            bArr[i12] = (byte) (((value >>> 28) & 127) | 128);
            int i14 = i10 - 4;
            this.f69397n = i14;
            bArr[i13] = (byte) (((value >>> 21) & 127) | 128);
            int i15 = i10 - 5;
            this.f69397n = i15;
            bArr[i14] = (byte) (((value >>> 14) & 127) | 128);
            int i16 = i10 - 6;
            this.f69397n = i16;
            bArr[i15] = (byte) (((value >>> 7) & 127) | 128);
            this.f69397n = i10 - 7;
            bArr[i16] = (byte) ((value & 127) | 128);
        }

        private void o1(long value) {
            byte[] bArr = this.f69392i;
            int i10 = this.f69397n;
            int i11 = i10 - 1;
            this.f69397n = i11;
            bArr[i10] = (byte) (value >>> 35);
            int i12 = i10 - 2;
            this.f69397n = i12;
            bArr[i11] = (byte) (((value >>> 28) & 127) | 128);
            int i13 = i10 - 3;
            this.f69397n = i13;
            bArr[i12] = (byte) (((value >>> 21) & 127) | 128);
            int i14 = i10 - 4;
            this.f69397n = i14;
            bArr[i13] = (byte) (((value >>> 14) & 127) | 128);
            int i15 = i10 - 5;
            this.f69397n = i15;
            bArr[i14] = (byte) (((value >>> 7) & 127) | 128);
            this.f69397n = i10 - 6;
            bArr[i15] = (byte) ((value & 127) | 128);
        }

        private void p1(long value) {
            byte[] bArr = this.f69392i;
            int i10 = this.f69397n;
            int i11 = i10 - 1;
            this.f69397n = i11;
            bArr[i10] = (byte) (value >>> 63);
            int i12 = i10 - 2;
            this.f69397n = i12;
            bArr[i11] = (byte) (((value >>> 56) & 127) | 128);
            int i13 = i10 - 3;
            this.f69397n = i13;
            bArr[i12] = (byte) (((value >>> 49) & 127) | 128);
            int i14 = i10 - 4;
            this.f69397n = i14;
            bArr[i13] = (byte) (((value >>> 42) & 127) | 128);
            int i15 = i10 - 5;
            this.f69397n = i15;
            bArr[i14] = (byte) (((value >>> 35) & 127) | 128);
            int i16 = i10 - 6;
            this.f69397n = i16;
            bArr[i15] = (byte) (((value >>> 28) & 127) | 128);
            int i17 = i10 - 7;
            this.f69397n = i17;
            bArr[i16] = (byte) (((value >>> 21) & 127) | 128);
            int i18 = i10 - 8;
            this.f69397n = i18;
            bArr[i17] = (byte) (((value >>> 14) & 127) | 128);
            int i19 = i10 - 9;
            this.f69397n = i19;
            bArr[i18] = (byte) (((value >>> 7) & 127) | 128);
            this.f69397n = i10 - 10;
            bArr[i19] = (byte) ((value & 127) | 128);
        }

        private void q1(long value) {
            byte[] bArr = this.f69392i;
            int i10 = this.f69397n;
            int i11 = i10 - 1;
            this.f69397n = i11;
            bArr[i10] = (byte) (((int) value) >>> 14);
            int i12 = i10 - 2;
            this.f69397n = i12;
            bArr[i11] = (byte) (((value >>> 7) & 127) | 128);
            this.f69397n = i10 - 3;
            bArr[i12] = (byte) ((value & 127) | 128);
        }

        private void r1(long value) {
            byte[] bArr = this.f69392i;
            int i10 = this.f69397n;
            int i11 = i10 - 1;
            this.f69397n = i11;
            bArr[i10] = (byte) (value >>> 7);
            this.f69397n = i10 - 2;
            bArr[i11] = (byte) ((((int) value) & 127) | 128);
        }

        @Override
        public void A0(long value) {
            byte[] bArr = this.f69392i;
            int i10 = this.f69397n;
            int i11 = i10 - 1;
            this.f69397n = i11;
            bArr[i10] = (byte) (((int) (value >> 56)) & 255);
            int i12 = i10 - 2;
            this.f69397n = i12;
            bArr[i11] = (byte) (((int) (value >> 48)) & 255);
            int i13 = i10 - 3;
            this.f69397n = i13;
            bArr[i12] = (byte) (((int) (value >> 40)) & 255);
            int i14 = i10 - 4;
            this.f69397n = i14;
            bArr[i13] = (byte) (((int) (value >> 32)) & 255);
            int i15 = i10 - 5;
            this.f69397n = i15;
            bArr[i14] = (byte) (((int) (value >> 24)) & 255);
            int i16 = i10 - 6;
            this.f69397n = i16;
            bArr[i15] = (byte) (((int) (value >> 16)) & 255);
            int i17 = i10 - 7;
            this.f69397n = i17;
            bArr[i16] = (byte) (((int) (value >> 8)) & 255);
            this.f69397n = i10 - 8;
            bArr[i17] = (byte) (((int) value) & 255);
        }

        @Override
        public void B(int fieldNumber, Object value, L1 schema) throws IOException {
            R0(fieldNumber, 4);
            schema.J1(value, this);
            R0(fieldNumber, 3);
        }

        @Override
        public void F0(int value) {
            if (value >= 0) {
                W0(value);
            } else {
                X0(value);
            }
        }

        @Override
        public void I(int fieldNumber, Object value, L1 schema) throws IOException {
            int c02 = c0();
            schema.J1(value, this);
            int c03 = c0() - c02;
            r0(10);
            W0(c03);
            R0(fieldNumber, 2);
        }

        @Override
        public void K(int fieldNumber, Object value) throws IOException {
            int c02 = c0();
            C12732z1.a().k(value, this);
            int c03 = c0() - c02;
            r0(10);
            W0(c03);
            R0(fieldNumber, 2);
        }

        @Override
        public void K0(int value) {
            W0(CodedOutputStream.c1(value));
        }

        @Override
        public void N0(long value) {
            X0(CodedOutputStream.d1(value));
        }

        @Override
        @Deprecated
        public void O(int fieldNumber, Object value) throws IOException {
            R0(fieldNumber, 4);
            C12732z1.a().k(value, this);
            R0(fieldNumber, 3);
        }

        @Override
        public void Q0(String in2) {
            int i10;
            int i11;
            int i12;
            char charAt;
            r0(in2.length());
            int length = in2.length() - 1;
            this.f69397n -= length;
            while (length >= 0 && (charAt = in2.charAt(length)) < '\u0080') {
                this.f69392i[this.f69397n + length] = (byte) charAt;
                length--;
            }
            if (length == -1) {
                this.f69397n--;
                return;
            }
            this.f69397n += length;
            while (length >= 0) {
                char charAt2 = in2.charAt(length);
                if (charAt2 < '\u0080' && (i12 = this.f69397n) > this.f69395l) {
                    byte[] bArr = this.f69392i;
                    this.f69397n = i12 - 1;
                    bArr[i12] = (byte) charAt2;
                } else if (charAt2 < '\u0800' && (i11 = this.f69397n) > this.f69393j) {
                    byte[] bArr2 = this.f69392i;
                    int i13 = i11 - 1;
                    this.f69397n = i13;
                    bArr2[i11] = (byte) ((charAt2 & '?') | 128);
                    this.f69397n = i11 - 2;
                    bArr2[i13] = (byte) ((charAt2 >>> 6) | 960);
                } else if ((charAt2 < '\ud800' || '\udfff' < charAt2) && (i10 = this.f69397n) > this.f69393j + 1) {
                    byte[] bArr3 = this.f69392i;
                    int i14 = i10 - 1;
                    this.f69397n = i14;
                    bArr3[i10] = (byte) ((charAt2 & '?') | 128);
                    int i15 = i10 - 2;
                    this.f69397n = i15;
                    bArr3[i14] = (byte) (((charAt2 >>> 6) & 63) | 128);
                    this.f69397n = i10 - 3;
                    bArr3[i15] = (byte) ((charAt2 >>> '\f') | DisplayMetrics.DENSITY_XXHIGH);
                } else {
                    if (this.f69397n > this.f69393j + 2) {
                        if (length != 0) {
                            char charAt3 = in2.charAt(length - 1);
                            if (Character.isSurrogatePair(charAt3, charAt2)) {
                                length--;
                                int codePoint = Character.toCodePoint(charAt3, charAt2);
                                byte[] bArr4 = this.f69392i;
                                int i16 = this.f69397n;
                                int i17 = i16 - 1;
                                this.f69397n = i17;
                                bArr4[i16] = (byte) ((codePoint & 63) | 128);
                                int i18 = i16 - 2;
                                this.f69397n = i18;
                                bArr4[i17] = (byte) (((codePoint >>> 6) & 63) | 128);
                                int i19 = i16 - 3;
                                this.f69397n = i19;
                                bArr4[i18] = (byte) (((codePoint >>> 12) & 63) | 128);
                                this.f69397n = i16 - 4;
                                bArr4[i19] = (byte) ((codePoint >>> 18) | 240);
                            }
                        }
                        throw new Utf8.UnpairedSurrogateException(length - 1, length);
                    }
                    r0(length);
                    length++;
                }
                length--;
            }
        }

        @Override
        public void R0(int fieldNumber, int wireType) {
            W0(A2.c(fieldNumber, wireType));
        }

        @Override
        public void S(int fieldNumber, int value) throws IOException {
            r0(10);
            K0(value);
            R0(fieldNumber, 0);
        }

        @Override
        public void T(byte value) {
            byte[] bArr = this.f69392i;
            int i10 = this.f69397n;
            this.f69397n = i10 - 1;
            bArr[i10] = value;
        }

        @Override
        public void U(ByteBuffer value) {
            int remaining = value.remaining();
            if (c1() < remaining) {
                a1(remaining);
            }
            int i10 = this.f69397n - remaining;
            this.f69397n = i10;
            value.get(this.f69392i, i10 + 1, remaining);
        }

        @Override
        public void V(byte[] value, int offset, int length) {
            if (c1() < length) {
                a1(length);
            }
            int i10 = this.f69397n - length;
            this.f69397n = i10;
            System.arraycopy(value, offset, this.f69392i, i10 + 1, length);
        }

        @Override
        public void W(ByteBuffer value) {
            int remaining = value.remaining();
            if (c1() < remaining) {
                this.f69386d += remaining;
                this.f69385c.addFirst(AbstractC12668e.j(value));
                Z0();
            }
            int i10 = this.f69397n - remaining;
            this.f69397n = i10;
            value.get(this.f69392i, i10 + 1, remaining);
        }

        @Override
        public void W0(int value) {
            if ((value & (-128)) == 0) {
                f1(value);
                return;
            }
            if ((value & Lua.MASK_Bx) == 0) {
                h1(value);
                return;
            }
            if (((-2097152) & value) == 0) {
                g1(value);
            } else if (((-268435456) & value) == 0) {
                e1(value);
            } else {
                d1(value);
            }
        }

        @Override
        public void X(byte[] value, int offset, int length) {
            if (c1() < length) {
                this.f69386d += length;
                this.f69385c.addFirst(AbstractC12668e.l(value, offset, length));
                Z0();
            } else {
                int i10 = this.f69397n - length;
                this.f69397n = i10;
                System.arraycopy(value, offset, this.f69392i, i10 + 1, length);
            }
        }

        @Override
        public void X0(long value) {
            switch (AbstractC12698o.a0(value)) {
                case 1:
                    m1(value);
                    return;
                case 2:
                    r1(value);
                    return;
                case 3:
                    q1(value);
                    return;
                case 4:
                    k1(value);
                    return;
                case 5:
                    j1(value);
                    return;
                case 6:
                    o1(value);
                    return;
                case 7:
                    n1(value);
                    return;
                case 8:
                    i1(value);
                    return;
                case 9:
                    l1(value);
                    return;
                case 10:
                    p1(value);
                    return;
                default:
                    return;
            }
        }

        public int Y0() {
            return this.f69396m - this.f69397n;
        }

        @Override
        public void b0() {
            if (this.f69391h != null) {
                this.f69386d += Y0();
                AbstractC12668e abstractC12668e = this.f69391h;
                abstractC12668e.h((this.f69397n - abstractC12668e.b()) + 1);
                this.f69391h = null;
                this.f69397n = 0;
                this.f69396m = 0;
            }
        }

        @Override
        public void c(int fieldNumber, int value) throws IOException {
            r0(9);
            x0(value);
            R0(fieldNumber, 5);
        }

        @Override
        public int c0() {
            return this.f69386d + Y0();
        }

        public int c1() {
            return this.f69397n - this.f69395l;
        }

        @Override
        public void e(int fieldNumber, String value) throws IOException {
            int c02 = c0();
            Q0(value);
            int c03 = c0() - c02;
            r0(10);
            W0(c03);
            R0(fieldNumber, 2);
        }

        @Override
        public void f(int fieldNumber, long value) throws IOException {
            r0(15);
            X0(value);
            R0(fieldNumber, 0);
        }

        @Override
        public void h(int fieldNumber, AbstractC12724x value) throws IOException {
            try {
                value.q0(this);
                r0(10);
                W0(value.size());
                R0(fieldNumber, 2);
            } catch (IOException e10) {
                throw new RuntimeException(e10);
            }
        }

        @Override
        public void i(int fieldNumber, int value) throws IOException {
            r0(15);
            F0(value);
            R0(fieldNumber, 0);
        }

        @Override
        public void l(int fieldNumber, long value) throws IOException {
            r0(15);
            N0(value);
            R0(fieldNumber, 0);
        }

        @Override
        public void m(int fieldNumber, int value) throws IOException {
            r0(10);
            W0(value);
            R0(fieldNumber, 0);
        }

        @Override
        public void o(int fieldNumber, long value) throws IOException {
            r0(13);
            A0(value);
            R0(fieldNumber, 1);
        }

        @Override
        public void q(int i10, boolean z10) throws IOException {
            r0(6);
            T(z10 ? (byte) 1 : (byte) 0);
            R0(i10, 0);
        }

        @Override
        public void r0(int size) {
            if (c1() < size) {
                a1(size);
            }
        }

        @Override
        public void s(int fieldNumber) {
            R0(fieldNumber, 3);
        }

        @Override
        public void s0(boolean z10) {
            T(z10 ? (byte) 1 : (byte) 0);
        }

        @Override
        public void v(int fieldNumber) {
            R0(fieldNumber, 4);
        }

        @Override
        public void x0(int value) {
            byte[] bArr = this.f69392i;
            int i10 = this.f69397n;
            int i11 = i10 - 1;
            this.f69397n = i11;
            bArr[i10] = (byte) ((value >> 24) & 255);
            int i12 = i10 - 2;
            this.f69397n = i12;
            bArr[i11] = (byte) ((value >> 16) & 255);
            int i13 = i10 - 3;
            this.f69397n = i13;
            bArr[i12] = (byte) ((value >> 8) & 255);
            this.f69397n = i10 - 4;
            bArr[i13] = (byte) (value & 255);
        }
    }

    public static final class d extends AbstractC12698o {

        public ByteBuffer f69398h;

        public long f69399i;

        public long f69400j;

        public long f69401k;

        public d(AbstractC12715u alloc, int chunkSize) {
            super(alloc, chunkSize, null);
            c1();
        }

        public static boolean Y0() {
            return b1();
        }

        private int a1() {
            return (int) (this.f69400j - this.f69401k);
        }

        private static boolean b1() {
            return x2.V();
        }

        private void c1() {
            e1(f0());
        }

        private void d1(int capacity) {
            e1(g0(capacity));
        }

        private void e1(AbstractC12668e allocatedBuffer) {
            if (!allocatedBuffer.d()) {
                throw new RuntimeException("Allocated buffer does not have NIO buffer");
            }
            ByteBuffer f10 = allocatedBuffer.f();
            if (!f10.isDirect()) {
                throw new RuntimeException("Allocator returned non-direct buffer");
            }
            b0();
            this.f69385c.addFirst(allocatedBuffer);
            this.f69398h = f10;
            F0.c(f10, f10.capacity());
            F0.e(this.f69398h, 0);
            long k10 = x2.k(this.f69398h);
            this.f69399i = k10;
            long limit = k10 + (this.f69398h.limit() - 1);
            this.f69400j = limit;
            this.f69401k = limit;
        }

        private int f1() {
            return Z0() + 1;
        }

        private void g1(int value) {
            long j10 = this.f69401k;
            this.f69401k = j10 - 1;
            x2.e0(j10, (byte) (value >>> 28));
            long j11 = this.f69401k;
            this.f69401k = j11 - 1;
            x2.e0(j11, (byte) (((value >>> 21) & 127) | 128));
            long j12 = this.f69401k;
            this.f69401k = j12 - 1;
            x2.e0(j12, (byte) (((value >>> 14) & 127) | 128));
            long j13 = this.f69401k;
            this.f69401k = j13 - 1;
            x2.e0(j13, (byte) (((value >>> 7) & 127) | 128));
            long j14 = this.f69401k;
            this.f69401k = j14 - 1;
            x2.e0(j14, (byte) ((value & 127) | 128));
        }

        private void h1(int value) {
            long j10 = this.f69401k;
            this.f69401k = j10 - 1;
            x2.e0(j10, (byte) (value >>> 21));
            long j11 = this.f69401k;
            this.f69401k = j11 - 1;
            x2.e0(j11, (byte) (((value >>> 14) & 127) | 128));
            long j12 = this.f69401k;
            this.f69401k = j12 - 1;
            x2.e0(j12, (byte) (((value >>> 7) & 127) | 128));
            long j13 = this.f69401k;
            this.f69401k = j13 - 1;
            x2.e0(j13, (byte) ((value & 127) | 128));
        }

        private void i1(int value) {
            long j10 = this.f69401k;
            this.f69401k = j10 - 1;
            x2.e0(j10, (byte) value);
        }

        private void j1(int value) {
            long j10 = this.f69401k;
            this.f69401k = j10 - 1;
            x2.e0(j10, (byte) (value >>> 14));
            long j11 = this.f69401k;
            this.f69401k = j11 - 1;
            x2.e0(j11, (byte) (((value >>> 7) & 127) | 128));
            long j12 = this.f69401k;
            this.f69401k = j12 - 1;
            x2.e0(j12, (byte) ((value & 127) | 128));
        }

        private void k1(int value) {
            long j10 = this.f69401k;
            this.f69401k = j10 - 1;
            x2.e0(j10, (byte) (value >>> 7));
            long j11 = this.f69401k;
            this.f69401k = j11 - 1;
            x2.e0(j11, (byte) ((value & 127) | 128));
        }

        private void l1(long value) {
            long j10 = this.f69401k;
            this.f69401k = j10 - 1;
            x2.e0(j10, (byte) (value >>> 49));
            long j11 = this.f69401k;
            this.f69401k = j11 - 1;
            x2.e0(j11, (byte) (((value >>> 42) & 127) | 128));
            long j12 = this.f69401k;
            this.f69401k = j12 - 1;
            x2.e0(j12, (byte) (((value >>> 35) & 127) | 128));
            long j13 = this.f69401k;
            this.f69401k = j13 - 1;
            x2.e0(j13, (byte) (((value >>> 28) & 127) | 128));
            long j14 = this.f69401k;
            this.f69401k = j14 - 1;
            x2.e0(j14, (byte) (((value >>> 21) & 127) | 128));
            long j15 = this.f69401k;
            this.f69401k = j15 - 1;
            x2.e0(j15, (byte) (((value >>> 14) & 127) | 128));
            long j16 = this.f69401k;
            this.f69401k = j16 - 1;
            x2.e0(j16, (byte) (((value >>> 7) & 127) | 128));
            long j17 = this.f69401k;
            this.f69401k = j17 - 1;
            x2.e0(j17, (byte) ((value & 127) | 128));
        }

        private void m1(long value) {
            long j10 = this.f69401k;
            this.f69401k = j10 - 1;
            x2.e0(j10, (byte) (value >>> 28));
            long j11 = this.f69401k;
            this.f69401k = j11 - 1;
            x2.e0(j11, (byte) (((value >>> 21) & 127) | 128));
            long j12 = this.f69401k;
            this.f69401k = j12 - 1;
            x2.e0(j12, (byte) (((value >>> 14) & 127) | 128));
            long j13 = this.f69401k;
            this.f69401k = j13 - 1;
            x2.e0(j13, (byte) (((value >>> 7) & 127) | 128));
            long j14 = this.f69401k;
            this.f69401k = j14 - 1;
            x2.e0(j14, (byte) ((value & 127) | 128));
        }

        private void n1(long value) {
            long j10 = this.f69401k;
            this.f69401k = j10 - 1;
            x2.e0(j10, (byte) (value >>> 21));
            long j11 = this.f69401k;
            this.f69401k = j11 - 1;
            x2.e0(j11, (byte) (((value >>> 14) & 127) | 128));
            long j12 = this.f69401k;
            this.f69401k = j12 - 1;
            x2.e0(j12, (byte) (((value >>> 7) & 127) | 128));
            long j13 = this.f69401k;
            this.f69401k = j13 - 1;
            x2.e0(j13, (byte) ((value & 127) | 128));
        }

        private void o1(long value) {
            long j10 = this.f69401k;
            this.f69401k = j10 - 1;
            x2.e0(j10, (byte) (value >>> 56));
            long j11 = this.f69401k;
            this.f69401k = j11 - 1;
            x2.e0(j11, (byte) (((value >>> 49) & 127) | 128));
            long j12 = this.f69401k;
            this.f69401k = j12 - 1;
            x2.e0(j12, (byte) (((value >>> 42) & 127) | 128));
            long j13 = this.f69401k;
            this.f69401k = j13 - 1;
            x2.e0(j13, (byte) (((value >>> 35) & 127) | 128));
            long j14 = this.f69401k;
            this.f69401k = j14 - 1;
            x2.e0(j14, (byte) (((value >>> 28) & 127) | 128));
            long j15 = this.f69401k;
            this.f69401k = j15 - 1;
            x2.e0(j15, (byte) (((value >>> 21) & 127) | 128));
            long j16 = this.f69401k;
            this.f69401k = j16 - 1;
            x2.e0(j16, (byte) (((value >>> 14) & 127) | 128));
            long j17 = this.f69401k;
            this.f69401k = j17 - 1;
            x2.e0(j17, (byte) (((value >>> 7) & 127) | 128));
            long j18 = this.f69401k;
            this.f69401k = j18 - 1;
            x2.e0(j18, (byte) ((value & 127) | 128));
        }

        private void p1(long value) {
            long j10 = this.f69401k;
            this.f69401k = j10 - 1;
            x2.e0(j10, (byte) value);
        }

        private void q1(long value) {
            long j10 = this.f69401k;
            this.f69401k = j10 - 1;
            x2.e0(j10, (byte) (value >>> 42));
            long j11 = this.f69401k;
            this.f69401k = j11 - 1;
            x2.e0(j11, (byte) (((value >>> 35) & 127) | 128));
            long j12 = this.f69401k;
            this.f69401k = j12 - 1;
            x2.e0(j12, (byte) (((value >>> 28) & 127) | 128));
            long j13 = this.f69401k;
            this.f69401k = j13 - 1;
            x2.e0(j13, (byte) (((value >>> 21) & 127) | 128));
            long j14 = this.f69401k;
            this.f69401k = j14 - 1;
            x2.e0(j14, (byte) (((value >>> 14) & 127) | 128));
            long j15 = this.f69401k;
            this.f69401k = j15 - 1;
            x2.e0(j15, (byte) (((value >>> 7) & 127) | 128));
            long j16 = this.f69401k;
            this.f69401k = j16 - 1;
            x2.e0(j16, (byte) ((value & 127) | 128));
        }

        private void r1(long value) {
            long j10 = this.f69401k;
            this.f69401k = j10 - 1;
            x2.e0(j10, (byte) (value >>> 35));
            long j11 = this.f69401k;
            this.f69401k = j11 - 1;
            x2.e0(j11, (byte) (((value >>> 28) & 127) | 128));
            long j12 = this.f69401k;
            this.f69401k = j12 - 1;
            x2.e0(j12, (byte) (((value >>> 21) & 127) | 128));
            long j13 = this.f69401k;
            this.f69401k = j13 - 1;
            x2.e0(j13, (byte) (((value >>> 14) & 127) | 128));
            long j14 = this.f69401k;
            this.f69401k = j14 - 1;
            x2.e0(j14, (byte) (((value >>> 7) & 127) | 128));
            long j15 = this.f69401k;
            this.f69401k = j15 - 1;
            x2.e0(j15, (byte) ((value & 127) | 128));
        }

        private void s1(long value) {
            long j10 = this.f69401k;
            this.f69401k = j10 - 1;
            x2.e0(j10, (byte) (value >>> 63));
            long j11 = this.f69401k;
            this.f69401k = j11 - 1;
            x2.e0(j11, (byte) (((value >>> 56) & 127) | 128));
            long j12 = this.f69401k;
            this.f69401k = j12 - 1;
            x2.e0(j12, (byte) (((value >>> 49) & 127) | 128));
            long j13 = this.f69401k;
            this.f69401k = j13 - 1;
            x2.e0(j13, (byte) (((value >>> 42) & 127) | 128));
            long j14 = this.f69401k;
            this.f69401k = j14 - 1;
            x2.e0(j14, (byte) (((value >>> 35) & 127) | 128));
            long j15 = this.f69401k;
            this.f69401k = j15 - 1;
            x2.e0(j15, (byte) (((value >>> 28) & 127) | 128));
            long j16 = this.f69401k;
            this.f69401k = j16 - 1;
            x2.e0(j16, (byte) (((value >>> 21) & 127) | 128));
            long j17 = this.f69401k;
            this.f69401k = j17 - 1;
            x2.e0(j17, (byte) (((value >>> 14) & 127) | 128));
            long j18 = this.f69401k;
            this.f69401k = j18 - 1;
            x2.e0(j18, (byte) (((value >>> 7) & 127) | 128));
            long j19 = this.f69401k;
            this.f69401k = j19 - 1;
            x2.e0(j19, (byte) ((value & 127) | 128));
        }

        private void t1(long value) {
            long j10 = this.f69401k;
            this.f69401k = j10 - 1;
            x2.e0(j10, (byte) (((int) value) >>> 14));
            long j11 = this.f69401k;
            this.f69401k = j11 - 1;
            x2.e0(j11, (byte) (((value >>> 7) & 127) | 128));
            long j12 = this.f69401k;
            this.f69401k = j12 - 1;
            x2.e0(j12, (byte) ((value & 127) | 128));
        }

        private void u1(long value) {
            long j10 = this.f69401k;
            this.f69401k = j10 - 1;
            x2.e0(j10, (byte) (value >>> 7));
            long j11 = this.f69401k;
            this.f69401k = j11 - 1;
            x2.e0(j11, (byte) ((((int) value) & 127) | 128));
        }

        @Override
        public void A0(long value) {
            long j10 = this.f69401k;
            this.f69401k = j10 - 1;
            x2.e0(j10, (byte) (((int) (value >> 56)) & 255));
            long j11 = this.f69401k;
            this.f69401k = j11 - 1;
            x2.e0(j11, (byte) (((int) (value >> 48)) & 255));
            long j12 = this.f69401k;
            this.f69401k = j12 - 1;
            x2.e0(j12, (byte) (((int) (value >> 40)) & 255));
            long j13 = this.f69401k;
            this.f69401k = j13 - 1;
            x2.e0(j13, (byte) (((int) (value >> 32)) & 255));
            long j14 = this.f69401k;
            this.f69401k = j14 - 1;
            x2.e0(j14, (byte) (((int) (value >> 24)) & 255));
            long j15 = this.f69401k;
            this.f69401k = j15 - 1;
            x2.e0(j15, (byte) (((int) (value >> 16)) & 255));
            long j16 = this.f69401k;
            this.f69401k = j16 - 1;
            x2.e0(j16, (byte) (((int) (value >> 8)) & 255));
            long j17 = this.f69401k;
            this.f69401k = j17 - 1;
            x2.e0(j17, (byte) (((int) value) & 255));
        }

        @Override
        public void B(int fieldNumber, Object value, L1 schema) throws IOException {
            R0(fieldNumber, 4);
            schema.J1(value, this);
            R0(fieldNumber, 3);
        }

        @Override
        public void F0(int value) {
            if (value >= 0) {
                W0(value);
            } else {
                X0(value);
            }
        }

        @Override
        public void I(int fieldNumber, Object value, L1 schema) throws IOException {
            int c02 = c0();
            schema.J1(value, this);
            int c03 = c0() - c02;
            r0(10);
            W0(c03);
            R0(fieldNumber, 2);
        }

        @Override
        public void K(int fieldNumber, Object value) throws IOException {
            int c02 = c0();
            C12732z1.a().k(value, this);
            int c03 = c0() - c02;
            r0(10);
            W0(c03);
            R0(fieldNumber, 2);
        }

        @Override
        public void K0(int value) {
            W0(CodedOutputStream.c1(value));
        }

        @Override
        public void N0(long value) {
            X0(CodedOutputStream.d1(value));
        }

        @Override
        public void O(int fieldNumber, Object value) throws IOException {
            R0(fieldNumber, 4);
            C12732z1.a().k(value, this);
            R0(fieldNumber, 3);
        }

        @Override
        public void Q0(String in2) {
            char charAt;
            r0(in2.length());
            int length = in2.length();
            while (true) {
                length--;
                if (length < 0 || (charAt = in2.charAt(length)) >= '\u0080') {
                    break;
                }
                long j10 = this.f69401k;
                this.f69401k = j10 - 1;
                x2.e0(j10, (byte) charAt);
            }
            if (length == -1) {
                return;
            }
            while (length >= 0) {
                char charAt2 = in2.charAt(length);
                if (charAt2 < '\u0080') {
                    long j11 = this.f69401k;
                    if (j11 >= this.f69399i) {
                        this.f69401k = j11 - 1;
                        x2.e0(j11, (byte) charAt2);
                        length--;
                    }
                }
                if (charAt2 < '\u0800') {
                    long j12 = this.f69401k;
                    if (j12 > this.f69399i) {
                        this.f69401k = j12 - 1;
                        x2.e0(j12, (byte) ((charAt2 & '?') | 128));
                        long j13 = this.f69401k;
                        this.f69401k = j13 - 1;
                        x2.e0(j13, (byte) ((charAt2 >>> 6) | 960));
                        length--;
                    }
                }
                if (charAt2 < '\ud800' || '\udfff' < charAt2) {
                    long j14 = this.f69401k;
                    if (j14 > this.f69399i + 1) {
                        this.f69401k = j14 - 1;
                        x2.e0(j14, (byte) ((charAt2 & '?') | 128));
                        long j15 = this.f69401k;
                        this.f69401k = j15 - 1;
                        x2.e0(j15, (byte) (((charAt2 >>> 6) & 63) | 128));
                        long j16 = this.f69401k;
                        this.f69401k = j16 - 1;
                        x2.e0(j16, (byte) ((charAt2 >>> '\f') | DisplayMetrics.DENSITY_XXHIGH));
                        length--;
                    }
                }
                if (this.f69401k > this.f69399i + 2) {
                    if (length != 0) {
                        char charAt3 = in2.charAt(length - 1);
                        if (Character.isSurrogatePair(charAt3, charAt2)) {
                            length--;
                            int codePoint = Character.toCodePoint(charAt3, charAt2);
                            long j17 = this.f69401k;
                            this.f69401k = j17 - 1;
                            x2.e0(j17, (byte) ((codePoint & 63) | 128));
                            long j18 = this.f69401k;
                            this.f69401k = j18 - 1;
                            x2.e0(j18, (byte) (((codePoint >>> 6) & 63) | 128));
                            long j19 = this.f69401k;
                            this.f69401k = j19 - 1;
                            x2.e0(j19, (byte) (((codePoint >>> 12) & 63) | 128));
                            long j20 = this.f69401k;
                            this.f69401k = j20 - 1;
                            x2.e0(j20, (byte) ((codePoint >>> 18) | 240));
                        }
                    }
                    throw new Utf8.UnpairedSurrogateException(length - 1, length);
                }
                r0(length);
                length++;
                length--;
            }
        }

        @Override
        public void R0(int fieldNumber, int wireType) {
            W0(A2.c(fieldNumber, wireType));
        }

        @Override
        public void S(int fieldNumber, int value) {
            r0(10);
            K0(value);
            R0(fieldNumber, 0);
        }

        @Override
        public void T(byte value) {
            long j10 = this.f69401k;
            this.f69401k = j10 - 1;
            x2.e0(j10, value);
        }

        @Override
        public void U(ByteBuffer value) {
            int remaining = value.remaining();
            if (f1() < remaining) {
                d1(remaining);
            }
            this.f69401k -= remaining;
            F0.e(this.f69398h, Z0() + 1);
            this.f69398h.put(value);
        }

        @Override
        public void V(byte[] value, int offset, int length) {
            if (f1() < length) {
                d1(length);
            }
            this.f69401k -= length;
            F0.e(this.f69398h, Z0() + 1);
            this.f69398h.put(value, offset, length);
        }

        @Override
        public void W(ByteBuffer value) {
            int remaining = value.remaining();
            if (f1() < remaining) {
                this.f69386d += remaining;
                this.f69385c.addFirst(AbstractC12668e.j(value));
                c1();
            } else {
                this.f69401k -= remaining;
                F0.e(this.f69398h, Z0() + 1);
                this.f69398h.put(value);
            }
        }

        @Override
        public void W0(int value) {
            if ((value & (-128)) == 0) {
                i1(value);
                return;
            }
            if ((value & Lua.MASK_Bx) == 0) {
                k1(value);
                return;
            }
            if (((-2097152) & value) == 0) {
                j1(value);
            } else if (((-268435456) & value) == 0) {
                h1(value);
            } else {
                g1(value);
            }
        }

        @Override
        public void X(byte[] value, int offset, int length) {
            if (f1() < length) {
                this.f69386d += length;
                this.f69385c.addFirst(AbstractC12668e.l(value, offset, length));
                c1();
            } else {
                this.f69401k -= length;
                F0.e(this.f69398h, Z0() + 1);
                this.f69398h.put(value, offset, length);
            }
        }

        @Override
        public void X0(long value) {
            switch (AbstractC12698o.a0(value)) {
                case 1:
                    p1(value);
                    return;
                case 2:
                    u1(value);
                    return;
                case 3:
                    t1(value);
                    return;
                case 4:
                    n1(value);
                    return;
                case 5:
                    m1(value);
                    return;
                case 6:
                    r1(value);
                    return;
                case 7:
                    q1(value);
                    return;
                case 8:
                    l1(value);
                    return;
                case 9:
                    o1(value);
                    return;
                case 10:
                    s1(value);
                    return;
                default:
                    return;
            }
        }

        public final int Z0() {
            return (int) (this.f69401k - this.f69399i);
        }

        @Override
        public void b0() {
            if (this.f69398h != null) {
                this.f69386d += a1();
                F0.e(this.f69398h, Z0() + 1);
                this.f69398h = null;
                this.f69401k = 0L;
                this.f69400j = 0L;
            }
        }

        @Override
        public void c(int fieldNumber, int value) {
            r0(9);
            x0(value);
            R0(fieldNumber, 5);
        }

        @Override
        public int c0() {
            return this.f69386d + a1();
        }

        @Override
        public void e(int fieldNumber, String value) {
            int c02 = c0();
            Q0(value);
            int c03 = c0() - c02;
            r0(10);
            W0(c03);
            R0(fieldNumber, 2);
        }

        @Override
        public void f(int fieldNumber, long value) {
            r0(15);
            X0(value);
            R0(fieldNumber, 0);
        }

        @Override
        public void h(int fieldNumber, AbstractC12724x value) {
            try {
                value.q0(this);
                r0(10);
                W0(value.size());
                R0(fieldNumber, 2);
            } catch (IOException e10) {
                throw new RuntimeException(e10);
            }
        }

        @Override
        public void i(int fieldNumber, int value) {
            r0(15);
            F0(value);
            R0(fieldNumber, 0);
        }

        @Override
        public void l(int fieldNumber, long value) {
            r0(15);
            N0(value);
            R0(fieldNumber, 0);
        }

        @Override
        public void m(int fieldNumber, int value) {
            r0(10);
            W0(value);
            R0(fieldNumber, 0);
        }

        @Override
        public void o(int fieldNumber, long value) {
            r0(13);
            A0(value);
            R0(fieldNumber, 1);
        }

        @Override
        public void q(int i10, boolean z10) {
            r0(6);
            T(z10 ? (byte) 1 : (byte) 0);
            R0(i10, 0);
        }

        @Override
        public void r0(int size) {
            if (f1() < size) {
                d1(size);
            }
        }

        @Override
        @Deprecated
        public void s(int fieldNumber) {
            R0(fieldNumber, 3);
        }

        @Override
        public void s0(boolean z10) {
            T(z10 ? (byte) 1 : (byte) 0);
        }

        @Override
        @Deprecated
        public void v(int fieldNumber) {
            R0(fieldNumber, 4);
        }

        @Override
        public void x0(int value) {
            long j10 = this.f69401k;
            this.f69401k = j10 - 1;
            x2.e0(j10, (byte) ((value >> 24) & 255));
            long j11 = this.f69401k;
            this.f69401k = j11 - 1;
            x2.e0(j11, (byte) ((value >> 16) & 255));
            long j12 = this.f69401k;
            this.f69401k = j12 - 1;
            x2.e0(j12, (byte) ((value >> 8) & 255));
            long j13 = this.f69401k;
            this.f69401k = j13 - 1;
            x2.e0(j13, (byte) (value & 255));
        }
    }

    public static final class e extends AbstractC12698o {

        public AbstractC12668e f69402h;

        public byte[] f69403i;

        public long f69404j;

        public long f69405k;

        public long f69406l;

        public long f69407m;

        public long f69408n;

        public e(AbstractC12715u alloc, int chunkSize) {
            super(alloc, chunkSize, null);
            b1();
        }

        public static boolean a1() {
            return x2.U();
        }

        private void b1() {
            d1(j0());
        }

        private void c1(int capacity) {
            d1(k0(capacity));
        }

        private void d1(AbstractC12668e allocatedBuffer) {
            if (!allocatedBuffer.c()) {
                throw new RuntimeException("Allocator returned non-heap buffer");
            }
            b0();
            this.f69385c.addFirst(allocatedBuffer);
            this.f69402h = allocatedBuffer;
            this.f69403i = allocatedBuffer.a();
            long b10 = allocatedBuffer.b();
            this.f69405k = allocatedBuffer.e() + b10;
            long g10 = b10 + allocatedBuffer.g();
            this.f69404j = g10;
            this.f69406l = g10 - 1;
            long j10 = this.f69405k - 1;
            this.f69407m = j10;
            this.f69408n = j10;
        }

        private void f1(int value) {
            byte[] bArr = this.f69403i;
            long j10 = this.f69408n;
            this.f69408n = j10 - 1;
            x2.g0(bArr, j10, (byte) (value >>> 28));
            byte[] bArr2 = this.f69403i;
            long j11 = this.f69408n;
            this.f69408n = j11 - 1;
            x2.g0(bArr2, j11, (byte) (((value >>> 21) & 127) | 128));
            byte[] bArr3 = this.f69403i;
            long j12 = this.f69408n;
            this.f69408n = j12 - 1;
            x2.g0(bArr3, j12, (byte) (((value >>> 14) & 127) | 128));
            byte[] bArr4 = this.f69403i;
            long j13 = this.f69408n;
            this.f69408n = j13 - 1;
            x2.g0(bArr4, j13, (byte) (((value >>> 7) & 127) | 128));
            byte[] bArr5 = this.f69403i;
            long j14 = this.f69408n;
            this.f69408n = j14 - 1;
            x2.g0(bArr5, j14, (byte) ((value & 127) | 128));
        }

        private void g1(int value) {
            byte[] bArr = this.f69403i;
            long j10 = this.f69408n;
            this.f69408n = j10 - 1;
            x2.g0(bArr, j10, (byte) (value >>> 21));
            byte[] bArr2 = this.f69403i;
            long j11 = this.f69408n;
            this.f69408n = j11 - 1;
            x2.g0(bArr2, j11, (byte) (((value >>> 14) & 127) | 128));
            byte[] bArr3 = this.f69403i;
            long j12 = this.f69408n;
            this.f69408n = j12 - 1;
            x2.g0(bArr3, j12, (byte) (((value >>> 7) & 127) | 128));
            byte[] bArr4 = this.f69403i;
            long j13 = this.f69408n;
            this.f69408n = j13 - 1;
            x2.g0(bArr4, j13, (byte) ((value & 127) | 128));
        }

        private void h1(int value) {
            byte[] bArr = this.f69403i;
            long j10 = this.f69408n;
            this.f69408n = j10 - 1;
            x2.g0(bArr, j10, (byte) value);
        }

        private void i1(int value) {
            byte[] bArr = this.f69403i;
            long j10 = this.f69408n;
            this.f69408n = j10 - 1;
            x2.g0(bArr, j10, (byte) (value >>> 14));
            byte[] bArr2 = this.f69403i;
            long j11 = this.f69408n;
            this.f69408n = j11 - 1;
            x2.g0(bArr2, j11, (byte) (((value >>> 7) & 127) | 128));
            byte[] bArr3 = this.f69403i;
            long j12 = this.f69408n;
            this.f69408n = j12 - 1;
            x2.g0(bArr3, j12, (byte) ((value & 127) | 128));
        }

        private void j1(int value) {
            byte[] bArr = this.f69403i;
            long j10 = this.f69408n;
            this.f69408n = j10 - 1;
            x2.g0(bArr, j10, (byte) (value >>> 7));
            byte[] bArr2 = this.f69403i;
            long j11 = this.f69408n;
            this.f69408n = j11 - 1;
            x2.g0(bArr2, j11, (byte) ((value & 127) | 128));
        }

        private void k1(long value) {
            byte[] bArr = this.f69403i;
            long j10 = this.f69408n;
            this.f69408n = j10 - 1;
            x2.g0(bArr, j10, (byte) (value >>> 49));
            byte[] bArr2 = this.f69403i;
            long j11 = this.f69408n;
            this.f69408n = j11 - 1;
            x2.g0(bArr2, j11, (byte) (((value >>> 42) & 127) | 128));
            byte[] bArr3 = this.f69403i;
            long j12 = this.f69408n;
            this.f69408n = j12 - 1;
            x2.g0(bArr3, j12, (byte) (((value >>> 35) & 127) | 128));
            byte[] bArr4 = this.f69403i;
            long j13 = this.f69408n;
            this.f69408n = j13 - 1;
            x2.g0(bArr4, j13, (byte) (((value >>> 28) & 127) | 128));
            byte[] bArr5 = this.f69403i;
            long j14 = this.f69408n;
            this.f69408n = j14 - 1;
            x2.g0(bArr5, j14, (byte) (((value >>> 21) & 127) | 128));
            byte[] bArr6 = this.f69403i;
            long j15 = this.f69408n;
            this.f69408n = j15 - 1;
            x2.g0(bArr6, j15, (byte) (((value >>> 14) & 127) | 128));
            byte[] bArr7 = this.f69403i;
            long j16 = this.f69408n;
            this.f69408n = j16 - 1;
            x2.g0(bArr7, j16, (byte) (((value >>> 7) & 127) | 128));
            byte[] bArr8 = this.f69403i;
            long j17 = this.f69408n;
            this.f69408n = j17 - 1;
            x2.g0(bArr8, j17, (byte) ((value & 127) | 128));
        }

        private void l1(long value) {
            byte[] bArr = this.f69403i;
            long j10 = this.f69408n;
            this.f69408n = j10 - 1;
            x2.g0(bArr, j10, (byte) (value >>> 28));
            byte[] bArr2 = this.f69403i;
            long j11 = this.f69408n;
            this.f69408n = j11 - 1;
            x2.g0(bArr2, j11, (byte) (((value >>> 21) & 127) | 128));
            byte[] bArr3 = this.f69403i;
            long j12 = this.f69408n;
            this.f69408n = j12 - 1;
            x2.g0(bArr3, j12, (byte) (((value >>> 14) & 127) | 128));
            byte[] bArr4 = this.f69403i;
            long j13 = this.f69408n;
            this.f69408n = j13 - 1;
            x2.g0(bArr4, j13, (byte) (((value >>> 7) & 127) | 128));
            byte[] bArr5 = this.f69403i;
            long j14 = this.f69408n;
            this.f69408n = j14 - 1;
            x2.g0(bArr5, j14, (byte) ((value & 127) | 128));
        }

        private void m1(long value) {
            byte[] bArr = this.f69403i;
            long j10 = this.f69408n;
            this.f69408n = j10 - 1;
            x2.g0(bArr, j10, (byte) (value >>> 21));
            byte[] bArr2 = this.f69403i;
            long j11 = this.f69408n;
            this.f69408n = j11 - 1;
            x2.g0(bArr2, j11, (byte) (((value >>> 14) & 127) | 128));
            byte[] bArr3 = this.f69403i;
            long j12 = this.f69408n;
            this.f69408n = j12 - 1;
            x2.g0(bArr3, j12, (byte) (((value >>> 7) & 127) | 128));
            byte[] bArr4 = this.f69403i;
            long j13 = this.f69408n;
            this.f69408n = j13 - 1;
            x2.g0(bArr4, j13, (byte) ((value & 127) | 128));
        }

        private void n1(long value) {
            byte[] bArr = this.f69403i;
            long j10 = this.f69408n;
            this.f69408n = j10 - 1;
            x2.g0(bArr, j10, (byte) (value >>> 56));
            byte[] bArr2 = this.f69403i;
            long j11 = this.f69408n;
            this.f69408n = j11 - 1;
            x2.g0(bArr2, j11, (byte) (((value >>> 49) & 127) | 128));
            byte[] bArr3 = this.f69403i;
            long j12 = this.f69408n;
            this.f69408n = j12 - 1;
            x2.g0(bArr3, j12, (byte) (((value >>> 42) & 127) | 128));
            byte[] bArr4 = this.f69403i;
            long j13 = this.f69408n;
            this.f69408n = j13 - 1;
            x2.g0(bArr4, j13, (byte) (((value >>> 35) & 127) | 128));
            byte[] bArr5 = this.f69403i;
            long j14 = this.f69408n;
            this.f69408n = j14 - 1;
            x2.g0(bArr5, j14, (byte) (((value >>> 28) & 127) | 128));
            byte[] bArr6 = this.f69403i;
            long j15 = this.f69408n;
            this.f69408n = j15 - 1;
            x2.g0(bArr6, j15, (byte) (((value >>> 21) & 127) | 128));
            byte[] bArr7 = this.f69403i;
            long j16 = this.f69408n;
            this.f69408n = j16 - 1;
            x2.g0(bArr7, j16, (byte) (((value >>> 14) & 127) | 128));
            byte[] bArr8 = this.f69403i;
            long j17 = this.f69408n;
            this.f69408n = j17 - 1;
            x2.g0(bArr8, j17, (byte) (((value >>> 7) & 127) | 128));
            byte[] bArr9 = this.f69403i;
            long j18 = this.f69408n;
            this.f69408n = j18 - 1;
            x2.g0(bArr9, j18, (byte) ((value & 127) | 128));
        }

        private void o1(long value) {
            byte[] bArr = this.f69403i;
            long j10 = this.f69408n;
            this.f69408n = j10 - 1;
            x2.g0(bArr, j10, (byte) value);
        }

        private void p1(long value) {
            byte[] bArr = this.f69403i;
            long j10 = this.f69408n;
            this.f69408n = j10 - 1;
            x2.g0(bArr, j10, (byte) (value >>> 42));
            byte[] bArr2 = this.f69403i;
            long j11 = this.f69408n;
            this.f69408n = j11 - 1;
            x2.g0(bArr2, j11, (byte) (((value >>> 35) & 127) | 128));
            byte[] bArr3 = this.f69403i;
            long j12 = this.f69408n;
            this.f69408n = j12 - 1;
            x2.g0(bArr3, j12, (byte) (((value >>> 28) & 127) | 128));
            byte[] bArr4 = this.f69403i;
            long j13 = this.f69408n;
            this.f69408n = j13 - 1;
            x2.g0(bArr4, j13, (byte) (((value >>> 21) & 127) | 128));
            byte[] bArr5 = this.f69403i;
            long j14 = this.f69408n;
            this.f69408n = j14 - 1;
            x2.g0(bArr5, j14, (byte) (((value >>> 14) & 127) | 128));
            byte[] bArr6 = this.f69403i;
            long j15 = this.f69408n;
            this.f69408n = j15 - 1;
            x2.g0(bArr6, j15, (byte) (((value >>> 7) & 127) | 128));
            byte[] bArr7 = this.f69403i;
            long j16 = this.f69408n;
            this.f69408n = j16 - 1;
            x2.g0(bArr7, j16, (byte) ((value & 127) | 128));
        }

        private void q1(long value) {
            byte[] bArr = this.f69403i;
            long j10 = this.f69408n;
            this.f69408n = j10 - 1;
            x2.g0(bArr, j10, (byte) (value >>> 35));
            byte[] bArr2 = this.f69403i;
            long j11 = this.f69408n;
            this.f69408n = j11 - 1;
            x2.g0(bArr2, j11, (byte) (((value >>> 28) & 127) | 128));
            byte[] bArr3 = this.f69403i;
            long j12 = this.f69408n;
            this.f69408n = j12 - 1;
            x2.g0(bArr3, j12, (byte) (((value >>> 21) & 127) | 128));
            byte[] bArr4 = this.f69403i;
            long j13 = this.f69408n;
            this.f69408n = j13 - 1;
            x2.g0(bArr4, j13, (byte) (((value >>> 14) & 127) | 128));
            byte[] bArr5 = this.f69403i;
            long j14 = this.f69408n;
            this.f69408n = j14 - 1;
            x2.g0(bArr5, j14, (byte) (((value >>> 7) & 127) | 128));
            byte[] bArr6 = this.f69403i;
            long j15 = this.f69408n;
            this.f69408n = j15 - 1;
            x2.g0(bArr6, j15, (byte) ((value & 127) | 128));
        }

        private void r1(long value) {
            byte[] bArr = this.f69403i;
            long j10 = this.f69408n;
            this.f69408n = j10 - 1;
            x2.g0(bArr, j10, (byte) (value >>> 63));
            byte[] bArr2 = this.f69403i;
            long j11 = this.f69408n;
            this.f69408n = j11 - 1;
            x2.g0(bArr2, j11, (byte) (((value >>> 56) & 127) | 128));
            byte[] bArr3 = this.f69403i;
            long j12 = this.f69408n;
            this.f69408n = j12 - 1;
            x2.g0(bArr3, j12, (byte) (((value >>> 49) & 127) | 128));
            byte[] bArr4 = this.f69403i;
            long j13 = this.f69408n;
            this.f69408n = j13 - 1;
            x2.g0(bArr4, j13, (byte) (((value >>> 42) & 127) | 128));
            byte[] bArr5 = this.f69403i;
            long j14 = this.f69408n;
            this.f69408n = j14 - 1;
            x2.g0(bArr5, j14, (byte) (((value >>> 35) & 127) | 128));
            byte[] bArr6 = this.f69403i;
            long j15 = this.f69408n;
            this.f69408n = j15 - 1;
            x2.g0(bArr6, j15, (byte) (((value >>> 28) & 127) | 128));
            byte[] bArr7 = this.f69403i;
            long j16 = this.f69408n;
            this.f69408n = j16 - 1;
            x2.g0(bArr7, j16, (byte) (((value >>> 21) & 127) | 128));
            byte[] bArr8 = this.f69403i;
            long j17 = this.f69408n;
            this.f69408n = j17 - 1;
            x2.g0(bArr8, j17, (byte) (((value >>> 14) & 127) | 128));
            byte[] bArr9 = this.f69403i;
            long j18 = this.f69408n;
            this.f69408n = j18 - 1;
            x2.g0(bArr9, j18, (byte) (((value >>> 7) & 127) | 128));
            byte[] bArr10 = this.f69403i;
            long j19 = this.f69408n;
            this.f69408n = j19 - 1;
            x2.g0(bArr10, j19, (byte) ((value & 127) | 128));
        }

        private void s1(long value) {
            byte[] bArr = this.f69403i;
            long j10 = this.f69408n;
            this.f69408n = j10 - 1;
            x2.g0(bArr, j10, (byte) (((int) value) >>> 14));
            byte[] bArr2 = this.f69403i;
            long j11 = this.f69408n;
            this.f69408n = j11 - 1;
            x2.g0(bArr2, j11, (byte) (((value >>> 7) & 127) | 128));
            byte[] bArr3 = this.f69403i;
            long j12 = this.f69408n;
            this.f69408n = j12 - 1;
            x2.g0(bArr3, j12, (byte) ((value & 127) | 128));
        }

        private void t1(long value) {
            byte[] bArr = this.f69403i;
            long j10 = this.f69408n;
            this.f69408n = j10 - 1;
            x2.g0(bArr, j10, (byte) (value >>> 7));
            byte[] bArr2 = this.f69403i;
            long j11 = this.f69408n;
            this.f69408n = j11 - 1;
            x2.g0(bArr2, j11, (byte) ((((int) value) & 127) | 128));
        }

        @Override
        public void A0(long value) {
            byte[] bArr = this.f69403i;
            long j10 = this.f69408n;
            this.f69408n = j10 - 1;
            x2.g0(bArr, j10, (byte) (((int) (value >> 56)) & 255));
            byte[] bArr2 = this.f69403i;
            long j11 = this.f69408n;
            this.f69408n = j11 - 1;
            x2.g0(bArr2, j11, (byte) (((int) (value >> 48)) & 255));
            byte[] bArr3 = this.f69403i;
            long j12 = this.f69408n;
            this.f69408n = j12 - 1;
            x2.g0(bArr3, j12, (byte) (((int) (value >> 40)) & 255));
            byte[] bArr4 = this.f69403i;
            long j13 = this.f69408n;
            this.f69408n = j13 - 1;
            x2.g0(bArr4, j13, (byte) (((int) (value >> 32)) & 255));
            byte[] bArr5 = this.f69403i;
            long j14 = this.f69408n;
            this.f69408n = j14 - 1;
            x2.g0(bArr5, j14, (byte) (((int) (value >> 24)) & 255));
            byte[] bArr6 = this.f69403i;
            long j15 = this.f69408n;
            this.f69408n = j15 - 1;
            x2.g0(bArr6, j15, (byte) (((int) (value >> 16)) & 255));
            byte[] bArr7 = this.f69403i;
            long j16 = this.f69408n;
            this.f69408n = j16 - 1;
            x2.g0(bArr7, j16, (byte) (((int) (value >> 8)) & 255));
            byte[] bArr8 = this.f69403i;
            long j17 = this.f69408n;
            this.f69408n = j17 - 1;
            x2.g0(bArr8, j17, (byte) (((int) value) & 255));
        }

        @Override
        public void B(int fieldNumber, Object value, L1 schema) throws IOException {
            R0(fieldNumber, 4);
            schema.J1(value, this);
            R0(fieldNumber, 3);
        }

        @Override
        public void F0(int value) {
            if (value >= 0) {
                W0(value);
            } else {
                X0(value);
            }
        }

        @Override
        public void I(int fieldNumber, Object value, L1 schema) throws IOException {
            int c02 = c0();
            schema.J1(value, this);
            int c03 = c0() - c02;
            r0(10);
            W0(c03);
            R0(fieldNumber, 2);
        }

        @Override
        public void K(int fieldNumber, Object value) throws IOException {
            int c02 = c0();
            C12732z1.a().k(value, this);
            int c03 = c0() - c02;
            r0(10);
            W0(c03);
            R0(fieldNumber, 2);
        }

        @Override
        public void K0(int value) {
            W0(CodedOutputStream.c1(value));
        }

        @Override
        public void N0(long value) {
            X0(CodedOutputStream.d1(value));
        }

        @Override
        public void O(int fieldNumber, Object value) throws IOException {
            R0(fieldNumber, 4);
            C12732z1.a().k(value, this);
            R0(fieldNumber, 3);
        }

        @Override
        public void Q0(String in2) {
            char charAt;
            r0(in2.length());
            int length = in2.length();
            while (true) {
                length--;
                if (length < 0 || (charAt = in2.charAt(length)) >= '\u0080') {
                    break;
                }
                byte[] bArr = this.f69403i;
                long j10 = this.f69408n;
                this.f69408n = j10 - 1;
                x2.g0(bArr, j10, (byte) charAt);
            }
            if (length == -1) {
                return;
            }
            while (length >= 0) {
                char charAt2 = in2.charAt(length);
                if (charAt2 < '\u0080') {
                    long j11 = this.f69408n;
                    if (j11 > this.f69406l) {
                        byte[] bArr2 = this.f69403i;
                        this.f69408n = j11 - 1;
                        x2.g0(bArr2, j11, (byte) charAt2);
                        length--;
                    }
                }
                if (charAt2 < '\u0800') {
                    long j12 = this.f69408n;
                    if (j12 > this.f69404j) {
                        byte[] bArr3 = this.f69403i;
                        this.f69408n = j12 - 1;
                        x2.g0(bArr3, j12, (byte) ((charAt2 & '?') | 128));
                        byte[] bArr4 = this.f69403i;
                        long j13 = this.f69408n;
                        this.f69408n = j13 - 1;
                        x2.g0(bArr4, j13, (byte) ((charAt2 >>> 6) | 960));
                        length--;
                    }
                }
                if (charAt2 < '\ud800' || '\udfff' < charAt2) {
                    long j14 = this.f69408n;
                    if (j14 > this.f69404j + 1) {
                        byte[] bArr5 = this.f69403i;
                        this.f69408n = j14 - 1;
                        x2.g0(bArr5, j14, (byte) ((charAt2 & '?') | 128));
                        byte[] bArr6 = this.f69403i;
                        long j15 = this.f69408n;
                        this.f69408n = j15 - 1;
                        x2.g0(bArr6, j15, (byte) (((charAt2 >>> 6) & 63) | 128));
                        byte[] bArr7 = this.f69403i;
                        long j16 = this.f69408n;
                        this.f69408n = j16 - 1;
                        x2.g0(bArr7, j16, (byte) ((charAt2 >>> '\f') | DisplayMetrics.DENSITY_XXHIGH));
                        length--;
                    }
                }
                if (this.f69408n > this.f69404j + 2) {
                    if (length != 0) {
                        char charAt3 = in2.charAt(length - 1);
                        if (Character.isSurrogatePair(charAt3, charAt2)) {
                            length--;
                            int codePoint = Character.toCodePoint(charAt3, charAt2);
                            byte[] bArr8 = this.f69403i;
                            long j17 = this.f69408n;
                            this.f69408n = j17 - 1;
                            x2.g0(bArr8, j17, (byte) ((codePoint & 63) | 128));
                            byte[] bArr9 = this.f69403i;
                            long j18 = this.f69408n;
                            this.f69408n = j18 - 1;
                            x2.g0(bArr9, j18, (byte) (((codePoint >>> 6) & 63) | 128));
                            byte[] bArr10 = this.f69403i;
                            long j19 = this.f69408n;
                            this.f69408n = j19 - 1;
                            x2.g0(bArr10, j19, (byte) (((codePoint >>> 12) & 63) | 128));
                            byte[] bArr11 = this.f69403i;
                            long j20 = this.f69408n;
                            this.f69408n = j20 - 1;
                            x2.g0(bArr11, j20, (byte) ((codePoint >>> 18) | 240));
                        }
                    }
                    throw new Utf8.UnpairedSurrogateException(length - 1, length);
                }
                r0(length);
                length++;
                length--;
            }
        }

        @Override
        public void R0(int fieldNumber, int wireType) {
            W0(A2.c(fieldNumber, wireType));
        }

        @Override
        public void S(int fieldNumber, int value) {
            r0(10);
            K0(value);
            R0(fieldNumber, 0);
        }

        @Override
        public void T(byte value) {
            byte[] bArr = this.f69403i;
            long j10 = this.f69408n;
            this.f69408n = j10 - 1;
            x2.g0(bArr, j10, value);
        }

        @Override
        public void U(ByteBuffer value) {
            int remaining = value.remaining();
            r0(remaining);
            this.f69408n -= remaining;
            value.get(this.f69403i, Y0() + 1, remaining);
        }

        @Override
        public void V(byte[] value, int offset, int length) {
            if (offset < 0 || offset + length > value.length) {
                throw new ArrayIndexOutOfBoundsException(String.format("value.length=%d, offset=%d, length=%d", Integer.valueOf(value.length), Integer.valueOf(offset), Integer.valueOf(length)));
            }
            r0(length);
            this.f69408n -= length;
            System.arraycopy(value, offset, this.f69403i, Y0() + 1, length);
        }

        @Override
        public void W(ByteBuffer value) {
            int remaining = value.remaining();
            if (e1() < remaining) {
                this.f69386d += remaining;
                this.f69385c.addFirst(AbstractC12668e.j(value));
                b1();
            }
            this.f69408n -= remaining;
            value.get(this.f69403i, Y0() + 1, remaining);
        }

        @Override
        public void W0(int value) {
            if ((value & (-128)) == 0) {
                h1(value);
                return;
            }
            if ((value & Lua.MASK_Bx) == 0) {
                j1(value);
                return;
            }
            if (((-2097152) & value) == 0) {
                i1(value);
            } else if (((-268435456) & value) == 0) {
                g1(value);
            } else {
                f1(value);
            }
        }

        @Override
        public void X(byte[] value, int offset, int length) {
            if (offset < 0 || offset + length > value.length) {
                throw new ArrayIndexOutOfBoundsException(String.format("value.length=%d, offset=%d, length=%d", Integer.valueOf(value.length), Integer.valueOf(offset), Integer.valueOf(length)));
            }
            if (e1() >= length) {
                this.f69408n -= length;
                System.arraycopy(value, offset, this.f69403i, Y0() + 1, length);
            } else {
                this.f69386d += length;
                this.f69385c.addFirst(AbstractC12668e.l(value, offset, length));
                b1();
            }
        }

        @Override
        public void X0(long value) {
            switch (AbstractC12698o.a0(value)) {
                case 1:
                    o1(value);
                    return;
                case 2:
                    t1(value);
                    return;
                case 3:
                    s1(value);
                    return;
                case 4:
                    m1(value);
                    return;
                case 5:
                    l1(value);
                    return;
                case 6:
                    q1(value);
                    return;
                case 7:
                    p1(value);
                    return;
                case 8:
                    k1(value);
                    return;
                case 9:
                    n1(value);
                    return;
                case 10:
                    r1(value);
                    return;
                default:
                    return;
            }
        }

        public final int Y0() {
            return (int) this.f69408n;
        }

        public int Z0() {
            return (int) (this.f69407m - this.f69408n);
        }

        @Override
        public void b0() {
            if (this.f69402h != null) {
                this.f69386d += Z0();
                this.f69402h.h((Y0() - this.f69402h.b()) + 1);
                this.f69402h = null;
                this.f69408n = 0L;
                this.f69407m = 0L;
            }
        }

        @Override
        public void c(int fieldNumber, int value) {
            r0(9);
            x0(value);
            R0(fieldNumber, 5);
        }

        @Override
        public int c0() {
            return this.f69386d + Z0();
        }

        @Override
        public void e(int fieldNumber, String value) {
            int c02 = c0();
            Q0(value);
            int c03 = c0() - c02;
            r0(10);
            W0(c03);
            R0(fieldNumber, 2);
        }

        public int e1() {
            return (int) (this.f69408n - this.f69406l);
        }

        @Override
        public void f(int fieldNumber, long value) {
            r0(15);
            X0(value);
            R0(fieldNumber, 0);
        }

        @Override
        public void h(int fieldNumber, AbstractC12724x value) {
            try {
                value.q0(this);
                r0(10);
                W0(value.size());
                R0(fieldNumber, 2);
            } catch (IOException e10) {
                throw new RuntimeException(e10);
            }
        }

        @Override
        public void i(int fieldNumber, int value) {
            r0(15);
            F0(value);
            R0(fieldNumber, 0);
        }

        @Override
        public void l(int fieldNumber, long value) {
            r0(15);
            N0(value);
            R0(fieldNumber, 0);
        }

        @Override
        public void m(int fieldNumber, int value) {
            r0(10);
            W0(value);
            R0(fieldNumber, 0);
        }

        @Override
        public void o(int fieldNumber, long value) {
            r0(13);
            A0(value);
            R0(fieldNumber, 1);
        }

        @Override
        public void q(int i10, boolean z10) {
            r0(6);
            T(z10 ? (byte) 1 : (byte) 0);
            R0(i10, 0);
        }

        @Override
        public void r0(int size) {
            if (e1() < size) {
                c1(size);
            }
        }

        @Override
        public void s(int fieldNumber) {
            R0(fieldNumber, 3);
        }

        @Override
        public void s0(boolean z10) {
            T(z10 ? (byte) 1 : (byte) 0);
        }

        @Override
        public void v(int fieldNumber) {
            R0(fieldNumber, 4);
        }

        @Override
        public void x0(int value) {
            byte[] bArr = this.f69403i;
            long j10 = this.f69408n;
            this.f69408n = j10 - 1;
            x2.g0(bArr, j10, (byte) ((value >> 24) & 255));
            byte[] bArr2 = this.f69403i;
            long j11 = this.f69408n;
            this.f69408n = j11 - 1;
            x2.g0(bArr2, j11, (byte) ((value >> 16) & 255));
            byte[] bArr3 = this.f69403i;
            long j12 = this.f69408n;
            this.f69408n = j12 - 1;
            x2.g0(bArr3, j12, (byte) ((value >> 8) & 255));
            byte[] bArr4 = this.f69403i;
            long j13 = this.f69408n;
            this.f69408n = j13 - 1;
            x2.g0(bArr4, j13, (byte) (value & 255));
        }
    }

    public AbstractC12698o(AbstractC12715u abstractC12715u, int i10, a aVar) {
        this(abstractC12715u, i10);
    }

    public static final void J0(C2 writer, int fieldNumber, A2.b fieldType, Object object) throws IOException {
        switch (a.f69387a[fieldType.ordinal()]) {
            case 1:
                writer.q(fieldNumber, ((Boolean) object).booleanValue());
                return;
            case 2:
                writer.c(fieldNumber, ((Integer) object).intValue());
                return;
            case 3:
                writer.o(fieldNumber, ((Long) object).longValue());
                return;
            case 4:
                writer.i(fieldNumber, ((Integer) object).intValue());
                return;
            case 5:
                writer.L(fieldNumber, ((Long) object).longValue());
                return;
            case 6:
                writer.r(fieldNumber, ((Integer) object).intValue());
                return;
            case 7:
                writer.C(fieldNumber, ((Long) object).longValue());
                return;
            case 8:
                writer.S(fieldNumber, ((Integer) object).intValue());
                return;
            case 9:
                writer.l(fieldNumber, ((Long) object).longValue());
                return;
            case 10:
                writer.e(fieldNumber, (String) object);
                return;
            case 11:
                writer.m(fieldNumber, ((Integer) object).intValue());
                return;
            case 12:
                writer.f(fieldNumber, ((Long) object).longValue());
                return;
            case 13:
                writer.P(fieldNumber, ((Float) object).floatValue());
                return;
            case 14:
                writer.G(fieldNumber, ((Double) object).doubleValue());
                return;
            case 15:
                writer.K(fieldNumber, object);
                return;
            case 16:
                writer.h(fieldNumber, (AbstractC12724x) object);
                return;
            case 17:
                if (object instanceof D0.c) {
                    writer.Q(fieldNumber, ((D0.c) object).getNumber());
                    return;
                } else {
                    if (!(object instanceof Integer)) {
                        throw new IllegalArgumentException("Unexpected type for enum in map.");
                    }
                    writer.Q(fieldNumber, ((Integer) object).intValue());
                    return;
                }
            default:
                throw new IllegalArgumentException("Unsupported map value type for: " + ((Object) fieldType));
        }
    }

    public static byte a0(long value) {
        byte b10;
        if (((-128) & value) == 0) {
            return (byte) 1;
        }
        if (value < 0) {
            return (byte) 10;
        }
        if (((-34359738368L) & value) != 0) {
            b10 = (byte) 6;
            value >>>= 28;
        } else {
            b10 = 2;
        }
        if ((ExecutorC14502a.f98708y & value) != 0) {
            b10 = (byte) (b10 + 2);
            value >>>= 14;
        }
        return (value & (-16384)) != 0 ? (byte) (b10 + 1) : b10;
    }

    public static boolean d0() {
        return d.Y0();
    }

    public static boolean e0() {
        return e.a1();
    }

    public static AbstractC12698o h0(AbstractC12715u alloc) {
        return i0(alloc, 4096);
    }

    public static AbstractC12698o i0(AbstractC12715u alloc, int chunkSize) {
        return d0() ? p0(alloc, chunkSize) : n0(alloc, chunkSize);
    }

    public static AbstractC12698o l0(AbstractC12715u alloc) {
        return m0(alloc, 4096);
    }

    public static AbstractC12698o m0(AbstractC12715u alloc, int chunkSize) {
        return e0() ? q0(alloc, chunkSize) : o0(alloc, chunkSize);
    }

    public static AbstractC12698o n0(AbstractC12715u alloc, int chunkSize) {
        return new b(alloc, chunkSize);
    }

    public static AbstractC12698o o0(AbstractC12715u alloc, int chunkSize) {
        return new c(alloc, chunkSize);
    }

    public static AbstractC12698o p0(AbstractC12715u alloc, int chunkSize) {
        if (d0()) {
            return new d(alloc, chunkSize);
        }
        throw new UnsupportedOperationException("Unsafe operations not supported");
    }

    public static AbstractC12698o q0(AbstractC12715u alloc, int chunkSize) {
        if (e0()) {
            return new e(alloc, chunkSize);
        }
        throw new UnsupportedOperationException("Unsafe operations not supported");
    }

    @Override
    public final void A(int fieldNumber, List<String> list) throws IOException {
        if (!(list instanceof K0)) {
            for (int size = list.size() - 1; size >= 0; size--) {
                e(fieldNumber, list.get(size));
            }
            return;
        }
        K0 k02 = (K0) list;
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            I0(fieldNumber, k02.Ee(size2));
        }
    }

    public abstract void A0(long value);

    public final void B0(int fieldNumber, O0 list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                o(fieldNumber, list.getLong(size));
            }
            return;
        }
        r0((list.size() * 8) + 10);
        int c02 = c0();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            A0(list.getLong(size2));
        }
        W0(c0() - c02);
        R0(fieldNumber, 2);
    }

    @Override
    public final void C(int fieldNumber, long value) throws IOException {
        o(fieldNumber, value);
    }

    public final void C0(int fieldNumber, List<Long> list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                o(fieldNumber, list.get(size).longValue());
            }
            return;
        }
        r0((list.size() * 8) + 10);
        int c02 = c0();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            A0(list.get(size2).longValue());
        }
        W0(c0() - c02);
        R0(fieldNumber, 2);
    }

    @Override
    public final void D(int fieldNumber, List<Long> list, boolean packed) throws IOException {
        if (list instanceof O0) {
            O0(fieldNumber, (O0) list, packed);
        } else {
            P0(fieldNumber, list, packed);
        }
    }

    public final void D0(int fieldNumber, C12705q0 list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                P(fieldNumber, list.getFloat(size));
            }
            return;
        }
        r0((list.size() * 4) + 10);
        int c02 = c0();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            x0(Float.floatToRawIntBits(list.getFloat(size2)));
        }
        W0(c0() - c02);
        R0(fieldNumber, 2);
    }

    @Override
    public final void E(int fieldNumber, List<Integer> list, boolean packed) throws IOException {
        g(fieldNumber, list, packed);
    }

    public final void E0(int fieldNumber, List<Float> list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                P(fieldNumber, list.get(size).floatValue());
            }
            return;
        }
        r0((list.size() * 4) + 10);
        int c02 = c0();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            x0(Float.floatToRawIntBits(list.get(size2).floatValue()));
        }
        W0(c0() - c02);
        R0(fieldNumber, 2);
    }

    @Override
    @Deprecated
    public final void F(int fieldNumber, List<?> list, L1 schema) throws IOException {
        for (int size = list.size() - 1; size >= 0; size--) {
            B(fieldNumber, list.get(size), schema);
        }
    }

    public abstract void F0(int value);

    @Override
    public final void G(int fieldNumber, double value) throws IOException {
        o(fieldNumber, Double.doubleToRawLongBits(value));
    }

    public final void G0(int fieldNumber, C0 list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                i(fieldNumber, list.getInt(size));
            }
            return;
        }
        r0((list.size() * 10) + 10);
        int c02 = c0();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            F0(list.getInt(size2));
        }
        W0(c0() - c02);
        R0(fieldNumber, 2);
    }

    @Override
    public final void H(int fieldNumber, List<Long> list, boolean packed) throws IOException {
        t(fieldNumber, list, packed);
    }

    public final void H0(int fieldNumber, List<Integer> list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                i(fieldNumber, list.get(size).intValue());
            }
            return;
        }
        r0((list.size() * 10) + 10);
        int c02 = c0();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            F0(list.get(size2).intValue());
        }
        W0(c0() - c02);
        R0(fieldNumber, 2);
    }

    public final void I0(int fieldNumber, Object value) throws IOException {
        if (value instanceof String) {
            e(fieldNumber, (String) value);
        } else {
            h(fieldNumber, (AbstractC12724x) value);
        }
    }

    @Override
    public final C2.a J() {
        return C2.a.DESCENDING;
    }

    public abstract void K0(int value);

    @Override
    public final void L(int fieldNumber, long value) throws IOException {
        f(fieldNumber, value);
    }

    public final void L0(int fieldNumber, C0 list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                S(fieldNumber, list.getInt(size));
            }
            return;
        }
        r0((list.size() * 5) + 10);
        int c02 = c0();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            K0(list.getInt(size2));
        }
        W0(c0() - c02);
        R0(fieldNumber, 2);
    }

    @Override
    public final void M(int fieldNumber, List<Integer> list, boolean packed) throws IOException {
        j(fieldNumber, list, packed);
    }

    public final void M0(int fieldNumber, List<Integer> list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                S(fieldNumber, list.get(size).intValue());
            }
            return;
        }
        r0((list.size() * 5) + 10);
        int c02 = c0();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            K0(list.get(size2).intValue());
        }
        W0(c0() - c02);
        R0(fieldNumber, 2);
    }

    @Override
    public final void N(int fieldNumber, List<Boolean> list, boolean packed) throws IOException {
        if (list instanceof C12712t) {
            t0(fieldNumber, (C12712t) list, packed);
        } else {
            u0(fieldNumber, list, packed);
        }
    }

    public abstract void N0(long value);

    public final void O0(int fieldNumber, O0 list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                l(fieldNumber, list.getLong(size));
            }
            return;
        }
        r0((list.size() * 10) + 10);
        int c02 = c0();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            N0(list.getLong(size2));
        }
        W0(c0() - c02);
        R0(fieldNumber, 2);
    }

    @Override
    public final void P(int fieldNumber, float value) throws IOException {
        c(fieldNumber, Float.floatToRawIntBits(value));
    }

    public final void P0(int fieldNumber, List<Long> list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                l(fieldNumber, list.get(size).longValue());
            }
            return;
        }
        r0((list.size() * 10) + 10);
        int c02 = c0();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            N0(list.get(size2).longValue());
        }
        W0(c0() - c02);
        R0(fieldNumber, 2);
    }

    @Override
    public final void Q(int fieldNumber, int value) throws IOException {
        i(fieldNumber, value);
    }

    public abstract void Q0(String in2);

    @Override
    public final void R(int fieldNumber, List<Long> list, boolean packed) throws IOException {
        n(fieldNumber, list, packed);
    }

    public abstract void R0(int fieldNumber, int wireType);

    public final void S0(int fieldNumber, C0 list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                m(fieldNumber, list.getInt(size));
            }
            return;
        }
        r0((list.size() * 5) + 10);
        int c02 = c0();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            W0(list.getInt(size2));
        }
        W0(c0() - c02);
        R0(fieldNumber, 2);
    }

    public final void T0(int fieldNumber, List<Integer> list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                m(fieldNumber, list.get(size).intValue());
            }
            return;
        }
        r0((list.size() * 5) + 10);
        int c02 = c0();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            W0(list.get(size2).intValue());
        }
        W0(c0() - c02);
        R0(fieldNumber, 2);
    }

    public final void U0(int fieldNumber, O0 list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                f(fieldNumber, list.getLong(size));
            }
            return;
        }
        r0((list.size() * 10) + 10);
        int c02 = c0();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            X0(list.getLong(size2));
        }
        W0(c0() - c02);
        R0(fieldNumber, 2);
    }

    public final void V0(int fieldNumber, List<Long> list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                f(fieldNumber, list.get(size).longValue());
            }
            return;
        }
        r0((list.size() * 10) + 10);
        int c02 = c0();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            X0(list.get(size2).longValue());
        }
        W0(c0() - c02);
        R0(fieldNumber, 2);
    }

    public abstract void W0(int value);

    public abstract void X0(long value);

    @A
    public final Queue<AbstractC12668e> Z() {
        b0();
        return this.f69385c;
    }

    @Override
    public final void a(int fieldNumber, List<Float> list, boolean packed) throws IOException {
        if (list instanceof C12705q0) {
            D0(fieldNumber, (C12705q0) list, packed);
        } else {
            E0(fieldNumber, list, packed);
        }
    }

    @Override
    public final void b(int fieldNumber, Object value) throws IOException {
        R0(1, 4);
        if (value instanceof AbstractC12724x) {
            h(3, (AbstractC12724x) value);
        } else {
            K(3, value);
        }
        m(2, fieldNumber);
        R0(1, 3);
    }

    public abstract void b0();

    public abstract int c0();

    @Override
    @Deprecated
    public final void d(int fieldNumber, List<?> list) throws IOException {
        for (int size = list.size() - 1; size >= 0; size--) {
            O(fieldNumber, list.get(size));
        }
    }

    public final AbstractC12668e f0() {
        return this.f69383a.a(this.f69384b);
    }

    @Override
    public final void g(int fieldNumber, List<Integer> list, boolean packed) throws IOException {
        if (list instanceof C0) {
            G0(fieldNumber, (C0) list, packed);
        } else {
            H0(fieldNumber, list, packed);
        }
    }

    public final AbstractC12668e g0(int capacity) {
        return this.f69383a.a(Math.max(capacity, this.f69384b));
    }

    @Override
    public final void j(int fieldNumber, List<Integer> list, boolean packed) throws IOException {
        if (list instanceof C0) {
            y0(fieldNumber, (C0) list, packed);
        } else {
            z0(fieldNumber, list, packed);
        }
    }

    public final AbstractC12668e j0() {
        return this.f69383a.b(this.f69384b);
    }

    @Override
    public final void k(int fieldNumber, List<Integer> list, boolean packed) throws IOException {
        if (list instanceof C0) {
            S0(fieldNumber, (C0) list, packed);
        } else {
            T0(fieldNumber, list, packed);
        }
    }

    public final AbstractC12668e k0(int capacity) {
        return this.f69383a.b(Math.max(capacity, this.f69384b));
    }

    @Override
    public final void n(int fieldNumber, List<Long> list, boolean packed) throws IOException {
        if (list instanceof O0) {
            U0(fieldNumber, (O0) list, packed);
        } else {
            V0(fieldNumber, list, packed);
        }
    }

    @Override
    public final void p(int fieldNumber, List<?> list) throws IOException {
        for (int size = list.size() - 1; size >= 0; size--) {
            K(fieldNumber, list.get(size));
        }
    }

    @Override
    public final void r(int fieldNumber, int value) throws IOException {
        c(fieldNumber, value);
    }

    public abstract void r0(int size);

    public abstract void s0(boolean value);

    @Override
    public final void t(int fieldNumber, List<Long> list, boolean packed) throws IOException {
        if (list instanceof O0) {
            B0(fieldNumber, (O0) list, packed);
        } else {
            C0(fieldNumber, list, packed);
        }
    }

    public final void t0(int fieldNumber, C12712t list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                q(fieldNumber, list.getBoolean(size));
            }
            return;
        }
        r0(list.size() + 10);
        int c02 = c0();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            s0(list.getBoolean(size2));
        }
        W0(c0() - c02);
        R0(fieldNumber, 2);
    }

    @Override
    public <K, V> void u(int fieldNumber, R0.b<K, V> metadata, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            int c02 = c0();
            J0(this, 2, metadata.f68863c, entry.getValue());
            J0(this, 1, metadata.f68861a, entry.getKey());
            W0(c0() - c02);
            R0(fieldNumber, 2);
        }
    }

    public final void u0(int fieldNumber, List<Boolean> list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                q(fieldNumber, list.get(size).booleanValue());
            }
            return;
        }
        r0(list.size() + 10);
        int c02 = c0();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            s0(list.get(size2).booleanValue());
        }
        W0(c0() - c02);
        R0(fieldNumber, 2);
    }

    public final void v0(int fieldNumber, J list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                G(fieldNumber, list.getDouble(size));
            }
            return;
        }
        r0((list.size() * 8) + 10);
        int c02 = c0();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            A0(Double.doubleToRawLongBits(list.getDouble(size2)));
        }
        W0(c0() - c02);
        R0(fieldNumber, 2);
    }

    @Override
    public final void w(int fieldNumber, List<Integer> list, boolean packed) throws IOException {
        if (list instanceof C0) {
            L0(fieldNumber, (C0) list, packed);
        } else {
            M0(fieldNumber, list, packed);
        }
    }

    public final void w0(int fieldNumber, List<Double> list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                G(fieldNumber, list.get(size).doubleValue());
            }
            return;
        }
        r0((list.size() * 8) + 10);
        int c02 = c0();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            A0(Double.doubleToRawLongBits(list.get(size2).doubleValue()));
        }
        W0(c0() - c02);
        R0(fieldNumber, 2);
    }

    @Override
    public final void x(int fieldNumber, List<Double> list, boolean packed) throws IOException {
        if (list instanceof J) {
            v0(fieldNumber, (J) list, packed);
        } else {
            w0(fieldNumber, list, packed);
        }
    }

    public abstract void x0(int value);

    @Override
    public final void y(int fieldNumber, List<AbstractC12724x> list) throws IOException {
        for (int size = list.size() - 1; size >= 0; size--) {
            h(fieldNumber, list.get(size));
        }
    }

    public final void y0(int fieldNumber, C0 list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                c(fieldNumber, list.getInt(size));
            }
            return;
        }
        r0((list.size() * 4) + 10);
        int c02 = c0();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            x0(list.getInt(size2));
        }
        W0(c0() - c02);
        R0(fieldNumber, 2);
    }

    @Override
    public final void z(int fieldNumber, List<?> list, L1 schema) throws IOException {
        for (int size = list.size() - 1; size >= 0; size--) {
            I(fieldNumber, list.get(size), schema);
        }
    }

    public final void z0(int fieldNumber, List<Integer> list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                c(fieldNumber, list.get(size).intValue());
            }
            return;
        }
        r0((list.size() * 4) + 10);
        int c02 = c0();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            x0(list.get(size2).intValue());
        }
        W0(c0() - c02);
        R0(fieldNumber, 2);
    }

    public AbstractC12698o(AbstractC12715u alloc, int chunkSize) {
        this.f69385c = new ArrayDeque<>(4);
        if (chunkSize > 0) {
            this.f69383a = (AbstractC12715u) D0.e(alloc, "alloc");
            this.f69384b = chunkSize;
            return;
        }
        throw new IllegalArgumentException("chunkSize must be > 0");
    }
}
