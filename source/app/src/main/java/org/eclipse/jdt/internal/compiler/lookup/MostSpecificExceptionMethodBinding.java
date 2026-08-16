package org.eclipse.jdt.internal.compiler.lookup;

public class MostSpecificExceptionMethodBinding extends MethodBinding {
    private MethodBinding originalMethod;

    public MostSpecificExceptionMethodBinding(MethodBinding methodBinding, ReferenceBinding[] referenceBindingArr) {
        super(methodBinding.modifiers, methodBinding.selector, methodBinding.returnType, methodBinding.parameters, referenceBindingArr, methodBinding.declaringClass);
        this.originalMethod = methodBinding;
        this.parameterNonNullness = methodBinding.parameterNonNullness;
        this.defaultNullness = methodBinding.defaultNullness;
    }

    @Override
    public MethodBinding original() {
        return this.originalMethod.original();
    }
}
