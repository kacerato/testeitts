package lf;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import com.jme3.math.Triangle;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import java.nio.FloatBuffer;
import java.util.logging.Logger;
import p000if.C13702E;

public class C14116c extends Mesh {

    public static final int f96379b = 3;

    public static final int f96380c = 3;

    public static final Logger f96381d = Logger.getLogger(C14116c.class.getName());

    public static final boolean f96382e = false;

    public C14116c() {
    }

    public C14116c(int i10, float f10, float f11, boolean z10) {
        Vector3f vector3f;
        FloatBuffer floatBuffer;
        Triangle triangle;
        Vector3f vector3f2;
        float f12;
        Vector3f vector3f3;
        float f13;
        float f14;
        int i11 = i10;
        C13702E.i(i11, "number of sides", 3, Integer.MAX_VALUE);
        C13702E.E(f10, TestVFXEffect.f77524P);
        C13702E.E(f11, "height");
        int i12 = i11 - 2;
        int i13 = (i12 + i11) * 9;
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(i13);
        setBuffer(VertexBuffer.Type.Position, 3, createFloatBuffer);
        FloatBuffer createFloatBuffer2 = BufferUtils.createFloatBuffer(i13);
        setBuffer(VertexBuffer.Type.Normal, 3, createFloatBuffer2);
        float f15 = f11 / 2.0f;
        float f16 = (-f11) / 2.0f;
        double d10 = 6.283185307179586d / i11;
        double d11 = (i11 - 1) * d10;
        FloatBuffer floatBuffer2 = createFloatBuffer2;
        float sin = ((float) Math.sin(d11)) * f10;
        float cos = ((float) Math.cos(d11)) * f10;
        float f17 = f10 / f11;
        float r10 = 1.0f / jf.f.r(1.0f, f17);
        float f18 = f17 * r10;
        Triangle triangle2 = new Triangle();
        Vector3f vector3f4 = new Vector3f();
        Vector3f vector3f5 = new Vector3f();
        Vector3f vector3f6 = new Vector3f();
        float f19 = cos;
        int i14 = 0;
        while (i14 < i11) {
            int i15 = i12;
            float f20 = sin;
            double d12 = i14 * d10;
            float f21 = f18;
            Triangle triangle3 = triangle2;
            float sin2 = ((float) Math.sin(d12)) * f10;
            Vector3f vector3f7 = vector3f6;
            float cos2 = ((float) Math.cos(d12)) * f10;
            int i16 = i14 + 1;
            int i17 = i14;
            double d13 = i16 * d10;
            double d14 = d10;
            float sin3 = ((float) Math.sin(d13)) * f10;
            float f22 = r10;
            float cos3 = ((float) Math.cos(d13)) * f10;
            vector3f4.set(sin2, f16, cos2);
            vector3f5.set(sin3, f16, cos3);
            vector3f7.set(0.0f, f15, 0.0f);
            createFloatBuffer.put(vector3f4.f81611x).put(vector3f4.f81612y).put(vector3f4.f81613z);
            createFloatBuffer.put(vector3f5.f81611x).put(vector3f5.f81612y).put(vector3f5.f81613z);
            createFloatBuffer.put(vector3f7.f81611x).put(vector3f7.f81612y).put(vector3f7.f81613z);
            if (z10) {
                Triangle triangle4 = triangle3;
                triangle4.set(vector3f4, vector3f5, vector3f7);
                Vector3f normal = triangle4.getNormal();
                int i18 = 0;
                int i19 = 3;
                while (i18 < i19) {
                    Vector3f vector3f8 = vector3f7;
                    FloatBuffer floatBuffer3 = floatBuffer2;
                    floatBuffer3.put(normal.f81611x).put(normal.f81612y).put(normal.f81613z);
                    i18++;
                    triangle4 = triangle4;
                    i19 = 3;
                    floatBuffer2 = floatBuffer3;
                    vector3f7 = vector3f8;
                }
                vector3f = vector3f7;
                floatBuffer = floatBuffer2;
                triangle = triangle4;
                vector3f2 = vector3f5;
                vector3f3 = vector3f4;
                i12 = i15;
                f12 = f21;
            } else {
                vector3f = vector3f7;
                floatBuffer = floatBuffer2;
                triangle = triangle3;
                vector3f2 = vector3f5;
                f12 = f21;
                floatBuffer.put((f22 * sin2) / f10).put(f12).put((f22 * cos2) / f10);
                floatBuffer.put((f22 * sin3) / f10).put(f12).put((f22 * cos3) / f10);
                double d15 = (d12 + d13) / 2.0d;
                vector3f3 = vector3f4;
                floatBuffer.put(((float) Math.sin(d15)) * f22).put(f12).put(((float) Math.cos(d15)) * f22);
                i12 = i15;
            }
            if (i17 < i12) {
                f14 = f20;
                f13 = f19;
                createFloatBuffer.put(f14).put(f16).put(f13);
                createFloatBuffer.put(sin3).put(f16).put(cos3);
                createFloatBuffer.put(sin2).put(f16).put(cos2);
                floatBuffer.put(0.0f).put(-1.0f).put(0.0f);
                floatBuffer.put(0.0f).put(-1.0f).put(0.0f);
                floatBuffer.put(0.0f).put(-1.0f).put(0.0f);
            } else {
                f13 = f19;
                f14 = f20;
            }
            sin = f14;
            vector3f4 = vector3f3;
            f18 = f12;
            f19 = f13;
            vector3f5 = vector3f2;
            vector3f6 = vector3f;
            d10 = d14;
            r10 = f22;
            i14 = i16;
            i11 = i10;
            Triangle triangle5 = triangle;
            floatBuffer2 = floatBuffer;
            triangle2 = triangle5;
        }
        createFloatBuffer.flip();
        floatBuffer2.flip();
        updateBound();
        setStatic();
    }
}
