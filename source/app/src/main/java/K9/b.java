package K9;

import android.graphics.PointF;
import java.util.List;

public class b {
    public static void a(List<PointF> knots, List<PointF> first_control_points, List<PointF> second_control_points) {
        int i10;
        if (knots == null) {
            throw new NullPointerException("Points cannot be null.");
        }
        int size = knots.size();
        int i11 = size - 1;
        if (i11 < 1) {
            throw new IllegalArgumentException("At least two knot Points required.");
        }
        if (i11 == 1) {
            PointF pointF = new PointF();
            pointF.f32425x = ((knots.get(0).f32425x * 2.0f) + knots.get(1).f32425x) / 3.0f;
            pointF.f32426y = ((knots.get(0).f32426y * 2.0f) + knots.get(1).f32426y) / 3.0f;
            first_control_points.add(pointF);
            PointF pointF2 = new PointF();
            pointF2.f32425x = (first_control_points.get(0).f32425x * 2.0f) - knots.get(0).f32425x;
            pointF2.f32426y = (first_control_points.get(0).f32426y * 2.0f) - knots.get(0).f32426y;
            second_control_points.add(pointF2);
            return;
        }
        float[] fArr = new float[i11];
        int i12 = 1;
        while (true) {
            i10 = size - 2;
            if (i12 >= i10) {
                break;
            }
            int i13 = i12 + 1;
            fArr[i12] = (knots.get(i12).f32425x * 4.0f) + (knots.get(i13).f32425x * 2.0f);
            fArr[0] = knots.get(0).f32425x + (knots.get(1).f32425x * 2.0f);
            fArr[i10] = ((knots.get(i10).f32425x * 8.0f) + knots.get(i11).f32425x) / 2.0f;
            i12 = i13;
        }
        float[] b10 = b(fArr);
        int i14 = 1;
        while (i14 < i10) {
            int i15 = i14 + 1;
            fArr[i14] = (knots.get(i14).f32426y * 4.0f) + (knots.get(i15).f32426y * 2.0f);
            fArr[0] = knots.get(0).f32426y + (knots.get(1).f32426y * 2.0f);
            fArr[i10] = ((knots.get(i10).f32426y * 8.0f) + knots.get(i11).f32426y) / 2.0f;
            i14 = i15;
        }
        float[] b11 = b(fArr);
        for (int i16 = 0; i16 < i11; i16++) {
            PointF pointF3 = new PointF();
            pointF3.f32425x = b10[i16];
            pointF3.f32426y = b11[i16];
            first_control_points.add(pointF3);
            if (i16 < i10) {
                PointF pointF4 = new PointF();
                int i17 = i16 + 1;
                pointF4.f32425x = (knots.get(i17).f32425x * 2.0f) - b10[i17];
                pointF4.f32426y = (knots.get(i17).f32426y * 2.0f) - b11[i17];
                second_control_points.add(pointF4);
            } else {
                PointF pointF5 = new PointF();
                pointF5.f32425x = (knots.get(i11).f32425x + b10[i10]) / 2.0f;
                pointF5.f32426y = (knots.get(i11).f32426y + b11[i10]) / 2.0f;
                second_control_points.add(pointF5);
            }
        }
    }

    public static float[] b(float[] rhs) {
        int length = rhs.length;
        float[] fArr = new float[length];
        float[] fArr2 = new float[length];
        float f10 = 2.0f;
        fArr[0] = rhs[0] / 2.0f;
        int i10 = 1;
        while (i10 < length) {
            float f11 = 1.0f / f10;
            fArr2[i10] = f11;
            f10 = (i10 < length + (-1) ? 4.0f : 3.5f) - f11;
            fArr[i10] = (rhs[i10] - fArr[i10 - 1]) / f10;
            i10++;
        }
        for (int i11 = 1; i11 < length; i11++) {
            int i12 = length - i11;
            int i13 = i12 - 1;
            fArr[i13] = fArr[i13] - (fArr2[i12] * fArr[i12]);
        }
        return fArr;
    }
}
