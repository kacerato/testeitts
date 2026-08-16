package org.eclipse.jdt.internal.compiler.ast;

import java.util.List;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import w2.C15883c;

public class TypeParameter extends AbstractVariableDeclaration {
    public TypeVariableBinding binding;
    public TypeReference[] bounds;

    private void internalResolve(Scope scope, boolean z10) {
        Binding binding;
        if (this.binding != null && (binding = scope.parent.getBinding(this.name, 4, this, false)) != null && this.binding != binding && binding.isValidBinding() && (binding.kind() != 4100 || !z10)) {
            scope.problemReporter().typeHiding(this, binding);
        }
        if (this.annotations != null || scope.environment().usesNullTypeAnnotations()) {
            resolveAnnotations(scope);
        }
        if (CharOperation.equals(this.name, TypeConstants.VAR)) {
            if (scope.compilerOptions().sourceLevel < ClassFileConstants.JDK10) {
                scope.problemReporter().varIsReservedTypeNameInFuture(this);
            } else {
                scope.problemReporter().varIsNotAllowedHere(this);
            }
        }
    }

    public void checkBounds(Scope scope) {
        TypeReference typeReference = this.type;
        if (typeReference != null) {
            typeReference.checkBounds(scope);
        }
        TypeReference[] typeReferenceArr = this.bounds;
        if (typeReferenceArr != null) {
            int length = typeReferenceArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                this.bounds[i10].checkBounds(scope);
            }
        }
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void getAllAnnotationContexts(int i10, int i11, List list) {
        int i12;
        TypeReference.AnnotationCollector annotationCollector = new TypeReference.AnnotationCollector(this, i10, i11, list);
        Annotation[] annotationArr = this.annotations;
        int i13 = 0;
        if (annotationArr != null) {
            int length = annotationArr.length;
            for (int i14 = 0; i14 < length; i14++) {
                this.annotations[i14].traverse(annotationCollector, (BlockScope) null);
            }
        }
        int i15 = annotationCollector.targetType;
        if (i15 == 0) {
            annotationCollector.targetType = 17;
        } else if (i15 == 1) {
            annotationCollector.targetType = 18;
        }
        TypeReference typeReference = this.type;
        if (typeReference != null) {
            boolean isInterface = typeReference.resolvedType.isInterface();
            TypeReference typeReference2 = this.type;
            i12 = isInterface;
            if ((typeReference2.bits & 1048576) != 0) {
                annotationCollector.info2 = isInterface ? 1 : 0;
                typeReference2.traverse(annotationCollector, (BlockScope) null);
                i12 = isInterface;
            }
        } else {
            i12 = 0;
        }
        TypeReference[] typeReferenceArr = this.bounds;
        if (typeReferenceArr != null) {
            int length2 = typeReferenceArr.length;
            int i16 = i12;
            while (i13 < length2) {
                TypeReference typeReference3 = this.bounds[i13];
                if ((typeReference3.bits & 1048576) != 0) {
                    i16++;
                    annotationCollector.info2 = i16;
                    typeReference3.traverse(annotationCollector, (BlockScope) null);
                }
                i13++;
                i16 = i16;
            }
        }
    }

    @Override
    public int getKind() {
        return 6;
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        Annotation[] annotationArr = this.annotations;
        if (annotationArr != null) {
            ASTNode.printAnnotations(annotationArr, stringBuffer);
            stringBuffer.append(C15883c.f126249O);
        }
        stringBuffer.append(this.name);
        if (this.type != null) {
            stringBuffer.append(" extends ");
            this.type.print(0, stringBuffer);
        }
        if (this.bounds != null) {
            for (int i11 = 0; i11 < this.bounds.length; i11++) {
                stringBuffer.append(" & ");
                this.bounds[i11].print(0, stringBuffer);
            }
        }
        return stringBuffer;
    }

    @Override
    public void resolve(BlockScope blockScope) {
        internalResolve(blockScope, blockScope.methodScope().isStatic);
    }

    public void resolveAnnotations(Scope scope) {
        TypeVariableBinding typeVariableBinding;
        MethodBinding methodBinding;
        BlockScope typeAnnotationsResolutionScope = Scope.typeAnnotationsResolutionScope(scope);
        if (typeAnnotationsResolutionScope != null) {
            AnnotationBinding[] resolveAnnotations = ASTNode.resolveAnnotations(typeAnnotationsResolutionScope, this.annotations, this.binding, false);
            LookupEnvironment environment = scope.environment();
            boolean z10 = environment.globalOptions.isAnnotationBasedNullAnalysisEnabled;
            if (resolveAnnotations != null && resolveAnnotations.length > 0) {
                this.binding.setTypeAnnotations(resolveAnnotations, z10);
                scope.referenceCompilationUnit().compilationResult.hasAnnotations = true;
            }
            if (z10 && (typeVariableBinding = this.binding) != null && typeVariableBinding.isValidBinding()) {
                if (!this.binding.hasNullTypeAnnotations() && scope.hasDefaultNullnessFor(128, sourceStart())) {
                    AnnotationBinding[] annotationBindingArr = {environment.getNonNullAnnotation()};
                    TypeVariableBinding typeVariableBinding2 = this.binding;
                    TypeVariableBinding typeVariableBinding3 = (TypeVariableBinding) environment.createAnnotatedType(typeVariableBinding2, annotationBindingArr);
                    this.binding = typeVariableBinding3;
                    if (scope instanceof MethodScope) {
                        ReferenceContext referenceContext = ((MethodScope) scope).referenceContext;
                        if ((referenceContext instanceof AbstractMethodDeclaration) && (methodBinding = ((AbstractMethodDeclaration) referenceContext).binding) != null) {
                            methodBinding.updateTypeVariableBinding(typeVariableBinding2, typeVariableBinding3);
                        }
                    }
                }
                this.binding.evaluateNullAnnotations(scope, this);
            }
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
            TypeReference[] typeReferenceArr = this.bounds;
            if (typeReferenceArr != null) {
                int length2 = typeReferenceArr.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    this.bounds[i11].traverse(aSTVisitor, blockScope);
                }
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    public void resolve(ClassScope classScope) {
        internalResolve(classScope, classScope.enclosingSourceType().isStatic());
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
            TypeReference[] typeReferenceArr = this.bounds;
            if (typeReferenceArr != null) {
                int length2 = typeReferenceArr.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    this.bounds[i11].traverse(aSTVisitor, classScope);
                }
            }
        }
        aSTVisitor.endVisit(this, classScope);
    }
}
