package com.google.protobuf;

import com.google.protobuf.Utf8;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.logging.Level;
import java.util.logging.Logger;
import og.ExecutorC14502a;
import org.luaj.vm2.Lua;

public abstract class CodedOutputStream extends AbstractC12721w {

    public static final Logger f67885c = Logger.getLogger(CodedOutputStream.class.getName());

    public static final boolean f67886d = x2.U();

    @Deprecated
    public static final int f67887e = 4;

    public static final int f67888f = 4096;

    public E f67889a;

    public boolean f67890b;

    public static class OutOfSpaceException extends IOException {
        private static final String MESSAGE = "CodedOutputStream was writing to a flat byte array and ran out of space.";
        private static final long serialVersionUID = -6947486886997889499L;

        public OutOfSpaceException() {
            super(MESSAGE);
        }

        public OutOfSpaceException(String explanationMessage) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.: " + explanationMessage);
        }

        public OutOfSpaceException(Throwable cause) {
            super(MESSAGE, cause);
        }

        public OutOfSpaceException(String explanationMessage, Throwable cause) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.: " + explanationMessage, cause);
        }
    }

    public static abstract class b extends CodedOutputStream {

        public final byte[] f67891g;

        public final int f67892h;

        public int f67893i;

        public int f67894j;

        public b(int bufferSize) {
            super();
            if (bufferSize < 0) {
                throw new IllegalArgumentException("bufferSize must be >= 0");
            }
            byte[] bArr = new byte[Math.max(bufferSize, 20)];
            this.f67891g = bArr;
            this.f67892h = bArr.length;
        }

        @Override
        public final int f1() {
            return this.f67894j;
        }

        public final void j2(byte value) {
            byte[] bArr = this.f67891g;
            int i10 = this.f67893i;
            this.f67893i = i10 + 1;
            bArr[i10] = value;
            this.f67894j++;
        }

        public final void k2(int value) {
            byte[] bArr = this.f67891g;
            int i10 = this.f67893i;
            int i11 = i10 + 1;
            this.f67893i = i11;
            bArr[i10] = (byte) (value & 255);
            int i12 = i10 + 2;
            this.f67893i = i12;
            bArr[i11] = (byte) ((value >> 8) & 255);
            int i13 = i10 + 3;
            this.f67893i = i13;
            bArr[i12] = (byte) ((value >> 16) & 255);
            this.f67893i = i10 + 4;
            bArr[i13] = (byte) ((value >> 24) & 255);
            this.f67894j += 4;
        }

        public final void l2(long value) {
            byte[] bArr = this.f67891g;
            int i10 = this.f67893i;
            int i11 = i10 + 1;
            this.f67893i = i11;
            bArr[i10] = (byte) (value & 255);
            int i12 = i10 + 2;
            this.f67893i = i12;
            bArr[i11] = (byte) ((value >> 8) & 255);
            int i13 = i10 + 3;
            this.f67893i = i13;
            bArr[i12] = (byte) ((value >> 16) & 255);
            int i14 = i10 + 4;
            this.f67893i = i14;
            bArr[i13] = (byte) (255 & (value >> 24));
            int i15 = i10 + 5;
            this.f67893i = i15;
            bArr[i14] = (byte) (((int) (value >> 32)) & 255);
            int i16 = i10 + 6;
            this.f67893i = i16;
            bArr[i15] = (byte) (((int) (value >> 40)) & 255);
            int i17 = i10 + 7;
            this.f67893i = i17;
            bArr[i16] = (byte) (((int) (value >> 48)) & 255);
            this.f67893i = i10 + 8;
            bArr[i17] = (byte) (((int) (value >> 56)) & 255);
            this.f67894j += 8;
        }

        public final void m2(final int value) {
            if (value >= 0) {
                o2(value);
            } else {
                p2(value);
            }
        }

        public final void n2(final int fieldNumber, final int wireType) {
            o2(A2.c(fieldNumber, wireType));
        }

        public final void o2(int value) {
            if (!CodedOutputStream.f67886d) {
                while ((value & (-128)) != 0) {
                    byte[] bArr = this.f67891g;
                    int i10 = this.f67893i;
                    this.f67893i = i10 + 1;
                    bArr[i10] = (byte) ((value & 127) | 128);
                    this.f67894j++;
                    value >>>= 7;
                }
                byte[] bArr2 = this.f67891g;
                int i11 = this.f67893i;
                this.f67893i = i11 + 1;
                bArr2[i11] = (byte) value;
                this.f67894j++;
                return;
            }
            long j10 = this.f67893i;
            while ((value & (-128)) != 0) {
                byte[] bArr3 = this.f67891g;
                int i12 = this.f67893i;
                this.f67893i = i12 + 1;
                x2.g0(bArr3, i12, (byte) ((value & 127) | 128));
                value >>>= 7;
            }
            byte[] bArr4 = this.f67891g;
            int i13 = this.f67893i;
            this.f67893i = i13 + 1;
            x2.g0(bArr4, i13, (byte) value);
            this.f67894j += (int) (this.f67893i - j10);
        }

        public final void p2(long value) {
            if (!CodedOutputStream.f67886d) {
                while ((value & (-128)) != 0) {
                    byte[] bArr = this.f67891g;
                    int i10 = this.f67893i;
                    this.f67893i = i10 + 1;
                    bArr[i10] = (byte) ((((int) value) & 127) | 128);
                    this.f67894j++;
                    value >>>= 7;
                }
                byte[] bArr2 = this.f67891g;
                int i11 = this.f67893i;
                this.f67893i = i11 + 1;
                bArr2[i11] = (byte) value;
                this.f67894j++;
                return;
            }
            long j10 = this.f67893i;
            while ((value & (-128)) != 0) {
                byte[] bArr3 = this.f67891g;
                int i12 = this.f67893i;
                this.f67893i = i12 + 1;
                x2.g0(bArr3, i12, (byte) ((((int) value) & 127) | 128));
                value >>>= 7;
            }
            byte[] bArr4 = this.f67891g;
            int i13 = this.f67893i;
            this.f67893i = i13 + 1;
            x2.g0(bArr4, i13, (byte) value);
            this.f67894j += (int) (this.f67893i - j10);
        }

        @Override
        public final int r1() {
            throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer.");
        }
    }

    public static class c extends CodedOutputStream {

        public final byte[] f67895g;

        public final int f67896h;

        public final int f67897i;

        public int f67898j;

        public c(byte[] buffer, int offset, int length) {
            super();
            if (buffer == null) {
                throw new NullPointerException("buffer");
            }
            int i10 = offset + length;
            if ((offset | length | (buffer.length - i10)) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(buffer.length), Integer.valueOf(offset), Integer.valueOf(length)));
            }
            this.f67895g = buffer;
            this.f67896h = offset;
            this.f67898j = offset;
            this.f67897i = i10;
        }

        @Override
        public final void C1(int value) throws IOException {
            try {
                byte[] bArr = this.f67895g;
                int i10 = this.f67898j;
                int i11 = i10 + 1;
                this.f67898j = i11;
                bArr[i10] = (byte) (value & 255);
                int i12 = i10 + 2;
                this.f67898j = i12;
                bArr[i11] = (byte) ((value >> 8) & 255);
                int i13 = i10 + 3;
                this.f67898j = i13;
                bArr[i12] = (byte) ((value >> 16) & 255);
                this.f67898j = i10 + 4;
                bArr[i13] = (byte) ((value >> 24) & 255);
            } catch (IndexOutOfBoundsException e10) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f67898j), Integer.valueOf(this.f67897i), 1), e10);
            }
        }

        @Override
        public final void D1(long value) throws IOException {
            try {
                byte[] bArr = this.f67895g;
                int i10 = this.f67898j;
                int i11 = i10 + 1;
                this.f67898j = i11;
                bArr[i10] = (byte) (((int) value) & 255);
                int i12 = i10 + 2;
                this.f67898j = i12;
                bArr[i11] = (byte) (((int) (value >> 8)) & 255);
                int i13 = i10 + 3;
                this.f67898j = i13;
                bArr[i12] = (byte) (((int) (value >> 16)) & 255);
                int i14 = i10 + 4;
                this.f67898j = i14;
                bArr[i13] = (byte) (((int) (value >> 24)) & 255);
                int i15 = i10 + 5;
                this.f67898j = i15;
                bArr[i14] = (byte) (((int) (value >> 32)) & 255);
                int i16 = i10 + 6;
                this.f67898j = i16;
                bArr[i15] = (byte) (((int) (value >> 40)) & 255);
                int i17 = i10 + 7;
                this.f67898j = i17;
                bArr[i16] = (byte) (((int) (value >> 48)) & 255);
                this.f67898j = i10 + 8;
                bArr[i17] = (byte) (((int) (value >> 56)) & 255);
            } catch (IndexOutOfBoundsException e10) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f67898j), Integer.valueOf(this.f67897i), 1), e10);
            }
        }

        @Override
        public final void J1(int value) throws IOException {
            if (value >= 0) {
                h2(value);
            } else {
                i2(value);
            }
        }

        @Override
        public final void L1(final int fieldNumber, final InterfaceC12659b1 value) throws IOException {
            g2(fieldNumber, 2);
            N1(value);
        }

        @Override
        public final void M1(final int fieldNumber, final InterfaceC12659b1 value, L1 schema) throws IOException {
            g2(fieldNumber, 2);
            h2(((AbstractC12657b) value).getSerializedSize(schema));
            schema.J1(value, this.f67889a);
        }

        @Override
        public final void N1(final InterfaceC12659b1 value) throws IOException {
            h2(value.getSerializedSize());
            value.writeTo(this);
        }

        @Override
        public final void O1(final InterfaceC12659b1 value, L1 schema) throws IOException {
            h2(((AbstractC12657b) value).getSerializedSize(schema));
            schema.J1(value, this.f67889a);
        }

        @Override
        public final void P1(final int fieldNumber, final InterfaceC12659b1 value) throws IOException {
            g2(1, 3);
            m(2, fieldNumber);
            L1(3, value);
            g2(1, 4);
        }

        @Override
        public final void T(byte value) throws IOException {
            try {
                byte[] bArr = this.f67895g;
                int i10 = this.f67898j;
                this.f67898j = i10 + 1;
                bArr[i10] = value;
            } catch (IndexOutOfBoundsException e10) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f67898j), Integer.valueOf(this.f67897i), 1), e10);
            }
        }

        @Override
        public final void T1(final ByteBuffer value) throws IOException {
            if (value.hasArray()) {
                V(value.array(), value.arrayOffset(), value.capacity());
                return;
            }
            ByteBuffer duplicate = value.duplicate();
            F0.a(duplicate);
            U(duplicate);
        }

        @Override
        public final void U(ByteBuffer value) throws IOException {
            int remaining = value.remaining();
            try {
                value.get(this.f67895g, this.f67898j, remaining);
                this.f67898j += remaining;
            } catch (IndexOutOfBoundsException e10) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f67898j), Integer.valueOf(this.f67897i), Integer.valueOf(remaining)), e10);
            }
        }

        @Override
        public final void V(byte[] value, int offset, int length) throws IOException {
            try {
                System.arraycopy(value, offset, this.f67895g, this.f67898j, length);
                this.f67898j += length;
            } catch (IndexOutOfBoundsException e10) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f67898j), Integer.valueOf(this.f67897i), Integer.valueOf(length)), e10);
            }
        }

        @Override
        public final void W(ByteBuffer value) throws IOException {
            U(value);
        }

        @Override
        public final void X(byte[] value, int offset, int length) throws IOException {
            V(value, offset, length);
        }

        @Override
        public final void Y1(final int fieldNumber, final AbstractC12724x value) throws IOException {
            g2(1, 3);
            m(2, fieldNumber);
            h(3, value);
            g2(1, 4);
        }

        @Override
        public final void c(final int fieldNumber, final int value) throws IOException {
            g2(fieldNumber, 5);
            C1(value);
        }

        @Override
        public final void e(final int fieldNumber, final String value) throws IOException {
            g2(fieldNumber, 2);
            f2(value);
        }

        @Override
        public void e1() {
        }

        @Override
        public final void f(final int fieldNumber, final long value) throws IOException {
            g2(fieldNumber, 0);
            i2(value);
        }

        @Override
        public final int f1() {
            return this.f67898j - this.f67896h;
        }

        @Override
        public final void f2(String value) throws IOException {
            int i10 = this.f67898j;
            try {
                int Z02 = CodedOutputStream.Z0(value.length() * 3);
                int Z03 = CodedOutputStream.Z0(value.length());
                if (Z03 == Z02) {
                    int i11 = i10 + Z03;
                    this.f67898j = i11;
                    int i12 = Utf8.i(value, this.f67895g, i11, r1());
                    this.f67898j = i10;
                    h2((i12 - i10) - Z03);
                    this.f67898j = i12;
                } else {
                    h2(Utf8.k(value));
                    this.f67898j = Utf8.i(value, this.f67895g, this.f67898j, r1());
                }
            } catch (Utf8.UnpairedSurrogateException e10) {
                this.f67898j = i10;
                g1(value, e10);
            } catch (IndexOutOfBoundsException e11) {
                throw new OutOfSpaceException(e11);
            }
        }

        @Override
        public final void g2(final int fieldNumber, final int wireType) throws IOException {
            h2(A2.c(fieldNumber, wireType));
        }

        @Override
        public final void h(final int fieldNumber, final AbstractC12724x value) throws IOException {
            g2(fieldNumber, 2);
            z1(value);
        }

        @Override
        public final void h2(int value) throws IOException {
            while ((value & (-128)) != 0) {
                try {
                    byte[] bArr = this.f67895g;
                    int i10 = this.f67898j;
                    this.f67898j = i10 + 1;
                    bArr[i10] = (byte) ((value & 127) | 128);
                    value >>>= 7;
                } catch (IndexOutOfBoundsException e10) {
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f67898j), Integer.valueOf(this.f67897i), 1), e10);
                }
            }
            byte[] bArr2 = this.f67895g;
            int i11 = this.f67898j;
            this.f67898j = i11 + 1;
            bArr2[i11] = (byte) value;
        }

        @Override
        public final void i(final int fieldNumber, final int value) throws IOException {
            g2(fieldNumber, 0);
            J1(value);
        }

        @Override
        public final void i2(long value) throws IOException {
            if (CodedOutputStream.f67886d && r1() >= 10) {
                while ((value & (-128)) != 0) {
                    byte[] bArr = this.f67895g;
                    int i10 = this.f67898j;
                    this.f67898j = i10 + 1;
                    x2.g0(bArr, i10, (byte) ((((int) value) & 127) | 128));
                    value >>>= 7;
                }
                byte[] bArr2 = this.f67895g;
                int i11 = this.f67898j;
                this.f67898j = i11 + 1;
                x2.g0(bArr2, i11, (byte) value);
                return;
            }
            while ((value & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.f67895g;
                    int i12 = this.f67898j;
                    this.f67898j = i12 + 1;
                    bArr3[i12] = (byte) ((((int) value) & 127) | 128);
                    value >>>= 7;
                } catch (IndexOutOfBoundsException e10) {
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f67898j), Integer.valueOf(this.f67897i), 1), e10);
                }
            }
            byte[] bArr4 = this.f67895g;
            int i13 = this.f67898j;
            this.f67898j = i13 + 1;
            bArr4[i13] = (byte) value;
        }

        @Override
        public final void m(final int fieldNumber, final int value) throws IOException {
            g2(fieldNumber, 0);
            h2(value);
        }

        @Override
        public final void o(final int fieldNumber, final long value) throws IOException {
            g2(fieldNumber, 1);
            D1(value);
        }

        @Override
        public final void q(int i10, boolean z10) throws IOException {
            g2(i10, 0);
            T(z10 ? (byte) 1 : (byte) 0);
        }

        @Override
        public final int r1() {
            return this.f67897i - this.f67898j;
        }

        @Override
        public final void u1(final int fieldNumber, final byte[] value) throws IOException {
            v1(fieldNumber, value, 0, value.length);
        }

        @Override
        public final void v1(final int fieldNumber, final byte[] value, final int offset, final int length) throws IOException {
            g2(fieldNumber, 2);
            x1(value, offset, length);
        }

        @Override
        public final void x1(final byte[] value, int offset, int length) throws IOException {
            h2(length);
            V(value, offset, length);
        }

        @Override
        public final void y1(final int fieldNumber, final ByteBuffer value) throws IOException {
            g2(fieldNumber, 2);
            h2(value.capacity());
            T1(value);
        }

        @Override
        public final void z1(final AbstractC12724x value) throws IOException {
            h2(value.size());
            value.m0(this);
        }
    }

    public static final class d extends b {

        public final AbstractC12721w f67899k;

        public d(AbstractC12721w out, int bufferSize) {
            super(bufferSize);
            if (out == null) {
                throw new NullPointerException("out");
            }
            this.f67899k = out;
        }

        @Override
        public void C1(final int value) throws IOException {
            r2(4);
            k2(value);
        }

        @Override
        public void D1(final long value) throws IOException {
            r2(8);
            l2(value);
        }

        @Override
        public void J1(int value) throws IOException {
            if (value >= 0) {
                h2(value);
            } else {
                i2(value);
            }
        }

        @Override
        public void L1(final int fieldNumber, final InterfaceC12659b1 value) throws IOException {
            g2(fieldNumber, 2);
            N1(value);
        }

        @Override
        public void M1(final int fieldNumber, final InterfaceC12659b1 value, L1 schema) throws IOException {
            g2(fieldNumber, 2);
            O1(value, schema);
        }

        @Override
        public void N1(final InterfaceC12659b1 value) throws IOException {
            h2(value.getSerializedSize());
            value.writeTo(this);
        }

        @Override
        public void O1(final InterfaceC12659b1 value, L1 schema) throws IOException {
            h2(((AbstractC12657b) value).getSerializedSize(schema));
            schema.J1(value, this.f67889a);
        }

        @Override
        public void P1(final int fieldNumber, final InterfaceC12659b1 value) throws IOException {
            g2(1, 3);
            m(2, fieldNumber);
            L1(3, value);
            g2(1, 4);
        }

        @Override
        public void T(byte value) throws IOException {
            if (this.f67893i == this.f67892h) {
                q2();
            }
            j2(value);
        }

        @Override
        public void T1(final ByteBuffer value) throws IOException {
            if (value.hasArray()) {
                V(value.array(), value.arrayOffset(), value.capacity());
                return;
            }
            ByteBuffer duplicate = value.duplicate();
            F0.a(duplicate);
            U(duplicate);
        }

        @Override
        public void U(ByteBuffer value) throws IOException {
            e1();
            int remaining = value.remaining();
            this.f67899k.U(value);
            this.f67894j += remaining;
        }

        @Override
        public void V(byte[] value, int offset, int length) throws IOException {
            e1();
            this.f67899k.V(value, offset, length);
            this.f67894j += length;
        }

        @Override
        public void W(ByteBuffer value) throws IOException {
            e1();
            int remaining = value.remaining();
            this.f67899k.W(value);
            this.f67894j += remaining;
        }

        @Override
        public void X(byte[] value, int offset, int length) throws IOException {
            e1();
            this.f67899k.X(value, offset, length);
            this.f67894j += length;
        }

        @Override
        public void Y1(final int fieldNumber, final AbstractC12724x value) throws IOException {
            g2(1, 3);
            m(2, fieldNumber);
            h(3, value);
            g2(1, 4);
        }

        @Override
        public void c(final int fieldNumber, final int value) throws IOException {
            r2(14);
            n2(fieldNumber, 5);
            k2(value);
        }

        @Override
        public void e(final int fieldNumber, final String value) throws IOException {
            g2(fieldNumber, 2);
            f2(value);
        }

        @Override
        public void e1() throws IOException {
            if (this.f67893i > 0) {
                q2();
            }
        }

        @Override
        public void f(final int fieldNumber, final long value) throws IOException {
            r2(20);
            n2(fieldNumber, 0);
            p2(value);
        }

        @Override
        public void f2(String value) throws IOException {
            int length = value.length() * 3;
            int Z02 = CodedOutputStream.Z0(length);
            int i10 = Z02 + length;
            int i11 = this.f67892h;
            if (i10 > i11) {
                byte[] bArr = new byte[length];
                int i12 = Utf8.i(value, bArr, 0, length);
                h2(i12);
                X(bArr, 0, i12);
                return;
            }
            if (i10 > i11 - this.f67893i) {
                q2();
            }
            int i13 = this.f67893i;
            try {
                int Z03 = CodedOutputStream.Z0(value.length());
                if (Z03 == Z02) {
                    int i14 = i13 + Z03;
                    this.f67893i = i14;
                    int i15 = Utf8.i(value, this.f67891g, i14, this.f67892h - i14);
                    this.f67893i = i13;
                    int i16 = (i15 - i13) - Z03;
                    o2(i16);
                    this.f67893i = i15;
                    this.f67894j += i16;
                } else {
                    int k10 = Utf8.k(value);
                    o2(k10);
                    this.f67893i = Utf8.i(value, this.f67891g, this.f67893i, k10);
                    this.f67894j += k10;
                }
            } catch (Utf8.UnpairedSurrogateException e10) {
                this.f67894j -= this.f67893i - i13;
                this.f67893i = i13;
                g1(value, e10);
            } catch (IndexOutOfBoundsException e11) {
                throw new OutOfSpaceException(e11);
            }
        }

        @Override
        public void g2(final int fieldNumber, final int wireType) throws IOException {
            h2(A2.c(fieldNumber, wireType));
        }

        @Override
        public void h(final int fieldNumber, final AbstractC12724x value) throws IOException {
            g2(fieldNumber, 2);
            z1(value);
        }

        @Override
        public void h2(int value) throws IOException {
            r2(5);
            o2(value);
        }

        @Override
        public void i(final int fieldNumber, final int value) throws IOException {
            r2(20);
            n2(fieldNumber, 0);
            m2(value);
        }

        @Override
        public void i2(long value) throws IOException {
            r2(10);
            p2(value);
        }

        @Override
        public void m(final int fieldNumber, final int value) throws IOException {
            r2(20);
            n2(fieldNumber, 0);
            o2(value);
        }

        @Override
        public void o(final int fieldNumber, final long value) throws IOException {
            r2(18);
            n2(fieldNumber, 1);
            l2(value);
        }

        @Override
        public void q(int i10, boolean z10) throws IOException {
            r2(11);
            n2(i10, 0);
            j2(z10 ? (byte) 1 : (byte) 0);
        }

        public final void q2() throws IOException {
            this.f67899k.V(this.f67891g, 0, this.f67893i);
            this.f67893i = 0;
        }

        public final void r2(int requiredSize) throws IOException {
            if (this.f67892h - this.f67893i < requiredSize) {
                q2();
            }
        }

        @Override
        public void u1(final int fieldNumber, final byte[] value) throws IOException {
            v1(fieldNumber, value, 0, value.length);
        }

        @Override
        public void v1(final int fieldNumber, final byte[] value, final int offset, final int length) throws IOException {
            g2(fieldNumber, 2);
            x1(value, offset, length);
        }

        @Override
        public void x1(final byte[] value, int offset, int length) throws IOException {
            h2(length);
            V(value, offset, length);
        }

        @Override
        public void y1(final int fieldNumber, final ByteBuffer value) throws IOException {
            g2(fieldNumber, 2);
            h2(value.capacity());
            T1(value);
        }

        @Override
        public void z1(final AbstractC12724x value) throws IOException {
            h2(value.size());
            value.m0(this);
        }
    }

    public static final class e extends c {

        public final ByteBuffer f67900k;

        public int f67901l;

        public e(ByteBuffer byteBuffer) {
            super(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            this.f67900k = byteBuffer;
            this.f67901l = byteBuffer.position();
        }

        @Override
        public void e1() {
            F0.e(this.f67900k, this.f67901l + f1());
        }
    }

    public static final class f extends b {

        public final OutputStream f67902k;

        public f(OutputStream out, int bufferSize) {
            super(bufferSize);
            if (out == null) {
                throw new NullPointerException("out");
            }
            this.f67902k = out;
        }

        private void q2() throws IOException {
            this.f67902k.write(this.f67891g, 0, this.f67893i);
            this.f67893i = 0;
        }

        private void r2(int requiredSize) throws IOException {
            if (this.f67892h - this.f67893i < requiredSize) {
                q2();
            }
        }

        @Override
        public void C1(final int value) throws IOException {
            r2(4);
            k2(value);
        }

        @Override
        public void D1(final long value) throws IOException {
            r2(8);
            l2(value);
        }

        @Override
        public void J1(int value) throws IOException {
            if (value >= 0) {
                h2(value);
            } else {
                i2(value);
            }
        }

        @Override
        public void L1(final int fieldNumber, final InterfaceC12659b1 value) throws IOException {
            g2(fieldNumber, 2);
            N1(value);
        }

        @Override
        public void M1(final int fieldNumber, final InterfaceC12659b1 value, L1 schema) throws IOException {
            g2(fieldNumber, 2);
            O1(value, schema);
        }

        @Override
        public void N1(final InterfaceC12659b1 value) throws IOException {
            h2(value.getSerializedSize());
            value.writeTo(this);
        }

        @Override
        public void O1(final InterfaceC12659b1 value, L1 schema) throws IOException {
            h2(((AbstractC12657b) value).getSerializedSize(schema));
            schema.J1(value, this.f67889a);
        }

        @Override
        public void P1(final int fieldNumber, final InterfaceC12659b1 value) throws IOException {
            g2(1, 3);
            m(2, fieldNumber);
            L1(3, value);
            g2(1, 4);
        }

        @Override
        public void T(byte value) throws IOException {
            if (this.f67893i == this.f67892h) {
                q2();
            }
            j2(value);
        }

        @Override
        public void T1(final ByteBuffer value) throws IOException {
            if (value.hasArray()) {
                V(value.array(), value.arrayOffset(), value.capacity());
                return;
            }
            ByteBuffer duplicate = value.duplicate();
            F0.a(duplicate);
            U(duplicate);
        }

        @Override
        public void U(ByteBuffer value) throws IOException {
            int remaining = value.remaining();
            int i10 = this.f67892h;
            int i11 = this.f67893i;
            if (i10 - i11 >= remaining) {
                value.get(this.f67891g, i11, remaining);
                this.f67893i += remaining;
                this.f67894j += remaining;
                return;
            }
            int i12 = i10 - i11;
            value.get(this.f67891g, i11, i12);
            int i13 = remaining - i12;
            this.f67893i = this.f67892h;
            this.f67894j += i12;
            q2();
            while (true) {
                int i14 = this.f67892h;
                if (i13 <= i14) {
                    value.get(this.f67891g, 0, i13);
                    this.f67893i = i13;
                    this.f67894j += i13;
                    return;
                } else {
                    value.get(this.f67891g, 0, i14);
                    this.f67902k.write(this.f67891g, 0, this.f67892h);
                    int i15 = this.f67892h;
                    i13 -= i15;
                    this.f67894j += i15;
                }
            }
        }

        @Override
        public void V(byte[] value, int offset, int length) throws IOException {
            int i10 = this.f67892h;
            int i11 = this.f67893i;
            if (i10 - i11 >= length) {
                System.arraycopy(value, offset, this.f67891g, i11, length);
                this.f67893i += length;
                this.f67894j += length;
                return;
            }
            int i12 = i10 - i11;
            System.arraycopy(value, offset, this.f67891g, i11, i12);
            int i13 = offset + i12;
            int i14 = length - i12;
            this.f67893i = this.f67892h;
            this.f67894j += i12;
            q2();
            if (i14 <= this.f67892h) {
                System.arraycopy(value, i13, this.f67891g, 0, i14);
                this.f67893i = i14;
            } else {
                this.f67902k.write(value, i13, i14);
            }
            this.f67894j += i14;
        }

        @Override
        public void W(ByteBuffer value) throws IOException {
            U(value);
        }

        @Override
        public void X(byte[] value, int offset, int length) throws IOException {
            V(value, offset, length);
        }

        @Override
        public void Y1(final int fieldNumber, final AbstractC12724x value) throws IOException {
            g2(1, 3);
            m(2, fieldNumber);
            h(3, value);
            g2(1, 4);
        }

        @Override
        public void c(final int fieldNumber, final int value) throws IOException {
            r2(14);
            n2(fieldNumber, 5);
            k2(value);
        }

        @Override
        public void e(final int fieldNumber, final String value) throws IOException {
            g2(fieldNumber, 2);
            f2(value);
        }

        @Override
        public void e1() throws IOException {
            if (this.f67893i > 0) {
                q2();
            }
        }

        @Override
        public void f(final int fieldNumber, final long value) throws IOException {
            r2(20);
            n2(fieldNumber, 0);
            p2(value);
        }

        @Override
        public void f2(String value) throws IOException {
            int k10;
            try {
                int length = value.length() * 3;
                int Z02 = CodedOutputStream.Z0(length);
                int i10 = Z02 + length;
                int i11 = this.f67892h;
                if (i10 > i11) {
                    byte[] bArr = new byte[length];
                    int i12 = Utf8.i(value, bArr, 0, length);
                    h2(i12);
                    X(bArr, 0, i12);
                    return;
                }
                if (i10 > i11 - this.f67893i) {
                    q2();
                }
                int Z03 = CodedOutputStream.Z0(value.length());
                int i13 = this.f67893i;
                try {
                    if (Z03 == Z02) {
                        int i14 = i13 + Z03;
                        this.f67893i = i14;
                        int i15 = Utf8.i(value, this.f67891g, i14, this.f67892h - i14);
                        this.f67893i = i13;
                        k10 = (i15 - i13) - Z03;
                        o2(k10);
                        this.f67893i = i15;
                    } else {
                        k10 = Utf8.k(value);
                        o2(k10);
                        this.f67893i = Utf8.i(value, this.f67891g, this.f67893i, k10);
                    }
                    this.f67894j += k10;
                } catch (Utf8.UnpairedSurrogateException e10) {
                    this.f67894j -= this.f67893i - i13;
                    this.f67893i = i13;
                    throw e10;
                } catch (ArrayIndexOutOfBoundsException e11) {
                    throw new OutOfSpaceException(e11);
                }
            } catch (Utf8.UnpairedSurrogateException e12) {
                g1(value, e12);
            }
        }

        @Override
        public void g2(final int fieldNumber, final int wireType) throws IOException {
            h2(A2.c(fieldNumber, wireType));
        }

        @Override
        public void h(final int fieldNumber, final AbstractC12724x value) throws IOException {
            g2(fieldNumber, 2);
            z1(value);
        }

        @Override
        public void h2(int value) throws IOException {
            r2(5);
            o2(value);
        }

        @Override
        public void i(final int fieldNumber, final int value) throws IOException {
            r2(20);
            n2(fieldNumber, 0);
            m2(value);
        }

        @Override
        public void i2(long value) throws IOException {
            r2(10);
            p2(value);
        }

        @Override
        public void m(final int fieldNumber, final int value) throws IOException {
            r2(20);
            n2(fieldNumber, 0);
            o2(value);
        }

        @Override
        public void o(final int fieldNumber, final long value) throws IOException {
            r2(18);
            n2(fieldNumber, 1);
            l2(value);
        }

        @Override
        public void q(int i10, boolean z10) throws IOException {
            r2(11);
            n2(i10, 0);
            j2(z10 ? (byte) 1 : (byte) 0);
        }

        @Override
        public void u1(final int fieldNumber, final byte[] value) throws IOException {
            v1(fieldNumber, value, 0, value.length);
        }

        @Override
        public void v1(final int fieldNumber, final byte[] value, final int offset, final int length) throws IOException {
            g2(fieldNumber, 2);
            x1(value, offset, length);
        }

        @Override
        public void x1(final byte[] value, int offset, int length) throws IOException {
            h2(length);
            V(value, offset, length);
        }

        @Override
        public void y1(final int fieldNumber, final ByteBuffer value) throws IOException {
            g2(fieldNumber, 2);
            h2(value.capacity());
            T1(value);
        }

        @Override
        public void z1(final AbstractC12724x value) throws IOException {
            h2(value.size());
            value.m0(this);
        }
    }

    public static final class g extends CodedOutputStream {

        public final ByteBuffer f67903g;

        public final ByteBuffer f67904h;

        public final int f67905i;

        public g(ByteBuffer buffer) {
            super();
            this.f67903g = buffer;
            this.f67904h = buffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            this.f67905i = buffer.position();
        }

        @Override
        public void C1(int value) throws IOException {
            try {
                this.f67904h.putInt(value);
            } catch (BufferOverflowException e10) {
                throw new OutOfSpaceException(e10);
            }
        }

        @Override
        public void D1(long value) throws IOException {
            try {
                this.f67904h.putLong(value);
            } catch (BufferOverflowException e10) {
                throw new OutOfSpaceException(e10);
            }
        }

        @Override
        public void J1(int value) throws IOException {
            if (value >= 0) {
                h2(value);
            } else {
                i2(value);
            }
        }

        @Override
        public void L1(final int fieldNumber, final InterfaceC12659b1 value) throws IOException {
            g2(fieldNumber, 2);
            N1(value);
        }

        @Override
        public void M1(final int fieldNumber, final InterfaceC12659b1 value, L1 schema) throws IOException {
            g2(fieldNumber, 2);
            O1(value, schema);
        }

        @Override
        public void N1(final InterfaceC12659b1 value) throws IOException {
            h2(value.getSerializedSize());
            value.writeTo(this);
        }

        @Override
        public void O1(final InterfaceC12659b1 value, L1 schema) throws IOException {
            h2(((AbstractC12657b) value).getSerializedSize(schema));
            schema.J1(value, this.f67889a);
        }

        @Override
        public void P1(final int fieldNumber, final InterfaceC12659b1 value) throws IOException {
            g2(1, 3);
            m(2, fieldNumber);
            L1(3, value);
            g2(1, 4);
        }

        @Override
        public void T(byte value) throws IOException {
            try {
                this.f67904h.put(value);
            } catch (BufferOverflowException e10) {
                throw new OutOfSpaceException(e10);
            }
        }

        @Override
        public void T1(final ByteBuffer value) throws IOException {
            if (value.hasArray()) {
                V(value.array(), value.arrayOffset(), value.capacity());
                return;
            }
            ByteBuffer duplicate = value.duplicate();
            F0.a(duplicate);
            U(duplicate);
        }

        @Override
        public void U(ByteBuffer value) throws IOException {
            try {
                this.f67904h.put(value);
            } catch (BufferOverflowException e10) {
                throw new OutOfSpaceException(e10);
            }
        }

        @Override
        public void V(byte[] value, int offset, int length) throws IOException {
            try {
                this.f67904h.put(value, offset, length);
            } catch (IndexOutOfBoundsException e10) {
                throw new OutOfSpaceException(e10);
            } catch (BufferOverflowException e11) {
                throw new OutOfSpaceException(e11);
            }
        }

        @Override
        public void W(ByteBuffer value) throws IOException {
            U(value);
        }

        @Override
        public void X(byte[] value, int offset, int length) throws IOException {
            V(value, offset, length);
        }

        @Override
        public void Y1(final int fieldNumber, final AbstractC12724x value) throws IOException {
            g2(1, 3);
            m(2, fieldNumber);
            h(3, value);
            g2(1, 4);
        }

        @Override
        public void c(final int fieldNumber, final int value) throws IOException {
            g2(fieldNumber, 5);
            C1(value);
        }

        @Override
        public void e(final int fieldNumber, final String value) throws IOException {
            g2(fieldNumber, 2);
            f2(value);
        }

        @Override
        public void e1() {
            F0.e(this.f67903g, this.f67904h.position());
        }

        @Override
        public void f(final int fieldNumber, final long value) throws IOException {
            g2(fieldNumber, 0);
            i2(value);
        }

        @Override
        public int f1() {
            return this.f67904h.position() - this.f67905i;
        }

        @Override
        public void f2(String value) throws IOException {
            int position = this.f67904h.position();
            try {
                int Z02 = CodedOutputStream.Z0(value.length() * 3);
                int Z03 = CodedOutputStream.Z0(value.length());
                if (Z03 == Z02) {
                    int position2 = this.f67904h.position() + Z03;
                    F0.e(this.f67904h, position2);
                    j2(value);
                    int position3 = this.f67904h.position();
                    F0.e(this.f67904h, position);
                    h2(position3 - position2);
                    F0.e(this.f67904h, position3);
                } else {
                    h2(Utf8.k(value));
                    j2(value);
                }
            } catch (Utf8.UnpairedSurrogateException e10) {
                F0.e(this.f67904h, position);
                g1(value, e10);
            } catch (IllegalArgumentException e11) {
                throw new OutOfSpaceException(e11);
            }
        }

        @Override
        public void g2(final int fieldNumber, final int wireType) throws IOException {
            h2(A2.c(fieldNumber, wireType));
        }

        @Override
        public void h(final int fieldNumber, final AbstractC12724x value) throws IOException {
            g2(fieldNumber, 2);
            z1(value);
        }

        @Override
        public void h2(int value) throws IOException {
            while ((value & (-128)) != 0) {
                try {
                    this.f67904h.put((byte) ((value & 127) | 128));
                    value >>>= 7;
                } catch (BufferOverflowException e10) {
                    throw new OutOfSpaceException(e10);
                }
            }
            this.f67904h.put((byte) value);
        }

        @Override
        public void i(final int fieldNumber, final int value) throws IOException {
            g2(fieldNumber, 0);
            J1(value);
        }

        @Override
        public void i2(long value) throws IOException {
            while (((-128) & value) != 0) {
                try {
                    this.f67904h.put((byte) ((((int) value) & 127) | 128));
                    value >>>= 7;
                } catch (BufferOverflowException e10) {
                    throw new OutOfSpaceException(e10);
                }
            }
            this.f67904h.put((byte) value);
        }

        public final void j2(String value) throws IOException {
            try {
                Utf8.j(value, this.f67904h);
            } catch (IndexOutOfBoundsException e10) {
                throw new OutOfSpaceException(e10);
            }
        }

        @Override
        public void m(final int fieldNumber, final int value) throws IOException {
            g2(fieldNumber, 0);
            h2(value);
        }

        @Override
        public void o(final int fieldNumber, final long value) throws IOException {
            g2(fieldNumber, 1);
            D1(value);
        }

        @Override
        public void q(int i10, boolean z10) throws IOException {
            g2(i10, 0);
            T(z10 ? (byte) 1 : (byte) 0);
        }

        @Override
        public int r1() {
            return this.f67904h.remaining();
        }

        @Override
        public void u1(final int fieldNumber, final byte[] value) throws IOException {
            v1(fieldNumber, value, 0, value.length);
        }

        @Override
        public void v1(final int fieldNumber, final byte[] value, final int offset, final int length) throws IOException {
            g2(fieldNumber, 2);
            x1(value, offset, length);
        }

        @Override
        public void x1(final byte[] value, int offset, int length) throws IOException {
            h2(length);
            V(value, offset, length);
        }

        @Override
        public void y1(final int fieldNumber, final ByteBuffer value) throws IOException {
            g2(fieldNumber, 2);
            h2(value.capacity());
            T1(value);
        }

        @Override
        public void z1(final AbstractC12724x value) throws IOException {
            h2(value.size());
            value.m0(this);
        }
    }

    public static final class h extends CodedOutputStream {

        public final ByteBuffer f67906g;

        public final ByteBuffer f67907h;

        public final long f67908i;

        public final long f67909j;

        public final long f67910k;

        public final long f67911l;

        public long f67912m;

        public h(ByteBuffer buffer) {
            super();
            this.f67906g = buffer;
            this.f67907h = buffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            long k10 = x2.k(buffer);
            this.f67908i = k10;
            long position = buffer.position() + k10;
            this.f67909j = position;
            long limit = k10 + buffer.limit();
            this.f67910k = limit;
            this.f67911l = limit - 10;
            this.f67912m = position;
        }

        public static boolean k2() {
            return x2.V();
        }

        @Override
        public void C1(int value) throws IOException {
            this.f67907h.putInt(j2(this.f67912m), value);
            this.f67912m += 4;
        }

        @Override
        public void D1(long value) throws IOException {
            this.f67907h.putLong(j2(this.f67912m), value);
            this.f67912m += 8;
        }

        @Override
        public void J1(int value) throws IOException {
            if (value >= 0) {
                h2(value);
            } else {
                i2(value);
            }
        }

        @Override
        public void L1(int fieldNumber, InterfaceC12659b1 value) throws IOException {
            g2(fieldNumber, 2);
            N1(value);
        }

        @Override
        public void M1(int fieldNumber, InterfaceC12659b1 value, L1 schema) throws IOException {
            g2(fieldNumber, 2);
            O1(value, schema);
        }

        @Override
        public void N1(InterfaceC12659b1 value) throws IOException {
            h2(value.getSerializedSize());
            value.writeTo(this);
        }

        @Override
        public void O1(InterfaceC12659b1 value, L1 schema) throws IOException {
            h2(((AbstractC12657b) value).getSerializedSize(schema));
            schema.J1(value, this.f67889a);
        }

        @Override
        public void P1(int fieldNumber, InterfaceC12659b1 value) throws IOException {
            g2(1, 3);
            m(2, fieldNumber);
            L1(3, value);
            g2(1, 4);
        }

        @Override
        public void T(byte value) throws IOException {
            long j10 = this.f67912m;
            if (j10 >= this.f67910k) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.f67912m), Long.valueOf(this.f67910k), 1));
            }
            this.f67912m = 1 + j10;
            x2.e0(j10, value);
        }

        @Override
        public void T1(ByteBuffer value) throws IOException {
            if (value.hasArray()) {
                V(value.array(), value.arrayOffset(), value.capacity());
                return;
            }
            ByteBuffer duplicate = value.duplicate();
            F0.a(duplicate);
            U(duplicate);
        }

        @Override
        public void U(ByteBuffer value) throws IOException {
            try {
                int remaining = value.remaining();
                l2(this.f67912m);
                this.f67907h.put(value);
                this.f67912m += remaining;
            } catch (BufferOverflowException e10) {
                throw new OutOfSpaceException(e10);
            }
        }

        @Override
        public void V(byte[] value, int offset, int length) throws IOException {
            if (value != null && offset >= 0 && length >= 0 && value.length - length >= offset) {
                long j10 = length;
                long j11 = this.f67910k - j10;
                long j12 = this.f67912m;
                if (j11 >= j12) {
                    x2.q(value, offset, j12, j10);
                    this.f67912m += j10;
                    return;
                }
            }
            if (value != null) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.f67912m), Long.valueOf(this.f67910k), Integer.valueOf(length)));
            }
            throw new NullPointerException("value");
        }

        @Override
        public void W(ByteBuffer value) throws IOException {
            U(value);
        }

        @Override
        public void X(byte[] value, int offset, int length) throws IOException {
            V(value, offset, length);
        }

        @Override
        public void Y1(int fieldNumber, AbstractC12724x value) throws IOException {
            g2(1, 3);
            m(2, fieldNumber);
            h(3, value);
            g2(1, 4);
        }

        @Override
        public void c(int fieldNumber, int value) throws IOException {
            g2(fieldNumber, 5);
            C1(value);
        }

        @Override
        public void e(int fieldNumber, String value) throws IOException {
            g2(fieldNumber, 2);
            f2(value);
        }

        @Override
        public void e1() {
            F0.e(this.f67906g, j2(this.f67912m));
        }

        @Override
        public void f(int fieldNumber, long value) throws IOException {
            g2(fieldNumber, 0);
            i2(value);
        }

        @Override
        public int f1() {
            return (int) (this.f67912m - this.f67909j);
        }

        @Override
        public void f2(String value) throws IOException {
            long j10 = this.f67912m;
            try {
                int Z02 = CodedOutputStream.Z0(value.length() * 3);
                int Z03 = CodedOutputStream.Z0(value.length());
                if (Z03 == Z02) {
                    int j22 = j2(this.f67912m) + Z03;
                    F0.e(this.f67907h, j22);
                    Utf8.j(value, this.f67907h);
                    int position = this.f67907h.position() - j22;
                    h2(position);
                    this.f67912m += position;
                } else {
                    int k10 = Utf8.k(value);
                    h2(k10);
                    l2(this.f67912m);
                    Utf8.j(value, this.f67907h);
                    this.f67912m += k10;
                }
            } catch (Utf8.UnpairedSurrogateException e10) {
                this.f67912m = j10;
                l2(j10);
                g1(value, e10);
            } catch (IllegalArgumentException e11) {
                throw new OutOfSpaceException(e11);
            } catch (IndexOutOfBoundsException e12) {
                throw new OutOfSpaceException(e12);
            }
        }

        @Override
        public void g2(int fieldNumber, int wireType) throws IOException {
            h2(A2.c(fieldNumber, wireType));
        }

        @Override
        public void h(int fieldNumber, AbstractC12724x value) throws IOException {
            g2(fieldNumber, 2);
            z1(value);
        }

        @Override
        public void h2(int value) throws IOException {
            if (this.f67912m <= this.f67911l) {
                while ((value & (-128)) != 0) {
                    long j10 = this.f67912m;
                    this.f67912m = j10 + 1;
                    x2.e0(j10, (byte) ((value & 127) | 128));
                    value >>>= 7;
                }
                long j11 = this.f67912m;
                this.f67912m = 1 + j11;
                x2.e0(j11, (byte) value);
                return;
            }
            while (true) {
                long j12 = this.f67912m;
                if (j12 >= this.f67910k) {
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.f67912m), Long.valueOf(this.f67910k), 1));
                }
                if ((value & (-128)) == 0) {
                    this.f67912m = 1 + j12;
                    x2.e0(j12, (byte) value);
                    return;
                } else {
                    this.f67912m = j12 + 1;
                    x2.e0(j12, (byte) ((value & 127) | 128));
                    value >>>= 7;
                }
            }
        }

        @Override
        public void i(int fieldNumber, int value) throws IOException {
            g2(fieldNumber, 0);
            J1(value);
        }

        @Override
        public void i2(long value) throws IOException {
            if (this.f67912m <= this.f67911l) {
                while ((value & (-128)) != 0) {
                    long j10 = this.f67912m;
                    this.f67912m = j10 + 1;
                    x2.e0(j10, (byte) ((((int) value) & 127) | 128));
                    value >>>= 7;
                }
                long j11 = this.f67912m;
                this.f67912m = 1 + j11;
                x2.e0(j11, (byte) value);
                return;
            }
            while (true) {
                long j12 = this.f67912m;
                if (j12 >= this.f67910k) {
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.f67912m), Long.valueOf(this.f67910k), 1));
                }
                if ((value & (-128)) == 0) {
                    this.f67912m = 1 + j12;
                    x2.e0(j12, (byte) value);
                    return;
                } else {
                    this.f67912m = j12 + 1;
                    x2.e0(j12, (byte) ((((int) value) & 127) | 128));
                    value >>>= 7;
                }
            }
        }

        public final int j2(long pos) {
            return (int) (pos - this.f67908i);
        }

        public final void l2(long pos) {
            F0.e(this.f67907h, j2(pos));
        }

        @Override
        public void m(int fieldNumber, int value) throws IOException {
            g2(fieldNumber, 0);
            h2(value);
        }

        @Override
        public void o(int fieldNumber, long value) throws IOException {
            g2(fieldNumber, 1);
            D1(value);
        }

        @Override
        public void q(int i10, boolean z10) throws IOException {
            g2(i10, 0);
            T(z10 ? (byte) 1 : (byte) 0);
        }

        @Override
        public int r1() {
            return (int) (this.f67910k - this.f67912m);
        }

        @Override
        public void u1(int fieldNumber, byte[] value) throws IOException {
            v1(fieldNumber, value, 0, value.length);
        }

        @Override
        public void v1(int fieldNumber, byte[] value, int offset, int length) throws IOException {
            g2(fieldNumber, 2);
            x1(value, offset, length);
        }

        @Override
        public void x1(byte[] value, int offset, int length) throws IOException {
            h2(length);
            V(value, offset, length);
        }

        @Override
        public void y1(int fieldNumber, ByteBuffer value) throws IOException {
            g2(fieldNumber, 2);
            h2(value.capacity());
            T1(value);
        }

        @Override
        public void z1(AbstractC12724x value) throws IOException {
            h2(value.size());
            value.m0(this);
        }
    }

    public static int A0(final int fieldNumber, final I0 value) {
        return (X0(1) * 2) + Y0(2, fieldNumber) + B0(3, value);
    }

    public static int B0(final int fieldNumber, final I0 value) {
        return X0(fieldNumber) + C0(value);
    }

    public static int C0(final I0 value) {
        return D0(value.f());
    }

    public static int D0(int fieldLength) {
        return Z0(fieldLength) + fieldLength;
    }

    public static int E0(final int fieldNumber, final InterfaceC12659b1 value) {
        return (X0(1) * 2) + Y0(2, fieldNumber) + F0(3, value);
    }

    public static int F0(final int fieldNumber, final InterfaceC12659b1 value) {
        return X0(fieldNumber) + H0(value);
    }

    public static int G0(final int fieldNumber, final InterfaceC12659b1 value, final L1 schema) {
        return X0(fieldNumber) + I0(value, schema);
    }

    public static int H0(final InterfaceC12659b1 value) {
        return D0(value.getSerializedSize());
    }

    public static int I0(final InterfaceC12659b1 value, final L1 schema) {
        return D0(((AbstractC12657b) value).getSerializedSize(schema));
    }

    public static int J0(int dataLength) {
        if (dataLength > 4096) {
            return 4096;
        }
        return dataLength;
    }

    public static int K0(final int fieldNumber, final AbstractC12724x value) {
        return (X0(1) * 2) + Y0(2, fieldNumber) + g0(3, value);
    }

    @InterfaceC12725x0(imports = {"com.google.protobuf.CodedOutputStream"}, replacement = "CodedOutputStream.computeUInt32SizeNoTag(value)")
    @Deprecated
    public static int L0(final int value) {
        return Z0(value);
    }

    @InterfaceC12725x0(imports = {"com.google.protobuf.CodedOutputStream"}, replacement = "CodedOutputStream.computeUInt64SizeNoTag(value)")
    @Deprecated
    public static int M0(long value) {
        return b1(value);
    }

    public static int N0(final int fieldNumber, final int value) {
        return X0(fieldNumber) + O0(value);
    }

    public static int O0(final int unused) {
        return 4;
    }

    public static int P0(final int fieldNumber, final long value) {
        return X0(fieldNumber) + Q0(value);
    }

    public static int Q0(final long unused) {
        return 8;
    }

    public static int R0(final int fieldNumber, final int value) {
        return X0(fieldNumber) + S0(value);
    }

    public static int S0(final int value) {
        return Z0(c1(value));
    }

    public static int T0(final int fieldNumber, final long value) {
        return X0(fieldNumber) + U0(value);
    }

    public static int U0(final long value) {
        return b1(d1(value));
    }

    public static int V0(final int fieldNumber, final String value) {
        return X0(fieldNumber) + W0(value);
    }

    public static int W0(final String value) {
        int length;
        try {
            length = Utf8.k(value);
        } catch (Utf8.UnpairedSurrogateException unused) {
            length = value.getBytes(D0.f67922b).length;
        }
        return D0(length);
    }

    public static int X0(final int fieldNumber) {
        return Z0(A2.c(fieldNumber, 0));
    }

    public static int Y0(final int fieldNumber, final int value) {
        return X0(fieldNumber) + Z0(value);
    }

    public static int Z0(final int value) {
        if ((value & (-128)) == 0) {
            return 1;
        }
        if ((value & Lua.MASK_Bx) == 0) {
            return 2;
        }
        if (((-2097152) & value) == 0) {
            return 3;
        }
        return (value & (-268435456)) == 0 ? 4 : 5;
    }

    public static int a0(final int fieldNumber, final boolean value) {
        return X0(fieldNumber) + b0(value);
    }

    public static int a1(final int fieldNumber, final long value) {
        return X0(fieldNumber) + b1(value);
    }

    public static int b0(final boolean unused) {
        return 1;
    }

    public static int b1(long value) {
        int i10;
        if (((-128) & value) == 0) {
            return 1;
        }
        if (value < 0) {
            return 10;
        }
        if (((-34359738368L) & value) != 0) {
            value >>>= 28;
            i10 = 6;
        } else {
            i10 = 2;
        }
        if ((ExecutorC14502a.f98708y & value) != 0) {
            i10 += 2;
            value >>>= 14;
        }
        return (value & (-16384)) != 0 ? i10 + 1 : i10;
    }

    public static int c0(final int fieldNumber, final byte[] value) {
        return X0(fieldNumber) + d0(value);
    }

    public static int c1(final int n10) {
        return (n10 >> 31) ^ (n10 << 1);
    }

    public static int d0(final byte[] value) {
        return D0(value.length);
    }

    public static long d1(final long n10) {
        return (n10 >> 63) ^ (n10 << 1);
    }

    public static int e0(final int fieldNumber, final ByteBuffer value) {
        return X0(fieldNumber) + f0(value);
    }

    public static int f0(final ByteBuffer value) {
        return D0(value.capacity());
    }

    public static int g0(final int fieldNumber, final AbstractC12724x value) {
        return X0(fieldNumber) + h0(value);
    }

    public static int h0(final AbstractC12724x value) {
        return D0(value.size());
    }

    public static int i0(final int fieldNumber, final double value) {
        return X0(fieldNumber) + j0(value);
    }

    public static CodedOutputStream i1(AbstractC12721w byteOutput, int bufferSize) {
        if (bufferSize >= 0) {
            return new d(byteOutput, bufferSize);
        }
        throw new IllegalArgumentException("bufferSize must be positive");
    }

    public static int j0(final double unused) {
        return 8;
    }

    public static CodedOutputStream j1(final OutputStream output) {
        return k1(output, 4096);
    }

    public static int k0(final int fieldNumber, final int value) {
        return X0(fieldNumber) + l0(value);
    }

    public static CodedOutputStream k1(final OutputStream output, final int bufferSize) {
        return new f(output, bufferSize);
    }

    public static int l0(final int value) {
        return x0(value);
    }

    public static CodedOutputStream l1(ByteBuffer buffer) {
        if (buffer.hasArray()) {
            return new e(buffer);
        }
        if (!buffer.isDirect() || buffer.isReadOnly()) {
            throw new IllegalArgumentException("ByteBuffer is read-only");
        }
        return h.k2() ? q1(buffer) : p1(buffer);
    }

    public static int m0(final int fieldNumber, final int value) {
        return X0(fieldNumber) + n0(value);
    }

    @Deprecated
    public static CodedOutputStream m1(ByteBuffer byteBuffer, int unused) {
        return l1(byteBuffer);
    }

    public static int n0(final int unused) {
        return 4;
    }

    public static CodedOutputStream n1(final byte[] flatArray) {
        return o1(flatArray, 0, flatArray.length);
    }

    public static int o0(final int fieldNumber, final long value) {
        return X0(fieldNumber) + p0(value);
    }

    public static CodedOutputStream o1(final byte[] flatArray, final int offset, final int length) {
        return new c(flatArray, offset, length);
    }

    public static int p0(final long unused) {
        return 8;
    }

    public static CodedOutputStream p1(ByteBuffer buffer) {
        return new g(buffer);
    }

    public static int q0(final int fieldNumber, final float value) {
        return X0(fieldNumber) + r0(value);
    }

    public static CodedOutputStream q1(ByteBuffer buffer) {
        return new h(buffer);
    }

    public static int r0(final float unused) {
        return 4;
    }

    @Deprecated
    public static int s0(final int fieldNumber, final InterfaceC12659b1 value) {
        return (X0(fieldNumber) * 2) + value.getSerializedSize();
    }

    @Deprecated
    public static int t0(final int fieldNumber, final InterfaceC12659b1 value, L1 schema) {
        return (X0(fieldNumber) * 2) + v0(value, schema);
    }

    @InterfaceC12725x0(replacement = "value.getSerializedSize()")
    @Deprecated
    public static int u0(final InterfaceC12659b1 value) {
        return value.getSerializedSize();
    }

    @Deprecated
    public static int v0(final InterfaceC12659b1 value, L1 schema) {
        return ((AbstractC12657b) value).getSerializedSize(schema);
    }

    public static int w0(final int fieldNumber, final int value) {
        return X0(fieldNumber) + x0(value);
    }

    public static int x0(final int value) {
        if (value >= 0) {
            return Z0(value);
        }
        return 10;
    }

    public static int y0(final int fieldNumber, final long value) {
        return X0(fieldNumber) + z0(value);
    }

    public static int z0(final long value) {
        return b1(value);
    }

    public final void A1(final double value) throws IOException {
        D1(Double.doubleToRawLongBits(value));
    }

    public final void B1(final int value) throws IOException {
        J1(value);
    }

    public final void C(final int fieldNumber, final long value) throws IOException {
        o(fieldNumber, value);
    }

    public abstract void C1(int value) throws IOException;

    public abstract void D1(long value) throws IOException;

    public final void E1(final float value) throws IOException {
        C1(Float.floatToRawIntBits(value));
    }

    @Deprecated
    public final void F1(final int fieldNumber, final InterfaceC12659b1 value) throws IOException {
        g2(fieldNumber, 3);
        H1(value);
        g2(fieldNumber, 4);
    }

    public final void G(final int fieldNumber, final double value) throws IOException {
        o(fieldNumber, Double.doubleToRawLongBits(value));
    }

    @Deprecated
    public final void G1(final int fieldNumber, final InterfaceC12659b1 value, L1 schema) throws IOException {
        g2(fieldNumber, 3);
        I1(value, schema);
        g2(fieldNumber, 4);
    }

    @Deprecated
    public final void H1(final InterfaceC12659b1 value) throws IOException {
        value.writeTo(this);
    }

    @Deprecated
    public final void I1(final InterfaceC12659b1 value, L1 schema) throws IOException {
        schema.J1(value, this.f67889a);
    }

    public abstract void J1(final int value) throws IOException;

    public final void K1(final long value) throws IOException {
        i2(value);
    }

    public final void L(final int fieldNumber, final long value) throws IOException {
        f(fieldNumber, value);
    }

    public abstract void L1(final int fieldNumber, final InterfaceC12659b1 value) throws IOException;

    public abstract void M1(final int fieldNumber, final InterfaceC12659b1 value, L1 schema) throws IOException;

    public abstract void N1(final InterfaceC12659b1 value) throws IOException;

    public abstract void O1(final InterfaceC12659b1 value, L1 schema) throws IOException;

    public final void P(final int fieldNumber, final float value) throws IOException {
        c(fieldNumber, Float.floatToRawIntBits(value));
    }

    public abstract void P1(final int fieldNumber, final InterfaceC12659b1 value) throws IOException;

    public final void Q(final int fieldNumber, final int value) throws IOException {
        i(fieldNumber, value);
    }

    public final void Q1(final byte value) throws IOException {
        T(value);
    }

    public final void R1(final int value) throws IOException {
        T((byte) value);
    }

    public final void S(final int fieldNumber, final int value) throws IOException {
        m(fieldNumber, c1(value));
    }

    public final void S1(final AbstractC12724x value) throws IOException {
        value.m0(this);
    }

    @Override
    public abstract void T(byte value) throws IOException;

    public abstract void T1(final ByteBuffer value) throws IOException;

    @Override
    public abstract void U(ByteBuffer value) throws IOException;

    public final void U1(final byte[] value) throws IOException {
        V(value, 0, value.length);
    }

    @Override
    public abstract void V(byte[] value, int offset, int length) throws IOException;

    public final void V1(final byte[] value, int offset, int length) throws IOException {
        V(value, offset, length);
    }

    @Override
    public abstract void W(ByteBuffer value) throws IOException;

    @InterfaceC12725x0(replacement = "this.writeFixed32NoTag(value)")
    @Deprecated
    public final void W1(final int value) throws IOException {
        C1(value);
    }

    @Override
    public abstract void X(byte[] value, int offset, int length) throws IOException;

    @InterfaceC12725x0(replacement = "this.writeFixed64NoTag(value)")
    @Deprecated
    public final void X1(final long value) throws IOException {
        D1(value);
    }

    public abstract void Y1(final int fieldNumber, final AbstractC12724x value) throws IOException;

    public final void Z() {
        if (r1() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    @InterfaceC12725x0(replacement = "this.writeUInt32NoTag(value)")
    @Deprecated
    public final void Z1(int value) throws IOException {
        h2(value);
    }

    @InterfaceC12725x0(replacement = "this.writeUInt64NoTag(value)")
    @Deprecated
    public final void a2(long value) throws IOException {
        i2(value);
    }

    public final void b2(final int value) throws IOException {
        C1(value);
    }

    public abstract void c(int fieldNumber, int value) throws IOException;

    public final void c2(final long value) throws IOException {
        D1(value);
    }

    public final void d2(final int value) throws IOException {
        h2(c1(value));
    }

    public abstract void e(int fieldNumber, String value) throws IOException;

    public abstract void e1() throws IOException;

    public final void e2(final long value) throws IOException {
        i2(d1(value));
    }

    public abstract void f(int fieldNumber, long value) throws IOException;

    public abstract int f1();

    public abstract void f2(String value) throws IOException;

    public final void g1(String value, Utf8.UnpairedSurrogateException cause) throws IOException {
        f67885c.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) cause);
        byte[] bytes = value.getBytes(D0.f67922b);
        try {
            h2(bytes.length);
            X(bytes, 0, bytes.length);
        } catch (IndexOutOfBoundsException e10) {
            throw new OutOfSpaceException(e10);
        }
    }

    public abstract void g2(int fieldNumber, int wireType) throws IOException;

    public abstract void h(int fieldNumber, AbstractC12724x value) throws IOException;

    public boolean h1() {
        return this.f67890b;
    }

    public abstract void h2(int value) throws IOException;

    public abstract void i(int fieldNumber, int value) throws IOException;

    public abstract void i2(long value) throws IOException;

    public final void l(final int fieldNumber, final long value) throws IOException {
        f(fieldNumber, d1(value));
    }

    public abstract void m(int fieldNumber, int value) throws IOException;

    public abstract void o(int fieldNumber, long value) throws IOException;

    public abstract void q(int fieldNumber, boolean value) throws IOException;

    public final void r(final int fieldNumber, final int value) throws IOException {
        c(fieldNumber, value);
    }

    public abstract int r1();

    public void s1() {
        this.f67890b = true;
    }

    public final void t1(boolean z10) throws IOException {
        T(z10 ? (byte) 1 : (byte) 0);
    }

    public abstract void u1(int fieldNumber, byte[] value) throws IOException;

    public abstract void v1(int fieldNumber, byte[] value, int offset, int length) throws IOException;

    public final void w1(final byte[] value) throws IOException {
        x1(value, 0, value.length);
    }

    public abstract void x1(final byte[] value, final int offset, final int length) throws IOException;

    public abstract void y1(int fieldNumber, ByteBuffer value) throws IOException;

    public abstract void z1(final AbstractC12724x value) throws IOException;

    public CodedOutputStream() {
    }
}
