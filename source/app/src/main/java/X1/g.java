package x1;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;
import androidx.annotation.NonNull;

public class g implements TypeEvaluator<Matrix> {

    public final float[] f127898a = new float[9];

    public final float[] f127899b = new float[9];

    public final Matrix f127900c = new Matrix();

    @Override
    @NonNull
    public Matrix evaluate(float f10, @NonNull Matrix matrix, @NonNull Matrix matrix2) {
        matrix.getValues(this.f127898a);
        matrix2.getValues(this.f127899b);
        for (int i10 = 0; i10 < 9; i10++) {
            float[] fArr = this.f127899b;
            float f11 = fArr[i10];
            float f12 = this.f127898a[i10];
            fArr[i10] = f12 + ((f11 - f12) * f10);
        }
        this.f127900c.setValues(this.f127899b);
        return this.f127900c;
    }
}
