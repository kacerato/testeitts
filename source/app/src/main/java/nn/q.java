package nn;

public class q implements u {

    public final float f98384a;

    public q(float jumpHeight) {
        this.f98384a = jumpHeight;
    }

    @Override
    public float[] b(float[] start, float[] end, float u10) {
        return new float[]{a(start[0], end[0], u10), c(start[1], end[1], u10), a(start[2], end[2], u10)};
    }

    public final float c(float ys, float ye2, float u10) {
        float f10;
        float f11;
        if (u10 == 0.0f) {
            return ys;
        }
        if (u10 == 1.0f) {
            return ye2;
        }
        if (ys >= ye2) {
            f11 = this.f98384a;
            f10 = (f11 + ys) - ye2;
        } else {
            f10 = this.f98384a;
            f11 = (f10 + ys) - ye2;
        }
        double d10 = f11;
        float sqrt = (float) (Math.sqrt(d10) / (Math.sqrt(f10) + Math.sqrt(d10)));
        if (u10 <= sqrt) {
            float f12 = 1.0f - (u10 / sqrt);
            return (ys + f11) - ((f11 * f12) * f12);
        }
        float f13 = (u10 - sqrt) / (1.0f - sqrt);
        return (ys + f11) - ((f10 * f13) * f13);
    }
}
