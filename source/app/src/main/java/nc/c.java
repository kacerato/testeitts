package Nc;

import android.opengl.Matrix;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import java.util.Arrays;
import javax.vecmath.Quat4f;

public class c {

    public static final ThreadLocal<float[]> f15900a = new a();

    public static final ThreadLocal<float[]> f15901b = new b();

    public static final ThreadLocal<float[]> f15902c = new C0444c();

    public class a extends ThreadLocal<float[]> {
        @Override
        public float[] initialValue() {
            return new float[16];
        }
    }

    public class b extends ThreadLocal<float[]> {
        @Override
        public float[] initialValue() {
            return new float[16];
        }
    }

    public class C0444c extends ThreadLocal<float[]> {
        @Override
        public float[] initialValue() {
            return new float[16];
        }
    }

    public static float[] a(float[] matrix) {
        float[] fArr = new float[matrix.length];
        b(matrix, fArr);
        return fArr;
    }

    public static void b(float[] matrix, float[] out) {
        System.arraycopy(matrix, 0, out, 0, matrix.length);
    }

    public static boolean c(float[] a10, float[] b10) {
        if (a10 == null || b10 == null) {
            return false;
        }
        return Arrays.equals(a10, b10);
    }

    public static void d(float[] matrix, float[] output) {
        Matrix.setIdentityM(output, 0);
        Matrix.invertM(output, 0, matrix, 0);
    }

    public static void e(float[] output, float[] valueB) {
        float[] fArr = f15901b.get();
        b(output, fArr);
        float[] fArr2 = f15902c.get();
        b(valueB, fArr2);
        Matrix.multiplyMM(output, 0, fArr, 0, fArr2, 0);
    }

    public static void f(float[] output, float[] valueA, float[] valueB) {
        float[] fArr = f15901b.get();
        b(valueA, fArr);
        float[] fArr2 = f15902c.get();
        b(valueB, fArr2);
        Matrix.multiplyMM(output, 0, fArr, 0, fArr2, 0);
    }

    public static void g(float[] output, Quaternion rot) {
        float[] fArr = f15900a.get();
        Nc.b.Z(rot, fArr, true);
        f(output, output, fArr);
    }

    public static void h(float[] output, Quaternion rot, boolean leftHanded) {
        float[] fArr = f15900a.get();
        Nc.b.Z(rot, fArr, leftHanded);
        f(output, output, fArr);
    }

    public static void i(float[] output, Quat4f rot) {
        float[] fArr = f15900a.get();
        Nc.b.a0(rot, fArr, true);
        f(output, output, fArr);
    }

    public static void j(float[] output, Quat4f rot, boolean leftHanded) {
        float[] fArr = f15900a.get();
        Nc.b.a0(rot, fArr, leftHanded);
        f(output, output, fArr);
    }

    public static void k(float[] output, float[] tmpRotMatrix, Quaternion rot) {
        Nc.b.Z(rot, tmpRotMatrix, true);
        f(output, output, tmpRotMatrix);
    }

    public static void l(float[] output, float[] tmpRotMatrix, Quaternion rot, boolean leftHanded) {
        Nc.b.Z(rot, tmpRotMatrix, leftHanded);
        f(output, output, tmpRotMatrix);
    }

    public static void m(float[] output, float[] tmpRotMatrix, Quat4f rot) {
        Nc.b.a0(rot, tmpRotMatrix, true);
        f(output, output, tmpRotMatrix);
    }

    public static void n(float[] output, float[] tmpRotMatrix, Quat4f rot, boolean leftHanded) {
        Nc.b.a0(rot, tmpRotMatrix, leftHanded);
        f(output, output, tmpRotMatrix);
    }

    public static void o(float[] matrix, float a10) {
        Matrix.scaleM(matrix, 0, a10, a10, a10);
    }

    public static void p(float[] matrix, float x10, float y10, float z10) {
        Matrix.scaleM(matrix, 0, x10, y10, z10);
    }

    public static void q(float[] matrix, Vector3 vector3) {
        Matrix.scaleM(matrix, 0, vector3.getX(), vector3.getY(), vector3.getZ());
    }

    public static void r(float[] matrix) {
        Matrix.setIdentityM(matrix, 0);
        g(matrix, Quaternion.X0());
        p(matrix, 1.0f, 1.0f, 1.0f);
    }

    public static String s(float[] mat) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < mat.length; i10++) {
            if (i10 > 0) {
                sb2.append("\n");
            }
            sb2.append(mat[i10]);
            sb2.append(" ");
        }
        return sb2.toString();
    }

    public static String t(float[] mat) {
        StringBuilder sb2 = new StringBuilder();
        for (float f10 : mat) {
            sb2.append(f10);
            sb2.append(" ");
        }
        return sb2.toString();
    }

    public static void u(float[] matrix, float a10) {
        Matrix.translateM(matrix, 0, a10, a10, a10);
    }

    public static void v(float[] matrix, float x10, float y10, float z10) {
        Matrix.translateM(matrix, 0, x10, y10, z10);
    }

    public static void w(float[] matrix, Vector3 vector3) {
        Matrix.translateM(matrix, 0, vector3.getX(), vector3.getY(), vector3.getZ());
    }
}
