package com.threed.jpct;

import android.util.FloatMath;

public class Primitives {
    private static final float HRT = FloatMath.sqrt(2.0f) / 2.0f;

    private Primitives() {
    }

    private static final Object3D createLatheObject(int i10, SimpleVector[] simpleVectorArr, float f10) {
        return createLatheObject(i10, simpleVectorArr, f10, 1.0f);
    }

    public static Object3D getBox(float f10, float f11) {
        float f12 = HRT;
        return createLatheObject(4, new SimpleVector[]{SimpleVector.create(f12, 0.5f * f11, 0.0f), SimpleVector.create(f12, (-0.5f) * f11, 0.0f)}, f10 * 2.0f, f11);
    }

    public static Object3D getCone(float f10) {
        return getCone(90, f10);
    }

    public static Object3D getCube(float f10) {
        float f11 = HRT;
        return createLatheObject(4, new SimpleVector[]{SimpleVector.create(f11, 0.5f, 0.0f), SimpleVector.create(f11, -0.5f, 0.0f)}, f10 * 2.0f);
    }

    public static Object3D getCylinder(float f10) {
        return getCylinder(90, f10);
    }

    public static Object3D getDoubleCone(float f10) {
        return getDoubleCone(90, f10);
    }

    public static Object3D getEllipsoid(float f10, float f11) {
        return getEllipsoid(20, f10, f11);
    }

    public static Object3D getPlane(int i10, float f10) {
        float f11 = i10;
        float f12 = ((-f10) * f11) / 2.0f;
        float f13 = 1.0f / f11;
        Object3D object3D = new Object3D((i10 * i10 * 2) + 8);
        float f14 = f12;
        float f15 = 0.0f;
        int i11 = 0;
        while (i11 < i10) {
            float f16 = f12;
            float f17 = 0.0f;
            int i12 = 0;
            while (i12 < i10) {
                float f18 = f17 + f13;
                float f19 = f15 + f13;
                float f20 = f18 > 1.0f ? 1.0f : f18;
                float f21 = f19 > 1.0f ? 1.0f : f19;
                float f22 = f14 + f10;
                float f23 = f16 + f10;
                float f24 = f16;
                float f25 = f17;
                Object3D object3D2 = object3D;
                float f26 = f21;
                float f27 = f14;
                float f28 = f20;
                float f29 = f15;
                object3D.addTriangle(f24, f14, 0.0f, f25, f15, f16, f22, 0.0f, f17, f26, f23, f27, 0.0f, f28, f29);
                object3D2.addTriangle(f24, f22, 0.0f, f25, f21, f23, f22, 0.0f, f20, f26, f23, f27, 0.0f, f28, f29);
                i12++;
                f17 = f18;
                f16 = f23;
                i11 = i11;
                object3D = object3D2;
            }
            f14 += f10;
            f15 += f13;
            i11++;
        }
        return object3D;
    }

    public static Object3D getPyramide(float f10) {
        return createLatheObject(4, new SimpleVector[]{SimpleVector.create(HRT, 0.5f, 0.0f)}, f10 * 2.0f);
    }

    public static Object3D getSphere(float f10) {
        return getSphere(20, f10);
    }

