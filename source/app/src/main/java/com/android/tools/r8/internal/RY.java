package com.android.tools.r8.internal;

import B2.D;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public final class RY extends F {

    public long f43925d;

    public long f43926e;

    public final ByteBuffer f43922a = ByteBuffer.allocate(23).order(ByteOrder.LITTLE_ENDIAN);

    public final int f43923b = 16;

    public final int f43924c = 16;

    public int f43927f = 0;

    public RY() {
        long j10 = 0;
        this.f43925d = j10;
        this.f43926e = j10;
    }

    @Override
    public final InterfaceC8212lA a(byte[] bArr, int i10, int i11) {
        ByteBuffer order = ByteBuffer.wrap(bArr, 0, i11).order(ByteOrder.LITTLE_ENDIAN);
        if (order.remaining() <= this.f43922a.remaining()) {
            this.f43922a.put(order);
            if (this.f43922a.remaining() < 8) {
                this.f43922a.flip();
                while (this.f43922a.remaining() >= this.f43924c) {
                    a(this.f43922a);
                }
                this.f43922a.compact();
            }
            return this;
        }
        int position = this.f43923b - this.f43922a.position();
        for (int i12 = 0; i12 < position; i12++) {
            this.f43922a.put(order.get());
        }
        this.f43922a.flip();
        while (this.f43922a.remaining() >= this.f43924c) {
            a(this.f43922a);
        }
        this.f43922a.compact();
        while (order.remaining() >= this.f43924c) {
            a(order);
        }
        this.f43922a.put(order);
        return this;
    }

    public final void a(ByteBuffer byteBuffer) {
        long j10 = byteBuffer.getLong();
        long j11 = byteBuffer.getLong();
        long rotateLeft = (Long.rotateLeft(j10 * D.a.f1349h, 31) * D.a.f1350i) ^ this.f43925d;
        this.f43925d = rotateLeft;
        long rotateLeft2 = Long.rotateLeft(rotateLeft, 27);
        long j12 = this.f43926e;
        this.f43925d = ((rotateLeft2 + j12) * 5) + 1390208809;
        long rotateLeft3 = (Long.rotateLeft(j11 * D.a.f1350i, 33) * D.a.f1349h) ^ j12;
        this.f43926e = rotateLeft3;
        this.f43926e = ((Long.rotateLeft(rotateLeft3, 31) + this.f43925d) * 5) + 944331445;
        this.f43927f += 16;
    }

    @Override
    public final InterfaceC8212lA a(byte b10) {
        this.f43922a.put(b10);
        if (this.f43922a.remaining() < 8) {
            this.f43922a.flip();
            while (this.f43922a.remaining() >= this.f43924c) {
                a(this.f43922a);
            }
            this.f43922a.compact();
        }
        return this;
    }

    @Override
    public final InterfaceC8212lA a(int i10) {
        this.f43922a.putInt(i10);
        if (this.f43922a.remaining() < 8) {
            this.f43922a.flip();
            while (this.f43922a.remaining() >= this.f43924c) {
                a(this.f43922a);
            }
            this.f43922a.compact();
        }
        return this;
    }

    @Override
    public final InterfaceC8212lA a(long j10) {
        this.f43922a.putLong(j10);
        if (this.f43922a.remaining() < 8) {
            this.f43922a.flip();
            while (this.f43922a.remaining() >= this.f43924c) {
                a(this.f43922a);
            }
            this.f43922a.compact();
        }
        return this;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0046. Please report as an issue. */
    @Override
    public final C7212fA a() {
        long j10;
        long j11;
        long j12;
        long j13;
        long j14;
        long j15;
        long j16;
        this.f43922a.flip();
        while (this.f43922a.remaining() >= this.f43924c) {
            a(this.f43922a);
        }
        this.f43922a.compact();
        this.f43922a.flip();
        if (this.f43922a.remaining() > 0) {
            ByteBuffer byteBuffer = this.f43922a;
            this.f43927f = byteBuffer.remaining() + this.f43927f;
            long j17 = 0;
            switch (byteBuffer.remaining()) {
                case 1:
                    j10 = 0;
                    j16 = j10 ^ (byteBuffer.get(0) & 255);
                    this.f43925d = (Long.rotateLeft(j16 * D.a.f1349h, 31) * D.a.f1350i) ^ this.f43925d;
                    this.f43926e ^= Long.rotateLeft(j17 * D.a.f1350i, 33) * D.a.f1349h;
                    ByteBuffer byteBuffer2 = this.f43922a;
                    byteBuffer2.position(byteBuffer2.limit());
                    break;
                case 2:
                    j11 = 0;
                    j10 = j11 ^ ((byteBuffer.get(1) & 255) << 8);
                    j16 = j10 ^ (byteBuffer.get(0) & 255);
                    this.f43925d = (Long.rotateLeft(j16 * D.a.f1349h, 31) * D.a.f1350i) ^ this.f43925d;
                    this.f43926e ^= Long.rotateLeft(j17 * D.a.f1350i, 33) * D.a.f1349h;
                    ByteBuffer byteBuffer22 = this.f43922a;
                    byteBuffer22.position(byteBuffer22.limit());
                    break;
                case 3:
                    j12 = 0;
                    j11 = j12 ^ ((byteBuffer.get(2) & 255) << 16);
                    j10 = j11 ^ ((byteBuffer.get(1) & 255) << 8);
                    j16 = j10 ^ (byteBuffer.get(0) & 255);
                    this.f43925d = (Long.rotateLeft(j16 * D.a.f1349h, 31) * D.a.f1350i) ^ this.f43925d;
                    this.f43926e ^= Long.rotateLeft(j17 * D.a.f1350i, 33) * D.a.f1349h;
                    ByteBuffer byteBuffer222 = this.f43922a;
                    byteBuffer222.position(byteBuffer222.limit());
                    break;
                case 4:
                    j13 = 0;
                    j12 = ((byteBuffer.get(3) & 255) << 24) ^ j13;
                    j11 = j12 ^ ((byteBuffer.get(2) & 255) << 16);
                    j10 = j11 ^ ((byteBuffer.get(1) & 255) << 8);
                    j16 = j10 ^ (byteBuffer.get(0) & 255);
                    this.f43925d = (Long.rotateLeft(j16 * D.a.f1349h, 31) * D.a.f1350i) ^ this.f43925d;
                    this.f43926e ^= Long.rotateLeft(j17 * D.a.f1350i, 33) * D.a.f1349h;
                    ByteBuffer byteBuffer2222 = this.f43922a;
                    byteBuffer2222.position(byteBuffer2222.limit());
                    break;
                case 5:
                    j14 = 0;
                    j13 = j14 ^ ((byteBuffer.get(4) & 255) << 32);
                    j12 = ((byteBuffer.get(3) & 255) << 24) ^ j13;
                    j11 = j12 ^ ((byteBuffer.get(2) & 255) << 16);
                    j10 = j11 ^ ((byteBuffer.get(1) & 255) << 8);
                    j16 = j10 ^ (byteBuffer.get(0) & 255);
                    this.f43925d = (Long.rotateLeft(j16 * D.a.f1349h, 31) * D.a.f1350i) ^ this.f43925d;
                    this.f43926e ^= Long.rotateLeft(j17 * D.a.f1350i, 33) * D.a.f1349h;
                    ByteBuffer byteBuffer22222 = this.f43922a;
                    byteBuffer22222.position(byteBuffer22222.limit());
                    break;
                case 6:
                    j15 = 0;
                    j14 = ((byteBuffer.get(5) & 255) << 40) ^ j15;
                    j13 = j14 ^ ((byteBuffer.get(4) & 255) << 32);
                    j12 = ((byteBuffer.get(3) & 255) << 24) ^ j13;
                    j11 = j12 ^ ((byteBuffer.get(2) & 255) << 16);
                    j10 = j11 ^ ((byteBuffer.get(1) & 255) << 8);
                    j16 = j10 ^ (byteBuffer.get(0) & 255);
                    this.f43925d = (Long.rotateLeft(j16 * D.a.f1349h, 31) * D.a.f1350i) ^ this.f43925d;
                    this.f43926e ^= Long.rotateLeft(j17 * D.a.f1350i, 33) * D.a.f1349h;
                    ByteBuffer byteBuffer222222 = this.f43922a;
                    byteBuffer222222.position(byteBuffer222222.limit());
                    break;
                case 7:
                    j15 = (byteBuffer.get(6) & 255) << 48;
                    j14 = ((byteBuffer.get(5) & 255) << 40) ^ j15;
                    j13 = j14 ^ ((byteBuffer.get(4) & 255) << 32);
                    j12 = ((byteBuffer.get(3) & 255) << 24) ^ j13;
                    j11 = j12 ^ ((byteBuffer.get(2) & 255) << 16);
                    j10 = j11 ^ ((byteBuffer.get(1) & 255) << 8);
                    j16 = j10 ^ (byteBuffer.get(0) & 255);
                    this.f43925d = (Long.rotateLeft(j16 * D.a.f1349h, 31) * D.a.f1350i) ^ this.f43925d;
                    this.f43926e ^= Long.rotateLeft(j17 * D.a.f1350i, 33) * D.a.f1349h;
                    ByteBuffer byteBuffer2222222 = this.f43922a;
                    byteBuffer2222222.position(byteBuffer2222222.limit());
                    break;
                case 8:
                    j16 = byteBuffer.getLong();
                    this.f43925d = (Long.rotateLeft(j16 * D.a.f1349h, 31) * D.a.f1350i) ^ this.f43925d;
                    this.f43926e ^= Long.rotateLeft(j17 * D.a.f1350i, 33) * D.a.f1349h;
                    ByteBuffer byteBuffer22222222 = this.f43922a;
                    byteBuffer22222222.position(byteBuffer22222222.limit());
                    break;
                case 9:
                    j17 ^= byteBuffer.get(8) & 255;
                    j16 = byteBuffer.getLong();
                    this.f43925d = (Long.rotateLeft(j16 * D.a.f1349h, 31) * D.a.f1350i) ^ this.f43925d;
                    this.f43926e ^= Long.rotateLeft(j17 * D.a.f1350i, 33) * D.a.f1349h;
                    ByteBuffer byteBuffer222222222 = this.f43922a;
                    byteBuffer222222222.position(byteBuffer222222222.limit());
                    break;
                case 10:
                    j17 ^= (byteBuffer.get(9) & 255) << 8;
                    j17 ^= byteBuffer.get(8) & 255;
                    j16 = byteBuffer.getLong();
                    this.f43925d = (Long.rotateLeft(j16 * D.a.f1349h, 31) * D.a.f1350i) ^ this.f43925d;
                    this.f43926e ^= Long.rotateLeft(j17 * D.a.f1350i, 33) * D.a.f1349h;
                    ByteBuffer byteBuffer2222222222 = this.f43922a;
                    byteBuffer2222222222.position(byteBuffer2222222222.limit());
                    break;
                case 11:
                    j17 ^= (byteBuffer.get(10) & 255) << 16;
                    j17 ^= (byteBuffer.get(9) & 255) << 8;
                    j17 ^= byteBuffer.get(8) & 255;
                    j16 = byteBuffer.getLong();
                    this.f43925d = (Long.rotateLeft(j16 * D.a.f1349h, 31) * D.a.f1350i) ^ this.f43925d;
                    this.f43926e ^= Long.rotateLeft(j17 * D.a.f1350i, 33) * D.a.f1349h;
                    ByteBuffer byteBuffer22222222222 = this.f43922a;
                    byteBuffer22222222222.position(byteBuffer22222222222.limit());
                    break;
                case 12:
                    j17 ^= (byteBuffer.get(11) & 255) << 24;
                    j17 ^= (byteBuffer.get(10) & 255) << 16;
                    j17 ^= (byteBuffer.get(9) & 255) << 8;
                    j17 ^= byteBuffer.get(8) & 255;
                    j16 = byteBuffer.getLong();
                    this.f43925d = (Long.rotateLeft(j16 * D.a.f1349h, 31) * D.a.f1350i) ^ this.f43925d;
                    this.f43926e ^= Long.rotateLeft(j17 * D.a.f1350i, 33) * D.a.f1349h;
                    ByteBuffer byteBuffer222222222222 = this.f43922a;
                    byteBuffer222222222222.position(byteBuffer222222222222.limit());
                    break;
                case 13:
                    j17 ^= (byteBuffer.get(12) & 255) << 32;
                    j17 ^= (byteBuffer.get(11) & 255) << 24;
                    j17 ^= (byteBuffer.get(10) & 255) << 16;
                    j17 ^= (byteBuffer.get(9) & 255) << 8;
                    j17 ^= byteBuffer.get(8) & 255;
                    j16 = byteBuffer.getLong();
                    this.f43925d = (Long.rotateLeft(j16 * D.a.f1349h, 31) * D.a.f1350i) ^ this.f43925d;
                    this.f43926e ^= Long.rotateLeft(j17 * D.a.f1350i, 33) * D.a.f1349h;
                    ByteBuffer byteBuffer2222222222222 = this.f43922a;
                    byteBuffer2222222222222.position(byteBuffer2222222222222.limit());
                    break;
                case 14:
                    j17 ^= (byteBuffer.get(13) & 255) << 40;
                    j17 ^= (byteBuffer.get(12) & 255) << 32;
                    j17 ^= (byteBuffer.get(11) & 255) << 24;
                    j17 ^= (byteBuffer.get(10) & 255) << 16;
                    j17 ^= (byteBuffer.get(9) & 255) << 8;
                    j17 ^= byteBuffer.get(8) & 255;
                    j16 = byteBuffer.getLong();
                    this.f43925d = (Long.rotateLeft(j16 * D.a.f1349h, 31) * D.a.f1350i) ^ this.f43925d;
                    this.f43926e ^= Long.rotateLeft(j17 * D.a.f1350i, 33) * D.a.f1349h;
                    ByteBuffer byteBuffer22222222222222 = this.f43922a;
                    byteBuffer22222222222222.position(byteBuffer22222222222222.limit());
                    break;
                case 15:
                    j17 = (byteBuffer.get(14) & 255) << 48;
                    j17 ^= (byteBuffer.get(13) & 255) << 40;
                    j17 ^= (byteBuffer.get(12) & 255) << 32;
                    j17 ^= (byteBuffer.get(11) & 255) << 24;
                    j17 ^= (byteBuffer.get(10) & 255) << 16;
                    j17 ^= (byteBuffer.get(9) & 255) << 8;
                    j17 ^= byteBuffer.get(8) & 255;
                    j16 = byteBuffer.getLong();
                    this.f43925d = (Long.rotateLeft(j16 * D.a.f1349h, 31) * D.a.f1350i) ^ this.f43925d;
                    this.f43926e ^= Long.rotateLeft(j17 * D.a.f1350i, 33) * D.a.f1349h;
                    ByteBuffer byteBuffer222222222222222 = this.f43922a;
                    byteBuffer222222222222222.position(byteBuffer222222222222222.limit());
                    break;
                default:
                    throw new AssertionError((Object) "Should never get here.");
            }
        }
        long j18 = this.f43925d;
        long j19 = this.f43927f;
        long j20 = j18 ^ j19;
        long j21 = j19 ^ this.f43926e;
        long j22 = j20 + j21;
        long j23 = j21 + j22;
        long j24 = (j22 ^ (j22 >>> 33)) * (-49064778989728563L);
        long j25 = (j24 ^ (j24 >>> 33)) * (-4265267296055464877L);
        long j26 = (j23 ^ (j23 >>> 33)) * (-49064778989728563L);
        long j27 = (j26 ^ (j26 >>> 33)) * (-4265267296055464877L);
        long j28 = j27 ^ (j27 >>> 33);
        long j29 = (j25 ^ (j25 >>> 33)) + j28;
        this.f43925d = j29;
        this.f43926e = j28 + j29;
        byte[] array = ByteBuffer.wrap(new byte[16]).order(ByteOrder.LITTLE_ENDIAN).putLong(this.f43925d).putLong(this.f43926e).array();
        char[] cArr = AbstractC7379gA.f48204b;
        return new C7212fA(array);
    }
}
