package com.itsmagic.engine.Engines.Engine.Vector;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;

public class a extends K8.f {
    public static float[] d(float[] renderMatrix, float[] outputMatrix, Camera camera, boolean zAlign) {
        float f10 = renderMatrix[12];
        float f11 = renderMatrix[13];
        float f12 = renderMatrix[14];
        float f13 = renderMatrix[0];
        float f14 = renderMatrix[1];
        float f15 = renderMatrix[2];
        float sqrt = (float) Math.sqrt((f13 * f13) + (f14 * f14) + (f15 * f15));
        float f16 = renderMatrix[4];
        float f17 = renderMatrix[5];
        float f18 = renderMatrix[6];
        float sqrt2 = (float) Math.sqrt((f16 * f16) + (f17 * f17) + (f18 * f18));
        float f19 = renderMatrix[8];
        float f20 = renderMatrix[9];
        float f21 = renderMatrix[10];
        float sqrt3 = (float) Math.sqrt((f19 * f19) + (f20 * f20) + (f21 * f21));
        if (!zAlign) {
            Vector3 normalize = camera.f79250n.J0().u0((Vector3) JP.acquire(Vector3.class)).sub(new Vector3(f10, f11, f12)).normalize();
            Vector3 normalize2 = new Vector3(0.0f, 1.0f, 0.0f).cross(normalize).normalize();
            Vector3 normalize3 = normalize.cross(normalize2).normalize();
            outputMatrix[0] = normalize2.getX() * sqrt;
            outputMatrix[1] = normalize2.getY() * sqrt;
            outputMatrix[2] = normalize2.getZ() * sqrt;
            outputMatrix[3] = 0.0f;
            outputMatrix[4] = normalize3.getX() * sqrt2;
            outputMatrix[5] = normalize3.getY() * sqrt2;
            outputMatrix[6] = normalize3.getZ() * sqrt2;
            outputMatrix[7] = 0.0f;
            outputMatrix[8] = normalize.getX() * sqrt3;
            outputMatrix[9] = normalize.getY() * sqrt3;
            outputMatrix[10] = normalize.getZ() * sqrt3;
            outputMatrix[11] = 0.0f;
            outputMatrix[12] = f10;
            outputMatrix[13] = f11;
            outputMatrix[14] = f12;
            outputMatrix[15] = 1.0f;
            return outputMatrix;
        }
        Vector3 normalize4 = new Vector3(renderMatrix[8], renderMatrix[9], renderMatrix[10]).normalize();
        Vector3 normalize5 = camera.f79250n.J0().u0((Vector3) JP.acquire(Vector3.class)).sub(new Vector3(f10, f11, f12)).normalize();
        Vector3 normalize6 = normalize5.sub(normalize4.mul(normalize5.dot(normalize4))).normalize().cross(normalize4).normalize();
        Vector3 normalize7 = normalize4.cross(normalize6).normalize();
        outputMatrix[0] = normalize6.getX() * sqrt;
        outputMatrix[1] = normalize6.getY() * sqrt;
        outputMatrix[2] = normalize6.getZ() * sqrt;
        outputMatrix[3] = 0.0f;
        outputMatrix[4] = normalize7.getX() * sqrt2;
        outputMatrix[5] = normalize7.getY() * sqrt2;
        outputMatrix[6] = normalize7.getZ() * sqrt2;
        outputMatrix[7] = 0.0f;
        outputMatrix[8] = normalize4.getX() * sqrt3;
        outputMatrix[9] = normalize4.getY() * sqrt3;
        outputMatrix[10] = normalize4.getZ() * sqrt3;
        outputMatrix[11] = 0.0f;
        outputMatrix[12] = f10;
        outputMatrix[13] = f11;
        outputMatrix[14] = f12;
        outputMatrix[15] = 1.0f;
        return outputMatrix;
    }
}
