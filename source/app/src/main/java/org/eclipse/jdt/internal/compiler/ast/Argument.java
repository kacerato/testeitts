package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.CatchParameterBinding;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import w2.C15883c;

public class Argument extends LocalDeclaration {
    private static final char[] SET = "set".toCharArray();

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Argument(char[] cArr, long j10, TypeReference typeReference, int i10) {
        super(cArr, r0, r4);
        int i11 = (int) (j10 >>> 32);
        int i12 = (int) j10;
        this.declarationSourceEnd = i12;
        this.modifiers = i10;
        this.type = typeReference;
        if (typeReference != null) {
            this.bits |= typeReference.bits & 1048576;
        }
        this.bits |= CompilerOptions.Tasks;
    }

    public TypeBinding bind(MethodScope methodScope, TypeBinding typeBinding, boolean z10) {
        AbstractMethodDeclaration referenceMethod;
        TypeBinding createBinding = createBinding(methodScope, typeBinding);
        boolean z11 = false;
        Binding binding = methodScope.getBinding(this.name, 3, (InvocationSite) this, false);
        if (binding != null && binding.isValidBinding()) {
            if (!(binding instanceof LocalVariableBinding) || this.hiddenVariableDepth != 0) {
                if ((binding instanceof FieldBinding) && (methodScope.isInsideConstructor() || ((referenceMethod = methodScope.referenceMethod()) != null && CharOperation.prefixEquals(SET, referenceMethod.selector)))) {
                    z11 = true;
                }
                methodScope.problemReporter().localVariableHiding(this, binding, z11);
            } else if ((this.bits & 2097152) == 0 || !methodScope.isLambdaSubscope()) {
                methodScope.problemReporter().redefineArgument(this);
            } else {
                methodScope.problemReporter().lambdaRedeclaresArgument(this);
            }
        }
        methodScope.addLocalVariable(this.binding);
        this.binding.useFlag = z10 ? 1 : 0;
        return createBinding;
    }

    public TypeBinding createBinding(MethodScope methodScope, TypeBinding typeBinding) {
        AbstractMethodDeclaration referenceMethod;
        MethodBinding methodBinding;
        LocalVariableBinding localVariableBinding = this.binding;
        if (localVariableBinding == null) {
            this.binding = new LocalVariableBinding(this, typeBinding, this.modifiers, methodScope);
        } else if (!localVariableBinding.type.isValidBinding() && (referenceMethod = methodScope.referenceMethod()) != null && (methodBinding = referenceMethod.binding) != null) {
            methodBinding.tagBits |= 512;
        }
        LocalVariableBinding localVariableBinding2 = this.binding;
        if ((localVariableBinding2.tagBits & 8589934592L) == 0) {
            ASTNode.resolveAnnotations(methodScope, this.annotations, localVariableBinding2, true);
            if (methodScope.compilerOptions().sourceLevel >= ClassFileConstants.JDK1_8) {
                Annotation.isTypeUseCompatible(this.type, methodScope, this.annotations);
                methodScope.validateNullAnnotation(this.binding.tagBits, this.type, this.annotations);
            }
        }
        LocalVariableBinding localVariableBinding3 = this.binding;
        localVariableBinding3.declaration = this;
        return localVariableBinding3.type;
    }

    @Override
    public int getKind() {
        return (this.bits & 4) != 0 ? 5 : 4;
    }

    public boolean hasElidedType() {
        return (this.bits & 2) != 0;
    }

    public boolean hasNullTypeAnnotation(TypeReference.AnnotationPosition annotationPosition) {
        if (TypeReference.containsNullAnnotation(this.annotations)) {
            return true;
        }
        TypeReference typeReference = this.type;
        return typeReference != null && typeReference.hasNullTypeAnnotation(annotationPosition);
    }

    @Override
    public boolean isArgument() {
        return true;
    }

    @Override
    public boolean isRecoveredFromLoneIdentifier() {
        return false;
    }

