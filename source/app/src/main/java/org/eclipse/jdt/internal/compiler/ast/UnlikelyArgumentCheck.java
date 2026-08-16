package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;

public class UnlikelyArgumentCheck {
    private static int[] $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$DangerousMethod;
    public final TypeConstants.DangerousMethod dangerousMethod;
    public final TypeBinding expectedType;
    public final TypeBinding typeToCheck;
    public final TypeBinding typeToReport;

    public static int[] $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$DangerousMethod() {
        int[] iArr = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$DangerousMethod;
        if (iArr != null) {
            return iArr;
        }
        int[] iArr2 = new int[TypeConstants.DangerousMethod.valuesCustom().length];
        try {
            iArr2[TypeConstants.DangerousMethod.Contains.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr2[TypeConstants.DangerousMethod.ContainsAll.ordinal()] = 4;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr2[TypeConstants.DangerousMethod.ContainsKey.ordinal()] = 7;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr2[TypeConstants.DangerousMethod.ContainsValue.ordinal()] = 8;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr2[TypeConstants.DangerousMethod.Equals.ordinal()] = 11;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr2[TypeConstants.DangerousMethod.Get.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            iArr2[TypeConstants.DangerousMethod.IndexOf.ordinal()] = 9;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            iArr2[TypeConstants.DangerousMethod.LastIndexOf.ordinal()] = 10;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            iArr2[TypeConstants.DangerousMethod.Remove.ordinal()] = 2;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            iArr2[TypeConstants.DangerousMethod.RemoveAll.ordinal()] = 3;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            iArr2[TypeConstants.DangerousMethod.RetainAll.ordinal()] = 5;
        } catch (NoSuchFieldError unused11) {
        }
        $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$DangerousMethod = iArr2;
        return iArr2;
    }

    private UnlikelyArgumentCheck(TypeConstants.DangerousMethod dangerousMethod, TypeBinding typeBinding, TypeBinding typeBinding2, TypeBinding typeBinding3) {
        this.dangerousMethod = dangerousMethod;
        this.typeToCheck = typeBinding;
        this.expectedType = typeBinding2;
        this.typeToReport = typeBinding3;
    }

    public static UnlikelyArgumentCheck determineCheckForNonStaticSingleArgumentMethod(TypeBinding typeBinding, Scope scope, char[] cArr, TypeBinding typeBinding2, TypeBinding[] typeBindingArr) {
        TypeConstants.DangerousMethod detectSelector;
        int i10;
        int i11;
        ReferenceBinding findSuperTypeOriginatingFrom;
        ReferenceBinding findSuperTypeOriginatingFrom2;
        ReferenceBinding findSuperTypeOriginatingFrom3;
        if (typeBindingArr.length != 1) {
            return null;
        }
        int i12 = typeBindingArr[0].original().f102482id;
        if ((i12 != 1 && i12 != 59) || (detectSelector = TypeConstants.DangerousMethod.detectSelector(cArr)) == null) {
            return null;
        }
        if (typeBinding2.hasTypeBit(256) && i12 == 1) {
            int i13 = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$DangerousMethod()[detectSelector.ordinal()];
            if (i13 == 2 || i13 == 6 || i13 == 7) {
                ReferenceBinding findSuperTypeOriginatingFrom4 = typeBinding2.findSuperTypeOriginatingFrom(91, false);
                if (findSuperTypeOriginatingFrom4 != null && findSuperTypeOriginatingFrom4.isParameterizedType()) {
                    return new UnlikelyArgumentCheck(detectSelector, typeBinding, ((ParameterizedTypeBinding) findSuperTypeOriginatingFrom4).typeArguments()[0], findSuperTypeOriginatingFrom4);
                }
            } else if (i13 == 8 && (findSuperTypeOriginatingFrom3 = typeBinding2.findSuperTypeOriginatingFrom(91, false)) != null && findSuperTypeOriginatingFrom3.isParameterizedType()) {
                return new UnlikelyArgumentCheck(detectSelector, typeBinding, ((ParameterizedTypeBinding) findSuperTypeOriginatingFrom3).typeArguments()[1], findSuperTypeOriginatingFrom3);
            }
        }
        if (typeBinding2.hasTypeBit(512)) {
            if (i12 == 1) {
                int i14 = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$DangerousMethod()[detectSelector.ordinal()];
                if ((i14 == 1 || i14 == 2) && (findSuperTypeOriginatingFrom2 = typeBinding2.findSuperTypeOriginatingFrom(59, false)) != null && findSuperTypeOriginatingFrom2.isParameterizedType()) {
                    return new UnlikelyArgumentCheck(detectSelector, typeBinding, ((ParameterizedTypeBinding) findSuperTypeOriginatingFrom2).typeArguments()[0], findSuperTypeOriginatingFrom2);
                }
            } else if (i12 == 59 && ((i10 = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$DangerousMethod()[detectSelector.ordinal()]) == 3 || i10 == 4 || i10 == 5)) {
                ReferenceBinding findSuperTypeOriginatingFrom5 = typeBinding2.findSuperTypeOriginatingFrom(59, false);
                ReferenceBinding findSuperTypeOriginatingFrom6 = typeBinding.findSuperTypeOriginatingFrom(59, false);
                if (findSuperTypeOriginatingFrom5 != null && findSuperTypeOriginatingFrom6 != null && findSuperTypeOriginatingFrom6.isParameterizedTypeWithActualArguments() && findSuperTypeOriginatingFrom5.isParameterizedTypeWithActualArguments()) {
                    return new UnlikelyArgumentCheck(detectSelector, ((ParameterizedTypeBinding) findSuperTypeOriginatingFrom6).typeArguments()[0], ((ParameterizedTypeBinding) findSuperTypeOriginatingFrom5).typeArguments()[0], findSuperTypeOriginatingFrom5);
                }
            }
            if (typeBinding2.hasTypeBit(1024) && i12 == 1 && (((i11 = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$DangerousMethod()[detectSelector.ordinal()]) == 9 || i11 == 10) && (findSuperTypeOriginatingFrom = typeBinding2.findSuperTypeOriginatingFrom(92, false)) != null && findSuperTypeOriginatingFrom.isParameterizedType())) {
                return new UnlikelyArgumentCheck(detectSelector, typeBinding, ((ParameterizedTypeBinding) findSuperTypeOriginatingFrom).typeArguments()[0], findSuperTypeOriginatingFrom);
            }
        }
        if (i12 == 1 && detectSelector == TypeConstants.DangerousMethod.Equals) {
            return new UnlikelyArgumentCheck(detectSelector, typeBinding, typeBinding2, typeBinding2);
        }
        return null;
    }

    public static UnlikelyArgumentCheck determineCheckForStaticTwoArgumentMethod(TypeBinding typeBinding, Scope scope, char[] cArr, TypeBinding typeBinding2, TypeBinding[] typeBindingArr, TypeBinding typeBinding3) {
        TypeConstants.DangerousMethod detectSelector;
        if (typeBindingArr.length != 2) {
            return null;
        }
        int i10 = typeBindingArr[0].original().f102482id;
        int i11 = typeBindingArr[1].original().f102482id;
        if (i10 == 1 && i11 == 1 && (detectSelector = TypeConstants.DangerousMethod.detectSelector(cArr)) != null && typeBinding3.f102482id == 74 && detectSelector == TypeConstants.DangerousMethod.Equals) {
            return new UnlikelyArgumentCheck(detectSelector, typeBinding, typeBinding2, typeBinding2);
        }
        return null;
    }

    public boolean isDangerous(BlockScope blockScope) {
        TypeBinding typeBinding = this.typeToCheck;
        if (typeBinding.isBaseType()) {
            typeBinding = blockScope.boxing(typeBinding);
        }
        TypeBinding typeBinding2 = this.expectedType;
        if (typeBinding2.isBaseType()) {
            typeBinding2 = blockScope.boxing(typeBinding2);
        }
        if (this.dangerousMethod != TypeConstants.DangerousMethod.Equals && blockScope.compilerOptions().reportUnlikelyCollectionMethodArgumentTypeStrict) {
            return !typeBinding.isCompatibleWith(typeBinding2, blockScope);
        }
        if (typeBinding.isCapture() || !typeBinding.isTypeVariable() || typeBinding2.isCapture() || !typeBinding2.isTypeVariable()) {
            typeBinding = typeBinding.erasure();
            typeBinding2 = typeBinding2.erasure();
        }
        return (typeBinding.isCompatibleWith(typeBinding2, blockScope) || typeBinding2.isCompatibleWith(typeBinding, blockScope)) ? false : true;
    }
}
