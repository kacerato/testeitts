package org.apache.commons.math3.analysis.interpolation;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.Decimal64;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;

public class FieldHermiteInterpolator<T extends FieldElement<T>> {
    private final List<T> abscissae = new ArrayList();
    private final List<T[]> topDiagonal = new ArrayList();
    private final List<T[]> bottomDiagonal = new ArrayList();

    public void addSamplePoint(T t10, T[]... tArr) throws ZeroException, MathArithmeticException, DimensionMismatchException, NullArgumentException {
        MathUtils.checkNotNull(t10);
        FieldElement fieldElement = (FieldElement) t10.getField().getOne();
        for (int i10 = 0; i10 < tArr.length; i10++) {
            FieldElement[] fieldElementArr = (FieldElement[]) tArr[i10].clone();
            if (i10 > 1) {
                fieldElement = (FieldElement) fieldElement.multiply(i10);
                FieldElement fieldElement2 = (FieldElement) fieldElement.reciprocal();
                for (int i11 = 0; i11 < fieldElementArr.length; i11++) {
                    fieldElementArr[i11] = (FieldElement) fieldElementArr[i11].multiply(fieldElement2);
                }
            }
            int size = this.abscissae.size();
            this.bottomDiagonal.add(size - i10, fieldElementArr);
            int i12 = i10;
            FieldElement[] fieldElementArr2 = fieldElementArr;
            while (i12 < size) {
                i12++;
                int i13 = size - i12;
                T[] tArr2 = this.bottomDiagonal.get(i13);
                if (t10.equals(this.abscissae.get(i13))) {
                    throw new ZeroException(LocalizedFormats.DUPLICATED_ABSCISSA_DIVISION_BY_ZERO, t10);
                }
                FieldElement fieldElement3 = (FieldElement) ((FieldElement) t10.subtract(this.abscissae.get(i13))).reciprocal();
                for (int i14 = 0; i14 < fieldElementArr.length; i14++) {
                    tArr2[i14] = (FieldElement) fieldElement3.multiply((FieldElement) fieldElementArr2[i14].subtract(tArr2[i14]));
                }
                fieldElementArr2 = tArr2;
            }
            this.topDiagonal.add(fieldElementArr2.clone());
            this.abscissae.add(t10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T[][] derivatives(T t10, int i10) throws NoDataException, NullArgumentException {
        MathUtils.checkNotNull(t10);
        if (this.abscissae.isEmpty()) {
            throw new NoDataException(LocalizedFormats.EMPTY_INTERPOLATION_SAMPLE);
        }
        FieldElement fieldElement = (FieldElement) t10.getField().getZero();
        FieldElement fieldElement2 = (FieldElement) t10.getField().getOne();
        int i11 = i10 + 1;
        FieldElement[] fieldElementArr = (FieldElement[]) MathArrays.buildArray(t10.getField(), i11);
        fieldElementArr[0] = fieldElement;
        int i12 = 0;
        while (i12 < i10) {
            int i13 = i12 + 1;
            fieldElementArr[i13] = (FieldElement) fieldElementArr[i12].add(fieldElement2);
            i12 = i13;
        }
        T[][] tArr = (T[][]) ((FieldElement[][]) MathArrays.buildArray(t10.getField(), i11, this.topDiagonal.get(0).length));
        FieldElement[] fieldElementArr2 = (FieldElement[]) MathArrays.buildArray(t10.getField(), i11);
        fieldElementArr2[0] = (FieldElement) t10.getField().getOne();
        for (int i14 = 0; i14 < this.topDiagonal.size(); i14++) {
            T[] tArr2 = this.topDiagonal.get(i14);
            FieldElement fieldElement3 = (FieldElement) t10.subtract(this.abscissae.get(i14));
            for (int i15 = i10; i15 >= 0; i15--) {
                int i16 = 0;
                while (true) {
                    FieldElement[] fieldElementArr3 = tArr[i15];
                    if (i16 >= fieldElementArr3.length) {
                        break;
                    }
                    fieldElementArr3[i16] = (FieldElement) fieldElementArr3[i16].add((Decimal64) tArr2[i16].multiply(fieldElementArr2[i15]));
                    i16++;
                }
                FieldElement fieldElement4 = (FieldElement) fieldElementArr2[i15].multiply(fieldElement3);
                fieldElementArr2[i15] = fieldElement4;
                if (i15 > 0) {
                    fieldElementArr2[i15] = (FieldElement) fieldElement4.add(fieldElementArr[i15].multiply(fieldElementArr2[i15 - 1]));
                }
            }
        }
        return tArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T[] value(T t10) throws NoDataException, NullArgumentException {
        MathUtils.checkNotNull(t10);
        if (this.abscissae.isEmpty()) {
            throw new NoDataException(LocalizedFormats.EMPTY_INTERPOLATION_SAMPLE);
        }
        T[] tArr = (T[]) ((FieldElement[]) MathArrays.buildArray(t10.getField(), this.topDiagonal.get(0).length));
        FieldElement fieldElement = (FieldElement) t10.getField().getOne();
        for (int i10 = 0; i10 < this.topDiagonal.size(); i10++) {
            T[] tArr2 = this.topDiagonal.get(i10);
            for (int i11 = 0; i11 < tArr.length; i11++) {
                tArr[i11] = (FieldElement) tArr[i11].add((Decimal64) tArr2[i11].multiply(fieldElement));
            }
            fieldElement = (FieldElement) fieldElement.multiply((FieldElement) t10.subtract(this.abscissae.get(i10)));
        }
        return tArr;
    }
}
