package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;

public class ContainerAnnotation extends SingleMemberAnnotation {
    private Annotation[] containees;
    private ArrayInitializer memberValues;

    public ContainerAnnotation(Annotation annotation, ReferenceBinding referenceBinding, BlockScope blockScope) {
        char[][] cArr = referenceBinding.compoundName;
        if (cArr.length == 1) {
            this.type = new SingleTypeReference(cArr[0], 0L);
        } else {
            this.type = new QualifiedTypeReference(cArr, new long[cArr.length]);
        }
        this.sourceStart = annotation.sourceStart;
        this.sourceEnd = annotation.sourceEnd;
        this.resolvedType = referenceBinding;
        this.recipient = annotation.recipient;
        this.containees = new Annotation[0];
        ArrayInitializer arrayInitializer = new ArrayInitializer();
        this.memberValues = arrayInitializer;
        this.memberValue = arrayInitializer;
        addContainee(annotation);
    }

    public void addContainee(Annotation annotation) {
        Annotation[] annotationArr = this.containees;
        int length = annotationArr.length;
        Annotation[] annotationArr2 = new Annotation[length + 1];
        this.containees = annotationArr2;
        System.arraycopy(annotationArr, 0, annotationArr2, 0, length);
        Annotation[] annotationArr3 = this.containees;
        annotationArr3[length] = annotation;
        this.memberValues.expressions = annotationArr3;
        annotation.setPersistibleAnnotation(length == 0 ? this : null);
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        if (this.compilerAnnotation != null) {
            return this.resolvedType;
        }
        this.constant = Constant.NotAConstant;
        ReferenceBinding referenceBinding = (ReferenceBinding) this.resolvedType;
        if (!referenceBinding.isValidBinding()) {
            referenceBinding = (ReferenceBinding) referenceBinding.closestMatch();
        }
        Annotation annotation = this.containees[0];
        ReferenceBinding referenceBinding2 = (ReferenceBinding) annotation.resolvedType;
        if (!referenceBinding2.isDeprecated() && isTypeUseDeprecated(referenceBinding, blockScope)) {
            blockScope.problemReporter().deprecatedType(referenceBinding, annotation);
        }
        Annotation.checkContainerAnnotationType(annotation, blockScope, referenceBinding, referenceBinding2, true);
        ReferenceBinding containerAnnotationType = referenceBinding2.containerAnnotationType();
        this.resolvedType = containerAnnotationType;
        if (!containerAnnotationType.isValidBinding()) {
            return this.resolvedType;
        }
        MethodBinding[] methods = containerAnnotationType.methods();
        MemberValuePair memberValuePair = memberValuePairs()[0];
        for (MethodBinding methodBinding : methods) {
            if (CharOperation.equals(methodBinding.selector, TypeConstants.VALUE)) {
                memberValuePair.binding = methodBinding;
                memberValuePair.resolveTypeExpecting(blockScope, methodBinding.returnType);
            }
        }
        this.compilerAnnotation = blockScope.environment().createAnnotation((ReferenceBinding) this.resolvedType, computeElementValuePairs());
        return this.resolvedType;
    }
}
