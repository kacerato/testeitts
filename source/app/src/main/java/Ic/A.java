package Ic;

public class A {
    public static double a(double v10) {
        if (Double.isNaN(v10)) {
            return 0.0d;
        }
        return v10;
    }

    public static float b(float v10) {
        if (Float.isNaN(v10)) {
            return 0.0f;
        }
        return v10;
    }

    public static float c(float v10, float errorCase) {
        return Float.isNaN(v10) ? errorCase : v10;
    }
}
