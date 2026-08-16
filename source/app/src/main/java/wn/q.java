package wn;

public class q {

    public final t f127775a;

    public final int f127776b;

    public final int f127777c;

    public final int f127778d;

    public final int f127779e;

    public final float[] f127780f;

    public final float[] f127781g;

    public q(t cfg, float[] bmin, float[] bmax) {
        this(cfg, bmin, bmax, 0, 0);
    }

    public q(t cfg, float[] bmin, float[] bmax, int tileX, int tileZ) {
        float[] fArr = new float[3];
        this.f127780f = fArr;
        float[] fArr2 = new float[3];
        this.f127781g = fArr2;
        this.f127776b = tileX;
        this.f127777c = tileZ;
        this.f127775a = cfg;
        I.e(fArr, bmin);
        I.e(fArr2, bmax);
        if (cfg.f127788b) {
            int i10 = cfg.f127789c;
            float f10 = cfg.f127791e;
            float f11 = i10 * f10;
            int i11 = cfg.f127790d;
            float f12 = i11 * f10;
            float f13 = fArr[0] + (tileX * f11);
            fArr[0] = f13;
            float f14 = fArr[2] + (tileZ * f12);
            fArr[2] = f14;
            fArr2[0] = f13 + f11;
            fArr2[2] = f14 + f12;
            float f15 = fArr[0];
            int i12 = cfg.f127809w;
            fArr[0] = f15 - (i12 * f10);
            fArr[2] = fArr[2] - (i12 * f10);
            fArr2[0] = fArr2[0] + (i12 * f10);
            fArr2[2] = fArr2[2] + (i12 * f10);
            this.f127778d = i10 + (i12 * 2);
            this.f127779e = i11 + (i12 * 2);
            return;
        }
        int[] b10 = C16035m.b(fArr, fArr2, cfg.f127791e);
        this.f127778d = b10[0];
        this.f127779e = b10[1];
    }
}
