package K8;

public class d {

    public static final int f11010f = 10;

    public static long f11005a = System.nanoTime();

    public static float f11006b = 0.0f;

    public static float f11007c = 0.0f;

    public static float f11008d = 0.0f;

    public static float f11009e = 1.0f;

    public static final float[] f11011g = new float[10];

    public static final float[] f11012h = new float[10];

    public static boolean f11013i = false;

    public static int f11014j = 0;

    public static float a(float deltaTime) {
        float f10;
        if (!f11013i && f11014j >= 9) {
            f11013i = true;
        }
        float[] fArr = f11011g;
        int i10 = f11014j;
        fArr[i10] = deltaTime;
        f11012h[i10] = deltaTime;
        if (f11013i) {
            float f11 = 0.0f;
            float f12 = 0.0f;
            int i11 = 0;
            while (true) {
                float[] fArr2 = f11011g;
                if (i11 >= fArr2.length) {
                    break;
                }
                f12 += fArr2[i11];
                i11++;
            }
            float[] fArr3 = f11012h;
            fArr3[f11014j] = f12 / 10.0f;
            for (float f13 : fArr3) {
                f11 += f13;
            }
            f10 = f11 / 10.0f;
        } else {
            f10 = f11007c;
        }
        int i12 = f11014j + 1;
        f11014j = i12;
        if (i12 >= 10) {
            f11014j = 0;
        }
        return f10;
    }

    public static float b() {
        return f11008d;
    }

    public static float c() {
        return f11009e;
    }

    public static float d() {
        return f11006b;
    }

    public static float e() {
        return f11007c;
    }

    public static void f() {
        f11005a = 0L;
    }

    public static void g() {
        long nanoTime = System.nanoTime();
        long j10 = nanoTime - f11005a;
        f11005a = nanoTime;
        float f10 = ((float) j10) / 1.0E9f;
        f11006b = f10;
        float a10 = a(Nc.b.E(0.0f, f10, 0.066f));
        f11007c = a10;
        f11008d = a10 * f11009e;
    }

    public static void h(float timeScale) {
        f11009e = timeScale;
    }
}
