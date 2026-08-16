package org.eclipse.jdt.internal.compiler.util;

import java.util.Arrays;
import java.util.Comparator;
import org.eclipse.jdt.internal.compiler.lookup.InferenceVariable;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class Sorting {
    public static MethodBinding[] abstractFirst(MethodBinding[] methodBindingArr, int i10) {
        if (i10 != 0) {
            if (i10 <= 0 || !methodBindingArr[0].isAbstract()) {
                MethodBinding[] methodBindingArr2 = new MethodBinding[i10];
                int i11 = 0;
                for (int i12 = 0; i12 < i10; i12++) {
                    if (methodBindingArr[i12].isAbstract()) {
                        methodBindingArr2[i11] = methodBindingArr[i12];
                        i11++;
                    }
                }
                for (int i13 = 0; i13 < i10; i13++) {
                    if (!methodBindingArr[i13].isAbstract()) {
                        methodBindingArr2[i11] = methodBindingArr[i13];
                        i11++;
                    }
                }
                return methodBindingArr2;
            }
        }
        return methodBindingArr;
    }

    public static MethodBinding[] concreteFirst(MethodBinding[] methodBindingArr, int i10) {
        if (i10 != 0) {
            if (i10 <= 0 || methodBindingArr[0].isAbstract()) {
                MethodBinding[] methodBindingArr2 = new MethodBinding[i10];
                int i11 = 0;
                for (int i12 = 0; i12 < i10; i12++) {
                    if (!methodBindingArr[i12].isAbstract()) {
                        methodBindingArr2[i11] = methodBindingArr[i12];
                        i11++;
                    }
                }
                for (int i13 = 0; i13 < i10; i13++) {
                    if (methodBindingArr[i13].isAbstract()) {
                        methodBindingArr2[i11] = methodBindingArr[i13];
                        i11++;
                    }
                }
                return methodBindingArr2;
            }
        }
        return methodBindingArr;
    }

    private static int sort(ReferenceBinding[] referenceBindingArr, int i10, ReferenceBinding[] referenceBindingArr2, int i11) {
        ReferenceBinding referenceBinding = referenceBindingArr[i10];
        if (referenceBinding == null) {
            return i11;
        }
        int sortSuper = sortSuper(referenceBinding.superclass(), referenceBindingArr, referenceBindingArr2, i11);
        for (ReferenceBinding referenceBinding2 : referenceBindingArr[i10].superInterfaces()) {
            sortSuper = sortSuper(referenceBinding2, referenceBindingArr, referenceBindingArr2, sortSuper);
        }
        int i12 = sortSuper + 1;
        referenceBindingArr2[sortSuper] = referenceBindingArr[i10];
        referenceBindingArr[i10] = null;
        return i12;
    }

    public static void sortInferenceVariables(InferenceVariable[] inferenceVariableArr) {
        Arrays.sort(inferenceVariableArr, new Comparator<InferenceVariable>() {
            @Override
            public int compare(InferenceVariable inferenceVariable, InferenceVariable inferenceVariable2) {
                return inferenceVariable.rank - inferenceVariable2.rank;
            }
        });
    }

    private static int sortSuper(ReferenceBinding referenceBinding, ReferenceBinding[] referenceBindingArr, ReferenceBinding[] referenceBindingArr2, int i10) {
        if (referenceBinding.f102482id == 1) {
            return i10;
        }
        int i11 = 0;
        while (i11 < referenceBindingArr.length && !TypeBinding.equalsEquals(referenceBindingArr[i11], referenceBinding)) {
            i11++;
        }
        return i11 < referenceBindingArr.length ? sort(referenceBindingArr, i11, referenceBindingArr2, i10) : i10;
    }

    public static ReferenceBinding[] sortTypes(ReferenceBinding[] referenceBindingArr) {
        int length = referenceBindingArr.length;
        ReferenceBinding[] referenceBindingArr2 = new ReferenceBinding[length];
        ReferenceBinding[] referenceBindingArr3 = new ReferenceBinding[length];
        System.arraycopy(referenceBindingArr, 0, referenceBindingArr2, 0, length);
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            i10 = sort(referenceBindingArr2, i11, referenceBindingArr3, i10);
        }
        return referenceBindingArr3;
    }
}
