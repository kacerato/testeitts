package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.IAnnotatable;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.internal.compiler.lookup.ElementValuePair;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;

public class AnnotationBinding implements IAnnotationBinding {
    static final AnnotationBinding[] NoAnnotations = new AnnotationBinding[0];
    private org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding binding;
    private BindingResolver bindingResolver;
    private String key;

    public AnnotationBinding(org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding annotationBinding, BindingResolver bindingResolver) {
        if (annotationBinding == null) {
            throw new IllegalStateException();
        }
        this.binding = annotationBinding;
        this.bindingResolver = bindingResolver;
    }

    private String getRecipientKey() {
        ASTNode aSTNode;
        BindingResolver bindingResolver = this.bindingResolver;
        if (!(bindingResolver instanceof DefaultBindingResolver) || (aSTNode = (ASTNode) ((DefaultBindingResolver) bindingResolver).bindingsToAstNodes.get(this)) == null) {
            return "";
        }
        ASTNode parent = aSTNode.getParent();
        int nodeType = parent.getNodeType();
        return nodeType != 23 ? nodeType != 31 ? nodeType != 35 ? nodeType != 55 ? nodeType != 60 ? nodeType != 93 ? "" : ((ModuleDeclaration) parent).resolveBinding().getKey() : ((VariableDeclarationFragment) ((VariableDeclarationStatement) parent).fragments().get(0)).resolveBinding().getKey() : ((TypeDeclaration) parent).resolveBinding().getKey() : ((PackageDeclaration) parent).getName().getFullyQualifiedName().replace('.', '/') : ((MethodDeclaration) parent).resolveBinding().getKey() : ((VariableDeclarationFragment) ((FieldDeclaration) parent).fragments().get(0)).resolveBinding().getKey();
    }

    @Override
    public IMemberValuePairBinding[] getAllMemberValuePairs() {
        int length;
        IMemberValuePairBinding[] declaredMemberValuePairs = getDeclaredMemberValuePairs();
        ReferenceBinding annotationType = this.binding.getAnnotationType();
        if (annotationType == null || (annotationType.tagBits & 128) != 0) {
            return declaredMemberValuePairs;
        }
        org.eclipse.jdt.internal.compiler.lookup.MethodBinding[] availableMethods = annotationType.availableMethods();
        int length2 = availableMethods == null ? 0 : availableMethods.length;
        if (length2 == 0 || (length = declaredMemberValuePairs.length) == length2) {
            return declaredMemberValuePairs;
        }
        HashtableOfObject hashtableOfObject = new HashtableOfObject(length);
        for (int i10 = 0; i10 < length; i10++) {
            char[] internalName = ((MemberValuePairBinding) declaredMemberValuePairs[i10]).internalName();
            if (internalName != null) {
                hashtableOfObject.put(internalName, declaredMemberValuePairs[i10]);
            }
        }
        IMemberValuePairBinding[] iMemberValuePairBindingArr = new IMemberValuePairBinding[length2];
        for (int i11 = 0; i11 < length2; i11++) {
            Object obj = hashtableOfObject.get(availableMethods[i11].selector);
            iMemberValuePairBindingArr[i11] = obj == null ? new DefaultValuePairBinding(availableMethods[i11], this.bindingResolver) : (IMemberValuePairBinding) obj;
        }
        return iMemberValuePairBindingArr;
    }

    @Override
    public ITypeBinding getAnnotationType() {
        ITypeBinding typeBinding = this.bindingResolver.getTypeBinding(this.binding.getAnnotationType());
        if (typeBinding == null) {
            return null;
        }
        return typeBinding;
    }

    @Override
    public IAnnotationBinding[] getAnnotations() {
        return NoAnnotations;
    }

    @Override
    public IMemberValuePairBinding[] getDeclaredMemberValuePairs() {
        ReferenceBinding annotationType = this.binding.getAnnotationType();
        if (annotationType == null || (annotationType.tagBits & 128) != 0) {
            return MemberValuePairBinding.NoPair;
        }
        ElementValuePair[] elementValuePairs = this.binding.getElementValuePairs();
        int length = elementValuePairs.length;
        IMemberValuePairBinding[] iMemberValuePairBindingArr = length == 0 ? MemberValuePairBinding.NoPair : new MemberValuePairBinding[length];
        int i10 = 0;
        for (ElementValuePair elementValuePair : elementValuePairs) {
            if (elementValuePair.binding != null) {
                iMemberValuePairBindingArr[i10] = this.bindingResolver.getMemberValuePairBinding(elementValuePair);
                i10++;
            }
        }
        if (i10 == 0) {
            return MemberValuePairBinding.NoPair;
        }
        if (i10 == length) {
            return iMemberValuePairBindingArr;
        }
        MemberValuePairBinding[] memberValuePairBindingArr = new MemberValuePairBinding[i10];
        System.arraycopy(iMemberValuePairBindingArr, 0, memberValuePairBindingArr, 0, i10);
        return memberValuePairBindingArr;
    }

