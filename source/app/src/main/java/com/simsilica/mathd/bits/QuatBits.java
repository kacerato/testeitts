package com.simsilica.mathd.bits;

import com.simsilica.mathd.Quatd;
import com.simsilica.mathd.Vec4d;
import java.io.PrintStream;
import ve.j;

public final class QuatBits {
    private final FloatBits componentBits;
    private long mask;
    private final int totalBits;
    private final int wShift;
    private final int yShift;
    private final int zShift;

    public QuatBits(int i10) {
        FloatBits floatBits = new FloatBits(-1.0f, 1.0f, i10);
        this.componentBits = floatBits;
        this.yShift = i10;
        int i11 = i10 + i10;
        this.zShift = i11;
        int i12 = i11 + i10;
        this.wShift = i12;
        int i13 = i12 + i10;
        this.totalBits = i13;
        if (i13 > 64) {
            throw new IllegalArgumentException("Total bit size exceeds 64");
        }
        long mask = floatBits.getMask();
        this.mask = mask;
        long mask2 = mask | (floatBits.getMask() << i10);
        this.mask = mask2;
        long mask3 = mask2 | (floatBits.getMask() << i11);
        this.mask = mask3;
        this.mask = (floatBits.getMask() << i12) | mask3;
        System.out.println("Bit size:" + i13 + "  mask:" + Long.toHexString(this.mask));
    }

    public static void main(String... strArr) {
        Quatd quatd = new Quatd();
        QuatBits quatBits = new QuatBits(12);
        Vec4d vec4d = new Vec4d(10.0d, 10.0d, 10.0d, 10.0d);
        Vec4d vec4d2 = new Vec4d(-10.0d, -10.0d, -10.0d, -10.0d);
        Vec4d vec4d3 = new Vec4d();
        Vec4d vec4d4 = new Vec4d(0.0d, 0.0d, 0.0d, 0.0d);
        long nanoTime = System.nanoTime();
        int i10 = 0;
        double d10 = 0.0d;
        while (d10 < 6.283185307179586d) {
            double d11 = 0.0d;
            while (d11 < 6.283185307179586d) {
                int i11 = i10;
                double d12 = 0.0d;
                while (d12 < 6.283185307179586d) {
                    Vec4d vec4d5 = vec4d;
                    quatd.fromAngles(d10, d11, d12);
                    quatd.normalizeLocal();
                    Vec4d vec4d6 = vec4d4;
                    Vec4d vec4d7 = vec4d3;
                    vec4d3.set(quatd.f83544x, quatd.f83545y, quatd.f83546z, quatd.f83543w);
                    vec4d5.minLocal(vec4d7);
                    vec4d2.maxLocal(vec4d7);
                    long bits = quatBits.toBits(quatd);
                    Quatd fromBits = quatBits.fromBits(bits);
                    if (bits != quatBits.toBits(fromBits)) {
                        PrintStream printStream = System.out;
                        printStream.println("Double convert failed...");
                        printStream.println("original:" + ((Object) quatd));
                        printStream.println("    test:" + ((Object) fromBits));
                        return;
                    }
                    quatd.subtractLocal(fromBits);
                    vec4d7.set(Math.abs(quatd.f83544x), Math.abs(quatd.f83545y), Math.abs(quatd.f83546z), Math.abs(quatd.f83543w));
                    vec4d6.maxLocal(vec4d7);
                    i11++;
                    d12 += 0.025132741228718346d;
                    vec4d3 = vec4d7;
                    vec4d4 = vec4d6;
                    vec4d = vec4d5;
                }
                d11 += 0.025132741228718346d;
                i10 = i11;
            }
            System.out.println(((int) ((d10 / 6.283185307179586d) * 100.0d)) + j.f121589a);
            d10 += 0.025132741228718346d;
            vec4d4 = vec4d4;
            vec4d = vec4d;
        }
        Vec4d vec4d8 = vec4d;
        PrintStream printStream2 = System.out;
        printStream2.println();
        long nanoTime2 = System.nanoTime();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Completed in ");
        sb2.append((nanoTime2 - nanoTime) / 1000000.0d);
        sb2.append(" ms    per iteration:");
        sb2.append((r3 / i10) / 1000000.0d);
        sb2.append(" ms");
        printStream2.println(sb2.toString());
        printStream2.println("min:" + ((Object) vec4d8));
        printStream2.println("max:" + ((Object) vec4d2));
        printStream2.println("error rate:" + ((Object) vec4d4));
    }

    public Quatd fromBits(long j10) {
        long mask = this.componentBits.getMask() & j10;
        long mask2 = (j10 >> this.yShift) & this.componentBits.getMask();
        long mask3 = (j10 >> this.zShift) & this.componentBits.getMask();
        long mask4 = (j10 >> this.wShift) & this.componentBits.getMask();
        return new Quatd(this.componentBits.fromBits(mask), this.componentBits.fromBits(mask2), this.componentBits.fromBits(mask3), this.componentBits.fromBits(mask4));
    }

    public int getBitSize() {
        return this.totalBits;
    }

    public int getComponentBitSize() {
        return this.componentBits.getBitSize();
    }

    public long getMask() {
        return this.mask;
    }

    public long toBits(Quatd quatd) {
        return this.componentBits.toBits((float) quatd.f83544x) | (this.componentBits.toBits((float) quatd.f83545y) << this.yShift) | (this.componentBits.toBits((float) quatd.f83546z) << this.zShift) | (this.componentBits.toBits((float) quatd.f83543w) << this.wShift);
    }
}
