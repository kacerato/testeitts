package org.eclipse.jdt.internal.compiler.lookup;

import com.tonyodev.fetch2.util.FetchDefaults;
import java.lang.reflect.Array;
import org.eclipse.jdt.internal.core.JavaElement;

public class InferenceContext {
    static final int FAILED = 1;
    private TypeBinding[][][] collectedSubstitutes;
    int depth;
    TypeBinding expectedType;
    MethodBinding genericMethod;
    boolean hasExplicitExpectedType;
    public boolean isUnchecked;
    int status;
    TypeBinding[] substitutes;

    public InferenceContext(MethodBinding methodBinding) {
        this.genericMethod = methodBinding;
        int length = methodBinding.typeVariables.length;
        this.collectedSubstitutes = (TypeBinding[][][]) Array.newInstance((Class<?>) TypeBinding[].class, length, 3);
        this.substitutes = new TypeBinding[length];
    }

    public TypeBinding[] getSubstitutes(TypeVariableBinding typeVariableBinding, int i10) {
        return this.collectedSubstitutes[typeVariableBinding.rank][i10];
    }

    public boolean hasUnresolvedTypeArgument() {
        int length = this.substitutes.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (this.substitutes[i10] == null) {
                return true;
            }
        }
        return false;
    }

    public void recordSubstitute(TypeVariableBinding typeVariableBinding, TypeBinding typeBinding, int i10) {
        TypeBinding[] typeBindingArr;
        TypeBinding[][] typeBindingArr2 = this.collectedSubstitutes[typeVariableBinding.rank];
        TypeBinding[] typeBindingArr3 = typeBindingArr2[i10];
        int i11 = 0;
        if (typeBindingArr3 == null) {
            typeBindingArr = new TypeBinding[1];
        } else {
            int length = typeBindingArr3.length;
            for (int i12 = 0; i12 < length; i12++) {
                TypeBinding typeBinding2 = typeBindingArr3[i12];
                if (typeBinding2 == typeBinding) {
                    return;
                }
                if (typeBinding2 == null) {
                    typeBindingArr3[i12] = typeBinding;
                    return;
                }
            }
            TypeBinding[] typeBindingArr4 = new TypeBinding[length + 1];
            System.arraycopy(typeBindingArr3, 0, typeBindingArr4, 0, length);
            i11 = length;
            typeBindingArr = typeBindingArr4;
        }
        typeBindingArr[i11] = typeBinding;
        typeBindingArr2[i10] = typeBindingArr;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(20);
        stringBuffer.append("InferenceContex for ");
        int length = this.genericMethod.typeVariables.length;
        for (int i10 = 0; i10 < length; i10++) {
            stringBuffer.append((Object) this.genericMethod.typeVariables[i10]);
        }
        stringBuffer.append((Object) this.genericMethod);
        stringBuffer.append("\n\t[status=");
        int i11 = this.status;
        if (i11 == 0) {
            stringBuffer.append("ok]");
        } else if (i11 == 1) {
            stringBuffer.append("failed]");
        }
        if (this.expectedType == null) {
            stringBuffer.append(" [expectedType=null]");
        } else {
            stringBuffer.append(" [expectedType=");
            stringBuffer.append(this.expectedType.shortReadableName());
            stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        stringBuffer.append(" [depth=");
        stringBuffer.append(this.depth);
        stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        stringBuffer.append("\n\t[collected={");
        TypeBinding[][][] typeBindingArr = this.collectedSubstitutes;
        int length2 = typeBindingArr == null ? 0 : typeBindingArr.length;
        for (int i12 = 0; i12 < length2; i12++) {
            TypeBinding[][] typeBindingArr2 = this.collectedSubstitutes[i12];
            for (int i13 = 0; i13 <= 2; i13++) {
                TypeBinding[] typeBindingArr3 = typeBindingArr2[i13];
                if (typeBindingArr3 != null) {
                    for (TypeBinding typeBinding : typeBindingArr3) {
                        stringBuffer.append("\n\t\t");
                        stringBuffer.append(this.genericMethod.typeVariables[i12].sourceName);
                        if (i13 == 0) {
                            stringBuffer.append("=");
                        } else if (i13 == 1) {
                            stringBuffer.append("<:");
                        } else if (i13 == 2) {
                            stringBuffer.append(">:");
                        }
                        if (typeBinding != null) {
                            stringBuffer.append(typeBinding.shortReadableName());
                        }
                    }
                }
            }
        }
        stringBuffer.append("}]");
        stringBuffer.append("\n\t[inferred=");
        TypeBinding[] typeBindingArr4 = this.substitutes;
        int length3 = typeBindingArr4 == null ? 0 : typeBindingArr4.length;
        int i14 = 0;
        for (int i15 = 0; i15 < length3; i15++) {
            if (this.substitutes[i15] != null) {
                i14++;
                stringBuffer.append(JavaElement.JEM_COMPILATIONUNIT);
                stringBuffer.append(this.genericMethod.typeVariables[i15].sourceName);
                stringBuffer.append("=");
                stringBuffer.append(this.substitutes[i15].shortReadableName());
                stringBuffer.append(JavaElement.JEM_ANNOTATION);
            }
        }
        if (i14 == 0) {
            stringBuffer.append(FetchDefaults.EMPTY_JSON_OBJECT_STRING);
        }
        stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        return stringBuffer.toString();
    }
}
