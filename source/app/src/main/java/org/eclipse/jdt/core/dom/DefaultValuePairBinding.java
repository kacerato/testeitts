package org.eclipse.jdt.core.dom;

class DefaultValuePairBinding extends MemberValuePairBinding {
    private org.eclipse.jdt.internal.compiler.lookup.MethodBinding method;

    public DefaultValuePairBinding(org.eclipse.jdt.internal.compiler.lookup.MethodBinding methodBinding, BindingResolver bindingResolver) {
        super(null, bindingResolver);
        this.method = methodBinding;
        this.value = MemberValuePairBinding.buildDOMValue(methodBinding.getDefaultValue(), bindingResolver);
        org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding = methodBinding.returnType;
        if (typeBinding == null || !typeBinding.isArrayType()) {
            return;
        }
        Object obj = this.value;
        if (obj == null) {
            this.value = new Object[0];
        } else {
            if (obj.getClass().isArray()) {
                return;
            }
            this.value = new Object[]{this.value};
        }
    }

    @Override
    public IMethodBinding getMethodBinding() {
        return this.bindingResolver.getMethodBinding(this.method);
    }

    @Override
    public String getName() {
        return new String(this.method.selector);
    }

    @Override
    public Object getValue() {
        return this.value;
    }

    @Override
    public boolean isDefault() {
        return true;
    }

    @Override
    public boolean isDeprecated() {
        return this.method.isDeprecated();
    }
}
