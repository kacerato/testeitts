package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BaseTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.CaptureBinding;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.IntersectionTypeBinding18;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.RawTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.util.Util;

public class TypeBinding implements ITypeBinding {
    private static final String NO_NAME = "";
    private static final int VALID_MODIFIERS = 3103;
    private IAnnotationBinding[] annotations;
    org.eclipse.jdt.internal.compiler.lookup.TypeBinding binding;
    private ITypeBinding[] bounds;
    private IVariableBinding[] fields;
    private ITypeBinding[] interfaces;
    private String key;
    private ITypeBinding[] members;
    private IMethodBinding[] methods;
    private TypeBinding prototype;
    protected BindingResolver resolver;
    private IAnnotationBinding[] typeAnnotations;
    private ITypeBinding[] typeArguments;
    private ITypeBinding[] typeParameters;
    private static final org.eclipse.jdt.internal.compiler.ast.StringLiteral EXPRESSION = new org.eclipse.jdt.internal.compiler.ast.StringLiteral(0, 0);
    protected static final IMethodBinding[] NO_METHOD_BINDINGS = new IMethodBinding[0];
    protected static final ITypeBinding[] NO_TYPE_BINDINGS = new ITypeBinding[0];
    protected static final IVariableBinding[] NO_VARIABLE_BINDINGS = new IVariableBinding[0];

    public static class LocalTypeBinding extends TypeBinding {
        private IBinding declaringMember;

        public LocalTypeBinding(BindingResolver bindingResolver, org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding, IBinding iBinding) {
            super(bindingResolver, typeBinding);
            this.declaringMember = iBinding;
        }

        @Override
        public IBinding getDeclaringMember() {
            return this.declaringMember;
        }
    }

    public TypeBinding(BindingResolver bindingResolver, org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding) {
        ITypeBinding iTypeBinding = null;
        this.prototype = null;
        this.binding = typeBinding;
        this.resolver = bindingResolver;
        org.eclipse.jdt.internal.compiler.lookup.TypeBinding prototype = typeBinding.prototype();
        if (prototype != null && prototype != typeBinding) {
            iTypeBinding = bindingResolver.getTypeBinding(prototype);
        }
        this.prototype = (TypeBinding) iTypeBinding;
    }

    public static TypeBinding createTypeBinding(BindingResolver bindingResolver, org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding, IBinding iBinding) {
        return iBinding != null ? new LocalTypeBinding(bindingResolver, typeBinding, iBinding) : new TypeBinding(bindingResolver, typeBinding);
    }

    private ITypeBinding[] getIntersectingTypes() {
        ITypeBinding[] iTypeBindingArr = NO_TYPE_BINDINGS;
        org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding = this.binding;
        if (!(typeBinding instanceof IntersectionTypeBinding18)) {
            return iTypeBindingArr;
        }
        ReferenceBinding[] intersectingTypes = typeBinding.getIntersectingTypes();
        int length = intersectingTypes.length;
        ITypeBinding[] iTypeBindingArr2 = new ITypeBinding[length];
        for (int i10 = 0; i10 < length; i10++) {
            iTypeBindingArr2[i10] = this.resolver.getTypeBinding(intersectingTypes[i10]);
        }
        return iTypeBindingArr2;
    }

    private JavaElement getUnresolvedJavaElement() {
        return getUnresolvedJavaElement(this.binding);
    }

