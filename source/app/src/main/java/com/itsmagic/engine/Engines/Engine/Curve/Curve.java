package com.itsmagic.engine.Engines.Engine.Curve;

import JAVARuntime.Curve;
import K8.f;
import K9.b;
import android.content.Context;
import android.graphics.PointF;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Curve.Curve;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class Curve extends f {

    public static final float f77901m = 1.0E-6f;

    public static final int f77902n = 256;

    public final Object f77903b;

    public float[] f77904c;

    public float[] f77905d;

    public int f77906e;

    public boolean f77907g;

    public int f77908i;

    public float f77909j;

    public float f77910k;

    public JAVARuntime.Curve f77911l;

    @Expose
    public final List<Vector2> points;

    @Expose
    public a wrapMode;

    public enum a {
        Loop,
        ClampToBorder,
        PingPong
    }

    @Deprecated
    public Curve() {
        this.points = new SteppedArrayList();
        this.wrapMode = a.Loop;
        this.f77903b = new Object();
        this.f77904c = new float[0];
        this.f77905d = new float[0];
        this.f77906e = 0;
        this.f77907g = true;
        this.f77908i = 1;
        this.f77910k = -999.0f;
    }

    public static void C(float[] x10, float[] y10, int left, int right) {
        float f10;
        float f11 = x10[(left + right) >>> 1];
        int i10 = left;
        int i11 = right;
        while (i10 <= i11) {
            while (x10[i10] < f11) {
                i10++;
            }
            while (true) {
                f10 = x10[i11];
                if (f10 <= f11) {
                    break;
                } else {
                    i11--;
                }
            }
            if (i10 <= i11) {
                float f12 = x10[i10];
                x10[i10] = f10;
                x10[i11] = f12;
                float f13 = y10[i10];
                y10[i10] = y10[i11];
                y10[i11] = f13;
                i10++;
                i11--;
            }
        }
        if (left < i11) {
            C(x10, y10, left, i11);
        }
        if (i10 < right) {
            C(x10, y10, i10, right);
        }
    }

    public static void H(List<PointF> list) {
        Collections.sort(list, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int v10;
                v10 = Curve.v((PointF) obj, (PointF) obj2);
                return v10;
            }
        });
    }

    public static void I(List<Vector2> list) {
        Collections.sort(list, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int w10;
                w10 = Curve.w((Vector2) obj, (Vector2) obj2);
                return w10;
            }
        });
    }

    public static Curve k(Curve curve) {
        if (curve != null) {
            return curve.clone();
        }
        return null;
    }

    public static Curve.WrapMode l(a wrapMode) {
        return Curve.WrapMode.valueOf(wrapMode.toString());
    }

    public static a m(Curve.WrapMode wrapMode) {
        return a.valueOf(wrapMode.toString());
    }

    public static float r(float v10) {
        return v10 - ((float) Math.floor(v10));
    }

    public static Curve s(String json, Context context) {
        try {
            Curve curve = (Curve) X7.a.m().fromJson(json, Curve.class);
            curve.i();
            return curve;
        } catch (JsonSyntaxException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static int v(PointF pointF, PointF pointF2) {
        return Float.compare(pointF.f32425x, pointF2.f32425x);
    }

    public static int w(Vector2 vector2, Vector2 vector22) {
        return Float.compare(vector2.f79838x, vector22.f79838x);
    }

    public static int x(float[] arr, int count, float x10) {
        int i10 = 0;
        while (i10 < count) {
            int i11 = (i10 + count) >>> 1;
            if (arr[i11] < x10) {
                i10 = i11 + 1;
            } else {
                count = i11;
            }
        }
        return i10;
    }

    public Vector2 A(int idx, Vector2 out) {
        out.x0(this.points.get(idx));
        return out;
    }

    public int B() {
        return this.points.size();
    }

    public final void D() {
        int i10;
        synchronized (this.f77903b) {
            try {
                this.f77908i = 1;
                this.f77906e = 0;
                int i11 = 2;
                if (this.points.size() < 2) {
                    this.f77907g = false;
                    return;
                }
                SteppedArrayList steppedArrayList = new SteppedArrayList(this.points.size());
                for (int i12 = 0; i12 < this.points.size(); i12++) {
                    Vector2 vector2 = this.points.get(i12);
                    steppedArrayList.add(new PointF(vector2.f79838x, vector2.f79839y));
                }
                H(steppedArrayList);
                int size = steppedArrayList.size() - 1;
                if (size <= 0) {
                    return;
                }
                int i13 = 0;
                int i14 = 0;
                while (i13 < size) {
                    int i15 = i13 + 1;
                    int max = Math.max(2, Math.round(Math.abs(((PointF) steppedArrayList.get(i15)).f32425x - ((PointF) steppedArrayList.get(i13)).f32425x) * 256.0f));
                    if (i13 == 0) {
                        max++;
                    }
                    i14 += max;
                    i13 = i15;
                }
                if (i14 < 2) {
                    return;
                }
                float[] fArr = new float[i14];
                float[] fArr2 = new float[i14];
                SteppedArrayList steppedArrayList2 = new SteppedArrayList();
                SteppedArrayList steppedArrayList3 = new SteppedArrayList();
                b.a(steppedArrayList, steppedArrayList2, steppedArrayList3);
                int i16 = 0;
                int i17 = 0;
                while (i16 < steppedArrayList2.size()) {
                    PointF pointF = (PointF) steppedArrayList.get(i16);
                    PointF pointF2 = (PointF) steppedArrayList2.get(i16);
                    PointF pointF3 = (PointF) steppedArrayList3.get(i16);
                    int i18 = i16 + 1;
                    PointF pointF4 = (PointF) steppedArrayList.get(i18);
                    int max2 = Math.max(2, Math.round(Math.abs(pointF4.f32425x - pointF.f32425x) * 256.0f));
                    int i19 = i16 == 0 ? 0 : 1;
                    while (i19 <= max2) {
                        int i20 = i18;
                        float f10 = i19 / max2;
                        float f11 = 1.0f - f10;
                        float f12 = f10 * f10;
                        float f13 = f11 * f11;
                        float f14 = f13 * f11;
                        float f15 = f12 * f10;
                        float f16 = f13 * 3.0f * f10;
                        float f17 = f11 * 3.0f * f12;
                        fArr[i17] = (pointF.f32425x * f14) + (pointF2.f32425x * f16) + (pointF3.f32425x * f17) + (pointF4.f32425x * f15);
                        fArr2[i17] = (f14 * pointF.f32426y) + (f16 * pointF2.f32426y) + (f17 * pointF3.f32426y) + (f15 * pointF4.f32426y);
                        i17++;
                        i19++;
                        i18 = i20;
                        steppedArrayList = steppedArrayList;
                    }
                    i16 = i18;
                    i11 = 2;
                }
                if (i17 < i11) {
                    return;
                }
                C(fArr, fArr2, 0, i17 - 1);
                int i21 = 0;
                for (int i22 = 0; i22 < i17; i22++) {
                    float f18 = fArr[i22];
                    float f19 = fArr2[i22];
                    if (i21 == 0) {
                        fArr[i21] = f18;
                        fArr2[i21] = f19;
                    } else {
                        int i23 = i21 - 1;
                        if (Math.abs(f18 - fArr[i23]) < 1.0E-6f) {
                            fArr[i23] = f18;
                            fArr2[i23] = f19;
                        } else {
                            fArr[i21] = f18;
                            fArr2[i21] = f19;
                        }
                    }
                    i21++;
                }
                if (i21 < 2) {
                    this.f77906e = 0;
                    this.f77908i = 1;
                    return;
                }
                float[] fArr3 = this.f77904c;
                if (fArr3 == null || fArr3.length < i21) {
                    this.f77904c = new float[i21];
                }
                float[] fArr4 = this.f77905d;
                if (fArr4 == null || fArr4.length < i21) {
                    this.f77905d = new float[i21];
                }
                System.arraycopy(fArr, 0, this.f77904c, 0, i21);
                System.arraycopy(fArr2, 0, this.f77905d, 0, i21);
                this.f77906e = i21;
                this.f77907g = false;
                if (this.f77908i >= i21) {
                    i10 = 1;
                    this.f77908i = i21 - 1;
                } else {
                    i10 = 1;
                }
                if (this.f77908i < i10) {
                    this.f77908i = i10;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void E(Curve curve) {
        this.points.clear();
        for (int i10 = 0; i10 < curve.B(); i10++) {
            this.points.add(curve.z(i10));
        }
        this.wrapMode = curve.wrapMode;
        y();
    }

    public void F(int idx, float x10, float y10) {
        this.points.get(idx).w0(x10, y10);
        y();
    }

    public void G(a wrapMode) {
        this.wrapMode = wrapMode;
    }

    public JAVARuntime.Curve J() {
        JAVARuntime.Curve curve = this.f77911l;
        if (curve != null) {
            return curve;
        }
        JAVARuntime.Curve curve2 = new JAVARuntime.Curve(this);
        this.f77911l = curve2;
        return curve2;
    }

    public String K(Context context) {
        return X7.a.m().toJson(this);
    }

    public void apply() {
        if (this.points.size() < 4) {
            throw new RuntimeException("Curve needs to have at least 4 points");
        }
        I(this.points);
        if (!this.points.isEmpty()) {
            this.points.get(0).f79838x = 0.0f;
            this.points.get(r0.size() - 1).f79838x = 1.0f;
        }
        y();
        D();
    }

    public void clear() {
        this.points.clear();
        y();
    }

    public void f(float x10, float y10) {
        this.points.add(new Vector2(x10, y10));
        y();
    }

    public void h(Vector2 v10) {
        f(v10.f79838x, v10.f79839y);
    }

    public final void i() {
        y();
        D();
    }

    public Curve clone() {
        Curve curve = new Curve();
        curve.points.clear();
        for (int i10 = 0; i10 < this.points.size(); i10++) {
            curve.points.add(this.points.get(i10).clone());
        }
        curve.wrapMode = this.wrapMode;
        curve.i();
        return curve;
    }

    public final void n() {
        if (this.f77907g) {
            synchronized (this.f77903b) {
                try {
                    if (this.f77907g) {
                        D();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public final void o(int needed) {
        float[] fArr = this.f77904c;
        if (fArr.length >= needed) {
            return;
        }
        int max = Math.max(needed, (fArr.length * 2) + 32);
        this.f77904c = new float[max];
        this.f77905d = new float[max];
    }

    public float p(float x10) {
        if (this.f77910k == x10) {
            return this.f77909j;
        }
        if (x10 >= 0.0f && x10 <= 1.0f) {
            float q10 = q(x10);
            this.f77910k = x10;
            this.f77909j = q10;
            return q10;
        }
        int ordinal = this.wrapMode.ordinal();
        if (ordinal == 0) {
            float r10 = r(x10);
            float q11 = q(r10);
            this.f77910k = r10;
            this.f77909j = q11;
            return q11;
        }
        if (ordinal == 1) {
            float E10 = Nc.b.E(0.0f, x10, 1.0f);
            float q12 = q(E10);
            this.f77910k = E10;
            this.f77909j = q12;
            return q12;
        }
        if (ordinal != 2) {
            throw new RuntimeException("Invalid wrap mode: " + ((Object) this.wrapMode));
        }
        float floor = (float) Math.floor(x10);
        float f10 = x10 - floor;
        if ((((int) floor) & 1) != 0) {
            f10 = 1.0f - f10;
        }
        float q13 = q(f10);
        this.f77910k = f10;
        this.f77909j = q13;
        return q13;
    }

    public final float q(float x10) {
        n();
        int i10 = this.f77906e;
        if (i10 < 2) {
            return 0.0f;
        }
        float[] fArr = this.f77904c;
        float f10 = fArr[0];
        if (x10 <= f10) {
            float f11 = fArr[1] - f10;
            if (Math.abs(f11) < 1.0E-6f) {
                return this.f77905d[0];
            }
            float f12 = (x10 - this.f77904c[0]) / f11;
            float[] fArr2 = this.f77905d;
            float f13 = fArr2[0];
            return f13 + (f12 * (fArr2[1] - f13));
        }
        if (x10 >= fArr[i10 - 1]) {
            float f14 = fArr[i10 - 1] - fArr[i10 - 2];
            if (Math.abs(f14) < 1.0E-6f) {
                return this.f77905d[this.f77906e - 1];
            }
            float[] fArr3 = this.f77904c;
            int i11 = this.f77906e;
            float f15 = (x10 - fArr3[i11 - 2]) / f14;
            float[] fArr4 = this.f77905d;
            return fArr4[i11 - 2] + (f15 * (fArr4[i11 - 1] - fArr4[i11 - 2]));
        }
        int i12 = this.f77908i;
        if (i12 < 1) {
            i12 = 1;
        }
        if (i12 >= i10) {
            i12 = i10 - 1;
        }
        if (x10 > fArr[i12]) {
            while (i12 < this.f77906e - 1 && this.f77904c[i12] < x10) {
                i12++;
            }
        } else if (x10 < fArr[i12 - 1]) {
            while (i12 > 1 && this.f77904c[i12 - 1] > x10) {
                i12--;
            }
        }
        float[] fArr5 = this.f77904c;
        if (fArr5[i12 - 1] > x10 || x10 > fArr5[i12]) {
            int x11 = x(fArr5, this.f77906e, x10);
            i12 = x11 < 1 ? 1 : x11;
            int i13 = this.f77906e;
            if (i12 >= i13) {
                i12 = i13 - 1;
            }
        }
        this.f77908i = i12;
        float[] fArr6 = this.f77904c;
        int i14 = i12 - 1;
        float f16 = fArr6[i14];
        float f17 = fArr6[i12];
        float[] fArr7 = this.f77905d;
        float f18 = fArr7[i14];
        float f19 = fArr7[i12];
        float f20 = f17 - f16;
        return Math.abs(f20) < 1.0E-6f ? f19 : f18 + (((x10 - f16) / f20) * (f19 - f18));
    }

    public a u() {
        return this.wrapMode;
    }

    public final void y() {
        synchronized (this.f77903b) {
            this.f77907g = true;
        }
    }

    public Vector2 z(int idx) {
        return A(idx, new Vector2());
    }

    public Curve(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.points = steppedArrayList;
        this.wrapMode = a.Loop;
        this.f77903b = new Object();
        this.f77904c = new float[0];
        this.f77905d = new float[0];
        this.f77906e = 0;
        this.f77907g = true;
        this.f77908i = 1;
        this.f77910k = -999.0f;
        steppedArrayList.add(new Vector2(0.0f, 0.0f));
        steppedArrayList.add(new Vector2(0.25f, 0.2f));
        steppedArrayList.add(new Vector2(0.75f, 0.8f));
        steppedArrayList.add(new Vector2(1.0f, 1.0f));
        i();
    }
}
