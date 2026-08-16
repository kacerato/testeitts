package Xg;

import java.io.IOException;
import java.util.Queue;
import java.util.StringTokenizer;
import org.openjdk.tools.doclint.DocLint;

public class C {
    public static i a(Float r10, Float g10, Float b10) {
        if (r10 == null) {
            return null;
        }
        float floatValue = r10.floatValue();
        float floatValue2 = r10.floatValue();
        float floatValue3 = r10.floatValue();
        if (g10 != null) {
            floatValue2 = g10.floatValue();
        }
        if (b10 != null) {
            floatValue3 = b10.floatValue();
        }
        return j.d(floatValue, floatValue2, floatValue3);
    }

    public static i b(Float u10, Float v10, Float w10, float defaultValue) {
        if (u10 == null) {
            return null;
        }
        float floatValue = u10.floatValue();
        float floatValue2 = v10 == null ? defaultValue : v10.floatValue();
        if (w10 != null) {
            defaultValue = w10.floatValue();
        }
        return j.d(floatValue, floatValue2, defaultValue);
    }

    public static boolean c(String s10) {
        if (s10 == null) {
            return false;
        }
        try {
            Float.parseFloat(s10.replace(DocLint.SEPARATOR, "."));
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public static boolean d(String s10) {
        return "true".equalsIgnoreCase(s10) || "on".equalsIgnoreCase(s10);
    }

    public static float e(String s10) throws IOException {
        try {
            return Float.parseFloat(s10.replace(DocLint.SEPARATOR, "."));
        } catch (NumberFormatException e10) {
            throw new IOException(e10);
        }
    }

    public static Float[] f(Queue<String> tokens, int max) {
        Float[] fArr = new Float[max];
        for (int i10 = 0; i10 < max; i10++) {
            String poll = tokens.poll();
            if (c(poll)) {
                fArr[i10] = Float.valueOf(Float.parseFloat(poll.replace(DocLint.SEPARATOR, ".")));
            }
        }
        return fArr;
    }

    public static int g(String s10) throws IOException {
        try {
            return Integer.parseInt(s10);
        } catch (NumberFormatException e10) {
            throw new IOException(e10);
        }
    }

    public static i h(StringTokenizer st) throws IOException {
        float e10 = e(st.nextToken());
        if (!st.hasMoreTokens()) {
            return j.b(e10);
        }
        float e11 = e(st.nextToken());
        if (!st.hasMoreTokens()) {
            return j.c(e10, e11);
        }
        float e12 = e(st.nextToken());
        return st.hasMoreTokens() ? j.e(e10, e11, e12, e(st.nextToken())) : j.d(e10, e11, e12);
    }
}