    private static final Object3D createLatheObject(int i10, SimpleVector[] simpleVectorArr, float f10, float f11) {
        int i11 = i10 * 2;
        Object3D object3D = new Object3D(i11 + ((simpleVectorArr.length - 1) * i11) + 1);
        SimpleVector[] simpleVectorArr2 = new SimpleVector[(simpleVectorArr.length * i10) + 2];
        simpleVectorArr2[0] = SimpleVector.create(0.0f, 0.5f * f11, 0.0f);
        simpleVectorArr2[1] = SimpleVector.create(0.0f, (-0.5f) * f11, 0.0f);
        int i12 = 2;
        for (int i13 = 0; i13 < i10; i13++) {
            int i14 = 0;
            while (i14 < simpleVectorArr.length) {
                simpleVectorArr2[i12] = simpleVectorArr[i14].rotate(SimpleVector.create(0.0f, (i13 / i10) * 2.0f * 3.1415927f, 0.0f));
                i14++;
                i12++;
            }
        }
        int i15 = 0;
        while (i15 < i10) {
            int length = ((i15 % i10) * simpleVectorArr.length) + 2;
            int i16 = i15 + 1;
            int length2 = ((i16 % i10) * simpleVectorArr.length) + 2;
            SimpleVector simpleVector = simpleVectorArr2[0];
            float f12 = simpleVector.f83625x * f10;
            float f13 = simpleVector.f83626y * f10;
            float f14 = f10 * simpleVector.f83627z;
            SimpleVector simpleVector2 = simpleVectorArr2[length2];
            float f15 = simpleVector2.f83625x * f10;
            float f16 = simpleVector2.f83626y * f10;
            float f17 = f10 * simpleVector2.f83627z;
            SimpleVector simpleVector3 = simpleVectorArr2[length];
            object3D.addTriangle(f12, f13, f14, f15, f16, f17, simpleVector3.f83625x * f10, simpleVector3.f83626y * f10, f10 * simpleVector3.f83627z);
            int length3 = (length + simpleVectorArr.length) - 1;
            int length4 = (length2 + simpleVectorArr.length) - 1;
            SimpleVector simpleVector4 = simpleVectorArr2[1];
            float f18 = simpleVector4.f83625x * f10;
            float f19 = simpleVector4.f83626y * f10;
            float f20 = f10 * simpleVector4.f83627z;
            SimpleVector simpleVector5 = simpleVectorArr2[length3];
            float f21 = simpleVector5.f83625x * f10;
            float f22 = simpleVector5.f83626y * f10;
            float f23 = f10 * simpleVector5.f83627z;
            SimpleVector simpleVector6 = simpleVectorArr2[length4];
            object3D.addTriangle(f18, f19, f20, f21, f22, f23, simpleVector6.f83625x * f10, simpleVector6.f83626y * f10, f10 * simpleVector6.f83627z);
            i15 = i16;
        }
        for (int i17 = 0; i17 < simpleVectorArr.length - 1; i17++) {
            int i18 = 0;
            while (i18 < i10) {
                int length5 = ((i18 % i10) * simpleVectorArr.length) + i17;
                int i19 = length5 + 2;
                int i20 = i18 + 1;
                int length6 = ((i20 % i10) * simpleVectorArr.length) + i17;
                int i21 = length6 + 2;
                int i22 = length6 + 3;
                SimpleVector simpleVector7 = simpleVectorArr2[i19];
                float f24 = simpleVector7.f83625x * f10;
                float f25 = simpleVector7.f83626y * f10;
                float f26 = f10 * simpleVector7.f83627z;
                SimpleVector simpleVector8 = simpleVectorArr2[i22];
                float f27 = simpleVector8.f83625x * f10;
                float f28 = simpleVector8.f83626y * f10;
                float f29 = f10 * simpleVector8.f83627z;
                SimpleVector simpleVector9 = simpleVectorArr2[length5 + 3];
                object3D.addTriangle(f24, f25, f26, f27, f28, f29, f10 * simpleVector9.f83625x, f10 * simpleVector9.f83626y, f10 * simpleVector9.f83627z);
                SimpleVector simpleVector10 = simpleVectorArr2[i19];
                float f30 = simpleVector10.f83625x * f10;
                float f31 = simpleVector10.f83626y * f10;
                float f32 = f10 * simpleVector10.f83627z;
                SimpleVector simpleVector11 = simpleVectorArr2[i21];
                float f33 = simpleVector11.f83625x * f10;
                float f34 = simpleVector11.f83626y * f10;
                float f35 = f10 * simpleVector11.f83627z;
                SimpleVector simpleVector12 = simpleVectorArr2[i22];
                object3D.addTriangle(f30, f31, f32, f33, f34, f35, simpleVector12.f83625x * f10, simpleVector12.f83626y * f10, f10 * simpleVector12.f83627z);
                i18 = i20;
            }
        }
        return object3D;
    }

    public static Object3D getCone(int i10, float f10) {
        return createLatheObject(i10, new SimpleVector[]{SimpleVector.create(0.5f, 0.5f, 0.0f)}, f10 * 2.0f);
    }

    public static Object3D getCylinder(int i10, float f10) {
        return createLatheObject(i10, new SimpleVector[]{SimpleVector.create(0.5f, 0.5f, 0.0f), SimpleVector.create(0.5f, -0.5f, 0.0f)}, f10 * 2.0f);
    }

    public static Object3D getDoubleCone(int i10, float f10) {
        return createLatheObject(i10, new SimpleVector[]{SimpleVector.create(0.5f, 0.0f, 0.0f)}, f10 * 2.0f);
    }

    public static Object3D getEllipsoid(int i10, float f10, float f11) {
        float f12 = f10 * 2.0f;
        SimpleVector[] simpleVectorArr = new SimpleVector[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            float f13 = ((i11 + 1.0f) / (i10 + 1.0f)) * 3.1415927f;
            simpleVectorArr[i11] = SimpleVector.create(FloatMath.sin(f13) * 0.5f, FloatMath.cos(f13) * 0.5f * f11, 0.0f);
        }
        return createLatheObject(i10, simpleVectorArr, f12, f11);
    }

    public static Object3D getPyramide(float f10, float f11) {
        return createLatheObject(4, new SimpleVector[]{SimpleVector.create(HRT, 0.5f * f11, 0.0f)}, f10 * 2.0f, f11);
    }

    public static Object3D getSphere(int i10, float f10) {
        return getEllipsoid(i10, f10, 1.0f);
    }

    public static Object3D getCone(int i10, float f10, float f11) {
        return createLatheObject(i10, new SimpleVector[]{SimpleVector.create(0.5f, f11 * 0.5f, 0.0f)}, f10 * 2.0f, f11);
    }

    public static Object3D getCylinder(int i10, float f10, float f11) {
        return createLatheObject(i10, new SimpleVector[]{SimpleVector.create(0.5f, f11 * 0.5f, 0.0f), SimpleVector.create(0.5f, (-0.5f) * f11, 0.0f)}, f10 * 2.0f, f11);
    }
}
