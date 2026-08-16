package Nc;

import android.content.Context;
import android.util.TypedValue;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.Currency;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.vecmath.Quat4f;
import org.openjdk.tools.doclint.DocLint;

public class b {

    public static float f15888a = 1.0E-6f;

    public static final float f15889b = 3.1415927f;

    public static final float f15890c = 0.017453292f;

    public static final int f15891d = 4;

    public static final int f15892e = 4;

    public static final int f15893f = 2;

    public static final float f15894g = 57.295776f;

    public static FloatBuffer f15895h = null;

    public static FloatBuffer f15896i = null;

    public static float[] f15897j = null;

    public static float f15898k = -9999.0f;

    public static final boolean f15899l = false;

    public static long A(long value, long to, float blend) {
        if (Float.isNaN(blend)) {
            return value;
        }
        return Math.round((value * (1.0d - E(0.0f, blend, 1.0f))) + (((float) to) * r8));
    }

    public static float A0(float[] floats, float value) {
        int i10 = 0;
        float k10 = k(floats[0] - value);
        for (int i11 = 1; i11 < floats.length; i11++) {
            float k11 = k(floats[i11] - value);
            if (k11 < k10) {
                i10 = i11;
                k10 = k11;
            }
        }
        return floats[i10];
    }

    public static long A1(String str, long errorCase) {
        if (str == null) {
            return errorCase;
        }
        try {
            return !str.isEmpty() ? NumberFormat.getInstance(Locale.forLanguageTag(Locale.getDefault().getLanguage())).parse(str).longValue() : errorCase;
        } catch (NumberFormatException | ParseException unused) {
            return errorCase;
        }
    }

    public static float B(float sideA, float sideB) {
        return (float) Math.sqrt(Math.pow(sideA, 2.0d) + Math.pow(sideB, 2.0d));
    }

    public static float[] B0() {
        if (f15897j == null) {
            f15897j = new float[4];
        }
        return f15897j;
    }

    public static float B1(float angle) {
        return (float) Math.tan((angle * 3.141592653589793d) / 180.0d);
    }

    public static float C(float value) {
        return (float) Math.cbrt(value);
    }

    public static FloatBuffer C0() {
        if (f15896i == null) {
            f15896i = P(new float[1]);
        }
        return f15896i;
    }

    public static float C1(float rad) {
        return (float) Math.tan(rad);
    }

    public static float D(float v10) {
        return (float) Math.ceil(v10);
    }

    public static FloatBuffer D0() {
        if (f15895h == null) {
            f15895h = P(new float[3]);
        }
        return f15895h;
    }

    public static float[] D1(FloatBuffer buffer) {
        float[] fArr = new float[buffer.capacity()];
        buffer.position(0);
        for (int i10 = 0; i10 < buffer.capacity(); i10++) {
            fArr[i10] = buffer.get(i10);
        }
        return fArr;
    }

    public static float E(float min, float value, float max) {
        return value < min ? min : value > max ? max : value;
    }

    public static float E0(float a10, float b10) {
        return Math.round((a10 + b10) / 2.0f);
    }

    public static float[] E1(FloatBuffer buffer, boolean flipX, boolean flipY) {
        float[] fArr = new float[buffer.capacity()];
        buffer.position(0);
        int i10 = 0;
        for (int i11 = 0; i11 < buffer.capacity(); i11++) {
            float f10 = buffer.get(i11);
            fArr[i11] = f10;
            if (flipX && i10 == 0) {
                fArr[i11] = 1.0f - f10;
            }
            if (flipY && i10 == 1) {
                fArr[i11] = 1.0f - fArr[i11];
            }
            i10++;
            if (i10 > 1) {
                i10 = 0;
            }
        }
        return fArr;
    }

    public static int F(int min, int value, int max) {
        return value < min ? min : value > max ? max : value;
    }

    public static float F0(float percentage, float maxValue) {
        return maxValue * (percentage / 100.0f);
    }

    public static int[] F1(IntBuffer buffer) {
        int[] iArr = new int[buffer.capacity()];
        buffer.position(0);
        for (int i10 = 0; i10 < buffer.capacity(); i10++) {
            iArr[i10] = buffer.get(i10);
        }
        return iArr;
    }

    public static float G(float value) {
        if (value < 0.0f) {
            return 0.0f;
        }
        return value;
    }

