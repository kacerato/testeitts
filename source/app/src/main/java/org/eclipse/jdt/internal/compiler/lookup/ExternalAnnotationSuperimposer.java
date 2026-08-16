package org.eclipse.jdt.internal.compiler.lookup;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationProvider;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.ITypeAnnotationWalker;
import org.eclipse.jdt.internal.compiler.util.Messages;

public class ExternalAnnotationSuperimposer extends TypeBindingVisitor {
    private ITypeAnnotationWalker currentWalker;
    private LookupEnvironment environment;
    private boolean isReplacing;
    private TypeBinding typeReplacement;

    public ExternalAnnotationSuperimposer(LookupEnvironment lookupEnvironment) {
        this.environment = lookupEnvironment;
    }

    public static void annotateFieldBinding(FieldBinding fieldBinding, ExternalAnnotationProvider externalAnnotationProvider, LookupEnvironment lookupEnvironment) {
        TypeBinding typeBinding;
        char[] genericSignature = fieldBinding.genericSignature();
        if (genericSignature == null && (typeBinding = fieldBinding.type) != null) {
            genericSignature = typeBinding.signature();
        }
        ITypeAnnotationWalker forField = externalAnnotationProvider.forField(fieldBinding.name, genericSignature, lookupEnvironment);
        ExternalAnnotationSuperimposer externalAnnotationSuperimposer = new ExternalAnnotationSuperimposer(lookupEnvironment);
        if (externalAnnotationSuperimposer.go(forField)) {
            fieldBinding.type = externalAnnotationSuperimposer.superimpose(fieldBinding.type, TypeBinding.class);
        }
    }

    public static void annotateMethodBinding(MethodBinding methodBinding, ExternalAnnotationProvider externalAnnotationProvider, LookupEnvironment lookupEnvironment) {
        char[] genericSignature = methodBinding.genericSignature();
        if (genericSignature == null) {
            genericSignature = methodBinding.signature();
        }
        ITypeAnnotationWalker forMethod = externalAnnotationProvider.forMethod(methodBinding.selector, genericSignature, lookupEnvironment);
        if (forMethod == null || forMethod == ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER) {
            return;
        }
        ExternalAnnotationSuperimposer externalAnnotationSuperimposer = new ExternalAnnotationSuperimposer(lookupEnvironment);
        TypeVariableBinding[] typeVariableBindingArr = methodBinding.typeVariables;
        for (short s10 = 0; s10 < typeVariableBindingArr.length; s10 = (short) (s10 + 1)) {
            if (externalAnnotationSuperimposer.go(forMethod.toTypeParameter(false, s10))) {
                typeVariableBindingArr[s10] = (TypeVariableBinding) externalAnnotationSuperimposer.superimpose(typeVariableBindingArr[s10], TypeVariableBinding.class);
            }
        }
        if (!methodBinding.isConstructor() && externalAnnotationSuperimposer.go(forMethod.toMethodReturn())) {
            methodBinding.returnType = externalAnnotationSuperimposer.superimpose(methodBinding.returnType, TypeBinding.class);
        }
        TypeBinding[] typeBindingArr = methodBinding.parameters;
        for (short s11 = 0; s11 < typeBindingArr.length; s11 = (short) (s11 + 1)) {
            if (externalAnnotationSuperimposer.go(forMethod.toMethodParameter(s11))) {
                typeBindingArr[s11] = externalAnnotationSuperimposer.superimpose(typeBindingArr[s11], TypeBinding.class);
            }
        }
    }

    public static void annotateType(SourceTypeBinding sourceTypeBinding, ExternalAnnotationProvider externalAnnotationProvider, LookupEnvironment lookupEnvironment) {
        ITypeAnnotationWalker forTypeHeader = externalAnnotationProvider.forTypeHeader(lookupEnvironment);
        if (forTypeHeader != null && forTypeHeader != ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER) {
            ExternalAnnotationSuperimposer externalAnnotationSuperimposer = new ExternalAnnotationSuperimposer(lookupEnvironment);
            TypeVariableBinding[] typeVariables = sourceTypeBinding.typeVariables();
            for (int i10 = 0; i10 < typeVariables.length; i10++) {
                if (externalAnnotationSuperimposer.go(forTypeHeader.toTypeParameter(true, i10))) {
                    typeVariables[i10] = (TypeVariableBinding) externalAnnotationSuperimposer.superimpose(typeVariables[i10], TypeVariableBinding.class);
                }
            }
        }
        sourceTypeBinding.externalAnnotationProvider = externalAnnotationProvider;
    }

