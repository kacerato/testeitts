package com.google.protobuf;

import android.util.DisplayMetrics;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public final class Utf8 {

    public static final b f68989a;

    public static final long f68990b = -9187201950435737472L;

    public static final int f68991c = 3;

    public static final int f68992d = 0;

    public static final int f68993e = -1;

    public static final int f68994f = 16;

    public static class UnpairedSurrogateException extends IllegalArgumentException {
        public UnpairedSurrogateException(int index, int length) {
            super("Unpaired surrogate at index " + index + " of " + length);
        }
    }

    public static class a {
        public static void h(byte byte1, byte byte2, byte byte3, byte byte4, char[] resultArr, int resultPos) throws InvalidProtocolBufferException {
            if (m(byte2) || (((byte1 << 28) + (byte2 + 112)) >> 30) != 0 || m(byte3) || m(byte4)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            int r10 = ((byte1 & 7) << 18) | (r(byte2) << 12) | (r(byte3) << 6) | r(byte4);
            resultArr[resultPos] = l(r10);
            resultArr[resultPos + 1] = q(r10);
        }

        public static void i(byte byte1, char[] resultArr, int resultPos) {
            resultArr[resultPos] = (char) byte1;
        }

        public static void j(byte byte1, byte byte2, byte byte3, char[] resultArr, int resultPos) throws InvalidProtocolBufferException {
            if (m(byte2) || ((byte1 == -32 && byte2 < -96) || ((byte1 == -19 && byte2 >= -96) || m(byte3)))) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            resultArr[resultPos] = (char) (((byte1 & 15) << 12) | (r(byte2) << 6) | r(byte3));
        }

        public static void k(byte byte1, byte byte2, char[] resultArr, int resultPos) throws InvalidProtocolBufferException {
            if (byte1 < -62 || m(byte2)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            resultArr[resultPos] = (char) (((byte1 & 31) << 6) | r(byte2));
        }

        public static char l(int codePoint) {
            return (char) ((codePoint >>> 10) + 55232);
        }

        public static boolean m(byte b10) {
            return b10 > -65;
        }

        public static boolean n(byte b10) {
            return b10 >= 0;
        }

        public static boolean o(byte b10) {
            return b10 < -16;
        }

        public static boolean p(byte b10) {
            return b10 < -32;
        }

        public static char q(int codePoint) {
            return (char) ((codePoint & 1023) + 56320);
        }

        public static int r(byte b10) {
            return b10 & Opcodes.OPC_lstore_0;
        }
    }

    public static abstract class b {
        public static int m(final ByteBuffer buffer, int index, final int limit) {
            int m10 = index + Utf8.m(buffer, index, limit);
            while (m10 < limit) {
                int i10 = m10 + 1;
                byte b10 = buffer.get(m10);
                if (b10 >= 0) {
                    m10 = i10;
                } else if (b10 < -32) {
                    if (i10 >= limit) {
                        return b10;
                    }
                    if (b10 < -62 || buffer.get(i10) > -65) {
                        return -1;
                    }
                    m10 += 2;
                } else {
                    if (b10 >= -16) {
                        if (i10 >= limit - 2) {
                            return Utf8.q(buffer, b10, i10, limit - i10);
                        }
                        int i11 = m10 + 2;
                        byte b11 = buffer.get(i10);
                        if (b11 <= -65 && (((b10 << 28) + (b11 + 112)) >> 30) == 0) {
                            int i12 = m10 + 3;
                            if (buffer.get(i11) <= -65) {
                                m10 += 4;
                                if (buffer.get(i12) > -65) {
                                }
                            }
                        }
                        return -1;
                    }
                    if (i10 >= limit - 1) {
                        return Utf8.q(buffer, b10, i10, limit - i10);
                    }
                    int i13 = m10 + 2;
                    byte b12 = buffer.get(i10);
                    if (b12 > -65 || ((b10 == -32 && b12 < -96) || ((b10 == -19 && b12 >= -96) || buffer.get(i13) > -65))) {
                        return -1;
                    }
                    m10 += 3;
                }
            }
            return 0;
        }

        public final String a(ByteBuffer buffer, int index, int size) throws InvalidProtocolBufferException {
            if (buffer.hasArray()) {
                return b(buffer.array(), buffer.arrayOffset() + index, size);
            }
            return buffer.isDirect() ? d(buffer, index, size) : c(buffer, index, size);
        }

        public abstract String b(byte[] bytes, int index, int size) throws InvalidProtocolBufferException;

        public final String c(ByteBuffer buffer, int index, int size) throws InvalidProtocolBufferException {
            if ((index | size | ((buffer.limit() - index) - size)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(buffer.limit()), Integer.valueOf(index), Integer.valueOf(size)));
            }
            int i10 = index + size;
            char[] cArr = new char[size];
            int i11 = 0;
            while (index < i10) {
                byte b10 = buffer.get(index);
                if (!a.n(b10)) {
                    break;
                }
                index++;
                a.i(b10, cArr, i11);
                i11++;
            }
            int i12 = i11;
            while (index < i10) {
                int i13 = index + 1;
                byte b11 = buffer.get(index);
                if (a.n(b11)) {
                    int i14 = i12 + 1;
                    a.i(b11, cArr, i12);
                    while (i13 < i10) {
                        byte b12 = buffer.get(i13);
                        if (!a.n(b12)) {
                            break;
                        }
                        i13++;
                        a.i(b12, cArr, i14);
                        i14++;
                    }
                    i12 = i14;
                    index = i13;
                } else if (a.p(b11)) {
                    if (i13 >= i10) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    index += 2;
                    a.k(b11, buffer.get(i13), cArr, i12);
                    i12++;
                } else if (a.o(b11)) {
                    if (i13 >= i10 - 1) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    int i15 = index + 2;
                    index += 3;
                    a.j(b11, buffer.get(i13), buffer.get(i15), cArr, i12);
                    i12++;
                } else {
                    if (i13 >= i10 - 2) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    byte b13 = buffer.get(i13);
                    int i16 = index + 3;
                    byte b14 = buffer.get(index + 2);
                    index += 4;
                    a.h(b11, b13, b14, buffer.get(i16), cArr, i12);
                    i12 += 2;
                }
            }
            return new String(cArr, 0, i12);
        }

        public abstract String d(ByteBuffer buffer, int index, int size) throws InvalidProtocolBufferException;

        public abstract int e(CharSequence in2, byte[] out, int offset, int length);

        public final void f(CharSequence in2, ByteBuffer out) {
            if (out.hasArray()) {
                int arrayOffset = out.arrayOffset();
                F0.e(out, Utf8.i(in2, out.array(), out.position() + arrayOffset, out.remaining()) - arrayOffset);
            } else if (out.isDirect()) {
                h(in2, out);
            } else {
                g(in2, out);
            }
        }

        public final void g(CharSequence in2, ByteBuffer out) {
            int i10;
            int length = in2.length();
            int position = out.position();
            int i11 = 0;
            while (i11 < length) {
                try {
                    char charAt = in2.charAt(i11);
                    if (charAt >= '\u0080') {
                        break;
                    }
                    out.put(position + i11, (byte) charAt);
                    i11++;
                } catch (IndexOutOfBoundsException unused) {
                    throw new ArrayIndexOutOfBoundsException("Failed writing " + in2.charAt(i11) + " at index " + (out.position() + Math.max(i11, (position - out.position()) + 1)));
                }
            }
            if (i11 == length) {
                F0.e(out, position + i11);
                return;
            }
            position += i11;
            while (i11 < length) {
                char charAt2 = in2.charAt(i11);
                if (charAt2 < '\u0080') {
                    out.put(position, (byte) charAt2);
                } else if (charAt2 < '\u0800') {
                    int i12 = position + 1;
                    try {
                        out.put(position, (byte) ((charAt2 >>> 6) | 192));
                        out.put(i12, (byte) ((charAt2 & '?') | 128));
                        position = i12;
                    } catch (IndexOutOfBoundsException unused2) {
                        position = i12;
                        throw new ArrayIndexOutOfBoundsException("Failed writing " + in2.charAt(i11) + " at index " + (out.position() + Math.max(i11, (position - out.position()) + 1)));
                    }
                } else {
                    if (charAt2 >= '\ud800' && '\udfff' >= charAt2) {
                        int i13 = i11 + 1;
                        if (i13 != length) {
                            try {
                                char charAt3 = in2.charAt(i13);
                                if (Character.isSurrogatePair(charAt2, charAt3)) {
                                    int codePoint = Character.toCodePoint(charAt2, charAt3);
                                    int i14 = position + 1;
                                    try {
                                        out.put(position, (byte) ((codePoint >>> 18) | 240));
                                        i10 = position + 2;
                                    } catch (IndexOutOfBoundsException unused3) {
                                        position = i14;
                                        i11 = i13;
                                        throw new ArrayIndexOutOfBoundsException("Failed writing " + in2.charAt(i11) + " at index " + (out.position() + Math.max(i11, (position - out.position()) + 1)));
                                    }
                                    try {
                                        out.put(i14, (byte) (((codePoint >>> 12) & 63) | 128));
                                        position += 3;
                                        out.put(i10, (byte) (((codePoint >>> 6) & 63) | 128));
                                        out.put(position, (byte) ((codePoint & 63) | 128));
                                        i11 = i13;
                                    } catch (IndexOutOfBoundsException unused4) {
                                        i11 = i13;
                                        position = i10;
                                        throw new ArrayIndexOutOfBoundsException("Failed writing " + in2.charAt(i11) + " at index " + (out.position() + Math.max(i11, (position - out.position()) + 1)));
                                    }
                                } else {
                                    i11 = i13;
                                }
                            } catch (IndexOutOfBoundsException unused5) {
                            }
                        }
                        throw new UnpairedSurrogateException(i11, length);
                    }
                    int i15 = position + 1;
                    out.put(position, (byte) ((charAt2 >>> '\f') | 224));
                    position += 2;
                    out.put(i15, (byte) (((charAt2 >>> 6) & 63) | 128));
                    out.put(position, (byte) ((charAt2 & '?') | 128));
                }
                i11++;
                position++;
            }
            F0.e(out, position);
        }

        public abstract void h(CharSequence in2, ByteBuffer out);

        public final boolean i(ByteBuffer buffer, int index, int limit) {
            return k(0, buffer, index, limit) == 0;
        }

        public final boolean j(byte[] bytes, int index, int limit) {
            return l(0, bytes, index, limit) == 0;
        }

        public final int k(final int state, final ByteBuffer buffer, int index, final int limit) {
            if (!buffer.hasArray()) {
                return buffer.isDirect() ? o(state, buffer, index, limit) : n(state, buffer, index, limit);
            }
            int arrayOffset = buffer.arrayOffset();
            return l(state, buffer.array(), index + arrayOffset, arrayOffset + limit);
        }

        public abstract int l(int state, byte[] bytes, int index, int limit);

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0017, code lost:
        
            if (r8.get(r9) > (-65)) goto L13;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x004c, code lost:
        
            if (r8.get(r9) > (-65)) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x008f, code lost:
        
            if (r8.get(r7) > (-65)) goto L53;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final int n(final int state, final ByteBuffer buffer, int index, final int limit) {
            byte b10;
            int i10;
            int i11;
            if (state != 0) {
                if (index >= limit) {
                    return state;
                }
                byte b11 = (byte) state;
                if (b11 < -32) {
                    if (b11 >= -62) {
                        i11 = index + 1;
                    }
                    return -1;
                }
                if (b11 < -16) {
                    byte b12 = (byte) (~(state >> 8));
                    if (b12 == 0) {
                        int i12 = index + 1;
                        byte b13 = buffer.get(index);
                        if (i12 >= limit) {
                            return Utf8.o(b11, b13);
                        }
                        index = i12;
                        b12 = b13;
                    }
                    if (b12 <= -65 && ((b11 != -32 || b12 >= -96) && (b11 != -19 || b12 < -96))) {
                        i11 = index + 1;
                    }
                    return -1;
                }
                byte b14 = (byte) (~(state >> 8));
                if (b14 == 0) {
                    i10 = index + 1;
                    b14 = buffer.get(index);
                    if (i10 >= limit) {
                        return Utf8.o(b11, b14);
                    }
                    b10 = 0;
                } else {
                    b10 = (byte) (state >> 16);
                    i10 = index;
                }
                if (b10 == 0) {
                    int i13 = i10 + 1;
                    byte b15 = buffer.get(i10);
                    if (i13 >= limit) {
                        return Utf8.p(b11, b14, b15);
                    }
                    b10 = b15;
                    i10 = i13;
                }
                if (b14 <= -65 && (((b11 << 28) + (b14 + 112)) >> 30) == 0 && b10 <= -65) {
                    index = i10 + 1;
                }
                return -1;
                index = i11;
            }
            return m(buffer, index, limit);
        }

        public abstract int o(final int state, final ByteBuffer buffer, int index, final int limit);
    }

    public static final class c extends b {
        public static int p(byte[] bytes, int index, int limit) {
            while (index < limit && bytes[index] >= 0) {
                index++;
            }
            if (index >= limit) {
                return 0;
            }
            return q(bytes, index, limit);
        }

        public static int q(byte[] bytes, int index, int limit) {
            while (index < limit) {
                int i10 = index + 1;
                byte b10 = bytes[index];
                if (b10 < 0) {
                    if (b10 < -32) {
                        if (i10 >= limit) {
                            return b10;
                        }
                        if (b10 >= -62) {
                            index += 2;
                            if (bytes[i10] > -65) {
                            }
                        }
                        return -1;
                    }
                    if (b10 >= -16) {
                        if (i10 >= limit - 2) {
                            return Utf8.r(bytes, i10, limit);
                        }
                        int i11 = index + 2;
                        byte b11 = bytes[i10];
                        if (b11 <= -65 && (((b10 << 28) + (b11 + 112)) >> 30) == 0) {
                            int i12 = index + 3;
                            if (bytes[i11] <= -65) {
                                index += 4;
                                if (bytes[i12] > -65) {
                                }
                            }
                        }
                        return -1;
                    }
                    if (i10 >= limit - 1) {
                        return Utf8.r(bytes, i10, limit);
                    }
                    int i13 = index + 2;
                    byte b12 = bytes[i10];
                    if (b12 <= -65 && ((b10 != -32 || b12 >= -96) && (b10 != -19 || b12 < -96))) {
                        index += 3;
                        if (bytes[i13] > -65) {
                        }
                    }
                    return -1;
                }
                index = i10;
            }
            return 0;
        }

        @Override
        public String b(byte[] bytes, int index, int size) throws InvalidProtocolBufferException {
            if ((index | size | ((bytes.length - index) - size)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bytes.length), Integer.valueOf(index), Integer.valueOf(size)));
            }
            int i10 = index + size;
            char[] cArr = new char[size];
            int i11 = 0;
            while (index < i10) {
                byte b10 = bytes[index];
                if (!a.n(b10)) {
                    break;
                }
                index++;
                a.i(b10, cArr, i11);
                i11++;
            }
            int i12 = i11;
            while (index < i10) {
                int i13 = index + 1;
                byte b11 = bytes[index];
                if (a.n(b11)) {
                    int i14 = i12 + 1;
                    a.i(b11, cArr, i12);
                    while (i13 < i10) {
                        byte b12 = bytes[i13];
                        if (!a.n(b12)) {
                            break;
                        }
                        i13++;
                        a.i(b12, cArr, i14);
                        i14++;
                    }
                    i12 = i14;
                    index = i13;
                } else if (a.p(b11)) {
                    if (i13 >= i10) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    index += 2;
                    a.k(b11, bytes[i13], cArr, i12);
                    i12++;
                } else if (a.o(b11)) {
                    if (i13 >= i10 - 1) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    int i15 = index + 2;
                    index += 3;
                    a.j(b11, bytes[i13], bytes[i15], cArr, i12);
                    i12++;
                } else {
                    if (i13 >= i10 - 2) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    byte b13 = bytes[i13];
                    int i16 = index + 3;
                    byte b14 = bytes[index + 2];
                    index += 4;
                    a.h(b11, b13, b14, bytes[i16], cArr, i12);
                    i12 += 2;
                }
            }
            return new String(cArr, 0, i12);
        }

        @Override
        public String d(ByteBuffer buffer, int index, int size) throws InvalidProtocolBufferException {
            return c(buffer, index, size);
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
        
            return r10 + r0;
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int e(CharSequence in2, byte[] out, int offset, int length) {
            int i10;
            int i11;
            char charAt;
            int length2 = in2.length();
            int i12 = length + offset;
            int i13 = 0;
            while (i13 < length2 && (i11 = i13 + offset) < i12 && (charAt = in2.charAt(i13)) < '\u0080') {
                out[i11] = (byte) charAt;
                i13++;
            }
            int i14 = offset + i13;
            while (i13 < length2) {
                char charAt2 = in2.charAt(i13);
                if (charAt2 < '\u0080' && i14 < i12) {
                    out[i14] = (byte) charAt2;
                    i14++;
                } else if (charAt2 < '\u0800' && i14 <= i12 - 2) {
                    int i15 = i14 + 1;
                    out[i14] = (byte) ((charAt2 >>> 6) | 960);
                    i14 += 2;
                    out[i15] = (byte) ((charAt2 & '?') | 128);
                } else {
                    if ((charAt2 >= '\ud800' && '\udfff' >= charAt2) || i14 > i12 - 3) {
                        if (i14 > i12 - 4) {
                            if ('\ud800' <= charAt2 && charAt2 <= '\udfff' && ((i10 = i13 + 1) == in2.length() || !Character.isSurrogatePair(charAt2, in2.charAt(i10)))) {
                                throw new UnpairedSurrogateException(i13, length2);
                            }
                            throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + i14);
                        }
                        int i16 = i13 + 1;
                        if (i16 != in2.length()) {
                            char charAt3 = in2.charAt(i16);
                            if (Character.isSurrogatePair(charAt2, charAt3)) {
                                int codePoint = Character.toCodePoint(charAt2, charAt3);
                                out[i14] = (byte) ((codePoint >>> 18) | 240);
                                out[i14 + 1] = (byte) (((codePoint >>> 12) & 63) | 128);
                                int i17 = i14 + 3;
                                out[i14 + 2] = (byte) (((codePoint >>> 6) & 63) | 128);
                                i14 += 4;
                                out[i17] = (byte) ((codePoint & 63) | 128);
                                i13 = i16;
                            } else {
                                i13 = i16;
                            }
                        }
                        throw new UnpairedSurrogateException(i13 - 1, length2);
                    }
                    out[i14] = (byte) ((charAt2 >>> '\f') | DisplayMetrics.DENSITY_XXHIGH);
                    int i18 = i14 + 2;
                    out[i14 + 1] = (byte) (((charAt2 >>> 6) & 63) | 128);
                    i14 += 3;
                    out[i18] = (byte) ((charAt2 & '?') | 128);
                }
                i13++;
            }
            return i14;
        }

        @Override
        public void h(CharSequence in2, ByteBuffer out) {
            g(in2, out);
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0015, code lost:
        
            if (r8[r9] > (-65)) goto L13;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x0046, code lost:
        
            if (r8[r9] > (-65)) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x0083, code lost:
        
            if (r8[r7] > (-65)) goto L53;
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int l(int state, byte[] bytes, int index, int limit) {
            byte b10;
            int i10;
            int i11;
            if (state != 0) {
                if (index >= limit) {
                    return state;
                }
                byte b11 = (byte) state;
                if (b11 < -32) {
                    if (b11 >= -62) {
                        i11 = index + 1;
                    }
                    return -1;
                }
                if (b11 < -16) {
                    byte b12 = (byte) (~(state >> 8));
                    if (b12 == 0) {
                        int i12 = index + 1;
                        byte b13 = bytes[index];
                        if (i12 >= limit) {
                            return Utf8.o(b11, b13);
                        }
                        index = i12;
                        b12 = b13;
                    }
                    if (b12 <= -65 && ((b11 != -32 || b12 >= -96) && (b11 != -19 || b12 < -96))) {
                        i11 = index + 1;
                    }
                    return -1;
                }
                byte b14 = (byte) (~(state >> 8));
                if (b14 == 0) {
                    i10 = index + 1;
                    b14 = bytes[index];
                    if (i10 >= limit) {
                        return Utf8.o(b11, b14);
                    }
                    b10 = 0;
                } else {
                    b10 = (byte) (state >> 16);
                    i10 = index;
                }
                if (b10 == 0) {
                    int i13 = i10 + 1;
                    byte b15 = bytes[i10];
                    if (i13 >= limit) {
                        return Utf8.p(b11, b14, b15);
                    }
                    b10 = b15;
                    i10 = i13;
                }
                if (b14 <= -65 && (((b11 << 28) + (b14 + 112)) >> 30) == 0 && b10 <= -65) {
                    index = i10 + 1;
                }
                return -1;
                index = i11;
            }
            return p(bytes, index, limit);
        }

        @Override
        public int o(int state, ByteBuffer buffer, int index, int limit) {
            return n(state, buffer, index, limit);
        }
    }

    public static final class d extends b {
        public static boolean p() {
            return x2.U() && x2.V();
        }

        /* JADX WARN: Code restructure failed: missing block: B:69:0x0039, code lost:
        
            return -1;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static int q(long address, int remaining) {
            int s10 = s(address, remaining);
            long j10 = address + s10;
            int i10 = remaining - s10;
            while (true) {
                byte b10 = 0;
                while (true) {
                    if (i10 <= 0) {
                        break;
                    }
                    long j11 = j10 + 1;
                    b10 = x2.A(j10);
                    if (b10 < 0) {
                        j10 = j11;
                        break;
                    }
                    i10--;
                    j10 = j11;
                }
                if (i10 != 0) {
                    int i11 = i10 - 1;
                    if (b10 >= -32) {
                        if (b10 >= -16) {
                            if (i11 >= 3) {
                                i10 -= 4;
                                long j12 = 1 + j10;
                                byte A10 = x2.A(j10);
                                if (A10 > -65 || (((b10 << 28) + (A10 + 112)) >> 30) != 0) {
                                    break;
                                }
                                long j13 = 2 + j10;
                                if (x2.A(j12) > -65) {
                                    break;
                                }
                                j10 += 3;
                                if (x2.A(j13) > -65) {
                                    break;
                                }
                            } else {
                                return u(j10, b10, i11);
                            }
                        } else if (i11 >= 2) {
                            i10 -= 3;
                            long j14 = 1 + j10;
                            byte A11 = x2.A(j10);
                            if (A11 > -65 || ((b10 == -32 && A11 < -96) || (b10 == -19 && A11 >= -96))) {
                                break;
                            }
                            j10 += 2;
                            if (x2.A(j14) > -65) {
                                break;
                            }
                        } else {
                            return u(j10, b10, i11);
                        }
                    } else if (i11 != 0) {
                        i10 -= 2;
                        if (b10 < -62) {
                            break;
                        }
                        long j15 = 1 + j10;
                        if (x2.A(j10) > -65) {
                            break;
                        }
                        j10 = j15;
                    } else {
                        return b10;
                    }
                } else {
                    return 0;
                }
            }
            return -1;
        }

        /* JADX WARN: Code restructure failed: missing block: B:69:0x0039, code lost:
        
            return -1;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static int r(final byte[] bytes, long offset, int remaining) {
            int t10 = t(bytes, offset, remaining);
            int i10 = remaining - t10;
            long j10 = offset + t10;
            while (true) {
                byte b10 = 0;
                while (true) {
                    if (i10 <= 0) {
                        break;
                    }
                    long j11 = j10 + 1;
                    b10 = x2.C(bytes, j10);
                    if (b10 < 0) {
                        j10 = j11;
                        break;
                    }
                    i10--;
                    j10 = j11;
                }
                if (i10 != 0) {
                    int i11 = i10 - 1;
                    if (b10 >= -32) {
                        if (b10 >= -16) {
                            if (i11 >= 3) {
                                i10 -= 4;
                                long j12 = 1 + j10;
                                byte C10 = x2.C(bytes, j10);
                                if (C10 > -65 || (((b10 << 28) + (C10 + 112)) >> 30) != 0) {
                                    break;
                                }
                                long j13 = 2 + j10;
                                if (x2.C(bytes, j12) > -65) {
                                    break;
                                }
                                j10 += 3;
                                if (x2.C(bytes, j13) > -65) {
                                    break;
                                }
                            } else {
                                return v(bytes, b10, j10, i11);
                            }
                        } else if (i11 >= 2) {
                            i10 -= 3;
                            long j14 = 1 + j10;
                            byte C11 = x2.C(bytes, j10);
                            if (C11 > -65 || ((b10 == -32 && C11 < -96) || (b10 == -19 && C11 >= -96))) {
                                break;
                            }
                            j10 += 2;
                            if (x2.C(bytes, j14) > -65) {
                                break;
                            }
                        } else {
                            return v(bytes, b10, j10, i11);
                        }
                    } else if (i11 != 0) {
                        i10 -= 2;
                        if (b10 < -62) {
                            break;
                        }
                        long j15 = 1 + j10;
                        if (x2.C(bytes, j10) > -65) {
                            break;
                        }
                        j10 = j15;
                    } else {
                        return b10;
                    }
                } else {
                    return 0;
                }
            }
            return -1;
        }

        public static int s(long address, final int maxChars) {
            if (maxChars < 16) {
                return 0;
            }
            int i10 = (int) ((-address) & 7);
            int i11 = i10;
            while (i11 > 0) {
                long j10 = 1 + address;
                if (x2.A(address) < 0) {
                    return i10 - i11;
                }
                i11--;
                address = j10;
            }
            int i12 = maxChars - i10;
            while (i12 >= 8 && (x2.M(address) & Utf8.f68990b) == 0) {
                address += 8;
                i12 -= 8;
            }
            return maxChars - i12;
        }

        public static int t(byte[] bytes, long offset, final int maxChars) {
            int i10 = 0;
            if (maxChars < 16) {
                return 0;
            }
            int i11 = 8 - (((int) offset) & 7);
            while (i10 < i11) {
                long j10 = 1 + offset;
                if (x2.C(bytes, offset) < 0) {
                    return i10;
                }
                i10++;
                offset = j10;
            }
            while (true) {
                int i12 = i10 + 8;
                if (i12 > maxChars || (x2.N(bytes, x2.f69725h + offset) & Utf8.f68990b) != 0) {
                    break;
                }
                offset += 8;
                i10 = i12;
            }
            while (i10 < maxChars) {
                long j11 = offset + 1;
                if (x2.C(bytes, offset) < 0) {
                    return i10;
                }
                i10++;
                offset = j11;
            }
            return maxChars;
        }

        public static int u(long address, final int byte1, int remaining) {
            if (remaining == 0) {
                return Utf8.n(byte1);
            }
            if (remaining == 1) {
                return Utf8.o(byte1, x2.A(address));
            }
            if (remaining == 2) {
                return Utf8.p(byte1, x2.A(address), x2.A(address + 1));
            }
            throw new AssertionError();
        }

        public static int v(byte[] bytes, int byte1, long offset, int remaining) {
            if (remaining == 0) {
                return Utf8.n(byte1);
            }
            if (remaining == 1) {
                return Utf8.o(byte1, x2.C(bytes, offset));
            }
            if (remaining == 2) {
                return Utf8.p(byte1, x2.C(bytes, offset), x2.C(bytes, offset + 1));
            }
            throw new AssertionError();
        }

        @Override
        public String b(byte[] bytes, int index, int size) throws InvalidProtocolBufferException {
            Charset charset = D0.f67922b;
            String str = new String(bytes, index, size, charset);
            if (str.contains("\ufffd") && !Arrays.equals(str.getBytes(charset), Arrays.copyOfRange(bytes, index, size + index))) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            return str;
        }

        @Override
        public String d(ByteBuffer buffer, int index, int size) throws InvalidProtocolBufferException {
            if ((index | size | ((buffer.limit() - index) - size)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(buffer.limit()), Integer.valueOf(index), Integer.valueOf(size)));
            }
            long k10 = x2.k(buffer) + index;
            long j10 = size + k10;
            char[] cArr = new char[size];
            int i10 = 0;
            while (k10 < j10) {
                byte A10 = x2.A(k10);
                if (!a.n(A10)) {
                    break;
                }
                k10++;
                a.i(A10, cArr, i10);
                i10++;
            }
            int i11 = i10;
            while (k10 < j10) {
                long j11 = k10 + 1;
                byte A11 = x2.A(k10);
                if (a.n(A11)) {
                    int i12 = i11 + 1;
                    a.i(A11, cArr, i11);
                    while (j11 < j10) {
                        byte A12 = x2.A(j11);
                        if (!a.n(A12)) {
                            break;
                        }
                        j11++;
                        a.i(A12, cArr, i12);
                        i12++;
                    }
                    i11 = i12;
                    k10 = j11;
                } else if (a.p(A11)) {
                    if (j11 >= j10) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    k10 += 2;
                    a.k(A11, x2.A(j11), cArr, i11);
                    i11++;
                } else if (a.o(A11)) {
                    if (j11 >= j10 - 1) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    long j12 = 2 + k10;
                    k10 += 3;
                    a.j(A11, x2.A(j11), x2.A(j12), cArr, i11);
                    i11++;
                } else {
                    if (j11 >= j10 - 2) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    byte A13 = x2.A(j11);
                    long j13 = 3 + k10;
                    byte A14 = x2.A(2 + k10);
                    k10 += 4;
                    a.h(A11, A13, A14, x2.A(j13), cArr, i11);
                    i11 += 2;
                }
            }
            return new String(cArr, 0, i11);
        }

        @Override
        public int e(final CharSequence in2, final byte[] out, final int offset, final int length) {
            long j10;
            String str;
            String str2;
            int i10;
            long j11;
            long j12;
            char charAt;
            long j13 = offset;
            long j14 = length + j13;
            int length2 = in2.length();
            String str3 = " at index ";
            String str4 = "Failed writing ";
            if (length2 > length || out.length - length < offset) {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + in2.charAt(length2 - 1) + " at index " + (offset + length));
            }
            int i11 = 0;
            while (true) {
                j10 = 1;
                if (i11 >= length2 || (charAt = in2.charAt(i11)) >= '\u0080') {
                    break;
                }
                x2.g0(out, j13, (byte) charAt);
                i11++;
                j13 = 1 + j13;
            }
            if (i11 == length2) {
                return (int) j13;
            }
            while (i11 < length2) {
                char charAt2 = in2.charAt(i11);
                if (charAt2 >= '\u0080' || j13 >= j14) {
                    if (charAt2 >= '\u0800' || j13 > j14 - 2) {
                        str = str3;
                        str2 = str4;
                        if ((charAt2 >= '\ud800' && '\udfff' >= charAt2) || j13 > j14 - 3) {
                            if (j13 > j14 - 4) {
                                if ('\ud800' <= charAt2 && charAt2 <= '\udfff' && ((i10 = i11 + 1) == length2 || !Character.isSurrogatePair(charAt2, in2.charAt(i10)))) {
                                    throw new UnpairedSurrogateException(i11, length2);
                                }
                                throw new ArrayIndexOutOfBoundsException(str2 + charAt2 + str + j13);
                            }
                            int i12 = i11 + 1;
                            if (i12 != length2) {
                                char charAt3 = in2.charAt(i12);
                                if (Character.isSurrogatePair(charAt2, charAt3)) {
                                    int codePoint = Character.toCodePoint(charAt2, charAt3);
                                    j11 = 1;
                                    x2.g0(out, j13, (byte) ((codePoint >>> 18) | 240));
                                    j12 = j14;
                                    x2.g0(out, j13 + 1, (byte) (((codePoint >>> 12) & 63) | 128));
                                    long j15 = j13 + 3;
                                    x2.g0(out, j13 + 2, (byte) (((codePoint >>> 6) & 63) | 128));
                                    j13 += 4;
                                    x2.g0(out, j15, (byte) ((codePoint & 63) | 128));
                                    i11 = i12;
                                } else {
                                    i11 = i12;
                                }
                            }
                            throw new UnpairedSurrogateException(i11 - 1, length2);
                        }
                        x2.g0(out, j13, (byte) ((charAt2 >>> '\f') | DisplayMetrics.DENSITY_XXHIGH));
                        long j16 = j13 + 2;
                        x2.g0(out, j13 + 1, (byte) (((charAt2 >>> 6) & 63) | 128));
                        j13 += 3;
                        x2.g0(out, j16, (byte) ((charAt2 & '?') | 128));
                    } else {
                        str = str3;
                        str2 = str4;
                        long j17 = j13 + j10;
                        x2.g0(out, j13, (byte) ((charAt2 >>> 6) | 960));
                        j13 += 2;
                        x2.g0(out, j17, (byte) ((charAt2 & '?') | 128));
                    }
                    j12 = j14;
                    j11 = 1;
                } else {
                    x2.g0(out, j13, (byte) charAt2);
                    j12 = j14;
                    str2 = str4;
                    j11 = j10;
                    j13 += j10;
                    str = str3;
                }
                i11++;
                str3 = str;
                str4 = str2;
                j10 = j11;
                j14 = j12;
            }
            return (int) j13;
        }

        @Override
        public void h(CharSequence in2, ByteBuffer out) {
            long j10;
            char c10;
            long j11;
            int i10;
            int i11;
            char c11;
            char charAt;
            long k10 = x2.k(out);
            long position = out.position() + k10;
            long limit = out.limit() + k10;
            int length = in2.length();
            if (length > limit - position) {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + in2.charAt(length - 1) + " at index " + out.limit());
            }
            int i12 = 0;
            while (true) {
                j10 = 1;
                c10 = '\u0080';
                if (i12 >= length || (charAt = in2.charAt(i12)) >= '\u0080') {
                    break;
                }
                x2.e0(position, (byte) charAt);
                i12++;
                position = 1 + position;
            }
            if (i12 == length) {
                F0.e(out, (int) (position - k10));
                return;
            }
            while (i12 < length) {
                char charAt2 = in2.charAt(i12);
                if (charAt2 >= c10 || position >= limit) {
                    if (charAt2 >= '\u0800' || position > limit - 2) {
                        j11 = k10;
                        if ((charAt2 >= '\ud800' && '\udfff' >= charAt2) || position > limit - 3) {
                            if (position > limit - 4) {
                                if ('\ud800' <= charAt2 && charAt2 <= '\udfff' && ((i10 = i12 + 1) == length || !Character.isSurrogatePair(charAt2, in2.charAt(i10)))) {
                                    throw new UnpairedSurrogateException(i12, length);
                                }
                                throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + position);
                            }
                            i11 = i12 + 1;
                            if (i11 != length) {
                                char charAt3 = in2.charAt(i11);
                                if (Character.isSurrogatePair(charAt2, charAt3)) {
                                    int codePoint = Character.toCodePoint(charAt2, charAt3);
                                    x2.e0(position, (byte) ((codePoint >>> 18) | 240));
                                    c11 = '\u0080';
                                    x2.e0(position + 1, (byte) (((codePoint >>> 12) & 63) | 128));
                                    long j12 = position + 3;
                                    x2.e0(position + 2, (byte) (((codePoint >>> 6) & 63) | 128));
                                    position += 4;
                                    x2.e0(j12, (byte) ((codePoint & 63) | 128));
                                } else {
                                    i12 = i11;
                                }
                            }
                            throw new UnpairedSurrogateException(i12 - 1, length);
                        }
                        long j13 = position + j10;
                        x2.e0(position, (byte) ((charAt2 >>> '\f') | DisplayMetrics.DENSITY_XXHIGH));
                        long j14 = position + 2;
                        x2.e0(j13, (byte) (((charAt2 >>> 6) & 63) | 128));
                        position += 3;
                        x2.e0(j14, (byte) ((charAt2 & '?') | 128));
                    } else {
                        j11 = k10;
                        long j15 = position + j10;
                        x2.e0(position, (byte) ((charAt2 >>> 6) | 960));
                        position += 2;
                        x2.e0(j15, (byte) ((charAt2 & '?') | 128));
                    }
                    i11 = i12;
                    c11 = '\u0080';
                } else {
                    x2.e0(position, (byte) charAt2);
                    j11 = k10;
                    i11 = i12;
                    c11 = c10;
                    position += j10;
                }
                c10 = c11;
                k10 = j11;
                j10 = 1;
                i12 = i11 + 1;
            }
            F0.e(out, (int) (position - k10));
        }

        /* JADX WARN: Code restructure failed: missing block: B:34:0x0058, code lost:
        
            if (com.google.protobuf.x2.C(r12, r0) > (-65)) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x009e, code lost:
        
            if (com.google.protobuf.x2.C(r12, r0) > (-65)) goto L59;
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int l(int state, byte[] bytes, final int index, final int limit) {
            byte b10;
            long j10;
            if ((index | limit | (bytes.length - limit)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bytes.length), Integer.valueOf(index), Integer.valueOf(limit)));
            }
            long j11 = index;
            long j12 = limit;
            if (state != 0) {
                if (j11 >= j12) {
                    return state;
                }
                byte b11 = (byte) state;
                if (b11 < -32) {
                    if (b11 >= -62) {
                        long j13 = 1 + j11;
                        if (x2.C(bytes, j11) <= -65) {
                            j11 = j13;
                        }
                    }
                    return -1;
                }
                if (b11 < -16) {
                    byte b12 = (byte) (~(state >> 8));
                    if (b12 == 0) {
                        long j14 = j11 + 1;
                        b12 = x2.C(bytes, j11);
                        if (j14 >= j12) {
                            return Utf8.o(b11, b12);
                        }
                        j11 = j14;
                    }
                    if (b12 <= -65 && ((b11 != -32 || b12 >= -96) && (b11 != -19 || b12 < -96))) {
                        j10 = j11 + 1;
                    }
                    return -1;
                }
                byte b13 = (byte) (~(state >> 8));
                if (b13 == 0) {
                    long j15 = j11 + 1;
                    b13 = x2.C(bytes, j11);
                    if (j15 >= j12) {
                        return Utf8.o(b11, b13);
                    }
                    b10 = 0;
                    j11 = j15;
                } else {
                    b10 = (byte) (state >> 16);
                }
                if (b10 == 0) {
                    long j16 = j11 + 1;
                    b10 = x2.C(bytes, j11);
                    if (j16 >= j12) {
                        return Utf8.p(b11, b13, b10);
                    }
                    j11 = j16;
                }
                if (b13 <= -65 && (((b11 << 28) + (b13 + 112)) >> 30) == 0 && b10 <= -65) {
                    j10 = j11 + 1;
                }
                return -1;
                j11 = j10;
            }
            return r(bytes, j11, (int) (j12 - j11));
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x002d, code lost:
        
            if (com.google.protobuf.x2.A(r0) > (-65)) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0061, code lost:
        
            if (com.google.protobuf.x2.A(r0) > (-65)) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x00a3, code lost:
        
            if (com.google.protobuf.x2.A(r0) > (-65)) goto L57;
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int o(final int state, ByteBuffer buffer, final int index, final int limit) {
            byte b10;
            long j10;
            if ((index | limit | (buffer.limit() - limit)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(buffer.limit()), Integer.valueOf(index), Integer.valueOf(limit)));
            }
            long k10 = x2.k(buffer) + index;
            long j11 = (limit - index) + k10;
            if (state != 0) {
                if (k10 >= j11) {
                    return state;
                }
                byte b11 = (byte) state;
                if (b11 < -32) {
                    if (b11 >= -62) {
                        j10 = 1 + k10;
                    }
                    return -1;
                }
                if (b11 < -16) {
                    byte b12 = (byte) (~(state >> 8));
                    if (b12 == 0) {
                        long j12 = k10 + 1;
                        b12 = x2.A(k10);
                        if (j12 >= j11) {
                            return Utf8.o(b11, b12);
                        }
                        k10 = j12;
                    }
                    if (b12 <= -65 && ((b11 != -32 || b12 >= -96) && (b11 != -19 || b12 < -96))) {
                        j10 = 1 + k10;
                    }
                    return -1;
                }
                byte b13 = (byte) (~(state >> 8));
                if (b13 == 0) {
                    long j13 = k10 + 1;
                    b13 = x2.A(k10);
                    if (j13 >= j11) {
                        return Utf8.o(b11, b13);
                    }
                    b10 = 0;
                    k10 = j13;
                } else {
                    b10 = (byte) (state >> 16);
                }
                if (b10 == 0) {
                    long j14 = k10 + 1;
                    b10 = x2.A(k10);
                    if (j14 >= j11) {
                        return Utf8.p(b11, b13, b10);
                    }
                    k10 = j14;
                }
                if (b13 <= -65 && (((b11 << 28) + (b13 + 112)) >> 30) == 0 && b10 <= -65) {
                    j10 = 1 + k10;
                }
                return -1;
                k10 = j10;
            }
            return q(k10, (int) (j11 - k10));
        }
    }

    static {
        f68989a = (!d.p() || C12671f.c()) ? new c() : new d();
    }

    public static String g(ByteBuffer buffer, int index, int size) throws InvalidProtocolBufferException {
        return f68989a.a(buffer, index, size);
    }

    public static String h(byte[] bytes, int index, int size) throws InvalidProtocolBufferException {
        return f68989a.b(bytes, index, size);
    }

    public static int i(CharSequence in2, byte[] out, int offset, int length) {
        return f68989a.e(in2, out, offset, length);
    }

    public static void j(CharSequence in2, ByteBuffer out) {
        f68989a.f(in2, out);
    }

    public static int k(CharSequence sequence) {
        int length = sequence.length();
        int i10 = 0;
        while (i10 < length && sequence.charAt(i10) < '\u0080') {
            i10++;
        }
        int i11 = length;
        while (true) {
            if (i10 < length) {
                char charAt = sequence.charAt(i10);
                if (charAt >= '\u0800') {
                    i11 += l(sequence, i10);
                    break;
                }
                i11 += ('\u007f' - charAt) >>> 31;
                i10++;
            } else {
                break;
            }
        }
        if (i11 >= length) {
            return i11;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (i11 + 4294967296L));
    }

    public static int l(CharSequence sequence, int start) {
        int length = sequence.length();
        int i10 = 0;
        while (start < length) {
            char charAt = sequence.charAt(start);
            if (charAt < '\u0800') {
                i10 += ('\u007f' - charAt) >>> 31;
            } else {
                i10 += 2;
                if ('\ud800' <= charAt && charAt <= '\udfff') {
                    if (Character.codePointAt(sequence, start) < 65536) {
                        throw new UnpairedSurrogateException(start, length);
                    }
                    start++;
                }
            }
            start++;
        }
        return i10;
    }

    public static int m(ByteBuffer buffer, int index, int limit) {
        int i10 = limit - 7;
        int i11 = index;
        while (i11 < i10 && (buffer.getLong(i11) & f68990b) == 0) {
            i11 += 8;
        }
        return i11 - index;
    }

    public static int n(int byte1) {
        if (byte1 > -12) {
            return -1;
        }
        return byte1;
    }

    public static int o(int byte1, int byte2) {
        if (byte1 > -12 || byte2 > -65) {
            return -1;
        }
        return byte1 ^ (byte2 << 8);
    }

    public static int p(int byte1, int byte2, int byte3) {
        if (byte1 > -12 || byte2 > -65 || byte3 > -65) {
            return -1;
        }
        return (byte1 ^ (byte2 << 8)) ^ (byte3 << 16);
    }

    public static int q(final ByteBuffer buffer, final int byte1, final int index, final int remaining) {
        if (remaining == 0) {
            return n(byte1);
        }
        if (remaining == 1) {
            return o(byte1, buffer.get(index));
        }
        if (remaining == 2) {
            return p(byte1, buffer.get(index), buffer.get(index + 1));
        }
        throw new AssertionError();
    }

    public static int r(byte[] bytes, int index, int limit) {
        byte b10 = bytes[index - 1];
        int i10 = limit - index;
        if (i10 == 0) {
            return n(b10);
        }
        if (i10 == 1) {
            return o(b10, bytes[index]);
        }
        if (i10 == 2) {
            return p(b10, bytes[index], bytes[index + 1]);
        }
        throw new AssertionError();
    }

    public static boolean s(ByteBuffer buffer) {
        return f68989a.i(buffer, buffer.position(), buffer.remaining());
    }

    public static boolean t(byte[] bytes) {
        return f68989a.j(bytes, 0, bytes.length);
    }

    public static boolean u(byte[] bytes, int index, int limit) {
        return f68989a.j(bytes, index, limit);
    }

    public static int v(int state, ByteBuffer buffer, int index, int limit) {
        return f68989a.k(state, buffer, index, limit);
    }

    public static int w(int state, byte[] bytes, int index, int limit) {
        return f68989a.l(state, bytes, index, limit);
    }
}