    public static float G0(float percentage, float maxValue) {
        float f10 = maxValue * (percentage / 100.0f);
        if (f10 > 1.0f) {
            return 1.0f;
        }
        return f10;
    }

    public static float[] G1(List<Float> list) {
        float[] fArr = new float[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            fArr[i10] = list.get(i10).floatValue();
        }
        return fArr;
    }

    public static int H(int value) {
        if (value < 0) {
            return 0;
        }
        return value;
    }

    public static float H0(float v10) {
        return v10 < 0.0f ? D(v10) : w0(v10);
    }

    public static int[] H1(List<Integer> list) {
        int[] iArr = new int[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            iArr[i10] = list.get(i10).intValue();
        }
        return iArr;
    }

    public static float I(float value) {
        if (value < 0.0f) {
            return 0.0f;
        }
        if (value > 1.0f) {
            return 1.0f;
        }
        return value;
    }

    public static float I0(float x10) {
        float f10 = 0.5f * x10;
        float intBitsToFloat = Float.intBitsToFloat(1597463007 - (Float.floatToIntBits(x10) >> 1));
        return intBitsToFloat * (1.5f - ((f10 * intBitsToFloat) * intBitsToFloat));
    }

    public static float I1(double rad) {
        return (float) Math.toDegrees(rad);
    }

    public static float J(float value, float max) {
        return value > max ? max : value;
    }

    public static boolean J0(int number) {
        return number % 2 == 0;
    }

    public static float J1(float rad) {
        return (float) Math.toDegrees(rad);
    }

    public static int K(int value, int max) {
        return value > max ? max : value;
    }

    public static boolean K0(float value, float deadzone) {
        return k(value) < k(deadzone);
    }

    public static double K1(float angle) {
        return Math.toRadians(angle);
    }

    public static double L(double min, double value) {
        return value < min ? min : value;
    }

    public static boolean L0(float min, float value, float max) {
        return min <= value && value <= max;
    }

    public static float M(float min, float value) {
        return value < min ? min : value;
    }

    public static boolean M0(int n10) {
        double d10 = n10;
        return ((int) Math.ceil(Math.log(d10) / Math.log(2.0d))) == ((int) Math.floor(Math.log(d10) / Math.log(2.0d)));
    }

    public static int N(int min, int value) {
        return value < min ? min : value;
    }

    public static float N0(float valueToLerp, float toGet, float byIncrement) {
        if (Float.isNaN(valueToLerp) || Float.isNaN(toGet) || Float.isNaN(byIncrement)) {
            return 0.0f;
        }
        if (valueToLerp > toGet) {
            float abs = valueToLerp - Math.abs(byIncrement);
            return abs <= toGet ? toGet : abs;
        }
        if (valueToLerp >= toGet) {
            return toGet;
        }
        float abs2 = valueToLerp + Math.abs(byIncrement);
        return abs2 >= toGet ? toGet : abs2;
    }

    public static short[] O(int[] array) {
        short[] sArr = new short[array.length];
        for (int i10 = 0; i10 < array.length; i10++) {
            sArr[i10] = (short) array[i10];
        }
        return sArr;
    }

    public static float O0(float value) {
        return (float) Math.log(value);
    }

    public static FloatBuffer P(float[] array) {
        if (array == null) {
            System.out.println("Mathf.convertFloatArrayToBuffer: error: null array");
            return null;
        }
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(array.length * 4);
        allocateDirect.order(ByteOrder.nativeOrder());
        FloatBuffer asFloatBuffer = allocateDirect.asFloatBuffer();
        asFloatBuffer.put(array);
        asFloatBuffer.rewind();
        asFloatBuffer.position(0);
        return asFloatBuffer;
    }

    public static float P0(float value) {
        return (float) Math.log10(value);
    }

    public static ByteBuffer Q(float[] values) {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(values.length * 4);
        allocateDirect.order(ByteOrder.nativeOrder());
        for (float f10 : values) {
            allocateDirect.putFloat(f10);
        }
        allocateDirect.rewind();
        allocateDirect.position(0);
        return allocateDirect;
    }

    public static float Q0(float x10, float y10, float value) {
        return (x10 / y10) * value;
    }

    public static int[] R(float[] array) {
        int[] iArr = new int[array.length];
        for (int i10 = 0; i10 < array.length; i10++) {
            iArr[i10] = (int) array[i10];
        }
        return iArr;
    }

    public static int R0(int x10, int y10, int value) {
        return (int) ((x10 / y10) * value);
    }