    public static void apply(SourceTypeBinding sourceTypeBinding, String str) {
        InputStream inputStream;
        ZipFile zipFile = null;
        try {
            try {
                File file = new File(str);
                if (file.exists()) {
                    String valueOf = String.valueOf(sourceTypeBinding.constantPoolName());
                    String str2 = String.valueOf(valueOf.replace('.', '/')) + ExternalAnnotationProvider.ANNOTATION_FILE_SUFFIX;
                    if (file.isDirectory()) {
                        inputStream = new FileInputStream(String.valueOf(str) + '/' + str2);
                    } else {
                        ZipFile zipFile2 = new ZipFile(str);
                        try {
                            ZipEntry entry = zipFile2.getEntry(str2);
                            if (entry == null) {
                                try {
                                    zipFile2.close();
                                    return;
                                } catch (IOException unused) {
                                    return;
                                }
                            } else {
                                inputStream = zipFile2.getInputStream(entry);
                                zipFile = zipFile2;
                            }
                        } catch (FileNotFoundException unused2) {
                            zipFile = zipFile2;
                            if (zipFile == null) {
                                return;
                            }
                            zipFile.close();
                        } catch (IOException e10) {
                            e = e10;
                            zipFile = zipFile2;
                            sourceTypeBinding.scope.problemReporter().abortDueToInternalError(Messages.bind(Messages.abort_externaAnnotationFile, (Object[]) new String[]{String.valueOf(sourceTypeBinding.readableName()), str, e.getMessage()}));
                            if (zipFile == null) {
                                return;
                            }
                            zipFile.close();
                        } catch (Throwable th2) {
                            th = th2;
                            zipFile = zipFile2;
                            if (zipFile != null) {
                                try {
                                    zipFile.close();
                                } catch (IOException unused3) {
                                }
                            }
                            throw th;
                        }
                    }
                    annotateType(sourceTypeBinding, new ExternalAnnotationProvider(inputStream, valueOf), sourceTypeBinding.environment);
                }
                if (zipFile == null) {
                    return;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (FileNotFoundException unused4) {
        } catch (IOException e11) {
            e = e11;
        }
        try {
            zipFile.close();
        } catch (IOException unused5) {
        }
    }

    private TypeBinding goAndSuperimpose(ITypeAnnotationWalker iTypeAnnotationWalker, TypeBinding typeBinding) {
        if (iTypeAnnotationWalker == ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER) {
            return typeBinding;
        }
        this.currentWalker = iTypeAnnotationWalker;
        TypeBindingVisitor.visit(this, typeBinding);
        TypeBinding typeBinding2 = this.typeReplacement;
        if (typeBinding2 == null) {
            return typeBinding;
        }
        this.isReplacing = true;
        this.typeReplacement = null;
        return typeBinding2;
    }

    private void restore(ExternalAnnotationSuperimposer externalAnnotationSuperimposer) {
        this.isReplacing = externalAnnotationSuperimposer.isReplacing;
        this.currentWalker = externalAnnotationSuperimposer.currentWalker;
    }

    private ExternalAnnotationSuperimposer snapshot() {
        ExternalAnnotationSuperimposer externalAnnotationSuperimposer = new ExternalAnnotationSuperimposer(this.typeReplacement, this.isReplacing, this.currentWalker);
        this.typeReplacement = null;
        this.isReplacing = false;
        return externalAnnotationSuperimposer;
    }

    public boolean go(ITypeAnnotationWalker iTypeAnnotationWalker) {
        reset();
        this.typeReplacement = null;
        this.isReplacing = false;
        this.currentWalker = iTypeAnnotationWalker;
        return iTypeAnnotationWalker != ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER;
    }

    public <T extends TypeBinding> T superimpose(T t10, Class<? extends T> cls) {
        TypeBindingVisitor.visit(this, t10);
        return cls.isInstance(this.typeReplacement) ? cls.cast(this.typeReplacement) : t10;
    }

    @Override
    public boolean visit(BaseTypeBinding baseTypeBinding) {
        return false;
    }

    @Override
    public boolean visit(IntersectionTypeBinding18 intersectionTypeBinding18) {
        return false;
    }

    private ExternalAnnotationSuperimposer(TypeBinding typeBinding, boolean z10, ITypeAnnotationWalker iTypeAnnotationWalker) {
        this.typeReplacement = typeBinding;
        this.isReplacing = z10;
        this.currentWalker = iTypeAnnotationWalker;
    }

    @Override
    public boolean visit(ArrayBinding arrayBinding) {
        ExternalAnnotationSuperimposer snapshot = snapshot();
        try {
            int i10 = arrayBinding.dimensions;
            AnnotationBinding[][] annotationBindingArr = new AnnotationBinding[i10];
            ITypeAnnotationWalker iTypeAnnotationWalker = this.currentWalker;
            for (int i11 = 0; i11 < i10; i11++) {
                IBinaryAnnotation[] annotationsAtCursor = iTypeAnnotationWalker.getAnnotationsAtCursor(arrayBinding.f102482id, false);
                if (annotationsAtCursor != ITypeAnnotationWalker.NO_ANNOTATIONS) {
                    annotationBindingArr[i11] = BinaryTypeBinding.createAnnotations(annotationsAtCursor, this.environment, null);
                    this.isReplacing = true;
                } else {
                    annotationBindingArr[i11] = Binding.NO_ANNOTATIONS;
                }
                iTypeAnnotationWalker = iTypeAnnotationWalker.toNextArrayDimension();
            }
            TypeBinding goAndSuperimpose = goAndSuperimpose(iTypeAnnotationWalker, arrayBinding.leafComponentType());
            if (this.isReplacing) {
                this.typeReplacement = this.environment.createArrayType(goAndSuperimpose, i10, AnnotatableTypeSystem.flattenedAnnotations(annotationBindingArr));
            }
            return false;
        } finally {
            restore(snapshot);
        }
    }

    @Override
    public boolean visit(ParameterizedTypeBinding parameterizedTypeBinding) {
        ExternalAnnotationSuperimposer snapshot = snapshot();
        try {
            IBinaryAnnotation[] annotationsAtCursor = this.currentWalker.getAnnotationsAtCursor(parameterizedTypeBinding.f102482id, false);
            AnnotationBinding[] annotationBindingArr = Binding.NO_ANNOTATIONS;
            if (annotationsAtCursor != ITypeAnnotationWalker.NO_ANNOTATIONS) {
                annotationBindingArr = BinaryTypeBinding.createAnnotations(annotationsAtCursor, this.environment, null);
                this.isReplacing = true;
            }
            TypeBinding[] typeArguments = parameterizedTypeBinding.typeArguments();
            TypeBinding[] typeBindingArr = new TypeBinding[typeArguments.length];
            for (int i10 = 0; i10 < typeArguments.length; i10++) {
                typeBindingArr[i10] = goAndSuperimpose(snapshot.currentWalker.toTypeArgument(i10), typeArguments[i10]);
            }
            if (this.isReplacing) {
                this.typeReplacement = this.environment.createParameterizedType(parameterizedTypeBinding.genericType(), typeBindingArr, parameterizedTypeBinding.enclosingType(), annotationBindingArr);
            }
            restore(snapshot);
            return false;
        } catch (Throwable th2) {
            restore(snapshot);
            throw th2;
        }
    }

    @Override
    public boolean visit(RawTypeBinding rawTypeBinding) {
        return visit((ReferenceBinding) rawTypeBinding);
    }

    @Override
    public boolean visit(ReferenceBinding referenceBinding) {
        IBinaryAnnotation[] annotationsAtCursor = this.currentWalker.getAnnotationsAtCursor(referenceBinding.f102482id, false);
        if (annotationsAtCursor != ITypeAnnotationWalker.NO_ANNOTATIONS) {
            LookupEnvironment lookupEnvironment = this.environment;
            this.typeReplacement = lookupEnvironment.createAnnotatedType(referenceBinding, BinaryTypeBinding.createAnnotations(annotationsAtCursor, lookupEnvironment, null));
        }
        return false;
    }

    @Override
    public boolean visit(TypeVariableBinding typeVariableBinding) {
        return visit((ReferenceBinding) typeVariableBinding);
    }

    @Override
    public boolean visit(WildcardBinding wildcardBinding) {
        TypeBinding typeBinding = wildcardBinding.bound;
        ExternalAnnotationSuperimposer snapshot = snapshot();
        if (typeBinding != null) {
            try {
                typeBinding = goAndSuperimpose(snapshot.currentWalker.toWildcardBound(), typeBinding);
            } catch (Throwable th2) {
                restore(snapshot);
                throw th2;
            }
        }
        TypeBinding typeBinding2 = typeBinding;
        IBinaryAnnotation[] annotationsAtCursor = snapshot.currentWalker.getAnnotationsAtCursor(-1, false);
        if (this.isReplacing || annotationsAtCursor != ITypeAnnotationWalker.NO_ANNOTATIONS) {
            TypeBinding[] typeBindingArr = wildcardBinding.otherBounds;
            if (annotationsAtCursor != ITypeAnnotationWalker.NO_ANNOTATIONS) {
                this.typeReplacement = this.environment.createWildcard(wildcardBinding.genericType, wildcardBinding.rank, typeBinding2, typeBindingArr, wildcardBinding.boundKind, BinaryTypeBinding.createAnnotations(annotationsAtCursor, this.environment, null));
            } else {
                this.typeReplacement = this.environment.createWildcard(wildcardBinding.genericType, wildcardBinding.rank, typeBinding2, typeBindingArr, wildcardBinding.boundKind);
            }
        }
        restore(snapshot);
        return false;
    }
}
