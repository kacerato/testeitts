package org.eclipse.jdt.core.dom;

import android.util.Half;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedGenericMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.RawTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.util.Util;

public class MethodBinding implements IMethodBinding {
    private static final ITypeBinding[] NO_TYPE_BINDINGS = new ITypeBinding[0];
    static final IVariableBinding[] NO_VARIABLE_BINDINGS = new IVariableBinding[0];
    private static final int VALID_MODIFIERS = 68927;
    private volatile IAnnotationBinding[] annotations;
    protected org.eclipse.jdt.internal.compiler.lookup.MethodBinding binding;
    private volatile ITypeBinding declaringClass;
    private volatile ITypeBinding[] exceptionTypes;
    private volatile String key;
    private volatile String name;
    private volatile IAnnotationBinding[][] parameterAnnotations;
    private volatile ITypeBinding[] parameterTypes;
    protected BindingResolver resolver;
    private volatile ITypeBinding returnType;
    private volatile ITypeBinding[] typeArguments;
    private volatile ITypeBinding[] typeParameters;

    public static class LambdaMethod extends MethodBinding {
        private IBinding declaringMember;
        private MethodBinding implementation;
        private IVariableBinding[] syntheticOuterLocalVariables;

        public LambdaMethod(DefaultBindingResolver defaultBindingResolver, org.eclipse.jdt.internal.compiler.lookup.MethodBinding methodBinding, org.eclipse.jdt.internal.compiler.lookup.MethodBinding methodBinding2, IBinding iBinding) {
            super(defaultBindingResolver, methodBinding);
            this.implementation = new MethodBinding(defaultBindingResolver, methodBinding2);
            this.declaringMember = iBinding;
        }

        @Override
        public IAnnotationBinding[] getAnnotations() {
            return this.implementation.getAnnotations();
        }

        @Override
        public IBinding getDeclaringMember() {
            return this.declaringMember;
        }

        @Override
        public String getKey() {
            return this.implementation.getKey();
        }

        @Override
        public IMethodBinding getMethodDeclaration() {
            return this.resolver.getMethodBinding(this.binding);
        }

        @Override
        public int getModifiers() {
            return super.getModifiers() & Half.LOWEST_VALUE;
        }

        @Override
        public IAnnotationBinding[] getParameterAnnotations(int i10) {
            return this.implementation.getParameterAnnotations(i10);
        }

        @Override
        public ITypeBinding[] getParameterTypes() {
            return this.implementation.getParameterTypes();
        }

        @Override
        public IVariableBinding[] getSyntheticOuterLocals() {
            IVariableBinding[] iVariableBindingArr = this.syntheticOuterLocalVariables;
            return iVariableBindingArr != null ? iVariableBindingArr : MethodBinding.NO_VARIABLE_BINDINGS;
        }

        public void setSyntheticOuterLocals(IVariableBinding[] iVariableBindingArr) {
            this.syntheticOuterLocalVariables = iVariableBindingArr;
        }

        @Override
        public String toString() {
            return super.toString().replace("public abstract ", "public ");
        }
    }

    public MethodBinding(BindingResolver bindingResolver, org.eclipse.jdt.internal.compiler.lookup.MethodBinding methodBinding) {
        this.resolver = bindingResolver;
        this.binding = methodBinding;
    }

    private JavaElement getUnresolvedJavaElement() {
        if (JavaCore.getPlugin() == null) {
            return null;
        }
        BindingResolver bindingResolver = this.resolver;
        if (!(bindingResolver instanceof DefaultBindingResolver)) {
            return null;
        }
        DefaultBindingResolver defaultBindingResolver = (DefaultBindingResolver) bindingResolver;
        if (defaultBindingResolver.fromJavaProject) {
            return Util.getUnresolvedJavaElement(this.binding, defaultBindingResolver.workingCopyOwner, defaultBindingResolver.getBindingsToNodesMap());
        }
        return null;
    }