    public static ByteBuffer S(FloatBuffer floatBuffer) {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(floatBuffer.capacity() * 4);
        allocateDirect.order(ByteOrder.nativeOrder());
        for (int i10 = 0; i10 < floatBuffer.capacity(); i10++) {
            allocateDirect.putFloat(floatBuffer.get(i10));
        }
        allocateDirect.rewind();
        allocateDirect.position(0);
        return allocateDirect;
    }

    public static float S0(float a10, float b10) {
        return Math.max(a10, b10);
    }

    public static IntBuffer T(int[] array) {
        if (array == null) {
            System.out.println("Mathf.convertIntArrayToBuffer: error: null array");
            return null;
        }
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(array.length * 4);
        allocateDirect.order(ByteOrder.nativeOrder());
        IntBuffer asIntBuffer = allocateDirect.asIntBuffer();
        asIntBuffer.put(array);
        allocateDirect.position(0);
        asIntBuffer.rewind();
        asIntBuffer.position(0);
        return asIntBuffer;
    }

    public static float T0(float... values) {
        float f10 = values[0];
        for (int i10 = 1; i10 < values.length; i10++) {
            float f11 = values[i10];
            if (f11 > f10) {
                f10 = f11;
            }
        }
        return f10;
    }

    public static ByteBuffer U(int[] values) {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(values.length * 4);
        allocateDirect.order(ByteOrder.nativeOrder());
        for (int i10 : values) {
            allocateDirect.putInt(i10);
        }
        allocateDirect.rewind();
        allocateDirect.position(0);
        return allocateDirect;
    }

    public static int U0(int a10, int b10) {
        return Math.max(a10, b10);
    }

    public static float[] V(int[] array) {
        float[] fArr = new float[array.length];
        for (int i10 = 0; i10 < array.length; i10++) {
            fArr[i10] = array[i10];
        }
        return fArr;
    }

    public static int V0(int... values) {
        int i10 = values[0];
        for (int i11 = 1; i11 < values.length; i11++) {
            int i12 = values[i11];
            if (i12 > i10) {
                i10 = i12;
            }
        }
        return i10;
    }

    public static FloatBuffer W(int[] array) {
        if (array == null) {
            System.out.println("Mathf.convertIntArrayToFloatBuffer: error: null array");
            return null;
        }
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(array.length * 4);
        allocateDirect.order(ByteOrder.nativeOrder());
        FloatBuffer asFloatBuffer = allocateDirect.asFloatBuffer();
        for (int i10 : array) {
            asFloatBuffer.put(i10);
        }
        asFloatBuffer.rewind();
        asFloatBuffer.position(0);
        return asFloatBuffer;
    }

    public static float W0(float a10, float b10) {
        return k(a10) > k(b10) ? a10 : b10;
    }

    public static ByteBuffer X(IntBuffer intBuffer) {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(intBuffer.capacity() * 4);
        allocateDirect.order(ByteOrder.nativeOrder());
        for (int i10 = 0; i10 < intBuffer.capacity(); i10++) {
            allocateDirect.putInt(intBuffer.get(i10));
        }
        allocateDirect.rewind();
        allocateDirect.position(0);
        return allocateDirect;
    }

    public static float X0(float a10, float b10) {
        return Math.min(a10, b10);
    }

    public static ByteBuffer Y(NativeIntBuffer intBuffer) {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(intBuffer.capacity() * 4);
        allocateDirect.order(ByteOrder.nativeOrder());
        for (int i10 = 0; i10 < intBuffer.capacity(); i10++) {
            allocateDirect.putInt(intBuffer.get(i10));
        }
        allocateDirect.rewind();
        allocateDirect.position(0);
        return allocateDirect;
    }

    public static float Y0(float... values) {
        float f10 = values[0];
        for (int i10 = 1; i10 < values.length; i10++) {
            float f11 = values[i10];
            if (f11 < f10) {
                f10 = f11;
            }
        }
        return f10;
    }

