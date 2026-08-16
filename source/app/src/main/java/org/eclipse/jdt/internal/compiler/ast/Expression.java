package org.eclipse.jdt.internal.compiler.ast;

import java.util.ArrayList;
import java.util.Iterator;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BaseTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.InferenceContext18;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.NullTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;
import org.eclipse.jdt.internal.compiler.problem.ShouldNotImplement;
import org.eclipse.jdt.internal.compiler.util.Messages;

public abstract class Expression extends Statement {
    public static Expression[] NO_EXPRESSIONS = new Expression[0];
    public Constant constant;
    public int implicitConversion;
    public TypeBinding resolvedType;
    public int statementEnd = -1;

    public static int computeNullStatus(int i10, int i11) {
        if ((i11 & 18) != 0) {
            i10 |= 16;
        }
        if ((i11 & 36) != 0) {
            i10 |= 32;
        }
        return (i11 & 9) != 0 ? i10 | 8 : i10;
    }

    private void getAllInheritedMethods0(ReferenceBinding referenceBinding, ArrayList<MethodBinding> arrayList) {
        if (referenceBinding.isInterface()) {
            for (MethodBinding methodBinding : referenceBinding.methods()) {
                arrayList.add(methodBinding);
            }
            for (ReferenceBinding referenceBinding2 : referenceBinding.superInterfaces()) {
                getAllInheritedMethods0(referenceBinding2, arrayList);
            }
        }
    }