    public IAnnotationBinding[] filterTypeAnnotations(org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding[] annotationBindingArr) {
        IAnnotationBinding annotationInstance;
        int length = annotationBindingArr == null ? 0 : annotationBindingArr.length;
        if (length == 0) {
            return AnnotationBinding.NoAnnotations;
        }
        IAnnotationBinding[] iAnnotationBindingArr = new IAnnotationBinding[length];
        boolean isConstructor = isConstructor();
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding annotationBinding = annotationBindingArr[i11];
            long annotationTagBits = annotationBinding.getAnnotationType().getAnnotationTagBits();
            if ((!isConstructor || (1099511627776L & annotationTagBits) != 0 || (annotationTagBits & TagBits.AnnotationTargetMASK) == 0) && (annotationInstance = this.resolver.getAnnotationInstance(annotationBinding)) != null) {
                iAnnotationBindingArr[i10] = annotationInstance;
                i10++;
            }
        }
        if (i10 == length) {
            return iAnnotationBindingArr;
        }
        if (i10 == 0) {
            return AnnotationBinding.NoAnnotations;
        }
        IAnnotationBinding[] iAnnotationBindingArr2 = new IAnnotationBinding[i10];
        System.arraycopy(iAnnotationBindingArr, 0, iAnnotationBindingArr2, 0, i10);
        return iAnnotationBindingArr2;
    }

    @Override
    public IAnnotationBinding[] getAnnotations() {
        if (this.annotations != null) {
            return this.annotations;
        }
        IAnnotationBinding[] filterTypeAnnotations = filterTypeAnnotations(this.binding.getAnnotations());
        this.annotations = filterTypeAnnotations;
        return filterTypeAnnotations;
    }

    @Override
    public ITypeBinding getDeclaredReceiverType() {
        return this.resolver.getTypeBinding(this.binding.receiver);
    }

    @Override
    public ITypeBinding getDeclaringClass() {
        if (this.declaringClass == null) {
            this.declaringClass = this.resolver.getTypeBinding(this.binding.declaringClass);
        }
        return this.declaringClass;
    }

    @Override
    public IBinding getDeclaringMember() {
        return null;
    }

    @Override
    public Object getDefaultValue() {
        if (isAnnotationMember()) {
            return MemberValuePairBinding.buildDOMValue(this.binding.getDefaultValue(), this.resolver);
        }
        return null;
    }

    @Override
    public ITypeBinding[] getExceptionTypes() {
        if (this.exceptionTypes != null) {
            return this.exceptionTypes;
        }
        ReferenceBinding[] referenceBindingArr = this.binding.thrownExceptions;
        int length = referenceBindingArr == null ? 0 : referenceBindingArr.length;
        if (length == 0) {
            ITypeBinding[] iTypeBindingArr = NO_TYPE_BINDINGS;
            this.exceptionTypes = iTypeBindingArr;
            return iTypeBindingArr;
        }
        ITypeBinding[] iTypeBindingArr2 = new ITypeBinding[length];
        for (int i10 = 0; i10 < length; i10++) {
            ITypeBinding typeBinding = this.resolver.getTypeBinding(referenceBindingArr[i10]);
            if (typeBinding == null) {
                ITypeBinding[] iTypeBindingArr3 = NO_TYPE_BINDINGS;
                this.exceptionTypes = iTypeBindingArr3;
                return iTypeBindingArr3;
            }
            iTypeBindingArr2[i10] = typeBinding;
        }
        this.exceptionTypes = iTypeBindingArr2;
        return iTypeBindingArr2;
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
        return 4;
    }

    @Override
    public IMethodBinding getMethodDeclaration() {
        return this.resolver.getMethodBinding(this.binding.original());
    }

    @Override
    public int getModifiers() {
        return this.binding.getAccessFlags() & VALID_MODIFIERS;
    }

    @Override
    public String getName() {
        if (this.name == null) {
            if (this.binding.isConstructor()) {
                this.name = getDeclaringClass().getName();
            } else {
                this.name = new String(this.binding.selector);
            }
        }
        return this.name;
    }

    @Override
    public IAnnotationBinding[] getParameterAnnotations(int i10) {
        if (getParameterTypes() == NO_TYPE_BINDINGS) {
            return AnnotationBinding.NoAnnotations;
        }
        if (this.parameterAnnotations != null) {
            return this.parameterAnnotations[i10];
        }
        org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding[][] parameterAnnotations = this.binding.getParameterAnnotations();
        if (parameterAnnotations == null) {
            return AnnotationBinding.NoAnnotations;
        }
        int length = parameterAnnotations.length;
        IAnnotationBinding[][] iAnnotationBindingArr = new IAnnotationBinding[length];
        for (int i11 = 0; i11 < length; i11++) {
            org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding[] annotationBindingArr = parameterAnnotations[i11];
            int length2 = annotationBindingArr.length;
            iAnnotationBindingArr[i11] = new AnnotationBinding[length2];
            int i12 = 0;
            while (true) {
                if (i12 < length2) {
                    IAnnotationBinding annotationInstance = this.resolver.getAnnotationInstance(annotationBindingArr[i12]);
                    if (annotationInstance == null) {
                        iAnnotationBindingArr[i11] = AnnotationBinding.NoAnnotations;
                        break;
                    }
                    iAnnotationBindingArr[i11][i12] = annotationInstance;
                    i12++;
                }
            }
        }
        this.parameterAnnotations = iAnnotationBindingArr;
        return this.parameterAnnotations[i10];
    }

    @Override
    public ITypeBinding[] getParameterTypes() {
        if (this.parameterTypes != null) {
            return this.parameterTypes;
        }
        org.eclipse.jdt.internal.compiler.lookup.TypeBinding[] typeBindingArr = this.binding.parameters;
        int length = typeBindingArr == null ? 0 : typeBindingArr.length;
        if (length == 0) {
            ITypeBinding[] iTypeBindingArr = NO_TYPE_BINDINGS;
            this.parameterTypes = iTypeBindingArr;
            return iTypeBindingArr;
        }
        ITypeBinding[] iTypeBindingArr2 = new ITypeBinding[length];
        for (int i10 = 0; i10 < length; i10++) {
            org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding = typeBindingArr[i10];
            if (typeBinding == null) {
                StringBuffer stringBuffer = new StringBuffer("Report method binding where a parameter is null:\n");
                stringBuffer.append(toString());
                Util.log(new IllegalArgumentException(), stringBuffer.toString());
                ITypeBinding[] iTypeBindingArr3 = NO_TYPE_BINDINGS;
                this.parameterTypes = iTypeBindingArr3;
                return iTypeBindingArr3;
            }
            ITypeBinding typeBinding2 = this.resolver.getTypeBinding(typeBinding);
            if (typeBinding2 == null) {
                ITypeBinding[] iTypeBindingArr4 = NO_TYPE_BINDINGS;
                this.parameterTypes = iTypeBindingArr4;
                return iTypeBindingArr4;
            }
            iTypeBindingArr2[i10] = typeBinding2;
        }
        this.parameterTypes = iTypeBindingArr2;
        return iTypeBindingArr2;
    }

    @Override
    public ITypeBinding getReturnType() {
        if (this.returnType == null) {
            this.returnType = this.resolver.getTypeBinding(this.binding.returnType);
        }
        return this.returnType;
    }

    @Override
    public IVariableBinding[] getSyntheticOuterLocals() {
        return NO_VARIABLE_BINDINGS;
    }

    @Override
    public ITypeBinding[] getTypeArguments() {
        if (this.typeArguments != null) {
            return this.typeArguments;
        }
        org.eclipse.jdt.internal.compiler.lookup.MethodBinding methodBinding = this.binding;
        if (methodBinding instanceof ParameterizedGenericMethodBinding) {
            org.eclipse.jdt.internal.compiler.lookup.TypeBinding[] typeBindingArr = ((ParameterizedGenericMethodBinding) methodBinding).typeArguments;
            int length = typeBindingArr == null ? 0 : typeBindingArr.length;
            if (length != 0) {
                ITypeBinding[] iTypeBindingArr = new ITypeBinding[length];
                for (int i10 = 0; i10 < length; i10++) {
                    ITypeBinding typeBinding = this.resolver.getTypeBinding(typeBindingArr[i10]);
                    if (typeBinding == null) {
                        ITypeBinding[] iTypeBindingArr2 = NO_TYPE_BINDINGS;
                        this.typeArguments = iTypeBindingArr2;
                        return iTypeBindingArr2;
                    }
                    iTypeBindingArr[i10] = typeBinding;
                }
                this.typeArguments = iTypeBindingArr;
                return iTypeBindingArr;
            }
        }
        ITypeBinding[] iTypeBindingArr3 = NO_TYPE_BINDINGS;
        this.typeArguments = iTypeBindingArr3;
        return iTypeBindingArr3;
    }

    @Override
    public ITypeBinding[] getTypeParameters() {
        if (this.typeParameters != null) {
            return this.typeParameters;
        }
        TypeVariableBinding[] typeVariables = this.binding.typeVariables();
        int length = typeVariables == null ? 0 : typeVariables.length;
        if (length == 0) {
            ITypeBinding[] iTypeBindingArr = NO_TYPE_BINDINGS;
            this.typeParameters = iTypeBindingArr;
            return iTypeBindingArr;
        }
        ITypeBinding[] iTypeBindingArr2 = new ITypeBinding[length];
        for (int i10 = 0; i10 < length; i10++) {
            ITypeBinding typeBinding = this.resolver.getTypeBinding(typeVariables[i10]);
            if (typeBinding == null) {
                ITypeBinding[] iTypeBindingArr3 = NO_TYPE_BINDINGS;
                this.typeParameters = iTypeBindingArr3;
                return iTypeBindingArr3;
            }
            iTypeBindingArr2[i10] = typeBinding;
        }
        this.typeParameters = iTypeBindingArr2;
        return iTypeBindingArr2;
    }

    @Override
    public boolean isAnnotationMember() {
        return getDeclaringClass().isAnnotation();
    }

    @Override
    public boolean isConstructor() {
        return this.binding.isConstructor();
    }

    @Override
    public boolean isDefaultConstructor() {
        ReferenceBinding referenceBinding = this.binding.declaringClass;
        return referenceBinding.isRawType() ? (((RawTypeBinding) referenceBinding).genericType().isBinaryBinding() || (this.binding.modifiers & 67108864) == 0) ? false : true : (referenceBinding.isBinaryBinding() || (this.binding.modifiers & 67108864) == 0) ? false : true;
    }

    @Override
    public boolean isDeprecated() {
        return this.binding.isDeprecated();
    }

    @Override
    public boolean isEqualTo(IBinding iBinding) {
        if (iBinding == this) {
            return true;
        }
        if (iBinding == null || !(iBinding instanceof MethodBinding)) {
            return false;
        }
        return BindingComparator.isEqual(this.binding, ((MethodBinding) iBinding).binding);
    }

    @Override
    public boolean isGenericMethod() {
        if (this.typeParameters != null) {
            return this.typeParameters.length > 0;
        }
        TypeVariableBinding[] typeVariables = this.binding.typeVariables();
        return typeVariables != null && typeVariables.length > 0;
    }

    @Override
    public boolean isParameterizedMethod() {
        org.eclipse.jdt.internal.compiler.lookup.MethodBinding methodBinding = this.binding;
        return (methodBinding instanceof ParameterizedGenericMethodBinding) && !((ParameterizedGenericMethodBinding) methodBinding).isRaw;
    }

    @Override
    public boolean isRawMethod() {
        org.eclipse.jdt.internal.compiler.lookup.MethodBinding methodBinding = this.binding;
        return (methodBinding instanceof ParameterizedGenericMethodBinding) && ((ParameterizedGenericMethodBinding) methodBinding).isRaw;
    }

    @Override
    public boolean isRecovered() {
        return false;
    }

    @Override
    public boolean isSubsignature(IMethodBinding iMethodBinding) {
        try {
            LookupEnvironment lookupEnvironment = this.resolver.lookupEnvironment();
            if (lookupEnvironment != null) {
                if (lookupEnvironment.methodVerifier().isMethodSubsignature(this.binding, ((MethodBinding) iMethodBinding).binding)) {
                    return true;
                }
            }
        } catch (AbortCompilation unused) {
        }
        return false;
    }

    @Override
    public boolean isSynthetic() {
        return this.binding.isSynthetic();
    }

    @Override
    public boolean isVarargs() {
        return this.binding.isVarargs();
    }

    @Override
    public boolean overrides(IMethodBinding iMethodBinding) {
        LookupEnvironment lookupEnvironment = this.resolver.lookupEnvironment();
        return lookupEnvironment != null && lookupEnvironment.methodVerifier().doesMethodOverride(this.binding, ((MethodBinding) iMethodBinding).binding);
    }

    @Override
    public String toString() {
        return this.binding.toString();
    }
}