    public static void Z(Quaternion q22, float[] out, boolean convertToLeftHanded) {
        float x10;
        float y10;
        float z10;
        float I10 = q22.I();
        if (convertToLeftHanded) {
            x10 = -q22.getX();
            y10 = -q22.getY();
            z10 = -q22.getZ();
        } else {
            x10 = q22.getX();
            y10 = q22.getY();
            z10 = q22.getZ();
        }
        float f10 = 2.0f / ((((x10 * x10) + (y10 * y10)) + (z10 * z10)) + (I10 * I10));
        float f11 = f10 * y10;
        float f12 = f11 * y10;
        float f13 = f10 * z10;
        float f14 = f13 * z10;
        out[0] = (1.0f - f12) - f14;
        float f15 = f10 * x10;
        float f16 = y10 * f15;
        float f17 = f13 * I10;
        out[1] = f16 - f17;
        float f18 = f15 * z10;
        float f19 = f11 * I10;
        out[2] = f18 + f19;
        out[3] = 0.0f;
        out[4] = f16 + f17;
        float f20 = 1.0f - (x10 * f15);
        out[5] = f20 - f14;
        float f21 = f11 * z10;
        float f22 = f15 * I10;
        out[6] = f21 - f22;
        out[7] = 0.0f;
        out[8] = f18 - f19;
        out[9] = f21 + f22;
        out[10] = f20 - f12;
        out[11] = 0.0f;
        out[12] = 0.0f;
        out[13] = 0.0f;
        out[14] = 0.0f;
        out[15] = 1.0f;
    }

    public static int Z0(int a10, int b10) {
        return Math.min(a10, b10);
    }

