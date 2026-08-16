package org.eclipse.jdt.internal.compiler.lookup;

public class SyntheticFactoryMethodBinding extends MethodBinding {
    private ReferenceBinding enclosingType;
    private LookupEnvironment environment;
    private MethodBinding staticFactoryFor;

    public SyntheticFactoryMethodBinding(MethodBinding methodBinding, LookupEnvironment lookupEnvironment, ReferenceBinding referenceBinding) {
        super(methodBinding.modifiers | 8, TypeConstants.SYNTHETIC_STATIC_FACTORY, null, null, null, methodBinding.declaringClass);
        this.environment = lookupEnvironment;
        this.staticFactoryFor = methodBinding;
        this.enclosingType = referenceBinding;
    }

    public ParameterizedMethodBinding applyTypeArgumentsOnConstructor(TypeBinding[] typeBindingArr, TypeBinding[] typeBindingArr2, boolean z10, TypeBinding typeBinding) {
        for (MethodBinding methodBinding : (typeBindingArr == null ? this.environment.createRawType(this.declaringClass, this.enclosingType) : this.environment.createParameterizedType(this.declaringClass, typeBindingArr, this.enclosingType)).methods()) {
            if (methodBinding.original() == this.staticFactoryFor) {
                return (typeBindingArr2.length > 0 || z10) ? this.environment.createParameterizedGenericMethod(methodBinding, typeBindingArr2, z10, false, typeBinding) : (ParameterizedMethodBinding) methodBinding;
            }
            if (methodBinding instanceof ProblemMethodBinding) {
                MethodBinding methodBinding2 = ((ProblemMethodBinding) methodBinding).closestMatch;
                if ((methodBinding2 instanceof ParameterizedMethodBinding) && methodBinding2.original() == this.staticFactoryFor) {
                    return (ParameterizedMethodBinding) methodBinding2;
                }
            }
        }
        throw new IllegalArgumentException("Type doesn't have its own method?");
    }

    public MethodBinding getConstructor() {
        return this.staticFactoryFor;
    }
}
