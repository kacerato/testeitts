package org.eclipse.jdt.internal.compiler.lookup;

public class PolyParameterizedGenericMethodBinding extends ParameterizedGenericMethodBinding {
    private ParameterizedGenericMethodBinding wrappedBinding;

    public PolyParameterizedGenericMethodBinding(ParameterizedGenericMethodBinding parameterizedGenericMethodBinding) {
        super(parameterizedGenericMethodBinding.originalMethod, parameterizedGenericMethodBinding.typeArguments, parameterizedGenericMethodBinding.environment, parameterizedGenericMethodBinding.inferredWithUncheckedConversion, false, parameterizedGenericMethodBinding.targetType);
        this.wrappedBinding = parameterizedGenericMethodBinding;
    }

    public boolean equals(Object obj) {
        if (obj instanceof PolyParameterizedGenericMethodBinding) {
            return this.wrappedBinding.equals(((PolyParameterizedGenericMethodBinding) obj).wrappedBinding);
        }
        return false;
    }

    public int hashCode() {
        return this.wrappedBinding.hashCode();
    }
}