    private IAnnotationBinding[] resolveAnnotationBindings(org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding[] annotationBindingArr, boolean z10) {
        int length = annotationBindingArr == null ? 0 : annotationBindingArr.length;
        if (length == 0) {
            return AnnotationBinding.NoAnnotations;
        }
        IAnnotationBinding[] iAnnotationBindingArr = new IAnnotationBinding[length];
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding annotationBinding = annotationBindingArr[i11];
            if (z10 && annotationBinding == null) {
                break;
            }
            IAnnotationBinding annotationInstance = this.resolver.getAnnotationInstance(annotationBinding);
            if (annotationInstance != null) {
                iAnnotationBindingArr[i10] = annotationInstance;
                i10++;
            }
        }
        if (i10 == length) {
            return iAnnotationBindingArr;
        }
        if (i10 == 0) {
            AnnotationBinding[] annotationBindingArr2 = AnnotationBinding.NoAnnotations;
            this.annotations = annotationBindingArr2;
            return annotationBindingArr2;
        }
        IAnnotationBinding[] iAnnotationBindingArr2 = new IAnnotationBinding[i10];
        System.arraycopy(iAnnotationBindingArr, 0, iAnnotationBindingArr2, 0, i10);
        return iAnnotationBindingArr2;
    }

    @Override
    public ITypeBinding createArrayType(int i10) {
        int dimensions = getDimensions() + i10;
        if (dimensions < 1 || dimensions > 255) {
            throw new IllegalArgumentException();
        }
        return this.resolver.resolveArrayType(this, i10);
    }

    @Override
    public IAnnotationBinding[] getAnnotations() {
        TypeBinding typeBinding = this.prototype;
        if (typeBinding != null) {
            return typeBinding.getAnnotations();
        }
        IAnnotationBinding[] iAnnotationBindingArr = this.annotations;
        if (iAnnotationBindingArr != null) {
            return iAnnotationBindingArr;
        }
        org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding2 = this.binding;
        ReferenceBinding genericType = typeBinding2 instanceof ParameterizedTypeBinding ? ((ParameterizedTypeBinding) typeBinding2).genericType() : (typeBinding2.isAnnotationType() || this.binding.isClass() || this.binding.isEnum() || this.binding.isInterface()) ? (ReferenceBinding) this.binding : null;
        if (genericType != null) {
            IAnnotationBinding[] resolveAnnotationBindings = resolveAnnotationBindings(genericType.getAnnotations(), false);
            this.annotations = resolveAnnotationBindings;
            return resolveAnnotationBindings;
        }
        AnnotationBinding[] annotationBindingArr = AnnotationBinding.NoAnnotations;
        this.annotations = annotationBindingArr;
        return annotationBindingArr;
    }

    @Override
    public String getBinaryName() {
        if (this.binding.isCapture()) {
            return null;
        }
        if (!this.binding.isTypeVariable()) {
            char[] constantPoolName = this.binding.constantPoolName();
            if (constantPoolName == null) {
                return null;
            }
            return new String(CharOperation.replaceOnCopy(constantPoolName, '/', '.'));
        }
        TypeVariableBinding typeVariableBinding = (TypeVariableBinding) this.binding;
        Binding binding = typeVariableBinding.declaringElement;
        StringBuffer stringBuffer = new StringBuffer();
        if (binding.kind() != 8) {
            char[] constantPoolName2 = ((org.eclipse.jdt.internal.compiler.lookup.TypeBinding) binding).constantPoolName();
            if (constantPoolName2 == null) {
                return null;
            }
            stringBuffer.append(CharOperation.replaceOnCopy(constantPoolName2, '/', '.'));
            stringBuffer.append('$');
            stringBuffer.append(typeVariableBinding.sourceName);
        } else {
            org.eclipse.jdt.internal.compiler.lookup.MethodBinding methodBinding = (org.eclipse.jdt.internal.compiler.lookup.MethodBinding) binding;
            char[] constantPoolName3 = methodBinding.declaringClass.constantPoolName();
            if (constantPoolName3 == null) {
                return null;
            }
            stringBuffer.append(CharOperation.replaceOnCopy(constantPoolName3, '/', '.'));
            stringBuffer.append('$');
            stringBuffer.append(methodBinding.signature());
            stringBuffer.append('$');
            stringBuffer.append(typeVariableBinding.sourceName);
        }
        return String.valueOf(stringBuffer);
    }

    @Override
    public ITypeBinding getBound() {
        org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding;
        int kind = this.binding.kind();
        if ((kind == 516 || kind == 8196) && (typeBinding = ((WildcardBinding) this.binding).bound) != null) {
            return this.resolver.getTypeBinding(typeBinding);
        }
        return null;
    }

    @Override
    public ITypeBinding getComponentType() {
        if (!isArray()) {
            return null;
        }
        return this.resolver.getTypeBinding(((ArrayBinding) this.binding).elementsType());
    }

    @Override
    public synchronized IVariableBinding[] getDeclaredFields() {
        TypeBinding typeBinding = this.prototype;
        if (typeBinding != null) {
            return typeBinding.getDeclaredFields();
        }
        IVariableBinding[] iVariableBindingArr = this.fields;
        if (iVariableBindingArr != null) {
            return iVariableBindingArr;
        }
        try {
        } catch (RuntimeException e10) {
            Util.log(e10, "Could not retrieve declared fields");
        }
        if (!isClass()) {
            if (!isInterface()) {
                if (isEnum()) {
                }
                IVariableBinding[] iVariableBindingArr2 = NO_VARIABLE_BINDINGS;
                this.fields = iVariableBindingArr2;
                return iVariableBindingArr2;
            }
        }
        FieldBinding[] availableFields = ((ReferenceBinding) this.binding).availableFields();
        int length = availableFields.length;
        if (length != 0) {
            IVariableBinding[] iVariableBindingArr3 = new IVariableBinding[length];
            int i10 = 0;
            for (FieldBinding fieldBinding : availableFields) {
                IVariableBinding variableBinding = this.resolver.getVariableBinding(fieldBinding);
                if (variableBinding != null) {
                    int i11 = i10 + 1;
                    iVariableBindingArr3[i10] = variableBinding;
                    i10 = i11;
                }
            }
            if (i10 != length) {
                if (i10 == 0) {
                    IVariableBinding[] iVariableBindingArr4 = NO_VARIABLE_BINDINGS;
                    this.fields = iVariableBindingArr4;
                    return iVariableBindingArr4;
                }
                IVariableBinding[] iVariableBindingArr5 = new IVariableBinding[i10];
                System.arraycopy(iVariableBindingArr3, 0, iVariableBindingArr5, 0, i10);
                iVariableBindingArr3 = iVariableBindingArr5;
            }
            this.fields = iVariableBindingArr3;
            return iVariableBindingArr3;
        }
        IVariableBinding[] iVariableBindingArr22 = NO_VARIABLE_BINDINGS;
        this.fields = iVariableBindingArr22;
        return iVariableBindingArr22;
    }

    @Override
    public synchronized IMethodBinding[] getDeclaredMethods() {
        IMethodBinding methodBinding;
        TypeBinding typeBinding = this.prototype;
        if (typeBinding != null) {
            return typeBinding.getDeclaredMethods();
        }
        IMethodBinding[] iMethodBindingArr = this.methods;
        if (iMethodBindingArr != null) {
            return iMethodBindingArr;
        }
        try {
        } catch (RuntimeException e10) {
            Util.log(e10, "Could not retrieve declared methods");
        }
        if (!isClass()) {
            if (!isInterface()) {
                if (isEnum()) {
                }
                IMethodBinding[] iMethodBindingArr2 = NO_METHOD_BINDINGS;
                this.methods = iMethodBindingArr2;
                return iMethodBindingArr2;
            }
        }
        org.eclipse.jdt.internal.compiler.lookup.MethodBinding[] availableMethods = ((ReferenceBinding) this.binding).availableMethods();
        int length = availableMethods.length;
        if (length != 0) {
            IMethodBinding[] iMethodBindingArr3 = new IMethodBinding[length];
            int i10 = 0;
            for (org.eclipse.jdt.internal.compiler.lookup.MethodBinding methodBinding2 : availableMethods) {
                if (!methodBinding2.isDefaultAbstract() && !methodBinding2.isSynthetic() && ((!methodBinding2.isConstructor() || !isInterface()) && (methodBinding = this.resolver.getMethodBinding(methodBinding2)) != null)) {
                    int i11 = i10 + 1;
                    iMethodBindingArr3[i10] = methodBinding;
                    i10 = i11;
                }
            }
            if (i10 != length) {
                if (i10 == 0) {
                    IMethodBinding[] iMethodBindingArr4 = NO_METHOD_BINDINGS;
                    this.methods = iMethodBindingArr4;
                    return iMethodBindingArr4;
                }
                IMethodBinding[] iMethodBindingArr5 = new IMethodBinding[i10];
                System.arraycopy(iMethodBindingArr3, 0, iMethodBindingArr5, 0, i10);
                iMethodBindingArr3 = iMethodBindingArr5;
            }
            this.methods = iMethodBindingArr3;
            return iMethodBindingArr3;
        }
        IMethodBinding[] iMethodBindingArr22 = NO_METHOD_BINDINGS;
        this.methods = iMethodBindingArr22;
        return iMethodBindingArr22;
    }

    @Override
    public int getDeclaredModifiers() {
        return getModifiers();
    }

    @Override
    public synchronized ITypeBinding[] getDeclaredTypes() {
        try {
            ITypeBinding[] iTypeBindingArr = this.members;
            if (iTypeBindingArr != null) {
                return iTypeBindingArr;
            }
            try {
            } catch (RuntimeException e10) {
                Util.log(e10, "Could not retrieve declared methods");
            }
            if (!isClass()) {
                if (!isInterface()) {
                    if (isEnum()) {
                    }
                    ITypeBinding[] iTypeBindingArr2 = NO_TYPE_BINDINGS;
                    this.members = iTypeBindingArr2;
                    return iTypeBindingArr2;
                }
            }
            ReferenceBinding[] memberTypes = ((ReferenceBinding) this.binding).memberTypes();
            int length = memberTypes.length;
            if (length != 0) {
                ITypeBinding[] iTypeBindingArr3 = new ITypeBinding[length];
                for (int i10 = 0; i10 < length; i10++) {
                    ITypeBinding typeBinding = this.resolver.getTypeBinding(memberTypes[i10]);
                    if (typeBinding == null) {
                        ITypeBinding[] iTypeBindingArr4 = NO_TYPE_BINDINGS;
                        this.members = iTypeBindingArr4;
                        return iTypeBindingArr4;
                    }
                    iTypeBindingArr3[i10] = typeBinding;
                }
                this.members = iTypeBindingArr3;
                return iTypeBindingArr3;
            }
            ITypeBinding[] iTypeBindingArr22 = NO_TYPE_BINDINGS;
            this.members = iTypeBindingArr22;
            return iTypeBindingArr22;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public synchronized ITypeBinding getDeclaringClass() {
        try {
            if (!isClass() && !isInterface() && !isEnum()) {
                if (this.binding.isTypeVariable()) {
                    TypeVariableBinding typeVariableBinding = (TypeVariableBinding) this.binding;
                    Object obj = typeVariableBinding.isCapture() ? ((CaptureBinding) typeVariableBinding).sourceType : typeVariableBinding.declaringElement;
                    if (obj instanceof ReferenceBinding) {
                        try {
                            return this.resolver.getTypeBinding((ReferenceBinding) obj);
                        } catch (RuntimeException e10) {
                            Util.log(e10, "Could not retrieve declaring class");
                        }
                    }
                }
                return null;
            }
            ReferenceBinding referenceBinding = (ReferenceBinding) this.binding;
            if (referenceBinding.isNestedType()) {
                try {
                    return this.resolver.getTypeBinding(referenceBinding.enclosingType());
                } catch (RuntimeException e11) {
                    Util.log(e11, "Could not retrieve declaring class");
                }
            }
            return null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public IBinding getDeclaringMember() {
        return null;
    }

    @Override
    public synchronized IMethodBinding getDeclaringMethod() {
        org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding = this.binding;
        if (typeBinding instanceof org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding) {
            org.eclipse.jdt.internal.compiler.lookup.MethodBinding methodBinding = ((org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding) typeBinding).enclosingMethod;
            if (methodBinding != null) {
                try {
                    return this.resolver.getMethodBinding(methodBinding);
                } catch (RuntimeException e10) {
                    Util.log(e10, "Could not retrieve declaring method");
                }
            }
            return null;
        }
        if (typeBinding.isTypeVariable()) {
            Binding binding = ((TypeVariableBinding) this.binding).declaringElement;
            if (binding instanceof org.eclipse.jdt.internal.compiler.lookup.MethodBinding) {
                try {
                    return this.resolver.getMethodBinding((org.eclipse.jdt.internal.compiler.lookup.MethodBinding) binding);
                } catch (RuntimeException e11) {
                    Util.log(e11, "Could not retrieve declaring method");
                }
            }
        }
        return null;
    }

    @Override
    public int getDimensions() {
        if (isArray()) {
            return ((ArrayBinding) this.binding).dimensions;
        }
        return 0;
    }

    @Override
    public ITypeBinding getElementType() {
        if (!isArray()) {
            return null;
        }
        return this.resolver.getTypeBinding(((ArrayBinding) this.binding).leafComponentType);
    }

    @Override
    public ITypeBinding getErasure() {
        return this.resolver.getTypeBinding(this.binding.erasure());
    }

    @Override
    public IMethodBinding getFunctionalInterfaceMethod() {
        org.eclipse.jdt.internal.compiler.lookup.MethodBinding singleAbstractMethod;
        CompilationUnitScope scope = this.resolver.scope();
        org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding = this.binding;
        if (typeBinding == null || scope == null || (singleAbstractMethod = typeBinding.getSingleAbstractMethod(scope, true)) == null || !singleAbstractMethod.isValidBinding()) {
            return null;
        }
        return this.resolver.getMethodBinding(singleAbstractMethod);
    }

    @Override
    public ITypeBinding getGenericTypeOfWildcardType() {
        ReferenceBinding referenceBinding;
        if (this.binding.kind() == 516 && (referenceBinding = ((WildcardBinding) this.binding).genericType) != null) {
            return this.resolver.getTypeBinding(referenceBinding);
        }
        return null;
    }

    @Override
    public synchronized ITypeBinding[] getInterfaces() {
        ReferenceBinding[] referenceBindingArr;
        TypeBinding typeBinding = this.prototype;
        if (typeBinding != null) {
            return typeBinding.getInterfaces();
        }
        ITypeBinding[] iTypeBindingArr = this.interfaces;
        if (iTypeBindingArr != null) {
            return iTypeBindingArr;
        }
        org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding2 = this.binding;
        if (typeBinding2 == null) {
            ITypeBinding[] iTypeBindingArr2 = NO_TYPE_BINDINGS;
            this.interfaces = iTypeBindingArr2;
            return iTypeBindingArr2;
        }
        int kind = typeBinding2.kind();
        if (kind == 68 || kind == 132) {
            ITypeBinding[] iTypeBindingArr3 = NO_TYPE_BINDINGS;
            this.interfaces = iTypeBindingArr3;
            return iTypeBindingArr3;
        }
        try {
            referenceBindingArr = ((ReferenceBinding) this.binding).superInterfaces();
        } catch (RuntimeException e10) {
            Util.log(e10, "Could not retrieve interfaces");
            referenceBindingArr = null;
        }
        int length = referenceBindingArr == null ? 0 : referenceBindingArr.length;
        if (length == 0) {
            ITypeBinding[] iTypeBindingArr4 = NO_TYPE_BINDINGS;
            this.interfaces = iTypeBindingArr4;
            return iTypeBindingArr4;
        }
        ITypeBinding[] iTypeBindingArr5 = new ITypeBinding[length];
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            ITypeBinding typeBinding3 = this.resolver.getTypeBinding(referenceBindingArr[i11]);
            if (typeBinding3 != null) {
                iTypeBindingArr5[i10] = typeBinding3;
                i10++;
            }
        }
        if (length != i10) {
            ITypeBinding[] iTypeBindingArr6 = new ITypeBinding[i10];
            System.arraycopy(iTypeBindingArr5, 0, iTypeBindingArr6, 0, i10);
            iTypeBindingArr5 = iTypeBindingArr6;
        }
        this.interfaces = iTypeBindingArr5;
        return iTypeBindingArr5;
    }

    @Override
    public IJavaElement getJavaElement() {
        IPackageBinding iPackageBinding;
        IJavaElement javaElement;
        JavaElement unresolvedJavaElement = getUnresolvedJavaElement();
        if (unresolvedJavaElement != null) {
            return unresolvedJavaElement.resolved(this.binding);
        }
        if (!isRecovered() || (iPackageBinding = getPackage()) == null || (javaElement = iPackageBinding.getJavaElement()) == null || javaElement.getElementType() != 4) {
            return null;
        }
        return ((PackageFragment) javaElement).getCompilationUnit(new String(this.binding.sourceName()) + ".java").getType(getName());
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
        return 2;
    }

    @Override
    public int getModifiers() {
        if (isClass()) {
            ReferenceBinding referenceBinding = (ReferenceBinding) this.binding;
            int accessFlags = referenceBinding.getAccessFlags();
            return referenceBinding.isAnonymousType() ? accessFlags & 3087 : accessFlags & VALID_MODIFIERS;
        }
        if (!isAnnotation() && !isInterface()) {
            if (isEnum()) {
                return ((ReferenceBinding) this.binding).getAccessFlags() & VALID_MODIFIERS;
            }
            return 0;
        }
        return ((ReferenceBinding) this.binding).getAccessFlags() & 2079;
    }

    @Override
    public IModuleBinding getModule() {
        IPackageBinding packageBinding;
        org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding = this.binding;
        if (!(typeBinding instanceof ReferenceBinding) || typeBinding.isTypeVariable() || (packageBinding = this.resolver.getPackageBinding(((ReferenceBinding) this.binding).getPackage())) == null) {
            return null;
        }
        return packageBinding.getModule();
    }

    @Override
    public String getName() {
        int kind = this.binding.kind();
        if (kind == 68) {
            ITypeBinding elementType = getElementType();
            if (elementType.isLocal() || elementType.isAnonymous() || elementType.isCapture()) {
                return "";
            }
            int dimensions = getDimensions() * 2;
            char[] cArr = new char[dimensions];
            for (int i10 = dimensions - 1; i10 >= 0; i10 -= 2) {
                cArr[i10] = JavaElement.JEM_TYPE_PARAMETER;
                cArr[i10 - 1] = '[';
            }
            StringBuffer stringBuffer = new StringBuffer(elementType.getName());
            stringBuffer.append(cArr);
            return String.valueOf(stringBuffer);
        }
        if (kind == 260) {
            ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding) this.binding;
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(parameterizedTypeBinding.sourceName());
            ITypeBinding[] typeArguments = getTypeArguments();
            int length = typeArguments.length;
            if (length != 0) {
                stringBuffer2.append('<');
                for (int i11 = 0; i11 < length; i11++) {
                    if (i11 > 0) {
                        stringBuffer2.append(IIndexConstants.PARAMETER_SEPARATOR);
                    }
                    stringBuffer2.append(typeArguments[i11].getName());
                }
                stringBuffer2.append('>');
            }
            return String.valueOf(stringBuffer2);
        }
        if (kind != 516) {
            if (kind == 1028) {
                return getTypeDeclaration().getName();
            }
            if (kind == 4100) {
                return isCapture() ? "" : new String(((TypeVariableBinding) this.binding).sourceName);
            }
            if (kind != 8196) {
                return kind != 32772 ? (isPrimitive() || isNullType()) ? new String(((BaseTypeBinding) this.binding).simpleName) : isAnonymous() ? "" : new String(this.binding.sourceName()) : new String(((IntersectionTypeBinding18) this.binding).getIntersectingTypes()[0].sourceName());
            }
        }
        WildcardBinding wildcardBinding = (WildcardBinding) this.binding;
        StringBuffer stringBuffer3 = new StringBuffer();
        stringBuffer3.append(TypeConstants.WILDCARD_NAME);
        if (wildcardBinding.bound != null) {
            int i12 = wildcardBinding.boundKind;
            if (i12 == 1) {
                stringBuffer3.append(TypeConstants.WILDCARD_EXTENDS);
            } else if (i12 == 2) {
                stringBuffer3.append(TypeConstants.WILDCARD_SUPER);
            }
            stringBuffer3.append(getBound().getName());
        }
        return String.valueOf(stringBuffer3);
    }

    @Override
    public IPackageBinding getPackage() {
        int kind = this.binding.kind();
        if (kind == 68 || kind == 132 || kind == 516 || kind == 4100 || kind == 8196 || kind == 32772) {
            return null;
        }
        return this.resolver.getPackageBinding(((ReferenceBinding) this.binding).getPackage());
    }

    @Override
    public String getQualifiedName() {
        char[][] cArr;
        int kind = this.binding.kind();
        if (kind == 68) {
            ITypeBinding elementType = getElementType();
            if (elementType.isLocal() || elementType.isAnonymous() || elementType.isCapture()) {
                return elementType.getQualifiedName();
            }
            int dimensions = getDimensions() * 2;
            char[] cArr2 = new char[dimensions];
            for (int i10 = dimensions - 1; i10 >= 0; i10 -= 2) {
                cArr2[i10] = JavaElement.JEM_TYPE_PARAMETER;
                cArr2[i10 - 1] = '[';
            }
            StringBuffer stringBuffer = new StringBuffer(elementType.getQualifiedName());
            stringBuffer.append(cArr2);
            return String.valueOf(stringBuffer);
        }
        if (kind == 260) {
            if (this.binding.isLocalType()) {
                return "";
            }
            StringBuffer stringBuffer2 = new StringBuffer();
            int i11 = 0;
            if (!isMember()) {
                stringBuffer2.append(getTypeDeclaration().getQualifiedName());
                ITypeBinding[] typeArguments = getTypeArguments();
                int length = typeArguments.length;
                if (length != 0) {
                    stringBuffer2.append('<');
                    while (i11 < length) {
                        if (i11 > 0) {
                            stringBuffer2.append(IIndexConstants.PARAMETER_SEPARATOR);
                        }
                        stringBuffer2.append(typeArguments[i11].getQualifiedName());
                        i11++;
                    }
                    stringBuffer2.append('>');
                }
                return String.valueOf(stringBuffer2);
            }
            stringBuffer2.append(getDeclaringClass().getQualifiedName());
            stringBuffer2.append('.');
            stringBuffer2.append(((ParameterizedTypeBinding) this.binding).sourceName());
            ITypeBinding[] typeArguments2 = getTypeArguments();
            int length2 = typeArguments2.length;
            if (length2 != 0) {
                stringBuffer2.append('<');
                while (i11 < length2) {
                    if (i11 > 0) {
                        stringBuffer2.append(IIndexConstants.PARAMETER_SEPARATOR);
                    }
                    stringBuffer2.append(typeArguments2[i11].getQualifiedName());
                    i11++;
                }
                stringBuffer2.append('>');
            }
            return String.valueOf(stringBuffer2);
        }
        if (kind != 516) {
            if (kind == 1028) {
                return getTypeDeclaration().getQualifiedName();
            }
            if (kind == 4100) {
                return isCapture() ? "" : new String(((TypeVariableBinding) this.binding).sourceName);
            }
            if (kind != 8196) {
                if (isAnonymous() || this.binding.isLocalType() || this.binding.isIntersectionType18()) {
                    return "";
                }
                if (isPrimitive() || isNullType()) {
                    return new String(((BaseTypeBinding) this.binding).simpleName);
                }
                if (isMember()) {
                    StringBuffer stringBuffer3 = new StringBuffer();
                    stringBuffer3.append(getDeclaringClass().getQualifiedName());
                    stringBuffer3.append('.');
                    stringBuffer3.append(getName());
                    return String.valueOf(stringBuffer3);
                }
                org.eclipse.jdt.internal.compiler.lookup.PackageBinding packageBinding = this.binding.getPackage();
                StringBuffer stringBuffer4 = new StringBuffer();
                if (packageBinding != null && (cArr = packageBinding.compoundName) != CharOperation.NO_CHAR_CHAR) {
                    stringBuffer4.append(CharOperation.concatWith(cArr, '.'));
                    stringBuffer4.append('.');
                }
                stringBuffer4.append(getName());
                return String.valueOf(stringBuffer4);
            }
        }
        WildcardBinding wildcardBinding = (WildcardBinding) this.binding;
        StringBuffer stringBuffer5 = new StringBuffer();
        stringBuffer5.append(TypeConstants.WILDCARD_NAME);
        ITypeBinding bound = getBound();
        if (bound != null) {
            int i12 = wildcardBinding.boundKind;
            if (i12 == 1) {
                stringBuffer5.append(TypeConstants.WILDCARD_EXTENDS);
            } else if (i12 == 2) {
                stringBuffer5.append(TypeConstants.WILDCARD_SUPER);
            }
            stringBuffer5.append(bound.getQualifiedName());
        }
        return String.valueOf(stringBuffer5);
    }

    @Override
    public int getRank() {
        int kind = this.binding.kind();
        if (kind == 516 || kind == 8196) {
            return ((WildcardBinding) this.binding).rank;
        }
        return -1;
    }

    @Override
    public synchronized ITypeBinding getSuperclass() {
        org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding = this.binding;
        if (typeBinding == null) {
            return null;
        }
        int kind = typeBinding.kind();
        if (kind == 68 || kind == 132) {
            return null;
        }
        if (this.binding.isInterface()) {
            return null;
        }
        try {
            ReferenceBinding superclass = ((ReferenceBinding) this.binding).superclass();
            if (superclass == null) {
                return null;
            }
            return this.resolver.getTypeBinding(superclass);
        } catch (RuntimeException e10) {
            Util.log(e10, "Could not retrieve superclass");
            return this.resolver.resolveWellKnownType("java.lang.Object");
        }
    }

    @Override
    public IAnnotationBinding[] getTypeAnnotations() {
        IAnnotationBinding[] iAnnotationBindingArr = this.typeAnnotations;
        if (iAnnotationBindingArr != null) {
            return iAnnotationBindingArr;
        }
        IAnnotationBinding[] resolveAnnotationBindings = resolveAnnotationBindings(this.binding.getTypeAnnotations(), true);
        this.typeAnnotations = resolveAnnotationBindings;
        return resolveAnnotationBindings;
    }

    @Override
    public ITypeBinding[] getTypeArguments() {
        TypeBinding typeBinding = this.prototype;
        if (typeBinding != null) {
            return typeBinding.getTypeArguments();
        }
        ITypeBinding[] iTypeBindingArr = this.typeArguments;
        if (iTypeBindingArr != null) {
            return iTypeBindingArr;
        }
        if (!this.binding.isParameterizedTypeWithActualArguments()) {
            ITypeBinding[] iTypeBindingArr2 = NO_TYPE_BINDINGS;
            this.typeArguments = iTypeBindingArr2;
            return iTypeBindingArr2;
        }
        org.eclipse.jdt.internal.compiler.lookup.TypeBinding[] typeBindingArr = ((ParameterizedTypeBinding) this.binding).arguments;
        int length = typeBindingArr.length;
        ITypeBinding[] iTypeBindingArr3 = new ITypeBinding[length];
        for (int i10 = 0; i10 < length; i10++) {
            ITypeBinding typeBinding2 = this.resolver.getTypeBinding(typeBindingArr[i10]);
            if (typeBinding2 == null) {
                ITypeBinding[] iTypeBindingArr4 = NO_TYPE_BINDINGS;
                this.typeArguments = iTypeBindingArr4;
                return iTypeBindingArr4;
            }
            iTypeBindingArr3[i10] = typeBinding2;
        }
        this.typeArguments = iTypeBindingArr3;
        return iTypeBindingArr3;
    }

    @Override
    public ITypeBinding[] getTypeBounds() {
        TypeVariableBinding typeVariableBinding;
        int i10;
        int i11;
        int i12;
        TypeBinding typeBinding = this.prototype;
        if (typeBinding != null) {
            return typeBinding.getTypeBounds();
        }
        ITypeBinding[] iTypeBindingArr = this.bounds;
        if (iTypeBindingArr != null) {
            return iTypeBindingArr;
        }
        org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding2 = this.binding;
        org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding3 = null;
        if (typeBinding2 instanceof TypeVariableBinding) {
            typeVariableBinding = (TypeVariableBinding) typeBinding2;
        } else if (typeBinding2 instanceof WildcardBinding) {
            typeVariableBinding = ((WildcardBinding) typeBinding2).typeVariable();
        } else {
            if (typeBinding2 instanceof IntersectionTypeBinding18) {
                ITypeBinding[] intersectingTypes = getIntersectingTypes();
                this.bounds = intersectingTypes;
                return intersectingTypes;
            }
            typeVariableBinding = null;
        }
        if (typeVariableBinding != null) {
            org.eclipse.jdt.internal.compiler.lookup.TypeBinding superclass = typeVariableBinding.superclass();
            org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding4 = typeVariableBinding.firstBound;
            int i13 = 0;
            if (typeBinding4 != null) {
                if (org.eclipse.jdt.internal.compiler.lookup.TypeBinding.equalsEquals(typeBinding4, superclass) || typeBinding4.isArrayType()) {
                    typeBinding3 = typeBinding4;
                    i10 = 1;
                }
                i10 = 0;
            } else if (superclass == null || superclass.f102482id == 1) {
                typeBinding3 = typeBinding4;
                i10 = 0;
            } else {
                typeBinding3 = superclass;
                i10 = 1;
            }
            ReferenceBinding[] superInterfaces = typeVariableBinding.superInterfaces();
            if (superInterfaces != null) {
                i11 = superInterfaces.length;
                i10 += i11;
            } else {
                i11 = 0;
            }
            if (i10 != 0) {
                ITypeBinding[] iTypeBindingArr2 = new ITypeBinding[i10];
                if (typeBinding3 != null) {
                    ITypeBinding typeBinding5 = this.resolver.getTypeBinding(typeBinding3);
                    if (typeBinding5 == null) {
                        ITypeBinding[] iTypeBindingArr3 = NO_TYPE_BINDINGS;
                        this.bounds = iTypeBindingArr3;
                        return iTypeBindingArr3;
                    }
                    iTypeBindingArr2[0] = typeBinding5;
                    i12 = 1;
                } else {
                    i12 = 0;
                }
                if (superInterfaces != null) {
                    while (i13 < i11) {
                        ITypeBinding typeBinding6 = this.resolver.getTypeBinding(superInterfaces[i13]);
                        if (typeBinding6 == null) {
                            ITypeBinding[] iTypeBindingArr4 = NO_TYPE_BINDINGS;
                            this.bounds = iTypeBindingArr4;
                            return iTypeBindingArr4;
                        }
                        iTypeBindingArr2[i12] = typeBinding6;
                        i13++;
                        i12++;
                    }
                }
                this.bounds = iTypeBindingArr2;
                return iTypeBindingArr2;
            }
        }
        ITypeBinding[] iTypeBindingArr5 = NO_TYPE_BINDINGS;
        this.bounds = iTypeBindingArr5;
        return iTypeBindingArr5;
    }

    @Override
    public ITypeBinding getTypeDeclaration() {
        org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding = this.binding;
        return typeBinding instanceof ParameterizedTypeBinding ? this.resolver.getTypeBinding(((ParameterizedTypeBinding) typeBinding).genericType()) : this.resolver.getTypeBinding(typeBinding.unannotated());
    }

    @Override
    public ITypeBinding[] getTypeParameters() {
        TypeBinding typeBinding = this.prototype;
        if (typeBinding != null) {
            return typeBinding.getTypeParameters();
        }
        ITypeBinding[] iTypeBindingArr = this.typeParameters;
        if (iTypeBindingArr != null) {
            return iTypeBindingArr;
        }
        int kind = this.binding.kind();
        if (kind == 260 || kind == 1028) {
            ITypeBinding[] iTypeBindingArr2 = NO_TYPE_BINDINGS;
            this.typeParameters = iTypeBindingArr2;
            return iTypeBindingArr2;
        }
        TypeVariableBinding[] typeVariables = this.binding.typeVariables();
        int length = typeVariables == null ? 0 : typeVariables.length;
        if (length == 0) {
            ITypeBinding[] iTypeBindingArr3 = NO_TYPE_BINDINGS;
            this.typeParameters = iTypeBindingArr3;
            return iTypeBindingArr3;
        }
        ITypeBinding[] iTypeBindingArr4 = new ITypeBinding[length];
        for (int i10 = 0; i10 < length; i10++) {
            ITypeBinding typeBinding2 = this.resolver.getTypeBinding(typeVariables[i10]);
            if (typeBinding2 == null) {
                ITypeBinding[] iTypeBindingArr5 = NO_TYPE_BINDINGS;
                this.typeParameters = iTypeBindingArr5;
                return iTypeBindingArr5;
            }
            iTypeBindingArr4[i10] = typeBinding2;
        }
        this.typeParameters = iTypeBindingArr4;
        return iTypeBindingArr4;
    }

    @Override
    public ITypeBinding getWildcard() {
        org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding = this.binding;
        if (typeBinding instanceof CaptureBinding) {
            return this.resolver.getTypeBinding(((CaptureBinding) typeBinding).wildcard);
        }
        return null;
    }

    @Override
    public boolean isAnnotation() {
        return this.binding.isAnnotationType();
    }

    @Override
    public boolean isAnonymous() {
        if (isClass() || isInterface() || isEnum()) {
            return ((ReferenceBinding) this.binding).isAnonymousType();
        }
        return false;
    }

    @Override
    public boolean isArray() {
        return this.binding.isArrayType();
    }

    @Override
    public boolean isAssignmentCompatible(ITypeBinding iTypeBinding) {
        if (this == iTypeBinding) {
            return true;
        }
        try {
            if (!(iTypeBinding instanceof TypeBinding)) {
                return false;
            }
            TypeBinding typeBinding = (TypeBinding) iTypeBinding;
            CompilationUnitScope scope = this.resolver.scope();
            if (scope == null) {
                return false;
            }
            if (!this.binding.isCompatibleWith(typeBinding.binding)) {
                if (!scope.isBoxingCompatibleWith(this.binding, typeBinding.binding)) {
                    return false;
                }
            }
            return true;
        } catch (AbortCompilation unused) {
            return false;
        }
    }

    @Override
    public boolean isCapture() {
        return this.binding.isCapture();
    }

    @Override
    public boolean isCastCompatible(ITypeBinding iTypeBinding) {
        try {
            CompilationUnitScope scope = this.resolver.scope();
            if (scope == null || !(iTypeBinding instanceof TypeBinding)) {
                return false;
            }
            return EXPRESSION.checkCastTypesCompatibility(scope, this.binding, ((TypeBinding) iTypeBinding).binding.capture(scope, 0, 0), null);
        } catch (AbortCompilation unused) {
            return false;
        }
    }

    @Override
    public boolean isClass() {
        int kind = this.binding.kind();
        if (kind == 516 || kind == 4100 || kind == 8196) {
            return false;
        }
        return this.binding.isClass();
    }

    @Override
    public boolean isDeprecated() {
        if (isClass() || isInterface() || isEnum()) {
            return ((ReferenceBinding) this.binding).isDeprecated();
        }
        return false;
    }

    @Override
    public boolean isEnum() {
        return this.binding.isEnum();
    }

    @Override
    public boolean isEqualTo(IBinding iBinding) {
        if (iBinding == this) {
            return true;
        }
        if (iBinding == null || !(iBinding instanceof TypeBinding)) {
            return false;
        }
        org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding = ((TypeBinding) iBinding).binding;
        if (org.eclipse.jdt.internal.compiler.lookup.TypeBinding.equalsEquals(typeBinding.unannotated(), this.binding.unannotated())) {
            return true;
        }
        return BindingComparator.isEqual(this.binding, typeBinding);
    }

    @Override
    public boolean isFromSource() {
        if (isClass() || isInterface() || isEnum()) {
            ReferenceBinding referenceBinding = (ReferenceBinding) this.binding;
            if (referenceBinding.isRawType()) {
                return !((RawTypeBinding) referenceBinding).genericType().isBinaryBinding();
            }
            if (!referenceBinding.isParameterizedType()) {
                return !referenceBinding.isBinaryBinding();
            }
            if (((ParameterizedTypeBinding) referenceBinding).erasure() instanceof ReferenceBinding) {
                return !((ReferenceBinding) r0).isBinaryBinding();
            }
            return false;
        }
        if (isTypeVariable()) {
            Binding binding = ((TypeVariableBinding) this.binding).declaringElement;
            if (binding instanceof org.eclipse.jdt.internal.compiler.lookup.MethodBinding) {
                return !((org.eclipse.jdt.internal.compiler.lookup.MethodBinding) binding).declaringClass.isBinaryBinding();
            }
            org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding = (org.eclipse.jdt.internal.compiler.lookup.TypeBinding) binding;
            if (typeBinding instanceof ReferenceBinding) {
                return !((ReferenceBinding) typeBinding).isBinaryBinding();
            }
            if (typeBinding instanceof ArrayBinding) {
                if (((ArrayBinding) typeBinding).leafComponentType instanceof ReferenceBinding) {
                    return !((ReferenceBinding) r0).isBinaryBinding();
                }
            }
        } else if (isCapture()) {
            return !((CaptureBinding) this.binding).sourceType.isBinaryBinding();
        }
        return false;
    }

    @Override
    public boolean isGenericType() {
        TypeVariableBinding[] typeVariables;
        return (isRawType() || (typeVariables = this.binding.typeVariables()) == null || typeVariables.length <= 0) ? false : true;
    }

    @Override
    public boolean isInterface() {
        int kind = this.binding.kind();
        if (kind == 516 || kind == 4100 || kind == 8196) {
            return false;
        }
        return this.binding.isInterface();
    }

    @Override
    public boolean isIntersectionType() {
        int kind = this.binding.kind();
        return kind == 32772 || kind == 8196;
    }

    @Override
    public boolean isLocal() {
        if (!isClass() && !isInterface() && !isEnum()) {
            return false;
        }
        ReferenceBinding referenceBinding = (ReferenceBinding) this.binding;
        return referenceBinding.isLocalType() && !referenceBinding.isMemberType();
    }

    @Override
    public boolean isMember() {
        if (isClass() || isInterface() || isEnum()) {
            return ((ReferenceBinding) this.binding).isMemberType();
        }
        return false;
    }

    @Override
    public boolean isNested() {
        if (isClass() || isInterface() || isEnum()) {
            return ((ReferenceBinding) this.binding).isNestedType();
        }
        return false;
    }

    @Override
    public boolean isNullType() {
        return this.binding == org.eclipse.jdt.internal.compiler.lookup.TypeBinding.NULL;
    }

    @Override
    public boolean isParameterizedType() {
        return this.binding.isParameterizedTypeWithActualArguments();
    }

    @Override
    public boolean isPrimitive() {
        return !isNullType() && this.binding.isBaseType();
    }

    @Override
    public boolean isRawType() {
        return this.binding.isRawType();
    }

    @Override
    public boolean isRecovered() {
        return (this.binding.tagBits & 128) != 0;
    }

    @Override
    public boolean isSubTypeCompatible(ITypeBinding iTypeBinding) {
        if (this == iTypeBinding) {
            return true;
        }
        try {
            if (this.binding.isBaseType() || !(iTypeBinding instanceof TypeBinding)) {
                return false;
            }
            TypeBinding typeBinding = (TypeBinding) iTypeBinding;
            if (typeBinding.binding.isBaseType()) {
                return false;
            }
            return this.binding.isCompatibleWith(typeBinding.binding);
        } catch (AbortCompilation unused) {
            return false;
        }
    }

    @Override
    public boolean isSynthetic() {
        return false;
    }

    @Override
    public boolean isTopLevel() {
        if (isClass() || isInterface() || isEnum()) {
            return !((ReferenceBinding) this.binding).isNestedType();
        }
        return false;
    }

    @Override
    public boolean isTypeVariable() {
        return this.binding.isTypeVariable() && !this.binding.isCapture();
    }

    @Override
    public boolean isUpperbound() {
        int kind = this.binding.kind();
        return kind != 516 ? kind == 8196 : ((WildcardBinding) this.binding).boundKind == 1;
    }

    @Override
    public boolean isWildcardType() {
        return this.binding.isWildcard();
    }

    @Override
    public String toString() {
        return this.binding.toString();
    }

    private JavaElement getUnresolvedJavaElement(org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding) {
        if (JavaCore.getPlugin() == null) {
            return null;
        }
        BindingResolver bindingResolver = this.resolver;
        if (!(bindingResolver instanceof DefaultBindingResolver)) {
            return null;
        }
        DefaultBindingResolver defaultBindingResolver = (DefaultBindingResolver) bindingResolver;
        if (defaultBindingResolver.fromJavaProject) {
            return Util.getUnresolvedJavaElement(typeBinding, defaultBindingResolver.workingCopyOwner, defaultBindingResolver.getBindingsToNodesMap());
        }
        return null;
    }
}
