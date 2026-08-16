package org.eclipse.jdt.internal.compiler.lookup;

public class PolymorphicMethodBinding extends MethodBinding {
    protected MethodBinding polymorphicMethod;

    public PolymorphicMethodBinding(MethodBinding methodBinding, TypeBinding[] typeBindingArr) {
        super(methodBinding.modifiers, methodBinding.selector, methodBinding.returnType, typeBindingArr, methodBinding.thrownExceptions, methodBinding.declaringClass);
        this.polymorphicMethod = methodBinding;
        this.tagBits = methodBinding.tagBits;
    }

    @Override
    public boolean isPolymorphic() {
        return true;
    }

    @Override
    public boolean isVarargs() {
        return false;
    }

    public boolean matches(TypeBinding[] typeBindingArr, TypeBinding typeBinding) {
        TypeBinding[] typeBindingArr2 = this.parameters;
        int length = typeBindingArr2 == null ? 0 : typeBindingArr2.length;
        if ((typeBindingArr == null ? 0 : typeBindingArr.length) != length) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (TypeBinding.notEquals(this.parameters[i10], typeBindingArr[i10])) {
                return false;
            }
        }
        TypeBinding typeBinding2 = this.returnType;
        return typeBinding == null ? typeBinding2 == null : (typeBinding2 == null || TypeBinding.notEquals(typeBinding, typeBinding2)) ? false : true;
    }

    @Override
    public MethodBinding original() {
        return this.polymorphicMethod;
    }

    public PolymorphicMethodBinding(MethodBinding methodBinding, TypeBinding typeBinding, TypeBinding[] typeBindingArr) {
        super(methodBinding.modifiers, methodBinding.selector, typeBinding, typeBindingArr, methodBinding.thrownExceptions, methodBinding.declaringClass);
        this.polymorphicMethod = methodBinding;
        this.tagBits = methodBinding.tagBits;
    }
}
