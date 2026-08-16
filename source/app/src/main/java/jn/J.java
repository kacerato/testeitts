package jn;

public interface J {

    public static class a implements J {
        @Override
        public float[] b(float[] polyVerts, float[] circleCenter, float radius) {
            return polyVerts;
        }
    }

    public static class b implements J {

        public static final int f94186a = 12;

        public static float[] f94187b;

        @Override
        public float[] b(float[] verts, float[] center, float radius) {
            float f10 = radius * radius;
            int i10 = 0;
            while (true) {
                if (i10 >= verts.length) {
                    i10 = -1;
                    break;
                }
                if (C13890g.D(center, verts, i10) > f10) {
                    break;
                }
                i10 += 3;
            }
            if (i10 == -1) {
                return verts;
            }
            float[] d10 = d(center, radius);
            float[] d11 = C13886c.d(verts, d10);
            return (d11 == null && C13890g.p(center, verts, verts.length / 3)) ? d10 : d11;
        }

        public final float[] d(float[] center, float radius) {
            if (f94187b == null) {
                f94187b = new float[36];
                for (int i10 = 0; i10 < 12; i10++) {
                    double d10 = ((i10 * 3.141592653589793d) * 2.0d) / 12.0d;
                    int i11 = i10 * 3;
                    f94187b[i11] = (float) Math.cos(d10);
                    float[] fArr = f94187b;
                    fArr[i11 + 1] = 0.0f;
                    fArr[i11 + 2] = (float) (-Math.sin(d10));
                }
            }
            float[] fArr2 = new float[36];
            for (int i12 = 0; i12 < 36; i12 += 3) {
                float[] fArr3 = f94187b;
                fArr2[i12] = (fArr3[i12] * radius) + center[0];
                fArr2[i12 + 1] = center[1];
                int i13 = i12 + 2;
                fArr2[i13] = (fArr3[i13] * radius) + center[2];
            }
            return fArr2;
        }
    }

    static J a() {
        return new b();
    }

    static J c() {
        return new a();
    }

    float[] b(float[] polyVerts, float[] circleCenter, float radius);
}
