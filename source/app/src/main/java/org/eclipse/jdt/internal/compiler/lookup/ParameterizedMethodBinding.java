package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.internal.compiler.ast.NullAnnotationMatching;

public class ParameterizedMethodBinding extends MethodBinding {
    protected MethodBinding originalMethod;

    /* JADX WARN: Multi-variable type inference failed */
    public ParameterizedMethodBinding(final ParameterizedTypeBinding parameterizedTypeBinding, MethodBinding methodBinding) {
        super(methodBinding.modifiers, methodBinding.selector, methodBinding.returnType, methodBinding.parameters, methodBinding.thrownExceptions, parameterizedTypeBinding);
        this.originalMethod = methodBinding;
        this.tagBits = methodBinding.tagBits & (-129);
        this.parameterNonNullness = methodBinding.parameterNonNullness;
        this.defaultNullness = methodBinding.defaultNullness;
        TypeVariableBinding[] typeVariableBindingArr = methodBinding.typeVariables;
        final int length = typeVariableBindingArr.length;
        final boolean isStatic = methodBinding.isStatic();
        int i10 = 1;
        Substitution substitution = null;
        if (length == 0) {
            this.typeVariables = Binding.NO_TYPE_VARIABLES;
            if (!isStatic) {
                substitution = parameterizedTypeBinding;
            }
        } else {
            final TypeVariableBinding[] typeVariableBindingArr2 = new TypeVariableBinding[length];
            int i11 = 0;
            while (i11 < length) {
                TypeVariableBinding typeVariableBinding = typeVariableBindingArr[i11];
                TypeVariableBinding typeVariableBinding2 = new TypeVariableBinding(typeVariableBinding.sourceName, this, typeVariableBinding.rank, parameterizedTypeBinding.environment);
                typeVariableBindingArr2[i11] = typeVariableBinding2;
                typeVariableBinding2.tagBits |= typeVariableBinding.tagBits & 108086391057940480L;
                i11++;
                typeVariableBindingArr = typeVariableBindingArr;
                i10 = 1;
            }
            this.typeVariables = typeVariableBindingArr2;
            final TypeVariableBinding[] typeVariableBindingArr3 = typeVariableBindingArr;
            Substitution substitution2 = new Substitution() {
                @Override
                public LookupEnvironment environment() {
                    return parameterizedTypeBinding.environment;
                }

                @Override
                public boolean isRawSubstitution() {
                    return !isStatic && parameterizedTypeBinding.isRawSubstitution();
                }

                @Override
                public TypeBinding substitute(TypeVariableBinding typeVariableBinding3) {
                    int i12 = typeVariableBinding3.rank;
                    if (i12 >= length || !TypeBinding.equalsEquals(typeVariableBindingArr3[i12], typeVariableBinding3)) {
                        return !isStatic ? parameterizedTypeBinding.substitute(typeVariableBinding3) : typeVariableBinding3;
                    }
                    TypeVariableBinding typeVariableBinding4 = typeVariableBindingArr2[typeVariableBinding3.rank];
                    return typeVariableBinding3.hasTypeAnnotations() ? environment().createAnnotatedType(typeVariableBinding4, typeVariableBinding3.getTypeAnnotations()) : typeVariableBinding4;
                }
            };
            for (int i12 = 0; i12 < length; i12++) {
                TypeVariableBinding typeVariableBinding3 = typeVariableBindingArr[i12];
                TypeVariableBinding typeVariableBinding4 = typeVariableBindingArr2[i12];
                TypeBinding substitute = Scope.substitute(substitution2, typeVariableBinding3.superclass);
                ReferenceBinding[] substitute2 = Scope.substitute(substitution2, typeVariableBinding3.superInterfaces);
                TypeBinding typeBinding = typeVariableBinding3.firstBound;
                if (typeBinding != null) {
                    typeVariableBinding4.setFirstBound(TypeBinding.equalsEquals(typeBinding, typeVariableBinding3.superclass) ? substitute : substitute2[0]);
                }
                if (substitute.kind() != 68) {
                    if (substitute.isInterface()) {
                        typeVariableBinding4.setSuperClass(parameterizedTypeBinding.environment.getResolvedType(TypeConstants.JAVA_LANG_OBJECT, null));
                        int length2 = substitute2.length;
                        ReferenceBinding[] referenceBindingArr = new ReferenceBinding[length2 + 1];
                        System.arraycopy(substitute2, 0, referenceBindingArr, i10, length2);
                        referenceBindingArr[0] = (ReferenceBinding) substitute;
                        typeVariableBinding4.setSuperInterfaces(referenceBindingArr);
                    } else {
                        typeVariableBinding4.setSuperClass((ReferenceBinding) substitute);
                        typeVariableBinding4.setSuperInterfaces(substitute2);
                    }
                } else {
                    typeVariableBinding4.setSuperClass(parameterizedTypeBinding.environment.getResolvedJavaBaseType(TypeConstants.JAVA_LANG_OBJECT, null));
                    typeVariableBinding4.setSuperInterfaces(substitute2);
                }
            }
            substitution = substitution2;
        }
        if (substitution != null) {
            this.returnType = Scope.substitute(substitution, this.returnType);
            this.parameters = Scope.substitute(substitution, this.parameters);
            ReferenceBinding[] substitute3 = Scope.substitute(substitution, this.thrownExceptions);
            this.thrownExceptions = substitute3;
            if (substitute3 == null) {
                this.thrownExceptions = Binding.NO_EXCEPTIONS;
            }
            if (parameterizedTypeBinding.environment.globalOptions.isAnnotationBasedNullAnalysisEnabled) {
                long validNullTagBits = NullAnnotationMatching.validNullTagBits(this.returnType.tagBits);
                if (validNullTagBits != 0) {
                    this.tagBits = validNullTagBits | (this.tagBits & (-108086391056891905L));
                }
                int length3 = this.parameters.length;
                for (int i13 = 0; i13 < length3; i13++) {
                    long validNullTagBits2 = NullAnnotationMatching.validNullTagBits(this.parameters[i13].tagBits);
                    if (validNullTagBits2 != 0) {
                        if (this.parameterNonNullness == null) {
                            this.parameterNonNullness = new Boolean[length3];
                        }
                        this.parameterNonNullness[i13] = Boolean.valueOf(validNullTagBits2 == 72057594037927936L ? i10 : 0);
                    }
                }
            }
        }
        long j10 = this.tagBits;
        if ((j10 & 128) != 0) {
            return;
        }
        if ((this.returnType.tagBits & 128) != 0) {
            this.tagBits = j10 | 128;
            return;
        }
        int length4 = this.parameters.length;
        for (int i14 = 0; i14 < length4; i14++) {
            if ((this.parameters[i14].tagBits & 128) != 0) {
                this.tagBits |= 128;
                return;
            }
        }
        int length5 = this.thrownExceptions.length;
        for (int i15 = 0; i15 < length5; i15++) {
            if ((this.thrownExceptions[i15].tagBits & 128) != 0) {
                this.tagBits |= 128;
                return;
            }
        }
    }