    @Override
    public IJavaElement getJavaElement() {
        IJavaElement javaElement;
        IModuleBinding resolveBinding;
        BindingResolver bindingResolver = this.bindingResolver;
        if (!(bindingResolver instanceof DefaultBindingResolver)) {
            return null;
        }
        ASTNode aSTNode = (ASTNode) ((DefaultBindingResolver) bindingResolver).bindingsToAstNodes.get(this);
        if (!(aSTNode instanceof Annotation)) {
            return null;
        }
        ASTNode parent = aSTNode.getParent();
        int nodeType = parent.getNodeType();
        if (nodeType == 23) {
            IVariableBinding resolveBinding2 = ((VariableDeclarationFragment) ((FieldDeclaration) parent).fragments().get(0)).resolveBinding();
            if (resolveBinding2 == null) {
                return null;
            }
            javaElement = resolveBinding2.getJavaElement();
        } else if (nodeType == 31) {
            IMethodBinding resolveBinding3 = ((MethodDeclaration) parent).resolveBinding();
            if (resolveBinding3 == null) {
                return null;
            }
            javaElement = resolveBinding3.getJavaElement();
        } else if (nodeType != 35) {
            if (nodeType != 55) {
                if (nodeType == 60) {
                    IVariableBinding resolveBinding4 = ((VariableDeclarationFragment) ((VariableDeclarationStatement) parent).fragments().get(0)).resolveBinding();
                    if (resolveBinding4 == null) {
                        return null;
                    }
                    javaElement = resolveBinding4.getJavaElement();
                } else if (nodeType != 71 && nodeType != 81) {
                    if (nodeType != 93 || (resolveBinding = ((ModuleDeclaration) parent).resolveBinding()) == null) {
                        return null;
                    }
                    javaElement = resolveBinding.getJavaElement();
                }
            }
            javaElement = ((AbstractTypeDeclaration) parent).resolveBinding().getJavaElement();
        } else {
            IJavaElement javaElement2 = ((CompilationUnit) parent.getParent()).getJavaElement();
            javaElement = javaElement2 instanceof ICompilationUnit ? ((ICompilationUnit) javaElement2).getPackageDeclaration(((PackageDeclaration) parent).getName().getFullyQualifiedName()) : null;
        }
        if (javaElement instanceof IAnnotatable) {
            return ((javaElement instanceof IMember) && ((IMember) javaElement).isBinary()) ? ((IAnnotatable) javaElement).getAnnotation(getAnnotationType().getQualifiedName()) : ((IAnnotatable) javaElement).getAnnotation(getName());
        }
        return null;
    }

    @Override
    public String getKey() {
        if (this.key == null) {
            this.key = new String(this.binding.computeUniqueKey(getRecipientKey().toCharArray()));
        }
        return this.key;
    }

    @Override
    public int getKind() {
        return 5;
    }

    @Override
    public int getModifiers() {
        return 0;
    }

    @Override
    public String getName() {
        ITypeBinding annotationType = getAnnotationType();
        return annotationType == null ? new String(this.binding.getAnnotationType().sourceName()) : annotationType.getName();
    }

    @Override
    public boolean isDeprecated() {
        ReferenceBinding annotationType = this.binding.getAnnotationType();
        if (annotationType == null) {
            return false;
        }
        return annotationType.isDeprecated();
    }

    @Override
    public boolean isEqualTo(IBinding iBinding) {
        if (this == iBinding) {
            return true;
        }
        if (iBinding.getKind() != 5) {
            return false;
        }
        IAnnotationBinding iAnnotationBinding = (IAnnotationBinding) iBinding;
        if (!getAnnotationType().isEqualTo(iAnnotationBinding.getAnnotationType())) {
            return false;
        }
        IMemberValuePairBinding[] declaredMemberValuePairs = getDeclaredMemberValuePairs();
        IMemberValuePairBinding[] declaredMemberValuePairs2 = iAnnotationBinding.getDeclaredMemberValuePairs();
        if (declaredMemberValuePairs.length != declaredMemberValuePairs2.length) {
            return false;
        }
        int length = declaredMemberValuePairs.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (!declaredMemberValuePairs[i10].isEqualTo(declaredMemberValuePairs2[i10])) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean isRecovered() {
        ReferenceBinding annotationType = this.binding.getAnnotationType();
        return annotationType == null || (annotationType.tagBits & 128) != 0;
    }

    @Override
    public boolean isSynthetic() {
        return false;
    }

    @Override
    public String toString() {
        ITypeBinding annotationType = getAnnotationType();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('@');
        if (annotationType != null) {
            stringBuffer.append(annotationType.getName());
        }
        stringBuffer.append('(');
        IMemberValuePairBinding[] declaredMemberValuePairs = getDeclaredMemberValuePairs();
        int length = declaredMemberValuePairs.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(declaredMemberValuePairs[i10].toString());
        }
        stringBuffer.append(')');
        return stringBuffer.toString();
    }
}
