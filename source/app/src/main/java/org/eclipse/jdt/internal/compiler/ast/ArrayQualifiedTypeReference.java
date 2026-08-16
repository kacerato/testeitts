package org.eclipse.jdt.internal.compiler.ast;

import okhttp3.v;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.core.JavaElement;
import w2.C15883c;

public class ArrayQualifiedTypeReference extends QualifiedTypeReference {
    private Annotation[][] annotationsOnDimensions;
    int dimensions;
    public int extendedDimensions;

    public ArrayQualifiedTypeReference(char[][] cArr, int i10, long[] jArr) {
        super(cArr, jArr);
        this.dimensions = i10;
        this.annotationsOnDimensions = null;
    }

    @Override
    public int dimensions() {
        return this.dimensions;
    }

    @Override
    public int extraDimensions() {
        return this.extendedDimensions;
    }

    @Override
    public Annotation[][] getAnnotationsOnDimensions(boolean z10) {
        Annotation[][] annotationArr;
        int i10;
        int i11;
        if (z10 || (annotationArr = this.annotationsOnDimensions) == null || annotationArr.length == 0 || (i10 = this.extendedDimensions) == 0 || i10 == (i11 = this.dimensions)) {
            return this.annotationsOnDimensions;
        }
        Annotation[][] annotationArr2 = new Annotation[i11];
        int i12 = i11 - i10;
        System.arraycopy(annotationArr, i12, annotationArr2, 0, i10);
        System.arraycopy(this.annotationsOnDimensions, 0, annotationArr2, this.extendedDimensions, i12);
        return annotationArr2;
    }

    @Override
    public char[][] getParameterizedTypeName() {
        int i10 = this.dimensions;
        char[] cArr = new char[i10 * 2];
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = i11 * 2;
            cArr[i12] = '[';
            cArr[i12 + 1] = JavaElement.JEM_TYPE_PARAMETER;
        }
        char[][] cArr2 = this.tokens;
        int length = cArr2.length;
        char[][] cArr3 = new char[length];
        int i13 = length - 1;
        System.arraycopy(cArr2, 0, cArr3, 0, i13);
        cArr3[i13] = CharOperation.concat(this.tokens[i13], cArr);
        return cArr3;
    }

    @Override
    public TypeBinding getTypeBinding(Scope scope) {
        TypeBinding typeBinding = this.resolvedType;
        if (typeBinding != null) {
            return typeBinding;
        }
        if (this.dimensions > 255) {
            scope.problemReporter().tooManyDimensions(this);
        }
        LookupEnvironment environment = scope.environment();
        try {
            try {
                environment.missingClassFileLocation = this;
                TypeBinding typeBinding2 = super.getTypeBinding(scope);
                if (typeBinding2 == null) {
                    return null;
                }
                ArrayBinding createArrayType = scope.createArrayType(typeBinding2, this.dimensions);
                this.resolvedType = createArrayType;
                return createArrayType;
            } catch (AbortCompilation e10) {
                e10.updateContext(this, scope.referenceCompilationUnit().compilationResult);
                throw e10;
            }
        } finally {
            environment.missingClassFileLocation = null;
        }
    }

    @Override
    public TypeBinding internalResolveType(Scope scope, int i10) {
        return ArrayTypeReference.maybeMarkArrayContentsNonNull(scope, super.internalResolveType(scope, i10), this.sourceStart, this.dimensions, null);
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        int i11;
        super.printExpression(i10, stringBuffer);
        int i12 = 0;
        if ((this.bits & 16384) != 0) {
            while (true) {
                i11 = this.dimensions;
                if (i12 >= i11 - 1) {
                    break;
                }
                Annotation[][] annotationArr = this.annotationsOnDimensions;
                if (annotationArr != null && annotationArr[i12] != null) {
                    stringBuffer.append(C15883c.f126249O);
                    ASTNode.printAnnotations(this.annotationsOnDimensions[i12], stringBuffer);
                    stringBuffer.append(C15883c.f126249O);
                }
                stringBuffer.append(v.f99450n);
                i12++;
            }
            Annotation[][] annotationArr2 = this.annotationsOnDimensions;
            if (annotationArr2 != null && annotationArr2[i11 - 1] != null) {
                stringBuffer.append(C15883c.f126249O);
                ASTNode.printAnnotations(this.annotationsOnDimensions[this.dimensions - 1], stringBuffer);
                stringBuffer.append(C15883c.f126249O);
            }
            stringBuffer.append("...");
        } else {
            while (i12 < this.dimensions) {
                Annotation[][] annotationArr3 = this.annotationsOnDimensions;
                if (annotationArr3 != null && annotationArr3[i12] != null) {
                    stringBuffer.append(" ");
                    ASTNode.printAnnotations(this.annotationsOnDimensions[i12], stringBuffer);
                    stringBuffer.append(" ");
                }
                stringBuffer.append(v.f99450n);
                i12++;
            }
        }
        return stringBuffer;
    }

    @Override
    public void setAnnotationsOnDimensions(Annotation[][] annotationArr) {
        this.annotationsOnDimensions = annotationArr;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            Annotation[][] annotationArr = this.annotations;
            if (annotationArr != null) {
                int length = annotationArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    Annotation[] annotationArr2 = this.annotations[i10];
                    int length2 = annotationArr2 == null ? 0 : annotationArr2.length;
                    for (int i11 = 0; i11 < length2; i11++) {
                        this.annotations[i10][i11].traverse(aSTVisitor, blockScope);
                    }
                }
            }
            Annotation[][] annotationArr3 = this.annotationsOnDimensions;
            if (annotationArr3 != null) {
                int length3 = annotationArr3.length;
                for (int i12 = 0; i12 < length3; i12++) {
                    Annotation[] annotationArr4 = this.annotationsOnDimensions[i12];
                    int length4 = annotationArr4 == null ? 0 : annotationArr4.length;
                    for (int i13 = 0; i13 < length4; i13++) {
                        annotationArr4[i13].traverse(aSTVisitor, blockScope);
                    }
                }
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    public ArrayQualifiedTypeReference(char[][] cArr, int i10, Annotation[][] annotationArr, long[] jArr) {
        this(cArr, i10, jArr);
        this.annotationsOnDimensions = annotationArr;
        if (annotationArr != null) {
            this.bits |= 1048576;
        }
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        if (aSTVisitor.visit(this, classScope)) {
            Annotation[][] annotationArr = this.annotations;
            if (annotationArr != null) {
                int length = annotationArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    Annotation[] annotationArr2 = this.annotations[i10];
                    int length2 = annotationArr2 == null ? 0 : annotationArr2.length;
                    for (int i11 = 0; i11 < length2; i11++) {
                        this.annotations[i10][i11].traverse(aSTVisitor, classScope);
                    }
                }
            }
            Annotation[][] annotationArr3 = this.annotationsOnDimensions;
            if (annotationArr3 != null) {
                int length3 = annotationArr3.length;
                for (int i12 = 0; i12 < length3; i12++) {
                    Annotation[] annotationArr4 = this.annotationsOnDimensions[i12];
                    int length4 = annotationArr4 == null ? 0 : annotationArr4.length;
                    for (int i13 = 0; i13 < length4; i13++) {
                        annotationArr4[i13].traverse(aSTVisitor, classScope);
                    }
                }
            }
        }
        aSTVisitor.endVisit(this, classScope);
    }
}
