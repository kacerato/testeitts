package com.jme3.shadow;

import com.jme3.bounding.BoundingBox;
import com.jme3.math.FastMath;
import com.jme3.math.Matrix4f;
import com.jme3.renderer.Camera;
import com.jme3.renderer.queue.GeometryList;

public final class PssmShadowUtil {
    private PssmShadowUtil() {
    }

    public static float computeZFar(GeometryList geometryList, GeometryList geometryList2, Camera camera) {
        Matrix4f viewMatrix = camera.getViewMatrix();
        BoundingBox computeUnionBound = ShadowUtil.computeUnionBound(geometryList, viewMatrix);
        BoundingBox computeUnionBound2 = ShadowUtil.computeUnionBound(geometryList2, viewMatrix);
        return Math.min(Math.max(computeUnionBound.getZExtent() - computeUnionBound.getCenter().f81613z, computeUnionBound2.getZExtent() - computeUnionBound2.getCenter().f81613z), camera.getFrustumFar());
    }

    public static void updateFrustumSplits(float[] fArr, float f10, float f11, float f12) {
        for (int i10 = 0; i10 < fArr.length; i10++) {
            float length = i10 / fArr.length;
            fArr[i10] = (FastMath.pow(f11 / f10, length) * f10 * f12) + ((((f11 - f10) * length) + f10) * (1.0f - f12));
        }
        fArr[0] = f10;
        fArr[fArr.length - 1] = f11;
    }
}
