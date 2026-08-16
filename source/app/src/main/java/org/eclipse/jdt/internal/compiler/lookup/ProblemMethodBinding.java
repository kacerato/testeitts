package org.eclipse.jdt.internal.compiler.lookup;

public class ProblemMethodBinding extends MethodBinding {
    public MethodBinding closestMatch;
    public InferenceContext18 inferenceContext;
    private int problemReason;

    public ProblemMethodBinding(char[] cArr, TypeBinding[] typeBindingArr, int i10) {
        this.selector = cArr;
        this.parameters = (typeBindingArr == null || typeBindingArr.length == 0) ? Binding.NO_PARAMETERS : typeBindingArr;
        this.problemReason = i10;
        this.thrownExceptions = Binding.NO_EXCEPTIONS;
    }

    @Override
    public MethodBinding computeSubstitutedMethod(MethodBinding methodBinding, LookupEnvironment lookupEnvironment) {
        MethodBinding methodBinding2 = this.closestMatch;
        return methodBinding2 == null ? this : methodBinding2.computeSubstitutedMethod(methodBinding, lookupEnvironment);
    }

    @Override
    public MethodBinding findOriginalInheritedMethod(MethodBinding methodBinding) {
        MethodBinding methodBinding2 = this.closestMatch;
        return methodBinding2 == null ? this : methodBinding2.findOriginalInheritedMethod(methodBinding);
    }

    @Override
    public MethodBinding genericMethod() {
        MethodBinding methodBinding = this.closestMatch;
        return methodBinding == null ? this : methodBinding.genericMethod();
    }

    @Override
    public boolean hasSubstitutedParameters() {
        MethodBinding methodBinding = this.closestMatch;
        if (methodBinding != null) {
            return methodBinding.hasSubstitutedParameters();
        }
        return false;
    }

    @Override
    public boolean isParameterizedGeneric() {
        return this.closestMatch instanceof ParameterizedGenericMethodBinding;
    }

    @Override
    public MethodBinding original() {
        MethodBinding methodBinding = this.closestMatch;
        return methodBinding == null ? this : methodBinding.original();
    }

    @Override
    public final int problemId() {
        return this.problemReason;
    }

    @Override
    public MethodBinding shallowOriginal() {
        MethodBinding methodBinding = this.closestMatch;
        return methodBinding == null ? this : methodBinding.shallowOriginal();
    }

    @Override
    public MethodBinding tiebreakMethod() {
        MethodBinding methodBinding = this.closestMatch;
        return methodBinding == null ? this : methodBinding.tiebreakMethod();
    }

    public ProblemMethodBinding(char[] cArr, TypeBinding[] typeBindingArr, ReferenceBinding referenceBinding, int i10) {
        this.selector = cArr;
        this.parameters = (typeBindingArr == null || typeBindingArr.length == 0) ? Binding.NO_PARAMETERS : typeBindingArr;
        this.declaringClass = referenceBinding;
        this.problemReason = i10;
        this.thrownExceptions = Binding.NO_EXCEPTIONS;
    }

    public ProblemMethodBinding(MethodBinding methodBinding, char[] cArr, TypeBinding[] typeBindingArr, int i10) {
        this(cArr, typeBindingArr, i10);
        this.closestMatch = methodBinding;
        if (methodBinding == null || i10 == 3) {
            return;
        }
        this.declaringClass = methodBinding.declaringClass;
        this.returnType = methodBinding.returnType;
        if (i10 == 23 || i10 == 25) {
            this.thrownExceptions = methodBinding.thrownExceptions;
            this.typeVariables = methodBinding.typeVariables;
            this.modifiers = methodBinding.modifiers;
            this.tagBits = methodBinding.tagBits;
        }
    }
}
