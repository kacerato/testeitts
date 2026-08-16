package net.jpountz.xxhash;

import java.nio.ByteBuffer;

public final class q extends o {

    public static final o f98146a = new q();

    @Override
    public long a(ByteBuffer byteBuffer, int i10, int i11, long j10) {
        int i12;
        int i13;
        long j11;
        long rotateLeft;
        long rotateLeft2;
        long j12;
        long rotateLeft3;
        long rotateLeft4;
        long j13;
        if (byteBuffer.hasArray()) {
            return c(byteBuffer.array(), i10 + byteBuffer.arrayOffset(), i11, j10);
        }
        net.jpountz.util.a.c(byteBuffer, i10, i11);
        ByteBuffer d10 = net.jpountz.util.a.d(byteBuffer);
        int i14 = i10 + i11;
        long j14 = -4417276706812531889L;
        long j15 = -7046029288634856825L;
        if (i11 >= 32) {
            int i15 = i14 - 32;
            long j16 = j10 - (-7046029288634856825L);
            long j17 = j10 - 4417276706812531889L;
            long j18 = j10 + 6983438078262162902L;
            i13 = i10;
            long j19 = j10;
            while (true) {
                rotateLeft = Long.rotateLeft(j18 + (net.jpountz.util.a.k(d10, i13) * j14), 31) * j15;
                rotateLeft2 = Long.rotateLeft(j17 + (net.jpountz.util.a.k(d10, i13 + 8) * j14), 31);
                i12 = i14;
                j12 = rotateLeft2 * j15;
                rotateLeft3 = Long.rotateLeft((net.jpountz.util.a.k(d10, i13 + 16) * (-4417276706812531889L)) + j19, 31) * (-7046029288634856825L);
                rotateLeft4 = Long.rotateLeft(j16 + (net.jpountz.util.a.k(d10, i13 + 24) * (-4417276706812531889L)), 31);
                j13 = rotateLeft4 * (-7046029288634856825L);
                i13 += 32;
                if (i13 > i15) {
                    break;
                }
                j16 = j13;
                j18 = rotateLeft;
                j19 = rotateLeft3;
                j14 = -4417276706812531889L;
                j15 = -7046029288634856825L;
                i14 = i12;
                j17 = j12;
            }
            j11 = (((Long.rotateLeft(rotateLeft4 * (-2381459717836149591L), 31) * (-7046029288634856825L)) ^ ((((((((((Long.rotateLeft(r4 * (-2381459717836149591L), 31) * (-7046029288634856825L)) ^ (((Long.rotateLeft(rotateLeft, 1) + Long.rotateLeft(j12, 7)) + Long.rotateLeft(rotateLeft3, 12)) + Long.rotateLeft(j13, 18))) * (-7046029288634856825L)) - 8796714831421723037L) ^ (Long.rotateLeft(rotateLeft2 * (-2381459717836149591L), 31) * (-7046029288634856825L))) * (-7046029288634856825L)) - 8796714831421723037L) ^ (Long.rotateLeft(r11 * (-2381459717836149591L), 31) * (-7046029288634856825L))) * (-7046029288634856825L)) - 8796714831421723037L)) * (-7046029288634856825L)) - 8796714831421723037L;
        } else {
            i12 = i14;
            i13 = i10;
            j11 = j10 + 2870177450012600261L;
        }
        long j20 = j11 + i11;
        while (i13 <= i12 - 8) {
            j20 = (Long.rotateLeft(j20 ^ (Long.rotateLeft(net.jpountz.util.a.k(d10, i13) * (-4417276706812531889L), 31) * (-7046029288634856825L)), 27) * (-7046029288634856825L)) - 8796714831421723037L;
            i13 += 8;
        }
        if (i13 <= i12 - 4) {
            j20 = (Long.rotateLeft(j20 ^ ((net.jpountz.util.a.i(d10, i13) & 4294967295L) * (-7046029288634856825L)), 23) * (-4417276706812531889L)) + 1609587929392839161L;
            i13 += 4;
        }
        int i16 = i12;
        while (i13 < i16) {
            j20 = Long.rotateLeft(j20 ^ ((net.jpountz.util.a.g(d10, i13) & 255) * 2870177450012600261L), 11) * (-7046029288634856825L);
            i13++;
        }
        long j21 = (j20 ^ (j20 >>> 33)) * (-4417276706812531889L);
        long j22 = (j21 ^ (j21 >>> 29)) * 1609587929392839161L;
        return j22 ^ (j22 >>> 32);
    }