    public boolean isVarArgs() {
        TypeReference typeReference = this.type;
        return (typeReference == null || (typeReference.bits & 16384) == 0) ? false : true;
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer);
        ASTNode.printModifiers(this.modifiers, stringBuffer);
        Annotation[] annotationArr = this.annotations;
        if (annotationArr != null) {
            ASTNode.printAnnotations(annotationArr, stringBuffer);
            stringBuffer.append(C15883c.f126249O);
        }
        TypeReference typeReference = this.type;
        if (typeReference == null) {
            stringBuffer.append("<no type> ");
        } else {
            typeReference.print(0, stringBuffer).append(C15883c.f126249O);
        }
        stringBuffer.append(this.name);
        return stringBuffer;
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        StringBuffer print = print(i10, stringBuffer);
        print.append(';');
        return print;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00d3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00d5 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TypeBinding resolveForCatch(BlockScope blockScope) {
        boolean z10;
        Binding binding;
        TypeBinding resolveType = this.type.resolveType(blockScope, true);
        if (resolveType != null) {
            int kind = resolveType.kind();
            if (kind != 260) {
                if (kind == 4100) {
                    blockScope.problemReporter().invalidTypeVariableAsException(resolveType, this);
                    z10 = true;
                }
                z10 = false;
            } else {
                if (resolveType.isBoundParameterizedType()) {
                    blockScope.problemReporter().invalidParameterizedExceptionType(resolveType, this);
                    z10 = true;
                }
                z10 = false;
            }
            if (resolveType.findSuperTypeOriginatingFrom(21, true) == null && resolveType.isValidBinding()) {
                blockScope.problemReporter().cannotThrowType(this.type, resolveType);
            }
            binding = blockScope.getBinding(this.name, 3, (InvocationSite) this, false);
            if (binding != null && binding.isValidBinding()) {
                if ((binding instanceof LocalVariableBinding) || this.hiddenVariableDepth != 0) {
                    blockScope.problemReporter().localVariableHiding(this, binding, false);
                } else {
                    blockScope.problemReporter().redefineArgument(this);
                }
            }
            if ((this.type.bits & 536870912) == 0) {
                CatchParameterBinding catchParameterBinding = new CatchParameterBinding(this, resolveType, this.modifiers | 16, false);
                this.binding = catchParameterBinding;
                catchParameterBinding.tagBits |= 4096;
            } else {
                this.binding = new CatchParameterBinding(this, resolveType, this.modifiers, false);
            }
            ASTNode.resolveAnnotations(blockScope, this.annotations, this.binding, true);
            Annotation.isTypeUseCompatible(this.type, blockScope, this.annotations);
            if (blockScope.compilerOptions().isAnnotationBasedNullAnalysisEnabled && (this.type.hasNullTypeAnnotation(TypeReference.AnnotationPosition.ANY) || TypeReference.containsNullAnnotation(this.annotations))) {
                blockScope.problemReporter().nullAnnotationUnsupportedLocation(this.type);
            }
            blockScope.addLocalVariable(this.binding);
            this.binding.setConstant(Constant.NotAConstant);
            if (z10) {
                return resolveType;
            }
            return null;
        }
        z10 = true;
        binding = blockScope.getBinding(this.name, 3, (InvocationSite) this, false);
        if (binding != null) {
            if (binding instanceof LocalVariableBinding) {
            }
            blockScope.problemReporter().localVariableHiding(this, binding, false);
        }
        if ((this.type.bits & 536870912) == 0) {
        }
        ASTNode.resolveAnnotations(blockScope, this.annotations, this.binding, true);
        Annotation.isTypeUseCompatible(this.type, blockScope, this.annotations);
        if (blockScope.compilerOptions().isAnnotationBasedNullAnalysisEnabled) {
            blockScope.problemReporter().nullAnnotationUnsupportedLocation(this.type);
        }
        blockScope.addLocalVariable(this.binding);
        this.binding.setConstant(Constant.NotAConstant);
        if (z10) {
        }
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            Annotation[] annotationArr = this.annotations;
            if (annotationArr != null) {
                int length = annotationArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    this.annotations[i10].traverse(aSTVisitor, blockScope);
                }
            }
            TypeReference typeReference = this.type;
            if (typeReference != null) {
                typeReference.traverse(aSTVisitor, blockScope);
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Argument(char[] cArr, long j10, TypeReference typeReference, int i10, boolean z10) {
        super(cArr, r8, r4);
        int i11 = (int) (j10 >>> 32);
        int i12 = (int) j10;
        this.declarationSourceEnd = i12;
        this.modifiers = i10;
        this.type = typeReference;
        if (typeReference != null) {
            this.bits |= typeReference.bits & 1048576;
        }
        this.bits |= 1073741830;
    }

    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        if (aSTVisitor.visit(this, classScope)) {
            Annotation[] annotationArr = this.annotations;
            if (annotationArr != null) {
                int length = annotationArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    this.annotations[i10].traverse(aSTVisitor, classScope);
                }
            }
            TypeReference typeReference = this.type;
            if (typeReference != null) {
                typeReference.traverse(aSTVisitor, classScope);
            }
        }
        aSTVisitor.endVisit(this, classScope);
    }
}
