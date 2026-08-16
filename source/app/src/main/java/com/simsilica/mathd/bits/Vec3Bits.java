package com.simsilica.mathd.bits;

import com.simsilica.mathd.Vec3d;
import java.util.Random;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public final class Vec3Bits {
    static Logger log = LoggerFactory.getLogger((Class<?>) Vec3Bits.class);
    private final long mask;
    private final int totalBits;
    private final FloatBits xBits;
    private final FloatBits yBits;
    private final int yShift;
    private final FloatBits zBits;
    private final int zShift;

    public Vec3Bits(float f10, float f11, int i10) {
        this(new FloatBits(f10, f11, i10), new FloatBits(f10, f11, i10), new FloatBits(f10, f11, i10));
    }

    public static void main(String... strArr) {
        FloatBits floatBits = new FloatBits(-35.6f, 35.6f, 16);
        Vec3Bits vec3Bits = new Vec3Bits(floatBits, new FloatBits(0.0f, 256.0f, 18), floatBits);
        Random random = new Random(1L);
        for (int i10 = 0; i10 < 10; i10++) {
            Vec3d vec3d = new Vec3d((random.nextFloat() * 71.2f) - 35.6f, random.nextFloat() * 256.0f, (random.nextFloat() * 71.2f) - 35.6f);
            long bits = vec3Bits.toBits(vec3d);
            Vec3d fromBits = vec3Bits.fromBits(bits);
            System.out.println("pos:" + ((Object) vec3d) + "   bits:" + Long.toHexString(bits) + "\nrev:" + ((Object) fromBits) + "\nerr:" + ((Object) fromBits.subtract(vec3d)));
        }
    }

    public Vec3d fromBits(long j10) {
        long mask = this.xBits.getMask() & j10;
        long mask2 = (j10 >> this.yShift) & this.yBits.getMask();
        long mask3 = (j10 >> this.zShift) & this.zBits.getMask();
        return new Vec3d(this.xBits.fromBits(mask), this.yBits.fromBits(mask2), this.zBits.fromBits(mask3));
    }

    public int getBitSize() {
        return this.totalBits;
    }

    public long getMask() {
        return this.mask;
    }

    public FloatBits getXBits() {
        return this.xBits;
    }

    public FloatBits getYBits() {
        return this.yBits;
    }

    public FloatBits getZBits() {
        return this.zBits;
    }

    public long toBits(Vec3d vec3d) {
        return this.xBits.toBits((float) vec3d.f83547x) | (this.yBits.toBits((float) vec3d.f83548y) << this.yShift) | (this.zBits.toBits((float) vec3d.f83549z) << this.zShift);
    }

    public Vec3Bits(FloatBits floatBits, FloatBits floatBits2, FloatBits floatBits3) {
        this.xBits = floatBits;
        int bitSize = floatBits.getBitSize();
        this.yShift = bitSize;
        this.yBits = floatBits2;
        int bitSize2 = floatBits2.getBitSize() + bitSize;
        this.zShift = bitSize2;
        this.zBits = floatBits3;
        int bitSize3 = floatBits3.getBitSize() + bitSize2;
        this.totalBits = bitSize3;
        if (bitSize3 <= 64) {
            long mask = (floatBits2.getMask() << bitSize) | floatBits.getMask() | (floatBits3.getMask() << bitSize2);
            this.mask = mask;
            log.debug("Bit size:" + bitSize3 + "  mask:" + Long.toHexString(mask));
            return;
        }
        throw new IllegalArgumentException("Total bit size exceeds 64");
    }
}
