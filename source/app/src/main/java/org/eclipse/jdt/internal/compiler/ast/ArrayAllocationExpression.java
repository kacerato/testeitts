package org.eclipse.jdt.internal.compiler.ast;

import java.util.List;
import okhttp3.v;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BaseTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.core.JavaElement;
import w2.C15883c;

public class ArrayAllocationExpression extends Expression {
    public Annotation[][] annotationsOnDimensions;
    public Expression[] dimensions;
    public ArrayInitializer initializer;
    public TypeReference type;

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        int length = this.dimensions.length;
        for (int i10 = 0; i10 < length; i10++) {
            Expression expression = this.dimensions[i10];
            if (expression != null) {
                flowInfo = expression.analyseCode(blockScope, flowContext, flowInfo);
                expression.checkNPEbyUnboxing(blockScope, flowContext, flowInfo);
            }
        }
        flowContext.recordAbruptExit();
        ArrayInitializer arrayInitializer = this.initializer;
        return arrayInitializer != null ? arrayInitializer.analyseCode(blockScope, flowContext, flowInfo) : flowInfo;
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        Expression expression;
        int i10 = codeStream.position;
        ArrayInitializer arrayInitializer = this.initializer;
        if (arrayInitializer != null) {
            arrayInitializer.generateCode(this.type, this, blockScope, codeStream, z10);
            return;
        }
        int length = this.dimensions.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length && (expression = this.dimensions[i12]) != null; i12++) {
            expression.generateCode(blockScope, codeStream, true);
            i11++;
        }
        if (i11 == 1) {
            codeStream.newArray(this.type, this, (ArrayBinding) this.resolvedType);
        } else {
            codeStream.multianewarray(this.type, this.resolvedType, i11, this);
        }
        if (z10) {
            codeStream.generateImplicitConversion(this.implicitConversion);
        } else {
            codeStream.pop();
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    public void getAllAnnotationContexts(int i10, int i11, List list) {
        TypeReference.AnnotationCollector annotationCollector = new TypeReference.AnnotationCollector(this, i10, i11, list);
        this.type.traverse(annotationCollector, (BlockScope) null);
        if (this.annotationsOnDimensions != null) {
            int length = this.dimensions.length;
            for (int i12 = 0; i12 < length; i12++) {
                Annotation[] annotationArr = this.annotationsOnDimensions[i12];
                int length2 = annotationArr == null ? 0 : annotationArr.length;
                for (int i13 = 0; i13 < length2; i13++) {
                    annotationArr[i13].traverse(annotationCollector, (BlockScope) null);
                }
            }
        }
    }

    public Annotation[][] getAnnotationsOnDimensions() {
        return this.annotationsOnDimensions;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("new ");
        this.type.print(0, stringBuffer);
        for (int i11 = 0; i11 < this.dimensions.length; i11++) {
            Annotation[][] annotationArr = this.annotationsOnDimensions;
            if (annotationArr != null && annotationArr[i11] != null) {
                stringBuffer.append(C15883c.f126249O);
                ASTNode.printAnnotations(this.annotationsOnDimensions[i11], stringBuffer);
                stringBuffer.append(C15883c.f126249O);
            }
            if (this.dimensions[i11] == null) {
                stringBuffer.append(v.f99450n);
            } else {
                stringBuffer.append('[');
                this.dimensions[i11].printExpression(0, stringBuffer);
                stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
            }
        }
        ArrayInitializer arrayInitializer = this.initializer;
        if (arrayInitializer != null) {
            arrayInitializer.printExpression(0, stringBuffer);
        }
        return stringBuffer;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        BaseTypeBinding baseTypeBinding;
        TypeBinding resolveTypeExpecting;
        TypeBinding resolveType = this.type.resolveType(blockScope, true);
        this.constant = Constant.NotAConstant;
        if (resolveType == TypeBinding.VOID) {
            blockScope.problemReporter().cannotAllocateVoidArray(this);
            resolveType = null;
        }
        int length = this.dimensions.length;
        int i10 = -1;
        while (true) {
            length--;
            if (length < 0) {
                break;
            }
            if (this.dimensions[length] == null) {
                if (i10 > 0) {
                    blockScope.problemReporter().incorrectLocationForNonEmptyDimension(this, i10);
                    break;
                }
            } else if (i10 < 0) {
                i10 = length;
            }
        }
        if (this.initializer == null) {
            if (i10 < 0) {
                blockScope.problemReporter().mustDefineDimensionsOrInitializer(this);
            }
            if (resolveType != null && !resolveType.isReifiable()) {
                blockScope.problemReporter().illegalGenericArray(resolveType, this);
            }
        } else if (i10 >= 0) {
            blockScope.problemReporter().cannotDefineDimensionsAndInitializer(this);
        }
        for (int i11 = 0; i11 <= i10; i11++) {
            Expression expression = this.dimensions[i11];
            if (expression != null && (resolveTypeExpecting = expression.resolveTypeExpecting(blockScope, (baseTypeBinding = TypeBinding.INT))) != null) {
                this.dimensions[i11].computeConversion(blockScope, baseTypeBinding, resolveTypeExpecting);
            }
        }
        if (resolveType != null) {
            if (this.dimensions.length > 255) {
                blockScope.problemReporter().tooManyDimensions(this);
            }
            if (this.type.annotations != null && (resolveType.tagBits & TagBits.AnnotationNullMASK) == TagBits.AnnotationNullMASK) {
                ProblemReporter problemReporter = blockScope.problemReporter();
                Annotation[][] annotationArr = this.type.annotations;
                problemReporter.contradictoryNullAnnotations(annotationArr[annotationArr.length - 1]);
            }
            ArrayBinding createArrayType = blockScope.createArrayType(resolveType, this.dimensions.length);
            this.resolvedType = createArrayType;
            Annotation[][] annotationArr2 = this.annotationsOnDimensions;
            if (annotationArr2 != null) {
                TypeBinding resolveAnnotations = ASTNode.resolveAnnotations(blockScope, annotationArr2, createArrayType);
                this.resolvedType = resolveAnnotations;
                long[] jArr = ((ArrayBinding) resolveAnnotations).nullTagBitsPerDimension;
                if (jArr != null) {
                    for (int i12 = 0; i12 < this.annotationsOnDimensions.length; i12++) {
                        if ((jArr[i12] & TagBits.AnnotationNullMASK) == TagBits.AnnotationNullMASK) {
                            blockScope.problemReporter().contradictoryNullAnnotations(this.annotationsOnDimensions[i12]);
                            jArr[i12] = 0;
                        }
                    }
                }
            }
            if (this.initializer != null) {
                TypeBinding maybeMarkArrayContentsNonNull = ArrayTypeReference.maybeMarkArrayContentsNonNull(blockScope, this.resolvedType, this.sourceStart, this.dimensions.length, null);
                this.resolvedType = maybeMarkArrayContentsNonNull;
                if (this.initializer.resolveTypeExpecting(blockScope, maybeMarkArrayContentsNonNull) != null) {
                    this.initializer.binding = (ArrayBinding) this.resolvedType;
                }
            }
            if ((resolveType.tagBits & 128) != 0) {
                return null;
            }
        }
        return this.resolvedType;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            int length = this.dimensions.length;
            this.type.traverse(aSTVisitor, blockScope);
            for (int i10 = 0; i10 < length; i10++) {
                Annotation[][] annotationArr = this.annotationsOnDimensions;
                Annotation[] annotationArr2 = annotationArr == null ? null : annotationArr[i10];
                int length2 = annotationArr2 == null ? 0 : annotationArr2.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    annotationArr2[i11].traverse(aSTVisitor, blockScope);
                }
                Expression expression = this.dimensions[i10];
                if (expression != null) {
                    expression.traverse(aSTVisitor, blockScope);
                }
            }
            ArrayInitializer arrayInitializer = this.initializer;
            if (arrayInitializer != null) {
                arrayInitializer.traverse(aSTVisitor, blockScope);
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }
}
