package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.internal.compiler.lookup.Scope;

public class InferenceSubstitution extends Scope.Substitutor implements Substitution {
    private LookupEnvironment environment;
    private InvocationSite[] sites;
    private InferenceVariable[] variables;

    public InferenceSubstitution(LookupEnvironment lookupEnvironment, InferenceVariable[] inferenceVariableArr, InvocationSite invocationSite) {
        this.environment = lookupEnvironment;
        this.variables = inferenceVariableArr;
        this.sites = new InvocationSite[]{invocationSite};
    }

    private boolean isInSites(InvocationSite invocationSite) {
        int i10 = 0;
        while (true) {
            InvocationSite[] invocationSiteArr = this.sites;
            if (i10 >= invocationSiteArr.length) {
                return false;
            }
            if (InferenceContext18.isSameSite(invocationSiteArr[i10], invocationSite)) {
                return true;
            }
            i10++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public InferenceSubstitution addContext(InferenceContext18 inferenceContext18) {
        InferenceSubstitution inferenceSubstitution = new InferenceSubstitution(this.environment, null, 0 == true ? 1 : 0) {
            @Override
            public boolean isSameParameter(TypeBinding typeBinding, TypeBinding typeBinding2) {
                if (TypeBinding.equalsEquals(typeBinding, typeBinding2)) {
                    return true;
                }
                if ((typeBinding instanceof TypeVariableBinding) && (typeBinding2 instanceof TypeVariableBinding)) {
                    TypeVariableBinding typeVariableBinding = (TypeVariableBinding) typeBinding;
                    TypeVariableBinding typeVariableBinding2 = (TypeVariableBinding) typeBinding2;
                    Object obj = typeVariableBinding.declaringElement;
                    Object obj2 = typeVariableBinding2.declaringElement;
                    if ((obj instanceof MethodBinding) && (obj2 instanceof MethodBinding)) {
                        obj = ((MethodBinding) obj).original();
                        obj2 = ((MethodBinding) obj2).original();
                    }
                    if (obj == obj2 && typeVariableBinding.rank == typeVariableBinding2.rank) {
                        return true;
                    }
                }
                return false;
            }
        };
        int length = this.sites.length;
        InvocationSite[] invocationSiteArr = new InvocationSite[length + 1];
        inferenceSubstitution.sites = invocationSiteArr;
        System.arraycopy(this.sites, 0, invocationSiteArr, 0, length);
        inferenceSubstitution.sites[length] = inferenceContext18.currentInvocation;
        inferenceSubstitution.variables = this.variables;
        return inferenceSubstitution;
    }

    @Override
    public LookupEnvironment environment() {
        return this.environment;
    }

    public TypeBinding getP(int i10) {
        return this.variables[i10].typeParameter;
    }

    @Override
    public boolean isRawSubstitution() {
        return false;
    }

    public boolean isSameParameter(TypeBinding typeBinding, TypeBinding typeBinding2) {
        return TypeBinding.equalsEquals(typeBinding, typeBinding2);
    }

    @Override
    public TypeBinding substitute(Substitution substitution, TypeBinding typeBinding) {
        int i10 = 0;
        while (true) {
            InferenceVariable[] inferenceVariableArr = this.variables;
            if (i10 >= inferenceVariableArr.length) {
                return super.substitute(substitution, typeBinding);
            }
            InferenceVariable inferenceVariable = inferenceVariableArr[i10];
            if (inferenceVariable.isFromInitialSubstitution && isInSites(inferenceVariable.site) && isSameParameter(getP(i10), typeBinding)) {
                return (this.environment.globalOptions.isAnnotationBasedNullAnalysisEnabled && typeBinding.hasNullTypeAnnotations()) ? this.environment.createAnnotatedType(inferenceVariable.withoutToplevelNullAnnotation(), typeBinding.getTypeAnnotations()) : inferenceVariable;
            }
            i10++;
        }
    }

    public InferenceSubstitution(InferenceContext18 inferenceContext18) {
        this(inferenceContext18.environment, inferenceContext18.inferenceVariables, inferenceContext18.currentInvocation);
    }

    @Override
    public TypeBinding substitute(TypeVariableBinding typeVariableBinding) {
        ReferenceBinding referenceBinding = typeVariableBinding.superclass;
        ReferenceBinding[] referenceBindingArr = typeVariableBinding.superInterfaces;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            InferenceVariable[] inferenceVariableArr = this.variables;
            if (i10 >= inferenceVariableArr.length) {
                if (!z10) {
                    return typeVariableBinding;
                }
                TypeVariableBinding typeVariableBinding2 = new TypeVariableBinding(typeVariableBinding.sourceName, typeVariableBinding.declaringElement, typeVariableBinding.rank, this.environment);
                typeVariableBinding2.superclass = referenceBinding;
                typeVariableBinding2.superInterfaces = referenceBindingArr;
                if (referenceBinding == null) {
                    referenceBinding = referenceBindingArr[0];
                }
                typeVariableBinding2.firstBound = referenceBinding;
                if (referenceBinding.hasNullTypeAnnotations()) {
                    typeVariableBinding2.tagBits |= TagBits.HasNullTypeAnnotation;
                }
                return typeVariableBinding2;
            }
            InferenceVariable inferenceVariable = inferenceVariableArr[i10];
            TypeBinding p10 = getP(i10);
            if (TypeBinding.equalsEquals(p10, typeVariableBinding)) {
                return inferenceVariable;
            }
            if (TypeBinding.equalsEquals(p10, referenceBinding)) {
                referenceBinding = inferenceVariable;
            } else {
                if (referenceBindingArr != null) {
                    int length = referenceBindingArr.length;
                    for (int i11 = 0; i11 < length; i11++) {
                        if (TypeBinding.equalsEquals(p10, referenceBindingArr[i11])) {
                            if (referenceBindingArr == typeVariableBinding.superInterfaces) {
                                ReferenceBinding[] referenceBindingArr2 = new ReferenceBinding[length];
                                System.arraycopy(referenceBindingArr, 0, referenceBindingArr2, 0, length);
                                referenceBindingArr = referenceBindingArr2;
                            }
                            referenceBindingArr[i11] = inferenceVariable;
                        }
                    }
                }
                i10++;
            }
            z10 = true;
            i10++;
        }
    }
}