    @Override
    public long c(byte[] bArr, int i10, int i11, long j10) {
        int i12;
        int i13;
        long j11;
        long rotateLeft;
        long rotateLeft2;
        long rotateLeft3;
        long rotateLeft4;
        long j12;
        net.jpountz.util.c.c(bArr, i10, i11);
        int i14 = i10 + i11;
        long j13 = -4417276706812531889L;
        long j14 = -7046029288634856825L;
        if (i11 >= 32) {
            int i15 = i14 - 32;
            long j15 = j10 - (-7046029288634856825L);
            long j16 = j10 - 4417276706812531889L;
            long j17 = j10 + 6983438078262162902L;
            i13 = i10;
            long j18 = j10;
            while (true) {
                rotateLeft = Long.rotateLeft(j17 + (net.jpountz.util.c.j(bArr, i13) * j13), 31) * j14;
                i12 = i14;
                rotateLeft2 = Long.rotateLeft(j16 + (net.jpountz.util.c.j(bArr, i13 + 8) * j13), 31) * j14;
                rotateLeft3 = Long.rotateLeft((net.jpountz.util.c.j(bArr, i13 + 16) * (-4417276706812531889L)) + j18, 31) * (-7046029288634856825L);
                rotateLeft4 = Long.rotateLeft(j15 + (net.jpountz.util.c.j(bArr, i13 + 24) * (-4417276706812531889L)), 31);
                j12 = rotateLeft4 * (-7046029288634856825L);
                i13 += 32;
                if (i13 > i15) {
                    break;
                }
                j16 = rotateLeft2;
                j15 = j12;
                j17 = rotateLeft;
                j18 = rotateLeft3;
                i14 = i12;
                j13 = -4417276706812531889L;
                j14 = -7046029288634856825L;
            }
            j11 = (((Long.rotateLeft(rotateLeft4 * (-2381459717836149591L), 31) * (-7046029288634856825L)) ^ ((((((((((Long.rotateLeft(r3 * (-2381459717836149591L), 31) * (-7046029288634856825L)) ^ (((Long.rotateLeft(rotateLeft, 1) + Long.rotateLeft(rotateLeft2, 7)) + Long.rotateLeft(rotateLeft3, 12)) + Long.rotateLeft(j12, 18))) * (-7046029288634856825L)) - 8796714831421723037L) ^ (Long.rotateLeft(r7 * (-2381459717836149591L), 31) * (-7046029288634856825L))) * (-7046029288634856825L)) - 8796714831421723037L) ^ (Long.rotateLeft(r10 * (-2381459717836149591L), 31) * (-7046029288634856825L))) * (-7046029288634856825L)) - 8796714831421723037L)) * (-7046029288634856825L)) - 8796714831421723037L;
        } else {
            i12 = i14;
            i13 = i10;
            j11 = j10 + 2870177450012600261L;
        }
        long j19 = j11 + i11;
        while (i13 <= i12 - 8) {
            j19 = (Long.rotateLeft(j19 ^ (Long.rotateLeft(net.jpountz.util.c.j(bArr, i13) * (-4417276706812531889L), 31) * (-7046029288634856825L)), 27) * (-7046029288634856825L)) - 8796714831421723037L;
            i13 += 8;
        }
        if (i13 <= i12 - 4) {
            j19 = (Long.rotateLeft(j19 ^ ((net.jpountz.util.c.i(bArr, i13) & 4294967295L) * (-7046029288634856825L)), 23) * (-4417276706812531889L)) + 1609587929392839161L;
            i13 += 4;
        }
        int i16 = i12;
        while (i13 < i16) {
            j19 = Long.rotateLeft(j19 ^ ((net.jpountz.util.c.d(bArr, i13) & 255) * 2870177450012600261L), 11) * (-7046029288634856825L);
            i13++;
        }
        long j20 = (j19 ^ (j19 >>> 33)) * (-4417276706812531889L);
        long j21 = (j20 ^ (j20 >>> 29)) * 1609587929392839161L;
        return j21 ^ (j21 >>> 32);
    }
}
