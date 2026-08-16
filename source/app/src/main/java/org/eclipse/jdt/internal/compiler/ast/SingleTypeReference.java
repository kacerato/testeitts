package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import w2.C15883c;

public class SingleTypeReference extends TypeReference {
    public char[] token;

    public SingleTypeReference(char[] cArr, long j10) {
        this.token = cArr;
        this.sourceStart = (int) (j10 >>> 32);
        this.sourceEnd = (int) (j10 & 4294967295L);
    }

    @Override
    public TypeReference augmentTypeWithAdditionalDimensions(int i10, Annotation[][] annotationArr, boolean z10) {
        ArrayTypeReference arrayTypeReference = new ArrayTypeReference(this.token, dimensions() + i10, getMergedAnnotationsOnDimensions(i10, annotationArr), this.sourceEnd + (this.sourceStart << 32));
        arrayTypeReference.annotations = this.annotations;
        arrayTypeReference.bits |= this.bits & 1048576;
        if (!z10) {
            arrayTypeReference.extendedDimensions = i10;
        }
        return arrayTypeReference;
    }

    @Override
    public char[] getLastToken() {
        return this.token;
    }

    @Override
    public TypeBinding getTypeBinding(Scope scope) {
        TypeBinding typeBinding = this.resolvedType;
        if (typeBinding != null) {
            return typeBinding;
        }
        TypeBinding type = scope.getType(this.token);
        this.resolvedType = type;
        if (type instanceof TypeVariableBinding) {
            Binding binding = ((TypeVariableBinding) type).declaringElement;
            if (binding instanceof SourceTypeBinding) {
                scope.tagAsAccessingEnclosingInstanceStateOf((ReferenceBinding) binding, true);
            }
        } else if (type instanceof LocalTypeBinding) {
            LocalTypeBinding localTypeBinding = (LocalTypeBinding) type;
            MethodScope methodScope = scope.methodScope();
            if (methodScope != null && !methodScope.isStatic) {
                methodScope.tagAsAccessingEnclosingInstanceStateOf(localTypeBinding, false);
            }
        }
        if (scope.kind == 3 && this.resolvedType.isValidBinding() && ((ClassScope) scope).detectHierarchyCycle(this.resolvedType, this)) {
            return null;
        }
        return this.resolvedType;
    }

    @Override
    public char[][] getTypeName() {
        return new char[][]{this.token};
    }

    @Override
    public boolean isBaseTypeReference() {
        char[] cArr = this.token;
        return cArr == TypeConstants.BYTE || cArr == TypeConstants.SHORT || cArr == TypeConstants.INT || cArr == TypeConstants.LONG || cArr == TypeConstants.FLOAT || cArr == TypeConstants.DOUBLE || cArr == TypeConstants.CHAR || cArr == TypeConstants.BOOLEAN || cArr == TypeConstants.NULL || cArr == TypeConstants.VOID;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        Annotation[] annotationArr;
        Annotation[][] annotationArr2 = this.annotations;
        if (annotationArr2 != null && (annotationArr = annotationArr2[0]) != null) {
            ASTNode.printAnnotations(annotationArr, stringBuffer);
            stringBuffer.append(C15883c.f126249O);
        }
        stringBuffer.append(this.token);
        return stringBuffer;
    }

    public TypeBinding resolveTypeEnclosing(BlockScope blockScope, ReferenceBinding referenceBinding) {
        boolean z10;
        this.resolvedType = blockScope.getMemberType(this.token, referenceBinding);
        resolveAnnotations(blockScope, 0);
        TypeBinding typeBinding = this.resolvedType;
        if (typeBinding.isValidBinding()) {
            z10 = false;
        } else {
            blockScope.problemReporter().invalidEnclosingType(this, typeBinding, referenceBinding);
            typeBinding = ((ReferenceBinding) typeBinding).closestMatch();
            if (typeBinding == null) {
                return null;
            }
            z10 = true;
        }
        if (isTypeUseDeprecated(typeBinding, blockScope)) {
            reportDeprecatedType(typeBinding, blockScope);
        }
        TypeBinding convertToRawType = blockScope.environment().convertToRawType(typeBinding, false);
        if (convertToRawType.isRawType() && (this.bits & 1073741824) == 0 && blockScope.compilerOptions().getSeverity(CompilerOptions.RawTypeReference) != 256) {
            blockScope.problemReporter().rawTypeReference(this, convertToRawType);
        }
        if (z10) {
            return convertToRawType;
        }
        this.resolvedType = convertToRawType;
        return convertToRawType;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        Annotation[][] annotationArr;
        if (aSTVisitor.visit(this, blockScope) && (annotationArr = this.annotations) != null) {
            Annotation[] annotationArr2 = annotationArr[0];
            int length = annotationArr2 == null ? 0 : annotationArr2.length;
            for (int i10 = 0; i10 < length; i10++) {
                annotationArr2[i10].traverse(aSTVisitor, blockScope);
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        Annotation[][] annotationArr;
        if (aSTVisitor.visit(this, classScope) && (annotationArr = this.annotations) != null) {
            Annotation[] annotationArr2 = annotationArr[0];
            int length = annotationArr2 == null ? 0 : annotationArr2.length;
            for (int i10 = 0; i10 < length; i10++) {
                annotationArr2[i10].traverse(aSTVisitor, classScope);
            }
        }
        aSTVisitor.endVisit(this, classScope);
    }
}
