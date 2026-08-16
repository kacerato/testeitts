package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.IJavaElement;

public class RecoveredVariableBinding implements IVariableBinding {
    private BindingResolver resolver;
    private VariableDeclaration variableDeclaration;

    public RecoveredVariableBinding(BindingResolver bindingResolver, VariableDeclaration variableDeclaration) {
        this.resolver = bindingResolver;
        this.variableDeclaration = variableDeclaration;
    }

    @Override
    public IAnnotationBinding[] getAnnotations() {
        return AnnotationBinding.NoAnnotations;
    }

    @Override
    public Object getConstantValue() {
        return null;
    }

    @Override
    public ITypeBinding getDeclaringClass() {
        ASTNode parent = this.variableDeclaration.getParent();
        while (parent != null && parent.getNodeType() != 55) {
            parent = parent.getParent();
        }
        if (parent != null) {
            return ((TypeDeclaration) parent).resolveBinding();
        }
        return null;
    }

    @Override
    public IMethodBinding getDeclaringMethod() {
        ASTNode parent = this.variableDeclaration.getParent();
        while (parent != null && parent.getNodeType() != 31) {
            parent = parent.getParent();
        }
        if (parent != null) {
            return ((MethodDeclaration) parent).resolveBinding();
        }
        return null;
    }

    @Override
    public IJavaElement getJavaElement() {
        return null;
    }

    @Override
    public String getKey() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Recovered#");
        if (this.variableDeclaration != null) {
            stringBuffer.append("variableDeclaration");
            stringBuffer.append((Object) this.variableDeclaration.getClass());
            stringBuffer.append(this.variableDeclaration.getName().getIdentifier());
            stringBuffer.append(this.variableDeclaration.getExtraDimensions());
        }
        return String.valueOf(stringBuffer);
    }

    @Override
    public int getKind() {
        return 3;
    }

    @Override
    public int getModifiers() {
        return 0;
    }

    @Override
    public String getName() {
        return this.variableDeclaration.getName().getIdentifier();
    }

    @Override
    public ITypeBinding getType() {
        return this.resolver.getTypeBinding(this.variableDeclaration);
    }

    @Override
    public IVariableBinding getVariableDeclaration() {
        return this;
    }

    @Override
    public int getVariableId() {
        return 0;
    }

    @Override
    public boolean isDeprecated() {
        return false;
    }

    @Override
    public boolean isEffectivelyFinal() {
        return false;
    }

    @Override
    public boolean isEnumConstant() {
        return false;
    }

    @Override
    public boolean isEqualTo(IBinding iBinding) {
        if (iBinding.isRecovered() && iBinding.getKind() == 3) {
            return getKey().equals(iBinding.getKey());
        }
        return false;
    }

    @Override
    public boolean isField() {
        return this.variableDeclaration.getParent() instanceof FieldDeclaration;
    }

    @Override
    public boolean isParameter() {
        return this.variableDeclaration instanceof SingleVariableDeclaration;
    }

    @Override
    public boolean isRecovered() {
        return true;
    }

    @Override
    public boolean isSynthetic() {
        return false;
    }
}
