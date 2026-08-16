package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.LocalVariable;
import org.eclipse.jdt.internal.core.util.Util;

public class VariableBinding implements IVariableBinding {
    private static final int VALID_MODIFIERS = 223;
    private IAnnotationBinding[] annotations;
    private org.eclipse.jdt.internal.compiler.lookup.VariableBinding binding;
    private ITypeBinding declaringClass;
    private String key;
    private String name;
    private BindingResolver resolver;
    private ITypeBinding type;

    public VariableBinding(BindingResolver bindingResolver, org.eclipse.jdt.internal.compiler.lookup.VariableBinding variableBinding) {
        this.resolver = bindingResolver;
        this.binding = variableBinding;
    }

    private JavaElement getUnresolvedJavaElement() {
        VariableDeclaration variableDeclaration;
        int startPosition;
        int length;
        int modifiers;
        int i10;
        JavaElement javaElement;
        if (JavaCore.getPlugin() == null) {
            return null;
        }
        if (isField()) {
            BindingResolver bindingResolver = this.resolver;
            if (!(bindingResolver instanceof DefaultBindingResolver)) {
                return null;
            }
            DefaultBindingResolver defaultBindingResolver = (DefaultBindingResolver) bindingResolver;
            if (defaultBindingResolver.fromJavaProject) {
                return Util.getUnresolvedJavaElement((FieldBinding) this.binding, defaultBindingResolver.workingCopyOwner, defaultBindingResolver.getBindingsToNodesMap());
            }
            return null;
        }
        BindingResolver bindingResolver2 = this.resolver;
        if (!(bindingResolver2 instanceof DefaultBindingResolver)) {
            return null;
        }
        DefaultBindingResolver defaultBindingResolver2 = (DefaultBindingResolver) bindingResolver2;
        if (!defaultBindingResolver2.fromJavaProject || (variableDeclaration = (VariableDeclaration) defaultBindingResolver2.bindingsToAstNodes.get(this)) == null) {
            return null;
        }
        SimpleName name = variableDeclaration.getName();
        int startPosition2 = name.getStartPosition();
        int length2 = name.getLength();
        if (variableDeclaration instanceof SingleVariableDeclaration) {
            int startPosition3 = variableDeclaration.getStartPosition();
            int length3 = variableDeclaration.getLength();
            i10 = ((SingleVariableDeclaration) variableDeclaration).getModifiers();
            startPosition = startPosition3;
            length = length3;
        } else {
            ASTNode parent = variableDeclaration.getParent();
            startPosition = parent.getStartPosition();
            length = parent.getLength();
            ASTNode parent2 = ((VariableDeclarationFragment) variableDeclaration).getParent();
            int nodeType = parent2.getNodeType();
            if (nodeType == 23) {
                modifiers = ((FieldDeclaration) parent2).getModifiers();
            } else if (nodeType == 58) {
                modifiers = ((VariableDeclarationExpression) parent2).getModifiers();
            } else if (nodeType != 60) {
                i10 = 0;
            } else {
                modifiers = ((VariableDeclarationStatement) parent2).getModifiers();
            }
            i10 = modifiers;
        }
        int i11 = (length + startPosition) - 1;
        char[] genericTypeSignature = this.binding.type.genericTypeSignature();
        IMethodBinding declaringMethod = getDeclaringMethod();
        LocalVariableBinding localVariableBinding = (LocalVariableBinding) this.binding;
        if (declaringMethod == null) {
            ReferenceContext referenceContext = localVariableBinding.declaringScope.referenceContext();
            if (!(referenceContext instanceof org.eclipse.jdt.internal.compiler.ast.TypeDeclaration)) {
                return null;
            }
            javaElement = Util.getUnresolvedJavaElement(startPosition, i11, Util.getUnresolvedJavaElement(((org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) referenceContext).binding, defaultBindingResolver2.workingCopyOwner, defaultBindingResolver2.getBindingsToNodesMap()));
        } else {
            javaElement = (JavaElement) declaringMethod.getJavaElement();
        }
        if (javaElement == null) {
            return null;
        }
        return new LocalVariable(javaElement, name.getIdentifier(), startPosition, i11, startPosition2, (length2 + startPosition2) - 1, new String(genericTypeSignature), localVariableBinding.declaration.annotations, i10, (localVariableBinding.tagBits & 1024) != 0);
    }

