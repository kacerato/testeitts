package com.jme3.math;

import com.jme3.math.Spline;
import java.util.List;

public class CurveAndSurfaceMath {
    private static final float KNOTS_MINIMUM_DELTA = 1.0E-4f;

    private CurveAndSurfaceMath() {
    }

    private static float computeBaseFunctionValue(int i10, int i11, float f10, List<Float> list) {
        if (i11 == 1) {
            return (list.get(i10).floatValue() > f10 || f10 >= list.get(i10 + 1).floatValue()) ? 0.0f : 1.0f;
        }
        int i12 = i10 + i11;
        int i13 = i11 - 1;
        float floatValue = ((f10 - list.get(i10).floatValue()) / (list.get(i12 - 1).floatValue() - list.get(i10).floatValue())) * computeBaseFunctionValue(i10, i13, f10, list);
        int i14 = i10 + 1;
        return floatValue + (((list.get(i12).floatValue() - f10) / (list.get(i12).floatValue() - list.get(i14).floatValue())) * computeBaseFunctionValue(i14, i13, f10, list));
    }

    public static void interpolate(float f10, float f11, List<List<Vector4f>> list, List<Float>[] listArr, int i10, int i11, Vector3f vector3f) {
        vector3f.set(Vector3f.ZERO);
        int size = list.size();
        int size2 = list.get(0).size();
        float f12 = 0.0f;
        for (int i12 = 0; i12 < size; i12++) {
            for (int i13 = 0; i13 < size2; i13++) {
                Vector4f vector4f = list.get(i12).get(i13);
                float computeBaseFunctionValue = vector4f.f81614w * computeBaseFunctionValue(i12, i11, f11, listArr[1]) * computeBaseFunctionValue(i13, i10, f10, listArr[0]);
                vector3f.addLocal(vector4f.f81615x * computeBaseFunctionValue, vector4f.f81616y * computeBaseFunctionValue, vector4f.f81617z * computeBaseFunctionValue);
                f12 += computeBaseFunctionValue;
            }
        }
        vector3f.divideLocal(f12);
    }

    public static void interpolateNurbs(float f10, Spline spline, Vector3f vector3f) {
        if (spline.getType() != Spline.SplineType.Nurb) {
            throw new IllegalArgumentException("Given spline is not of a NURB type!");
        }
        List<Vector3f> controlPoints = spline.getControlPoints();
        float[] weights = spline.getWeights();
        List<Float> knots = spline.getKnots();
        int size = controlPoints.size();
        vector3f.set(Vector3f.ZERO);
        float f11 = 0.0f;
        for (int i10 = 0; i10 < size; i10++) {
            float computeBaseFunctionValue = weights[i10] * computeBaseFunctionValue(i10, spline.getBasisFunctionDegree(), f10, knots);
            vector3f.addLocal(spline.getControlPoints().get(i10).mult(computeBaseFunctionValue));
            f11 += computeBaseFunctionValue;
        }
        vector3f.divideLocal(f11);
    }

    public static void prepareNurbsKnots(List<Float> list, int i10) {
        float floatValue = list.get(0).floatValue();
        float f10 = 1.0E-4f;
        for (int i11 = 1; i11 < list.size(); i11++) {
            float floatValue2 = list.get(i11).floatValue();
            if (floatValue2 <= floatValue) {
                floatValue2 += f10;
                list.set(i11, Float.valueOf(floatValue2));
                f10 += 1.0E-4f;
            } else {
                f10 = 1.0E-4f;
            }
            floatValue = floatValue2;
        }
    }
}