    public static ParameterizedMethodBinding instantiateGetClass(TypeBinding typeBinding, MethodBinding methodBinding, Scope scope) {
        ParameterizedMethodBinding parameterizedMethodBinding = new ParameterizedMethodBinding();
        parameterizedMethodBinding.modifiers = methodBinding.modifiers;
        parameterizedMethodBinding.selector = methodBinding.selector;
        parameterizedMethodBinding.declaringClass = methodBinding.declaringClass;
        parameterizedMethodBinding.typeVariables = Binding.NO_TYPE_VARIABLES;
        parameterizedMethodBinding.originalMethod = methodBinding;
        parameterizedMethodBinding.parameters = methodBinding.parameters;
        parameterizedMethodBinding.thrownExceptions = methodBinding.thrownExceptions;
        parameterizedMethodBinding.tagBits = methodBinding.tagBits;
        ReferenceBinding javaLangClass = scope.getJavaLangClass();
        LookupEnvironment environment = scope.environment();
        TypeBinding convertToRawType = environment.convertToRawType(typeBinding.erasure(), false);
        if (environment.usesNullTypeAnnotations()) {
            convertToRawType = environment.createAnnotatedType(convertToRawType, new AnnotationBinding[]{environment.getNonNullAnnotation()});
        }
        parameterizedMethodBinding.returnType = environment.createParameterizedType(javaLangClass, new TypeBinding[]{environment.createWildcard(javaLangClass, 0, convertToRawType, null, 1)}, null);
        if (environment.globalOptions.isAnnotationBasedNullAnalysisEnabled) {
            if (environment.usesNullTypeAnnotations()) {
                parameterizedMethodBinding.returnType = environment.createAnnotatedType(parameterizedMethodBinding.returnType, new AnnotationBinding[]{environment.getNonNullAnnotation()});
            } else {
                parameterizedMethodBinding.tagBits |= 72057594037927936L;
            }
        }
        if ((parameterizedMethodBinding.returnType.tagBits & 128) != 0) {
            parameterizedMethodBinding.tagBits |= 128;
        }
        return parameterizedMethodBinding;
    }

    @Override
    public boolean hasSubstitutedParameters() {
        return this.parameters != this.originalMethod.parameters;
    }

    @Override
    public boolean hasSubstitutedReturnType() {
        return this.returnType != this.originalMethod.returnType;
    }

    @Override
    public MethodBinding original() {
        return this.originalMethod.original();
    }