    @Override
    public IAnnotationBinding[] getAnnotations() {
        IAnnotationBinding[] iAnnotationBindingArr = this.annotations;
        if (iAnnotationBindingArr != null) {
            return iAnnotationBindingArr;
        }
        org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding[] annotations = this.binding.getAnnotations();
        int length = annotations == null ? 0 : annotations.length;
        if (length == 0) {
            AnnotationBinding[] annotationBindingArr = AnnotationBinding.NoAnnotations;
            this.annotations = annotationBindingArr;
            return annotationBindingArr;
        }
        IAnnotationBinding[] iAnnotationBindingArr2 = new IAnnotationBinding[length];
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            IAnnotationBinding annotationInstance = this.resolver.getAnnotationInstance(annotations[i11]);
            if (annotationInstance != null) {
                iAnnotationBindingArr2[i10] = annotationInstance;
                i10++;
            }
        }
        if (i10 != length) {
            if (i10 == 0) {
                AnnotationBinding[] annotationBindingArr2 = AnnotationBinding.NoAnnotations;
                this.annotations = annotationBindingArr2;
                return annotationBindingArr2;
            }
            IAnnotationBinding[] iAnnotationBindingArr3 = new IAnnotationBinding[i10];
            System.arraycopy(iAnnotationBindingArr2, 0, iAnnotationBindingArr3, 0, i10);
            iAnnotationBindingArr2 = iAnnotationBindingArr3;
        }
        this.annotations = iAnnotationBindingArr2;
        return iAnnotationBindingArr2;
    }

    @Override
    public Object getConstantValue() {
        Constant constant = this.binding.constant();
        if (constant == null || constant == Constant.NotAConstant) {
            return null;
        }
        switch (constant.typeID()) {
            case 2:
                return Character.valueOf(constant.charValue());
            case 3:
                return Byte.valueOf(constant.byteValue());
            case 4:
                return Short.valueOf(constant.shortValue());
            case 5:
                return Boolean.valueOf(constant.booleanValue());
            case 6:
            default:
                return null;
            case 7:
                return Long.valueOf(constant.longValue());
            case 8:
                return new Double(constant.doubleValue());
            case 9:
                return new Float(constant.floatValue());
            case 10:
                return Integer.valueOf(constant.intValue());
            case 11:
                return constant.stringValue();
        }
    }

    @Override
    public ITypeBinding getDeclaringClass() {
        if (!isField()) {
            return null;
        }
        if (this.declaringClass == null) {
            this.declaringClass = this.resolver.getTypeBinding(((FieldBinding) this.binding).declaringClass);
        }
        return this.declaringClass;
    }

    @Override
    public IMethodBinding getDeclaringMethod() {
        org.eclipse.jdt.internal.compiler.lookup.MethodBinding enclosingMethod;
        if (!isField()) {
            for (ASTNode findDeclaringNode = this.resolver.findDeclaringNode(this); findDeclaringNode != null; findDeclaringNode = findDeclaringNode.getParent()) {
                int nodeType = findDeclaringNode.getNodeType();
                if (nodeType != 28) {
                    if (nodeType == 31) {
                        return ((MethodDeclaration) findDeclaringNode).resolveBinding();
                    }
                    if (nodeType == 86) {
                        return ((LambdaExpression) findDeclaringNode).resolveMethodBinding();
                    }
                }
            }
            org.eclipse.jdt.internal.compiler.lookup.VariableBinding variableBinding = this.binding;
            if (!(variableBinding instanceof LocalVariableBinding) || (enclosingMethod = ((LocalVariableBinding) variableBinding).getEnclosingMethod()) == null) {
                return null;
            }
            return this.resolver.getMethodBinding(enclosingMethod);
        }
        return null;
    }

    @Override
    public IJavaElement getJavaElement() {
        JavaElement unresolvedJavaElement = getUnresolvedJavaElement();
        if (unresolvedJavaElement == null) {
            return null;
        }
        return unresolvedJavaElement.resolved(this.binding);
    }

    @Override
    public String getKey() {
        if (this.key == null) {
            this.key = new String(this.binding.computeUniqueKey());
        }
        return this.key;
    }

    @Override
    public int getKind() {
        return 3;
    }

    @Override
    public int getModifiers() {
        return isField() ? ((FieldBinding) this.binding).getAccessFlags() & 223 : this.binding.isFinal() ? 16 : 0;
    }

    @Override
    public String getName() {
        if (this.name == null) {
            this.name = new String(this.binding.name);
        }
        return this.name;
    }

    @Override
    public ITypeBinding getType() {
        if (this.type == null) {
            this.type = this.resolver.getTypeBinding(this.binding.type);
        }
        return this.type;
    }

    @Override
    public IVariableBinding getVariableDeclaration() {
        if (!isField()) {
            return this;
        }
        return this.resolver.getVariableBinding(((FieldBinding) this.binding).original());
    }

    @Override
    public int getVariableId() {
        return this.binding.f102483id;
    }

    @Override
    public boolean isDeprecated() {
        if (isField()) {
            return ((FieldBinding) this.binding).isDeprecated();
        }
        return false;
    }

    @Override
    public boolean isEffectivelyFinal() {
        return !this.binding.isFinal() && this.binding.isEffectivelyFinal();
    }

    @Override
    public boolean isEnumConstant() {
        return (this.binding.modifiers & 16384) != 0;
    }

    @Override
    public boolean isEqualTo(IBinding iBinding) {
        if (iBinding == this) {
            return true;
        }
        if (iBinding == null || !(iBinding instanceof VariableBinding)) {
            return false;
        }
        VariableBinding variableBinding = (VariableBinding) iBinding;
        org.eclipse.jdt.internal.compiler.lookup.VariableBinding variableBinding2 = variableBinding.binding;
        org.eclipse.jdt.internal.compiler.lookup.VariableBinding variableBinding3 = this.binding;
        if (variableBinding3 instanceof FieldBinding) {
            if (variableBinding2 instanceof FieldBinding) {
                return BindingComparator.isEqual((FieldBinding) variableBinding3, (FieldBinding) variableBinding2);
            }
            return false;
        }
        if (!BindingComparator.isEqual(variableBinding3, variableBinding2)) {
            return false;
        }
        IMethodBinding declaringMethod = getDeclaringMethod();
        IMethodBinding declaringMethod2 = variableBinding.getDeclaringMethod();
        return declaringMethod == null ? declaringMethod2 == null : declaringMethod.isEqualTo(declaringMethod2);
    }

    @Override
    public boolean isField() {
        return this.binding instanceof FieldBinding;
    }

    @Override
    public boolean isParameter() {
        return (this.binding.tagBits & 1024) != 0;
    }

    @Override
    public boolean isRecovered() {
        return false;
    }

    @Override
    public boolean isSynthetic() {
        if (isField()) {
            return ((FieldBinding) this.binding).isSynthetic();
        }
        return false;
    }

    @Override
    public String toString() {
        return this.binding.toString();
    }
}