    public static SteppedArrayList<Vector2> a(NativeFloatBuffer array) {
        SteppedArrayList<Vector2> steppedArrayList = new SteppedArrayList<>();
        if (array != null) {
            for (int i10 = 0; i10 < array.capacity(); i10 += 2) {
                try {
                    steppedArrayList.add(new Vector2(array.get(i10), array.get(i10 + 1)));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        return steppedArrayList;
    }

    public static void a0(Quat4f q22, float[] out, boolean convertToLeftHanded) {
        float f10;
        float f11;
        float f12;
        float f13 = q22.f92850w;
        if (convertToLeftHanded) {
            f10 = -q22.f92851x;
            f11 = -q22.f92852y;
            f12 = -q22.f92853z;
        } else {
            f10 = q22.f92851x;
            f11 = q22.f92852y;
            f12 = q22.f92853z;
        }
        float f14 = 2.0f / ((((f10 * f10) + (f11 * f11)) + (f12 * f12)) + (f13 * f13));
        float f15 = f14 * f11;
        float f16 = f15 * f11;
        float f17 = f14 * f12;
        float f18 = f17 * f12;
        out[0] = (1.0f - f16) - f18;
        float f19 = f14 * f10;
        float f20 = f11 * f19;
        float f21 = f17 * f13;
        out[1] = f20 - f21;
        float f22 = f19 * f12;
        float f23 = f15 * f13;
        out[2] = f22 + f23;
        out[3] = 0.0f;
        out[4] = f20 + f21;
        float f24 = 1.0f - (f10 * f19);
        out[5] = f24 - f18;
        float f25 = f15 * f12;
        float f26 = f19 * f13;
        out[6] = f25 - f26;
        out[7] = 0.0f;
        out[8] = f22 - f23;
        out[9] = f25 + f26;
        out[10] = f24 - f16;
        out[11] = 0.0f;
        out[12] = 0.0f;
        out[13] = 0.0f;
        out[14] = 0.0f;
        out[15] = 1.0f;
    }

    public static int a1(int... values) {
        int i10 = values[0];
        for (int i11 = 1; i11 < values.length; i11++) {
            int i12 = values[i11];
            if (i12 < i10) {
                i10 = i12;
            }
        }
        return i10;
    }

    public static SteppedArrayList<Vector2> b(float[] array) {
        SteppedArrayList<Vector2> steppedArrayList = new SteppedArrayList<>();
        if (array != null) {
            for (int i10 = 0; i10 < array.length; i10 += 2) {
                try {
                    steppedArrayList.add(new Vector2(array[i10], array[i10 + 1]));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        return steppedArrayList;
    }

    public static ShortBuffer b0(short[] array) {
        if (array == null) {
            return null;
        }
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(array.length * 2);
        allocateDirect.order(ByteOrder.nativeOrder());
        ShortBuffer asShortBuffer = allocateDirect.asShortBuffer();
        asShortBuffer.put(array);
        allocateDirect.position(0);
        asShortBuffer.position(0);
        return asShortBuffer;
    }

    public static Vector2 b1(float radius, float angleInDegrees, Vector2 origin) {
        double d10 = radius;
        double d11 = (angleInDegrees * 3.141592653589793d) / 180.0d;
        return new Vector2(((float) (Math.cos(d11) * d10)) + origin.f79838x, ((float) (d10 * Math.sin(d11))) + origin.f79839y);
    }

    public static SteppedArrayList<Vector3> c(NativeFloatBuffer floats) {
        SteppedArrayList<Vector3> steppedArrayList = new SteppedArrayList<>();
        if (floats != null) {
            for (int i10 = 0; i10 < floats.capacity(); i10 += 3) {
                try {
                    steppedArrayList.add(new Vector3(floats.get(i10), floats.get(i10 + 1), floats.get(i10 + 2)));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        return steppedArrayList;
    }

    public static FloatBuffer c0(SteppedArrayList<Float> array) {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(array.size() * 4);
        allocateDirect.order(ByteOrder.nativeOrder());
        FloatBuffer asFloatBuffer = allocateDirect.asFloatBuffer();
        Iterator<Float> it = array.iterator();
        while (it.hasNext()) {
            asFloatBuffer.put(it.next().floatValue());
        }
        asFloatBuffer.rewind();
        asFloatBuffer.position(0);
        return asFloatBuffer;
    }

    public static float c1(float value, float elavator) {
        return (float) Math.pow(value, elavator);
    }

    public static SteppedArrayList<Vector3> d(NativeIntBuffer floats) {
        SteppedArrayList<Vector3> steppedArrayList = new SteppedArrayList<>();
        if (floats != null) {
            for (int i10 = 0; i10 < floats.capacity(); i10 += 3) {
                try {
                    steppedArrayList.add(new Vector3(floats.get(i10), floats.get(i10 + 1), floats.get(i10 + 2)));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        return steppedArrayList;
    }

    public static float d0(float angle) {
        return (float) Math.cos((angle * 3.141592653589793d) / 180.0d);
    }

    public static long d1(int decimals) {
        long j10 = 1;
        for (int i10 = 0; i10 < decimals; i10++) {
            j10 *= 10;
        }
        return j10;
    }

    public static SteppedArrayList<Vector3> e(float[] floats) {
        SteppedArrayList<Vector3> steppedArrayList = new SteppedArrayList<>();
        if (floats != null) {
            for (int i10 = 0; i10 < floats.length; i10 += 3) {
                try {
                    steppedArrayList.add(new Vector3(floats[i10], floats[i10 + 1], floats[i10 + 2]));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        return steppedArrayList;
    }

    public static float e0(float rad) {
        return (float) Math.cos(rad);
    }

    public static float e1(float value, float elavator) {
        boolean z10 = value < 0.0f;
        float pow = (float) Math.pow(value, elavator);
        return z10 ? -pow : pow;
    }

    public static SteppedArrayList<Vector3> f(int[] array) {
        SteppedArrayList<Vector3> steppedArrayList = new SteppedArrayList<>();
        if (array != null) {
            for (int i10 = 0; i10 < array.length; i10 += 3) {
                try {
                    steppedArrayList.add(new Vector3(array[i10], array[i10 + 1], array[i10 + 2]));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        return steppedArrayList;
    }

    public static FloatBuffer f0(int capacity) {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(capacity * 4);
        allocateDirect.order(ByteOrder.nativeOrder());
        return allocateDirect.asFloatBuffer();
    }

    public static int f1(float px) {
        float f10 = f15898k;
        return f10 != -9999.0f ? (int) (px / f10) : g1(px, N7.c.t());
    }

    public static float g(double d10) {
        return (float) d10;
    }

    public static IntBuffer g0(int capacity) {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(capacity * 4);
        allocateDirect.order(ByteOrder.nativeOrder());
        return allocateDirect.asIntBuffer();
    }

    public static int g1(float px, Context context) {
        if (f15898k == -9999.0f) {
            f15898k = context.getResources().getDisplayMetrics().density;
        }
        return (int) (px / f15898k);
    }

    public static float h() {
        return 3.1415927f;
    }

    public static Vertex h0(int verticesPerSide) {
        return i0(verticesPerSide, new Vector2(0.5f, 0.5f));
    }

    public static float h1(float value, float oldMin, float oldMax, float newMin, float newMax) {
        return (((value - oldMin) / (oldMax - oldMin)) * (newMax - newMin)) + newMin;
    }

    public static Vector3 i(float x10, float y10) {
        Vector3 vector3 = new Vector3(0.0f, 0.0f, 0.0f);
        float d02 = d0(y10);
        vector3.setX(m1(x10) * d02);
        vector3.setY(m1(y10));
        vector3.setZ(d0(x10) * d02);
        return vector3;
    }

    public static Vertex i0(int verticesPerSide, Vector2 pivot) {
        int max = Math.max(2, verticesPerSide);
        int i10 = max - 1;
        int i11 = max * max;
        int i12 = i11 * 3;
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(i12);
        NativeFloatBuffer nativeFloatBuffer2 = new NativeFloatBuffer(i12);
        NativeFloatBuffer nativeFloatBuffer3 = new NativeFloatBuffer(i11 * 2);
        NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(i10 * i10 * 6);
        char c10 = 0;
        float f10 = 1.0f / i10;
        float I10 = pivot != null ? I(pivot.getX()) : 0.5f;
        float I11 = pivot != null ? I(pivot.getY()) : 0.5f;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (i13 < max) {
            float f11 = i13 * f10;
            float f12 = f11 - I11;
            int i16 = 0;
            while (i16 < max) {
                float f13 = i16 * f10;
                float f14 = f10;
                float f15 = I11;
                int i17 = i14 * 3;
                nativeFloatBuffer.set(i17, f13 - I10);
                int i18 = i17 + 1;
                nativeFloatBuffer.set(i18, 0.0f);
                NativeIntBuffer nativeIntBuffer2 = nativeIntBuffer;
                int i19 = i17 + 2;
                nativeFloatBuffer.set(i19, f12);
                nativeFloatBuffer2.set(i17, 0.0f);
                nativeFloatBuffer2.set(i18, 1.0f);
                nativeFloatBuffer2.set(i19, 0.0f);
                nativeFloatBuffer3.set(i15, f13);
                nativeFloatBuffer3.set(i15 + 1, f11);
                i14++;
                i15 += 2;
                i16++;
                c10 = 0;
                f10 = f14;
                I10 = I10;
                nativeIntBuffer = nativeIntBuffer2;
                I11 = f15;
            }
            i13++;
            I11 = I11;
        }
        NativeIntBuffer nativeIntBuffer3 = nativeIntBuffer;
        int i20 = 0;
        for (int i21 = 0; i21 < i10; i21++) {
            for (int i22 = 0; i22 < i10; i22++) {
                int i23 = (i21 * max) + i22;
                int i24 = i23 + 1;
                int i25 = i23 + max;
                nativeIntBuffer3.set(i20, i23);
                nativeIntBuffer3.set(i20 + 1, i25);
                nativeIntBuffer3.set(i20 + 2, i24);
                nativeIntBuffer3.set(i20 + 3, i24);
                int i26 = i20 + 5;
                nativeIntBuffer3.set(i20 + 4, i25);
                i20 += 6;
                nativeIntBuffer3.set(i26, i25 + 1);
            }
        }
        Vertex vertex = new Vertex();
        vertex.q2(nativeFloatBuffer);
        vertex.Y1(nativeFloatBuffer2);
        vertex.m2(nativeFloatBuffer3);
        vertex.i2(nativeIntBuffer3);
        vertex.apply();
        return vertex;
    }

    public static float i1(float v10) {
        return v10 > 1.0f ? v10 - ((int) v10) : v10 < 0.0f ? -(k(v10) - ((int) v10)) : v10;
    }

    public static double j(double value) {
        return Math.abs(value);
    }

    public static float j0(float value, float deadzone) {
        if (k(value) < k(deadzone)) {
            return 0.0f;
        }
        return value;
    }

    public static float j1(float v10) {
        return Math.round(v10);
    }

    public static float k(float value) {
        return Math.abs(value);
    }

    public static int k0(float dp) {
        float f10 = f15898k;
        return f10 != -9999.0f ? (int) (dp * f10) : l0(dp, N7.c.t());
    }

    public static float k1(float value) {
        return Math.round(value * 2.0f) / 2.0f;
    }

    public static int l(int value) {
        return Math.abs(value);
    }

    public static int l0(float dp, Context context) {
        if (f15898k == -9999.0f) {
            f15898k = context.getResources().getDisplayMetrics().density;
        }
        return (int) (dp * f15898k);
    }

    public static int l1(int decimals) {
        return Math.max(0, Math.min(decimals, 9));
    }

    public static float m(float angle) {
        return (float) Math.acos((angle * 3.141592653589793d) / 180.0d);
    }

    public static float m0(float dp) {
        float f10 = f15898k;
        return f10 != -9999.0f ? dp * f10 : n0(dp, N7.c.t());
    }

    public static float m1(float angle) {
        return (float) Math.sin((angle * 3.141592653589793d) / 180.0d);
    }

    public static float n(float angle) {
        return (float) Math.acos(angle);
    }

    public static float n0(float dp, Context context) {
        if (f15898k == -9999.0f) {
            f15898k = context.getResources().getDisplayMetrics().density;
        }
        return dp * f15898k;
    }

    public static float n1(float rad) {
        return (float) Math.sin(rad);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
    
        r4 = r4 - 360.0f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0030, code lost:
    
        if (r4 > 180.0f) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0019, code lost:
    
        if (r4 > 180.0f) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static float o(float ze2) {
        if (ze2 < 0.0f) {
            ze2 = ((ze2 / 360.0f) - ((int) D(r4))) * 360.0f;
            if (ze2 < 0.0f) {
                ze2 += 360.0f;
            }
        } else if (ze2 > 0.0f) {
            ze2 = ((ze2 / 360.0f) - ((int) w0(r4))) * 360.0f;
            if (ze2 < 0.0f) {
                ze2 += 360.0f;
            }
        }
        return (float) K1(ze2);
    }

    public static float o0(float value) {
        return (float) Math.exp(value);
    }

    public static int o1(int sp) {
        return p1(sp, N7.c.t());
    }

    public static void p(StringBuilder builder, long value, int digits) {
        for (long d12 = d1(digits - 1); d12 > 1 && value < d12; d12 /= 10) {
            builder.append('0');
        }
        builder.append(value);
    }

    public static int[] p0(float[] array) {
        int[] iArr = new int[array.length];
        for (int i10 = 0; i10 < array.length; i10++) {
            iArr[i10] = (int) array[i10];
        }
        return iArr;
    }

    public static int p1(int sp, Context context) {
        return (int) TypedValue.applyDimension(2, sp, context.getResources().getDisplayMetrics());
    }

    public static float q(float angle) {
        return I1(Math.asin(angle));
    }

    public static float q0(float v10, int decimals) {
        int l12 = l1(decimals);
        if (!Float.isFinite(v10)) {
            return v10;
        }
        if (l12 == 0) {
            return Math.round(v10);
        }
        return (float) (Math.round(v10 * r0) / d1(l12));
    }

    public static float q1(float value) {
        return (float) Math.sqrt(value);
    }

    public static float r(float rad) {
        return (float) Math.asin(rad);
    }

    public static String r0(float v10, int decimals) {
        return x0(v10, decimals, true);
    }

    public static int r1(int value) {
        return (int) Math.sqrt(value);
    }

    public static float s(float angle) {
        return (float) Math.atan((angle * 3.141592653589793d) / 180.0d);
    }

    public static String s0(float v10, String currencyCode) {
        for (Currency currency : Currency.getAvailableCurrencies()) {
            if (currency.getCurrencyCode().equalsIgnoreCase(currencyCode)) {
                NumberFormat currencyInstance = NumberFormat.getCurrencyInstance();
                currencyInstance.setCurrency(currency);
                return currencyInstance.format(v10);
            }
        }
        Locale locale = new Locale("en", "US");
        Currency.getInstance(locale);
        return NumberFormat.getCurrencyInstance(locale).format(v10);
    }

    public static double s1(String str) {
        return t1(str, 0.0d);
    }

    public static float t(float x10, float y10) {
        return I1(Math.atan2(x10, y10));
    }

    public static String t0(float v10) {
        Locale locale = new Locale("en", "US");
        Currency.getInstance(locale);
        return NumberFormat.getCurrencyInstance(locale).format(v10).replace("$", "");
    }

    public static double t1(String str, double errorCase) {
        double doubleValue;
        if (str != null) {
            try {
                if (!str.isEmpty()) {
                    doubleValue = str.contains(DocLint.SEPARATOR) ? NumberFormat.getInstance(Locale.forLanguageTag("pt")).parse(str).doubleValue() : str.contains(".") ? NumberFormat.getInstance(Locale.US).parse(str).doubleValue() : NumberFormat.getInstance(Y7.b.f29878b).parse(str).doubleValue();
                    errorCase = doubleValue;
                    return errorCase;
                }
            } catch (NumberFormatException | ParseException unused) {
                return errorCase;
            }
        }
        doubleValue = 0.0d;
        errorCase = doubleValue;
        return errorCase;
    }

    public static float u(Vector2 vector2) {
        return I1(Math.atan2(vector2.f79838x, vector2.f79839y));
    }

    public static String u0(float v10) {
        Locale locale = Locale.getDefault();
        Currency.getInstance(locale);
        return NumberFormat.getCurrencyInstance(locale).format(v10).replace("$", "");
    }

    public static float u1(String str) {
        return v1(str, 0.0f);
    }

    public static float v(float rad, float rad2) {
        return (float) Math.atan2(rad, rad2);
    }

    public static String v0(float x10, int decimals) {
        return x0(x10, decimals, false);
    }

    public static float v1(String str, float errorCase) {
        float floatValue;
        if (str != null) {
            try {
                if (!str.isEmpty()) {
                    floatValue = str.contains(DocLint.SEPARATOR) ? NumberFormat.getInstance(Locale.forLanguageTag("pt")).parse(str).floatValue() : str.contains(".") ? NumberFormat.getInstance(Locale.US).parse(str).floatValue() : NumberFormat.getInstance(Y7.b.f29878b).parse(str).floatValue();
                    errorCase = floatValue;
                    return errorCase;
                }
            } catch (NumberFormatException | ParseException unused) {
                return errorCase;
            }
        }
        floatValue = 0.0f;
        errorCase = floatValue;
        return errorCase;
    }

    public static float w(float x10, float y10) {
        float I12 = I1(Math.atan2(x10, y10));
        return I12 < 0.0f ? I12 + 360.0f : I12;
    }

    public static float w0(float v10) {
        return (float) Math.floor(v10);
    }

    public static int w1(String str) {
        return x1(str, 0);
    }

    public static float x(Vector2 vector2) {
        float I12 = I1(Math.atan2(vector2.f79838x, vector2.f79839y));
        return I12 < 0.0f ? I12 + 360.0f : I12;
    }

    public static String x0(float value, int decimals, boolean trimTrailingZeros) {
        int l12 = l1(decimals);
        if (!Float.isFinite(value)) {
            return Float.toString(value);
        }
        long d12 = d1(l12);
        long round = Math.round(Math.abs(value) * d12);
        long j10 = l12 == 0 ? round : round / d12;
        long j11 = l12 == 0 ? 0L : round % d12;
        StringBuilder sb2 = new StringBuilder(24);
        if (value < 0.0f && round != 0) {
            sb2.append('-');
        }
        sb2.append(j10);
        if (l12 == 0) {
            return sb2.toString();
        }
        if (trimTrailingZeros) {
            while (l12 > 0 && j11 % 10 == 0) {
                j11 /= 10;
                l12--;
            }
            if (l12 == 0) {
                return sb2.toString();
            }
        }
        sb2.append('.');
        p(sb2, j11, l12);
        return sb2.toString();
    }

    public static int x1(String str, int errorCase) {
        return y1(str, errorCase, false);
    }

    public static float y(float rad) {
        return (float) Math.atan(rad);
    }

    public static float y0(float[] floats, float value) {
        k(floats[0] - value);
        int i10 = 0;
        for (int i11 = 0; i11 < floats.length; i11++) {
            if (value <= floats[i11]) {
                i10 = i11;
            }
        }
        return floats[i10];
    }

    public static int y1(String str, int errorCase, boolean hideException) {
        if (str == null) {
            return errorCase;
        }
        try {
            return !str.isEmpty() ? NumberFormat.getInstance(Locale.forLanguageTag(Locale.getDefault().getLanguage())).parse(str).intValue() : errorCase;
        } catch (NumberFormatException | ParseException unused) {
            return errorCase;
        }
    }

    public static float z(float value, float to, float blend) {
        if (Float.isNaN(value) || Float.isNaN(to) || Float.isNaN(blend)) {
            return 0.0f;
        }
        float E10 = E(0.0f, blend, 1.0f);
        return (value * (1.0f - E10)) + (to * E10);
    }

    public static float z0(float[] floats, float value) {
        k(floats[0] - value);
        int i10 = 0;
        for (int i11 = 0; i11 < floats.length; i11++) {
            if (value >= floats[i11]) {
                i10 = i11;
            }
        }
        return floats[i10];
    }

    public static long z1(String str) {
        return A1(str, 0L);
    }
}