    private MethodBinding[] getAllOriginalInheritedMethods(ReferenceBinding referenceBinding) {
        ArrayList<MethodBinding> arrayList = new ArrayList<>();
        getAllInheritedMethods0(referenceBinding, arrayList);
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.set(i10, arrayList.get(i10).original());
        }
        return (MethodBinding[]) arrayList.toArray(new MethodBinding[arrayList.size()]);
    }

    public static Binding getDirectBinding(Expression expression) {
        if ((expression.bits & 536870912) != 0) {
            return null;
        }
        if (expression instanceof SingleNameReference) {
            return ((SingleNameReference) expression).binding;
        }
        if (expression instanceof FieldReference) {
            FieldReference fieldReference = (FieldReference) expression;
            if (fieldReference.receiver.isThis() && !(fieldReference.receiver instanceof QualifiedThisReference)) {
                return fieldReference.binding;
            }
        } else if (expression instanceof Assignment) {
            Expression expression2 = ((Assignment) expression).lhs;
            if ((expression2.bits & 8192) != 0 || (expression instanceof PrefixExpression)) {
                return getDirectBinding(expression2);
            }
        } else if (expression instanceof QualifiedNameReference) {
            QualifiedNameReference qualifiedNameReference = (QualifiedNameReference) expression;
            if (qualifiedNameReference.indexOfFirstFieldBinding != 1 && qualifiedNameReference.otherBindings == null) {
                return qualifiedNameReference.binding;
            }
        } else if (expression.isThis()) {
            return expression.resolvedType;
        }
        return null;
    }

    public static final boolean isConstantValueRepresentable(Constant constant, int i10, int i11) {
        if (i11 == i10) {
            return true;
        }
        switch (i11) {
            case 2:
                switch (i10) {
                    case 2:
                        return true;
                    case 3:
                        return constant.byteValue() == constant.charValue();
                    case 4:
                        return constant.shortValue() == constant.charValue();
                    case 5:
                    case 6:
                    default:
                        return false;
                    case 7:
                        return constant.longValue() == ((long) constant.charValue());
                    case 8:
                        return constant.doubleValue() == ((double) constant.charValue());
                    case 9:
                        return constant.floatValue() == ((float) constant.charValue());
                    case 10:
                        return constant.intValue() == constant.charValue();
                }
            case 3:
                switch (i10) {
                    case 2:
                        return constant.charValue() == constant.byteValue();
                    case 3:
                        return true;
                    case 4:
                        return constant.shortValue() == constant.byteValue();
                    case 5:
                    case 6:
                    default:
                        return false;
                    case 7:
                        return constant.longValue() == ((long) constant.byteValue());
                    case 8:
                        return constant.doubleValue() == ((double) constant.byteValue());
                    case 9:
                        return constant.floatValue() == ((float) constant.byteValue());
                    case 10:
                        return constant.intValue() == constant.byteValue();
                }
            case 4:
                switch (i10) {
                    case 2:
                        return constant.charValue() == constant.shortValue();
                    case 3:
                        return constant.byteValue() == constant.shortValue();
                    case 4:
                        return true;
                    case 5:
                    case 6:
                    default:
                        return false;
                    case 7:
                        return constant.longValue() == ((long) constant.shortValue());
                    case 8:
                        return constant.doubleValue() == ((double) constant.shortValue());
                    case 9:
                        return constant.floatValue() == ((float) constant.shortValue());
                    case 10:
                        return constant.intValue() == constant.shortValue();
                }
            case 5:
            case 6:
            default:
                return false;
            case 7:
                switch (i10) {
                    case 2:
                        return ((long) constant.charValue()) == constant.longValue();
                    case 3:
                        return ((long) constant.byteValue()) == constant.longValue();
                    case 4:
                        return ((long) constant.shortValue()) == constant.longValue();
                    case 5:
                    case 6:
                    default:
                        return false;
                    case 7:
                        return true;
                    case 8:
                        return constant.doubleValue() == ((double) constant.longValue());
                    case 9:
                        return constant.floatValue() == ((float) constant.longValue());
                    case 10:
                        return ((long) constant.intValue()) == constant.longValue();
                }
            case 8:
                switch (i10) {
                    case 2:
                        return ((double) constant.charValue()) == constant.doubleValue();
                    case 3:
                        return ((double) constant.byteValue()) == constant.doubleValue();
                    case 4:
                        return ((double) constant.shortValue()) == constant.doubleValue();
                    case 5:
                    case 6:
                    default:
                        return false;
                    case 7:
                        return ((double) constant.longValue()) == constant.doubleValue();
                    case 8:
                        return true;
                    case 9:
                        return ((double) constant.floatValue()) == constant.doubleValue();
                    case 10:
                        return ((double) constant.intValue()) == constant.doubleValue();
                }
            case 9:
                switch (i10) {
                    case 2:
                        return ((float) constant.charValue()) == constant.floatValue();
                    case 3:
                        return ((float) constant.byteValue()) == constant.floatValue();
                    case 4:
                        return ((float) constant.shortValue()) == constant.floatValue();
                    case 5:
                    case 6:
                    default:
                        return false;
                    case 7:
                        return ((float) constant.longValue()) == constant.floatValue();
                    case 8:
                        return constant.doubleValue() == ((double) constant.floatValue());
                    case 9:
                        return true;
                    case 10:
                        return ((float) constant.intValue()) == constant.floatValue();
                }
            case 10:
                switch (i10) {
                    case 2:
                        return constant.charValue() == constant.intValue();
                    case 3:
                        return constant.byteValue() == constant.intValue();
                    case 4:
                        return constant.shortValue() == constant.intValue();
                    case 5:
                    case 6:
                    default:
                        return false;
                    case 7:
                        return constant.longValue() == ((long) constant.intValue());
                    case 8:
                        return constant.doubleValue() == ((double) constant.intValue());
                    case 9:
                        return constant.floatValue() == ((float) constant.intValue());
                    case 10:
                        return true;
                }
        }
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        return flowInfo;
    }

    public final boolean checkCastTypesCompatibility(Scope scope, TypeBinding typeBinding, TypeBinding typeBinding2, Expression expression) {
        boolean z10;
        if (typeBinding == null || typeBinding2 == null) {
            return true;
        }
        boolean z11 = scope.compilerOptions().sourceLevel >= ClassFileConstants.JDK1_5;
        boolean z12 = scope.compilerOptions().sourceLevel >= ClassFileConstants.JDK1_7;
        if (typeBinding.isBaseType()) {
            if (typeBinding2.isBaseType()) {
                if (TypeBinding.equalsEquals(typeBinding2, typeBinding)) {
                    if (expression != null) {
                        this.constant = expression.constant;
                    }
                    tagAsUnnecessaryCast(scope, typeBinding);
                    return true;
                }
                if (!typeBinding2.isCompatibleWith(typeBinding)) {
                    boolean isNarrowing = BaseTypeBinding.isNarrowing(typeBinding.f102482id, typeBinding2.f102482id);
                    z10 = isNarrowing ? isNarrowing : false;
                }
                if (expression != null) {
                    int i10 = (typeBinding.f102482id << 4) + typeBinding2.f102482id;
                    expression.implicitConversion = i10;
                    Constant constant = expression.constant;
                    if (constant != Constant.NotAConstant) {
                        this.constant = constant.castTo(i10);
                    }
                }
                if (!z10) {
                    tagAsUnnecessaryCast(scope, typeBinding);
                }
                return true;
            }
            if (z12 && typeBinding.isPrimitiveType() && (typeBinding2 instanceof ReferenceBinding) && !typeBinding2.isBoxedPrimitiveType() && checkCastTypesCompatibility(scope, scope.boxing(typeBinding), typeBinding2, expression)) {
                return true;
            }
            if (z11 && scope.environment().computeBoxingType(typeBinding2).isCompatibleWith(typeBinding)) {
                tagAsUnnecessaryCast(scope, typeBinding);
                return true;
            }
            return false;
        }
        if (z11 && typeBinding2.isBaseType() && scope.environment().computeBoxingType(typeBinding2).isCompatibleWith(typeBinding)) {
            tagAsUnnecessaryCast(scope, typeBinding);
            return true;
        }
        if (typeBinding.isIntersectionType18()) {
            for (ReferenceBinding referenceBinding : typeBinding.getIntersectingTypes()) {
                if (!checkCastTypesCompatibility(scope, referenceBinding, typeBinding2, expression)) {
                    return false;
                }
            }
            return true;
        }
        int kind = typeBinding2.kind();
        if (kind == 68) {
            if (TypeBinding.equalsEquals(typeBinding, typeBinding2)) {
                tagAsUnnecessaryCast(scope, typeBinding);
                return true;
            }
            int kind2 = typeBinding.kind();
            if (kind2 == 68) {
                TypeBinding elementsType = ((ArrayBinding) typeBinding).elementsType();
                TypeBinding elementsType2 = ((ArrayBinding) typeBinding2).elementsType();
                if (!elementsType2.isBaseType() && !elementsType.isBaseType()) {
                    return checkCastTypesCompatibility(scope, elementsType, elementsType2, expression);
                }
                if (!TypeBinding.equalsEquals(elementsType, elementsType2)) {
                    return false;
                }
                tagAsNeedCheckCast();
                return true;
            }
            if (kind2 != 4100) {
                int i11 = typeBinding.f102482id;
                if (i11 == 1) {
                    tagAsUnnecessaryCast(scope, typeBinding);
                    return true;
                }
                if (i11 != 36 && i11 != 37) {
                    return false;
                }
                tagAsNeedCheckCast();
                return true;
            }
            if (typeBinding2.findSuperTypeOriginatingFrom(typeBinding) == null) {
                checkUnsafeCast(scope, typeBinding, typeBinding2, null, true);
            }
            for (TypeBinding typeBinding3 : ((TypeVariableBinding) typeBinding).allUpperBounds()) {
                if (!checkCastTypesCompatibility(scope, typeBinding3, typeBinding2, expression)) {
                    return false;
                }
            }
            return true;
        }
        if (kind == 132) {
            if (typeBinding2 != TypeBinding.NULL) {
                return false;
            }
            tagAsUnnecessaryCast(scope, typeBinding);
            return true;
        }
        if (kind != 516) {
            if (kind == 4100) {
                TypeBinding findSuperTypeOriginatingFrom = typeBinding2.findSuperTypeOriginatingFrom(typeBinding);
                if (findSuperTypeOriginatingFrom == null) {
                    if (typeBinding instanceof TypeVariableBinding) {
                        for (TypeBinding typeBinding4 : ((TypeVariableBinding) typeBinding).allUpperBounds()) {
                            if (!checkCastTypesCompatibility(scope, typeBinding4, typeBinding2, expression)) {
                                return false;
                            }
                        }
                    } else {
                        for (TypeBinding typeBinding5 : ((TypeVariableBinding) typeBinding2).allUpperBounds()) {
                            if (!checkCastTypesCompatibility(scope, typeBinding, typeBinding5, expression)) {
                                return false;
                            }
                        }
                    }
                }
                return checkUnsafeCast(scope, typeBinding, typeBinding2, findSuperTypeOriginatingFrom, findSuperTypeOriginatingFrom == null);
            }
            if (kind != 8196) {
                if (kind == 32772) {
                    for (ReferenceBinding referenceBinding2 : typeBinding2.getIntersectingTypes()) {
                        if (checkCastTypesCompatibility(scope, typeBinding, referenceBinding2, expression)) {
                            return true;
                        }
                    }
                    return false;
                }
                if (!typeBinding2.isInterface()) {
                    int kind3 = typeBinding.kind();
                    if (kind3 == 68) {
                        if (typeBinding2.f102482id != 1) {
                            return false;
                        }
                        if (z11) {
                            checkUnsafeCast(scope, typeBinding, typeBinding2, typeBinding2, true);
                        }
                        tagAsNeedCheckCast();
                        return true;
                    }
                    if (kind3 == 4100) {
                        if (typeBinding2.findSuperTypeOriginatingFrom(typeBinding) == null) {
                            checkUnsafeCast(scope, typeBinding, typeBinding2, null, true);
                        }
                        for (TypeBinding typeBinding6 : ((TypeVariableBinding) typeBinding).allUpperBounds()) {
                            if (!checkCastTypesCompatibility(scope, typeBinding6, typeBinding2, expression)) {
                                return false;
                            }
                        }
                        return true;
                    }
                    if (!typeBinding.isInterface()) {
                        TypeBinding findSuperTypeOriginatingFrom2 = typeBinding2.findSuperTypeOriginatingFrom(typeBinding);
                        if (findSuperTypeOriginatingFrom2 != null) {
                            if (expression != null && typeBinding.f102482id == 11) {
                                this.constant = expression.constant;
                            }
                            return checkUnsafeCast(scope, typeBinding, typeBinding2, findSuperTypeOriginatingFrom2, false);
                        }
                        TypeBinding findSuperTypeOriginatingFrom3 = typeBinding.findSuperTypeOriginatingFrom(typeBinding2);
                        if (findSuperTypeOriginatingFrom3 == null) {
                            return false;
                        }
                        tagAsNeedCheckCast();
                        return checkUnsafeCast(scope, typeBinding, typeBinding2, findSuperTypeOriginatingFrom3, true);
                    }
                    ReferenceBinding referenceBinding3 = (ReferenceBinding) typeBinding2;
                    TypeBinding findSuperTypeOriginatingFrom4 = referenceBinding3.findSuperTypeOriginatingFrom(typeBinding);
                    if (findSuperTypeOriginatingFrom4 != null) {
                        return checkUnsafeCast(scope, typeBinding, typeBinding2, findSuperTypeOriginatingFrom4, false);
                    }
                    if (referenceBinding3.isFinal()) {
                        return false;
                    }
                    tagAsNeedCheckCast();
                    TypeBinding findSuperTypeOriginatingFrom5 = typeBinding.findSuperTypeOriginatingFrom(typeBinding2);
                    if (findSuperTypeOriginatingFrom5 != null) {
                        return checkUnsafeCast(scope, typeBinding, typeBinding2, findSuperTypeOriginatingFrom5, true);
                    }
                    if (z11) {
                        checkUnsafeCast(scope, typeBinding, typeBinding2, null, true);
                        if (scope.compilerOptions().complianceLevel >= ClassFileConstants.JDK1_7) {
                            if (!typeBinding.isRawType() && referenceBinding3.hasIncompatibleSuperType((ReferenceBinding) typeBinding)) {
                                return false;
                            }
                        } else if (referenceBinding3.hasIncompatibleSuperType((ReferenceBinding) typeBinding)) {
                            return false;
                        }
                    }
                    return true;
                }
                int kind4 = typeBinding.kind();
                if (kind4 == 68) {
                    int i12 = typeBinding2.f102482id;
                    if (i12 != 36 && i12 != 37) {
                        return false;
                    }
                    tagAsNeedCheckCast();
                    return true;
                }
                if (kind4 == 4100) {
                    if (typeBinding2.findSuperTypeOriginatingFrom(typeBinding) == null) {
                        checkUnsafeCast(scope, typeBinding, typeBinding2, null, true);
                    }
                    for (TypeBinding typeBinding7 : ((TypeVariableBinding) typeBinding).allUpperBounds()) {
                        if (!checkCastTypesCompatibility(scope, typeBinding7, typeBinding2, expression)) {
                            return false;
                        }
                    }
                    return true;
                }
                if (!typeBinding.isInterface()) {
                    if (typeBinding.f102482id == 1) {
                        tagAsUnnecessaryCast(scope, typeBinding);
                        return true;
                    }
                    tagAsNeedCheckCast();
                    TypeBinding findSuperTypeOriginatingFrom6 = typeBinding.findSuperTypeOriginatingFrom(typeBinding2);
                    if (findSuperTypeOriginatingFrom6 != null) {
                        return checkUnsafeCast(scope, typeBinding, typeBinding2, findSuperTypeOriginatingFrom6, true);
                    }
                    ReferenceBinding referenceBinding4 = (ReferenceBinding) typeBinding;
                    if (referenceBinding4.isFinal()) {
                        return false;
                    }
                    if (z11) {
                        checkUnsafeCast(scope, typeBinding, typeBinding2, null, true);
                        if (scope.compilerOptions().complianceLevel >= ClassFileConstants.JDK1_7) {
                            if (!typeBinding.isRawType() && referenceBinding4.hasIncompatibleSuperType((ReferenceBinding) typeBinding2)) {
                                return false;
                            }
                        } else if (referenceBinding4.hasIncompatibleSuperType((ReferenceBinding) typeBinding2)) {
                            return false;
                        }
                    }
                    return true;
                }
                ReferenceBinding referenceBinding5 = (ReferenceBinding) typeBinding2;
                TypeBinding findSuperTypeOriginatingFrom7 = referenceBinding5.findSuperTypeOriginatingFrom(typeBinding);
                if (findSuperTypeOriginatingFrom7 != null) {
                    return checkUnsafeCast(scope, typeBinding, referenceBinding5, findSuperTypeOriginatingFrom7, false);
                }
                tagAsNeedCheckCast();
                TypeBinding findSuperTypeOriginatingFrom8 = typeBinding.findSuperTypeOriginatingFrom(referenceBinding5);
                if (findSuperTypeOriginatingFrom8 != null) {
                    return checkUnsafeCast(scope, typeBinding, referenceBinding5, findSuperTypeOriginatingFrom8, true);
                }
                if (z11) {
                    checkUnsafeCast(scope, typeBinding, typeBinding2, null, true);
                    if (scope.compilerOptions().complianceLevel >= ClassFileConstants.JDK1_7) {
                        if (!typeBinding.isRawType() && referenceBinding5.hasIncompatibleSuperType((ReferenceBinding) typeBinding)) {
                            return false;
                        }
                    } else if (referenceBinding5.hasIncompatibleSuperType((ReferenceBinding) typeBinding)) {
                        return false;
                    }
                } else {
                    MethodBinding[] allOriginalInheritedMethods = getAllOriginalInheritedMethods((ReferenceBinding) typeBinding);
                    MethodBinding[] allOriginalInheritedMethods2 = getAllOriginalInheritedMethods(referenceBinding5);
                    int length = allOriginalInheritedMethods2.length;
                    int length2 = allOriginalInheritedMethods.length;
                    for (int i13 = 0; i13 < length2; i13++) {
                        for (int i14 = 0; i14 < length; i14++) {
                            if (TypeBinding.notEquals(allOriginalInheritedMethods[i13].returnType, allOriginalInheritedMethods2[i14].returnType) && CharOperation.equals(allOriginalInheritedMethods[i13].selector, allOriginalInheritedMethods2[i14].selector) && allOriginalInheritedMethods[i13].areParametersEqual(allOriginalInheritedMethods2[i14])) {
                                return false;
                            }
                        }
                    }
                }
                return true;
            }
        }
        TypeBinding findSuperTypeOriginatingFrom9 = typeBinding2.findSuperTypeOriginatingFrom(typeBinding);
        if (findSuperTypeOriginatingFrom9 != null) {
            return checkUnsafeCast(scope, typeBinding, typeBinding2, findSuperTypeOriginatingFrom9, false);
        }
        TypeBinding typeBinding8 = ((WildcardBinding) typeBinding2).bound;
        if (typeBinding8 == null) {
            typeBinding8 = scope.getJavaLangObject();
        }
        return checkCastTypesCompatibility(scope, typeBinding, typeBinding8, expression);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0058 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean checkNPE(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, int i10) {
        boolean z10;
        LocalVariableBinding localVariableBinding;
        TypeBinding typeBinding = this.resolvedType;
        if (typeBinding != null) {
            long j10 = typeBinding.tagBits;
            if ((72057594037927936L & j10) != 0) {
                return true;
            }
            if ((j10 & 36028797018963968L) != 0) {
                z10 = true;
                localVariableBinding = localVariableBinding();
                if (localVariableBinding != null || (localVariableBinding.type.tagBits & 2) != 0) {
                    if (z10) {
                        return false;
                    }
                    blockScope.problemReporter().dereferencingNullableExpression(this);
                    return true;
                }
                if ((this.bits & 131072) == 0) {
                    flowContext.recordUsingNullReference(blockScope, localVariableBinding, this, 3, flowInfo);
                    if (!flowInfo.isDefinitelyNonNull(localVariableBinding)) {
                        flowContext.recordAbruptExit();
                    }
                }
                flowInfo.markAsComparedEqualToNonNull(localVariableBinding);
                flowContext.markFinallyNullStatus(localVariableBinding, 4);
                return true;
            }
        }
        z10 = false;
        localVariableBinding = localVariableBinding();
        if (localVariableBinding != null) {
        }
        if (z10) {
        }
    }

    public void checkNPEbyUnboxing(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        int nullStatus;
        if ((this.implicitConversion & 1024) == 0 || (this.bits & 131072) != 0 || (nullStatus = nullStatus(flowInfo, flowContext)) == 4) {
            return;
        }
        flowContext.recordUnboxing(blockScope, this, nullStatus, flowInfo);
    }

    public boolean checkUnsafeCast(Scope scope, TypeBinding typeBinding, TypeBinding typeBinding2, TypeBinding typeBinding3, boolean z10) {
        if (TypeBinding.equalsEquals(typeBinding3, typeBinding)) {
            if (!z10) {
                tagAsUnnecessaryCast(scope, typeBinding);
            }
            return true;
        }
        if (typeBinding3 != null && (!typeBinding.isReifiable() || !typeBinding2.isReifiable())) {
            if (z10) {
                if (typeBinding3.isProvablyDistinct(typeBinding2)) {
                    return false;
                }
            } else if (typeBinding.isProvablyDistinct(typeBinding3)) {
                return false;
            }
        }
        if (!z10) {
            tagAsUnnecessaryCast(scope, typeBinding);
        }
        return true;
    }

    public void computeConversion(Scope scope, TypeBinding typeBinding, TypeBinding typeBinding2) {
        if (typeBinding == null || typeBinding2 == null || this.implicitConversion != 0) {
            return;
        }
        NullTypeBinding nullTypeBinding = TypeBinding.NULL;
        if (typeBinding == nullTypeBinding || !typeBinding.isBaseType()) {
            if (typeBinding2 != nullTypeBinding && typeBinding2.isBaseType()) {
                TypeBinding computeBoxingType = scope.environment().computeBoxingType(typeBinding);
                if (TypeBinding.equalsEquals(computeBoxingType, typeBinding)) {
                    computeBoxingType = typeBinding2;
                }
                if (computeBoxingType.f102482id > 33) {
                    computeBoxingType = typeBinding2;
                }
                this.implicitConversion = ((computeBoxingType.f102482id << 4) + typeBinding2.f102482id) | 512;
                scope.problemReporter().autoboxing(this, typeBinding2, scope.environment().computeBoxingType(computeBoxingType));
                return;
            }
            Constant constant = this.constant;
            if (constant != Constant.NotAConstant && constant.typeID() != 11) {
                this.implicitConversion = 512;
                return;
            }
        } else if (!typeBinding2.isBaseType()) {
            TypeBinding computeBoxingType2 = scope.environment().computeBoxingType(typeBinding2);
            this.implicitConversion = 1024;
            scope.problemReporter().autoboxing(this, typeBinding2, typeBinding);
            typeBinding2 = computeBoxingType2;
        }
        int i10 = typeBinding2.f102482id;
        if (i10 >= 128) {
            i10 = typeBinding2.erasure().f102482id != 11 ? 1 : 11;
        } else if (typeBinding.isPrimitiveType() && (typeBinding2 instanceof ReferenceBinding) && !typeBinding2.isBoxedPrimitiveType()) {
            i10 = 1;
        }
        int i11 = typeBinding.f102482id;
        switch (i11) {
            case 2:
            case 3:
            case 4:
                if (i10 == 1) {
                    this.implicitConversion |= (i11 << 4) + i10;
                    return;
                } else {
                    this.implicitConversion = (i10 + 160) | this.implicitConversion;
                    return;
                }
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                this.implicitConversion |= (i11 << 4) + i10;
                return;
            case 6:
            default:
                return;
        }
    }

    public boolean forcedToBeRaw(ReferenceContext referenceContext) {
        if (this instanceof NameReference) {
            Binding binding = ((NameReference) this).binding;
            if (binding.isParameter() && (((LocalVariableBinding) binding).tagBits & 512) != 0) {
                return true;
            }
            if (!(binding instanceof FieldBinding)) {
                return false;
            }
            FieldBinding fieldBinding = (FieldBinding) binding;
            if (!fieldBinding.type.isRawType()) {
                return false;
            }
            if (!(referenceContext instanceof AbstractMethodDeclaration)) {
                return (referenceContext instanceof TypeDeclaration) && TypeBinding.notEquals(fieldBinding.declaringClass, ((TypeDeclaration) referenceContext).binding);
            }
            AbstractMethodDeclaration abstractMethodDeclaration = (AbstractMethodDeclaration) referenceContext;
            MethodBinding methodBinding = abstractMethodDeclaration.binding;
            return TypeBinding.notEquals(fieldBinding.declaringClass, methodBinding != null ? methodBinding.declaringClass : abstractMethodDeclaration.scope.enclosingReceiverType());
        }
        if (this instanceof MessageSend) {
            return !CharOperation.equals(((MessageSend) this).binding.declaringClass.getFileName(), referenceContext.compilationResult().getFileName());
        }
        if (this instanceof FieldReference) {
            FieldBinding fieldBinding2 = ((FieldReference) this).binding;
            if (!CharOperation.equals(fieldBinding2.declaringClass.getFileName(), referenceContext.compilationResult().getFileName())) {
                return true;
            }
            if (fieldBinding2.type.isRawType()) {
                return referenceContext instanceof AbstractMethodDeclaration ? TypeBinding.notEquals(fieldBinding2.declaringClass, ((AbstractMethodDeclaration) referenceContext).binding.declaringClass) : (referenceContext instanceof TypeDeclaration) && TypeBinding.notEquals(fieldBinding2.declaringClass, ((TypeDeclaration) referenceContext).binding);
            }
            return false;
        }
        if (this instanceof ConditionalExpression) {
            ConditionalExpression conditionalExpression = (ConditionalExpression) this;
            return conditionalExpression.valueIfTrue.forcedToBeRaw(referenceContext) || conditionalExpression.valueIfFalse.forcedToBeRaw(referenceContext);
        }
        if (!(this instanceof SwitchExpression)) {
            return false;
        }
        Iterator<Expression> it = ((SwitchExpression) this).resultExpressions.iterator();
        while (it.hasNext()) {
            if (it.next().forcedToBeRaw(referenceContext)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream) {
        if ((this.bits & Integer.MIN_VALUE) == 0) {
            return;
        }
        generateCode(blockScope, codeStream, false);
    }

    public void generateOptimizedBoolean(BlockScope blockScope, CodeStream codeStream, BranchLabel branchLabel, BranchLabel branchLabel2, boolean z10) {
        Constant optimizedBooleanConstant = optimizedBooleanConstant();
        generateCode(blockScope, codeStream, z10 && optimizedBooleanConstant == Constant.NotAConstant);
        if (optimizedBooleanConstant == Constant.NotAConstant || optimizedBooleanConstant.typeID() != 5) {
            int i10 = codeStream.position;
            if (z10) {
                if (branchLabel2 == null) {
                    if (branchLabel != null) {
                        codeStream.ifne(branchLabel);
                    }
                } else if (branchLabel == null) {
                    codeStream.ifeq(branchLabel2);
                }
            }
            codeStream.recordPositionsFrom(i10, this.sourceEnd);
            return;
        }
        int i11 = codeStream.position;
        if (optimizedBooleanConstant.booleanValue()) {
            if (z10 && branchLabel2 == null && branchLabel != null) {
                codeStream.goto_(branchLabel);
            }
        } else if (z10 && branchLabel2 != null && branchLabel == null) {
            codeStream.goto_(branchLabel2);
        }
        codeStream.recordPositionsFrom(i11, this.sourceStart);
    }

    public void generateOptimizedStringConcatenation(BlockScope blockScope, CodeStream codeStream, int i10) {
        Constant constant;
        if (i10 == 11 && (constant = this.constant) != Constant.NotAConstant && constant.stringValue().length() == 0) {
            return;
        }
        generateCode(blockScope, codeStream, true);
        codeStream.invokeStringConcatenationAppendForType(i10);
    }

    public void generateOptimizedStringConcatenationCreation(BlockScope blockScope, CodeStream codeStream, int i10) {
        codeStream.newStringContatenation();
        codeStream.dup();
        if (i10 == 0 || i10 == 1) {
            codeStream.invokeStringConcatenationDefaultConstructor();
            generateCode(blockScope, codeStream, true);
            codeStream.invokeStringConcatenationAppendForType(1);
            return;
        }
        if (i10 == 11 || i10 == 12) {
            Constant constant = this.constant;
            if (constant != Constant.NotAConstant) {
                String stringValue = constant.stringValue();
                if (stringValue.length() == 0) {
                    codeStream.invokeStringConcatenationDefaultConstructor();
                    return;
                }
                codeStream.ldc(stringValue);
            } else {
                generateCode(blockScope, codeStream, true);
                codeStream.invokeStringValueOf(1);
            }
        } else {
            generateCode(blockScope, codeStream, true);
            codeStream.invokeStringValueOf(i10);
        }
        codeStream.invokeStringConcatenationStringConstructor();
    }

    public Expression[] getPolyExpressions() {
        return isPolyExpression() ? new Expression[]{this} : NO_EXPRESSIONS;
    }

    public boolean isBoxingCompatibleWith(TypeBinding typeBinding, Scope scope) {
        TypeBinding typeBinding2 = this.resolvedType;
        return typeBinding2 != null && isBoxingCompatible(typeBinding2, typeBinding, this, scope);
    }

    public boolean isCompactableOperation() {
        return false;
    }

    public boolean isCompatibleWith(TypeBinding typeBinding, Scope scope) {
        TypeBinding typeBinding2 = this.resolvedType;
        return typeBinding2 != null && typeBinding2.isCompatibleWith(typeBinding, scope);
    }

    public boolean isConstantValueOfTypeAssignableToType(TypeBinding typeBinding, TypeBinding typeBinding2) {
        if (this.constant == Constant.NotAConstant) {
            return false;
        }
        if (TypeBinding.equalsEquals(typeBinding, typeBinding2)) {
            return true;
        }
        if (BaseTypeBinding.isWidening(10, typeBinding.f102482id) && BaseTypeBinding.isNarrowing(typeBinding2.f102482id, 10)) {
            return isConstantValueRepresentable(this.constant, typeBinding.f102482id, typeBinding2.f102482id);
        }
        return false;
    }

    public boolean isExactMethodReference() {
        return false;
    }

    public boolean isFunctionalType() {
        return false;
    }

    public boolean isPertinentToApplicability(TypeBinding typeBinding, MethodBinding methodBinding) {
        return true;
    }

    public boolean isPolyExpression() throws UnsupportedOperationException {
        return false;
    }

    public boolean isPotentiallyCompatibleWith(TypeBinding typeBinding, Scope scope) {
        return isCompatibleWith(typeBinding, scope);
    }

    public boolean isTrulyExpression() {
        return true;
    }

    public boolean isTypeReference() {
        return false;
    }

    public LocalVariableBinding localVariableBinding() {
        return null;
    }

    public void markAsNonNull() {
        this.bits |= 131072;
    }

    public VariableBinding nullAnnotatedVariableBinding(boolean z10) {
        return null;
    }

    public int nullStatus(FlowInfo flowInfo, FlowContext flowContext) {
        return 4;
    }

    public Constant optimizedBooleanConstant() {
        return this.constant;
    }

    public TypeBinding postConversionType(Scope scope) {
        TypeBinding typeBinding = this.resolvedType;
        int i10 = this.implicitConversion;
        switch ((i10 & 255) >> 4) {
            case 2:
                typeBinding = TypeBinding.CHAR;
                break;
            case 3:
                typeBinding = TypeBinding.BYTE;
                break;
            case 4:
                typeBinding = TypeBinding.SHORT;
                break;
            case 5:
                typeBinding = TypeBinding.BOOLEAN;
                break;
            case 7:
                typeBinding = TypeBinding.LONG;
                break;
            case 8:
                typeBinding = TypeBinding.DOUBLE;
                break;
            case 9:
                typeBinding = TypeBinding.FLOAT;
                break;
            case 10:
                typeBinding = TypeBinding.INT;
                break;
        }
        return (i10 & 512) != 0 ? scope.environment().computeBoxingType(typeBinding) : typeBinding;
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer);
        return printExpression(i10, stringBuffer);
    }

    public abstract StringBuffer printExpression(int i10, StringBuffer stringBuffer);

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        StringBuffer print = print(i10, stringBuffer);
        print.append(";");
        return print;
    }

    @Override
    public void resolve(BlockScope blockScope) {
        resolveType(blockScope);
    }

    public Expression resolveExpressionExpecting(TypeBinding typeBinding, Scope scope, InferenceContext18 inferenceContext18) {
        return this;
    }

    @Override
    public TypeBinding resolveExpressionType(BlockScope blockScope) {
        return resolveType(blockScope);
    }

    public TypeBinding resolveType(BlockScope blockScope) {
        return null;
    }

    public TypeBinding resolveTypeExpecting(BlockScope blockScope, TypeBinding typeBinding) {
        setExpectedType(typeBinding);
        TypeBinding resolveType = resolveType(blockScope);
        if (resolveType == null) {
            return null;
        }
        if (!TypeBinding.equalsEquals(resolveType, typeBinding) && !resolveType.isCompatibleWith(typeBinding)) {
            if (!blockScope.isBoxingCompatibleWith(resolveType, typeBinding)) {
                blockScope.problemReporter().typeMismatchError(resolveType, typeBinding, this, (ASTNode) null);
                return null;
            }
            computeConversion(blockScope, typeBinding, resolveType);
        }
        return resolveType;
    }

    public Object reusableJSRTarget() {
        Constant constant = this.constant;
        if (constant == Constant.NotAConstant || (this.implicitConversion & 512) != 0) {
            return null;
        }
        return constant;
    }

    public boolean sIsMoreSpecific(TypeBinding typeBinding, TypeBinding typeBinding2, Scope scope) {
        return typeBinding.isCompatibleWith(typeBinding2, scope);
    }

    public void setExpectedType(TypeBinding typeBinding) {
    }

    public void setExpressionContext(ExpressionContext expressionContext) {
    }

    public boolean statementExpression() {
        return false;
    }

    public void tagAsNeedCheckCast() {
    }

    public void tagAsUnnecessaryCast(Scope scope, TypeBinding typeBinding) {
    }

    public Expression toTypeReference() {
        return this;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
    }

    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, boolean z10) {
        return analyseCode(blockScope, flowContext, flowInfo);
    }

    public boolean isPolyExpression(MethodBinding methodBinding) {
        return false;
    }

    public TypeBinding resolveType(ClassScope classScope) {
        return null;
    }

    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
    }

    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        Constant constant = this.constant;
        if (constant != Constant.NotAConstant) {
            int i10 = codeStream.position;
            codeStream.generateConstant(constant, this.implicitConversion);
            codeStream.recordPositionsFrom(i10, this.sourceStart);
            return;
        }
        throw new ShouldNotImplement(Messages.ast_missingCode);
    }

    public boolean checkNPE(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        return checkNPE(blockScope, flowContext, flowInfo, 0);
    }
}
