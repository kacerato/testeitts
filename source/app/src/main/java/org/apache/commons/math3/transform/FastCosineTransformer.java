package org.apache.commons.math3.transform;

import java.io.Serializable;
import org.apache.commons.math3.analysis.FunctionUtils;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.complex.Complex;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.ArithmeticUtils;
import org.apache.commons.math3.util.FastMath;

public class FastCosineTransformer implements RealTransformer, Serializable {
    static final long serialVersionUID = 20120212;
    private final DctNormalization normalization;

    public FastCosineTransformer(DctNormalization dctNormalization) {
        this.normalization = dctNormalization;
    }

    public double[] fct(double[] dArr) throws MathIllegalArgumentException {
        double[] dArr2 = new double[dArr.length];
        int length = dArr.length - 1;
        if (!ArithmeticUtils.isPowerOfTwo(length)) {
            throw new MathIllegalArgumentException(LocalizedFormats.NOT_POWER_OF_TWO_PLUS_ONE, Integer.valueOf(dArr.length));
        }
        double d10 = 0.5d;
        if (length == 1) {
            double d11 = dArr[0];
            double d12 = dArr[1];
            dArr2[0] = (d11 + d12) * 0.5d;
            dArr2[1] = (dArr[0] - d12) * 0.5d;
            return dArr2;
        }
        double[] dArr3 = new double[length];
        dArr3[0] = (dArr[0] + dArr[length]) * 0.5d;
        int i10 = length >> 1;
        dArr3[i10] = dArr[i10];
        double d13 = (dArr[0] - dArr[length]) * 0.5d;
        int i11 = 1;
        while (i11 < i10) {
            int i12 = length - i11;
            double d14 = (dArr[i11] + dArr[i12]) * d10;
            double[] dArr4 = dArr3;
            double d15 = (i11 * 3.141592653589793d) / length;
            double sin = FastMath.sin(d15) * (dArr[i11] - dArr[i12]);
            double cos = FastMath.cos(d15) * (dArr[i11] - dArr[i12]);
            dArr4[i11] = d14 - sin;
            dArr4[i12] = d14 + sin;
            d13 += cos;
            i11++;
            dArr3 = dArr4;
            d10 = 0.5d;
        }
        Complex[] transform = new FastFourierTransformer(DftNormalization.STANDARD).transform(dArr3, TransformType.FORWARD);
        dArr2[0] = transform[0].getReal();
        dArr2[1] = d13;
        for (int i13 = 1; i13 < i10; i13++) {
            int i14 = i13 * 2;
            dArr2[i14] = transform[i13].getReal();
            dArr2[i14 + 1] = dArr2[i14 - 1] - transform[i13].getImaginary();
        }
        dArr2[length] = transform[i10].getReal();
        return dArr2;
    }

    @Override
    public double[] transform(double[] dArr, TransformType transformType) throws MathIllegalArgumentException {
        if (transformType == TransformType.FORWARD) {
            if (this.normalization == DctNormalization.ORTHOGONAL_DCT_I) {
                return TransformUtils.scaleArray(fct(dArr), FastMath.sqrt(2.0d / (dArr.length - 1)));
            }
            return fct(dArr);
        }
        double length = 2.0d / (dArr.length - 1);
        if (this.normalization == DctNormalization.ORTHOGONAL_DCT_I) {
            length = FastMath.sqrt(length);
        }
        return TransformUtils.scaleArray(fct(dArr), length);
    }

    @Override
    public double[] transform(UnivariateFunction univariateFunction, double d10, double d11, int i10, TransformType transformType) throws MathIllegalArgumentException {
        return transform(FunctionUtils.sample(univariateFunction, d10, d11, i10), transformType);
    }
}