    @Override
    public MethodBinding shallowOriginal() {
        return this.originalMethod;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ParameterizedMethodBinding(ReferenceBinding referenceBinding, MethodBinding methodBinding, char[][] cArr, final LookupEnvironment lookupEnvironment) {
        super(methodBinding.modifiers, methodBinding.selector, methodBinding.returnType, methodBinding.parameters, methodBinding.thrownExceptions, referenceBinding);
        char[] cArr2;
        this.originalMethod = methodBinding;
        this.tagBits = methodBinding.tagBits & (-129);
        this.parameterNonNullness = methodBinding.parameterNonNullness;
        this.defaultNullness = methodBinding.defaultNullness;
        final TypeVariableBinding[] typeVariableBindingArr = methodBinding.typeVariables;
        final int length = typeVariableBindingArr.length;
        Substitution substitution = null;
        if (length == 0) {
            this.typeVariables = Binding.NO_TYPE_VARIABLES;
        } else {
            final TypeVariableBinding[] typeVariableBindingArr2 = new TypeVariableBinding[length];
            for (int i10 = 0; i10 < length; i10++) {
                TypeVariableBinding typeVariableBinding = typeVariableBindingArr[i10];
                if (cArr == null) {
                    cArr2 = typeVariableBinding.sourceName;
                } else {
                    cArr2 = cArr[i10];
                }
                TypeVariableBinding typeVariableBinding2 = new TypeVariableBinding(cArr2, this, typeVariableBinding.rank, lookupEnvironment);
                typeVariableBindingArr2[i10] = typeVariableBinding2;
                typeVariableBinding2.tagBits |= typeVariableBinding.tagBits & 108086391057940480L;
            }
            this.typeVariables = typeVariableBindingArr2;
            Substitution substitution2 = new Substitution() {
                @Override
                public LookupEnvironment environment() {
                    return lookupEnvironment;
                }

                @Override
                public boolean isRawSubstitution() {
                    return false;
                }

                @Override
                public TypeBinding substitute(TypeVariableBinding typeVariableBinding3) {
                    int i11 = typeVariableBinding3.rank;
                    if (i11 >= length || !TypeBinding.equalsEquals(typeVariableBindingArr[i11], typeVariableBinding3)) {
                        return typeVariableBinding3;
                    }
                    TypeVariableBinding typeVariableBinding4 = typeVariableBindingArr2[typeVariableBinding3.rank];
                    return typeVariableBinding3.hasTypeAnnotations() ? environment().createAnnotatedType(typeVariableBinding4, typeVariableBinding3.getTypeAnnotations()) : typeVariableBinding4;
                }
            };
            for (int i11 = 0; i11 < length; i11++) {
                TypeVariableBinding typeVariableBinding3 = typeVariableBindingArr[i11];
                TypeVariableBinding typeVariableBinding4 = typeVariableBindingArr2[i11];
                TypeBinding substitute = Scope.substitute(substitution2, typeVariableBinding3.superclass);
                ReferenceBinding[] substitute2 = Scope.substitute(substitution2, typeVariableBinding3.superInterfaces);
                TypeBinding typeBinding = typeVariableBinding3.firstBound;
                if (typeBinding != null) {
                    typeVariableBinding4.setFirstBound(TypeBinding.equalsEquals(typeBinding, typeVariableBinding3.superclass) ? substitute : substitute2[0]);
                }
                if (substitute.kind() != 68) {
                    if (substitute.isInterface()) {
                        typeVariableBinding4.setSuperClass(lookupEnvironment.getResolvedType(TypeConstants.JAVA_LANG_OBJECT, null));
                        int length2 = substitute2.length;
                        ReferenceBinding[] referenceBindingArr = new ReferenceBinding[length2 + 1];
                        System.arraycopy(substitute2, 0, referenceBindingArr, 1, length2);
                        referenceBindingArr[0] = (ReferenceBinding) substitute;
                        typeVariableBinding4.setSuperInterfaces(referenceBindingArr);
                    } else {
                        typeVariableBinding4.setSuperClass((ReferenceBinding) substitute);
                        typeVariableBinding4.setSuperInterfaces(substitute2);
                    }
                } else {
                    typeVariableBinding4.setSuperClass(lookupEnvironment.getResolvedJavaBaseType(TypeConstants.JAVA_LANG_OBJECT, null));
                    typeVariableBinding4.setSuperInterfaces(substitute2);
                }
            }
            substitution = substitution2;
        }
        if (substitution != null) {
            this.returnType = Scope.substitute(substitution, this.returnType);
            this.parameters = Scope.substitute(substitution, this.parameters);
            ReferenceBinding[] substitute3 = Scope.substitute(substitution, this.thrownExceptions);
            this.thrownExceptions = substitute3;
            if (substitute3 == null) {
                this.thrownExceptions = Binding.NO_EXCEPTIONS;
            }
        }
        long j10 = this.tagBits;
        if ((j10 & 128) != 0) {
            return;
        }
        if ((this.returnType.tagBits & 128) != 0) {
            this.tagBits = j10 | 128;
            return;
        }
        int length3 = this.parameters.length;
        for (int i12 = 0; i12 < length3; i12++) {
            if ((this.parameters[i12].tagBits & 128) != 0) {
                this.tagBits |= 128;
                return;
            }
        }
        int length4 = this.thrownExceptions.length;
        for (int i13 = 0; i13 < length4; i13++) {
            if ((this.thrownExceptions[i13].tagBits & 128) != 0) {
                this.tagBits |= 128;
                return;
            }
        }
    }

    public ParameterizedMethodBinding() {
    }
}
