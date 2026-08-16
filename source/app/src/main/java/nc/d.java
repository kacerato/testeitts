package Nc;

import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import java.util.Random;

public class d {

    public static Random f15903a = new Random();

    public static double a() {
        try {
            return f15903a.nextDouble() * Double.MAX_VALUE;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0.0d;
        }
    }

    public static float b() {
        try {
            return f15903a.nextFloat() * Float.MAX_VALUE;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0.0f;
        }
    }

    public static int c() {
        try {
            return f15903a.nextInt();
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static long d() {
        try {
            return f15903a.nextLong();
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0L;
        }
    }

    public static Vector3 e(float w10, float h10, float l10, Vector3 out) {
        float h11 = h((-w10) / 2.0f, w10 / 2.0f);
        float h12 = h((-h10) / 2.0f, h10 / 2.0f);
        float h13 = h((-l10) / 2.0f, l10 / 2.0f);
        out.set(0.0f);
        out.addLocal(h11, h12, h13);
        return out;
    }

    public static Vector3 f(Vector3 cubePosition, float w10, float h10, float l10, Vector3 out) {
        float h11 = h((-w10) / 2.0f, w10 / 2.0f);
        float h12 = h((-h10) / 2.0f, h10 / 2.0f);
        float h13 = h((-l10) / 2.0f, l10 / 2.0f);
        if (cubePosition != null) {
            out.set(cubePosition);
        } else {
            out.set(0.0f);
        }
        out.addLocal(h11, h12, h13);
        return out;
    }

    public static double g(double minInclusive, double maxExclusive) {
        try {
            return minInclusive + (f15903a.nextDouble() * (maxExclusive - minInclusive));
        } catch (Exception e10) {
            e10.printStackTrace();
            return minInclusive;
        }
    }

    public static float h(float minInclusive, float maxExclusive) {
        try {
            return minInclusive + (f15903a.nextFloat() * (maxExclusive - minInclusive));
        } catch (Exception e10) {
            e10.printStackTrace();
            return minInclusive;
        }
    }

    public static float i(float max) {
        try {
            return f15903a.nextFloat() * max;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0.0f;
        }
    }

    public static int j(int minInclusive, int maxInclusive) {
        try {
            return f15903a.nextInt((maxInclusive - minInclusive) + 1) + minInclusive;
        } catch (Exception e10) {
            e10.printStackTrace();
            return minInclusive;
        }
    }

    public static int k(int max) {
        try {
            return f15903a.nextInt(max);
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static long l(long minInclusive, long maxExclusive) {
        if (minInclusive >= maxExclusive) {
            maxExclusive = 1 + minInclusive;
        }
        try {
            return minInclusive + ((long) (f15903a.nextDouble() * (maxExclusive - minInclusive)));
        } catch (Exception e10) {
            e10.printStackTrace();
            return minInclusive;
        }
    }

    public static Vector3 m(float radius) {
        return o(null, radius, new Vector3());
    }

    public static Vector3 n(Vector3 spherePosition, float radius) {
        return o(spherePosition, radius, new Vector3());
    }

    public static Vector3 o(Vector3 spherePosition, float radius, Vector3 out) {
        double random = ((float) Math.random()) * 6.283185307179586d;
        double acos = Math.acos((((float) Math.random()) * 2.0f) - 1.0f);
        double d10 = radius;
        float sin = (float) (Math.sin(acos) * d10 * Math.cos(random));
        float sin2 = (float) (Math.sin(acos) * d10 * Math.sin(random));
        float cos = (float) (d10 * Math.cos(acos));
        if (spherePosition != null) {
            out.set(spherePosition);
        } else {
            out.set(0.0f);
        }
        out.addLocal(sin, sin2, cos);
        return out;
    }

    public static Vector3 p(float radius) {
        return q(radius, 0.0f);
    }

    public static Vector3 q(float radius, float minimalRadius) {
        return t(null, radius, minimalRadius, new Vector3());
    }

    public static Vector3 r(float radius, float minimalRadius, Vector3 out) {
        return t(null, radius, minimalRadius, out);
    }

    public static Vector3 s(Vector3 spherePosition, float radius, float minimalRadius) {
        return t(spherePosition, radius, minimalRadius, new Vector3());
    }

    public static Vector3 t(Vector3 spherePosition, float radius, float minimalRadius, Vector3 out) {
        double random = ((float) Math.random()) * 6.283185307179586d;
        double acos = Math.acos((((float) Math.random()) * 2.0f) - 1.0f);
        double h10 = h(minimalRadius, radius);
        float sin = (float) (Math.sin(acos) * h10 * Math.cos(random));
        float sin2 = (float) (Math.sin(acos) * h10 * Math.sin(random));
        float cos = (float) (h10 * Math.cos(acos));
        if (spherePosition != null) {
            out.set(spherePosition);
        } else {
            out.set(0.0f);
        }
        out.addLocal(sin, sin2, cos);
        return out;
    }
}
