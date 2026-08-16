package org.eclipse.jdt.internal.compiler.ast;

import java.util.function.Consumer;
import okhttp3.v;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.core.JavaElement;
import w2.C15883c;

public class ArrayTypeReference extends SingleTypeReference {
    private static int[] $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$TypeReference$AnnotationPosition;
    private Annotation[][] annotationsOnDimensions;
    public int dimensions;
    public int extendedDimensions;
    public TypeBinding leafComponentTypeWithoutDefaultNullness;
    public int originalSourceEnd;

    public static int[] $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$TypeReference$AnnotationPosition() {
        int[] iArr = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$TypeReference$AnnotationPosition;
        if (iArr != null) {
            return iArr;
        }
        int[] iArr2 = new int[TypeReference.AnnotationPosition.valuesCustom().length];
        try {
            iArr2[TypeReference.AnnotationPosition.ANY.ordinal()] = 3;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr2[TypeReference.AnnotationPosition.LEAF_TYPE.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr2[TypeReference.AnnotationPosition.MAIN_TYPE.ordinal()] = 1;
        } catch (NoSuchFieldError unused3) {
        }
        $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$TypeReference$AnnotationPosition = iArr2;
        return iArr2;
    }

    public ArrayTypeReference(char[] cArr, int i10, long j10) {
        super(cArr, j10);
        this.originalSourceEnd = this.sourceEnd;
        this.dimensions = i10;
        this.annotationsOnDimensions = null;
    }

    public static TypeBinding addNonNullToDimensions(Scope scope, TypeBinding typeBinding, AnnotationBinding annotationBinding, int i10) {
        AnnotationBinding[][] annotationBindingArr = new AnnotationBinding[i10];
        AnnotationBinding[] typeAnnotations = typeBinding.getTypeAnnotations();
        if (typeAnnotations == null) {
            for (int i11 = 1; i11 < i10; i11++) {
                annotationBindingArr[i11] = new AnnotationBinding[]{annotationBinding};
            }
        } else {
            int i12 = 0;
            for (int i13 = 0; i13 < i10; i13++) {
                if (i12 >= typeAnnotations.length || typeAnnotations[i12] == null) {
                    if (i13 != 0) {
                        annotationBindingArr[i13] = new AnnotationBinding[]{annotationBinding};
                    }
                    i12++;
                } else {
                    boolean z10 = false;
                    int i14 = i12;
                    while (true) {
                        AnnotationBinding annotationBinding2 = typeAnnotations[i14];
                        if (annotationBinding2 == null) {
                            break;
                        }
                        z10 |= annotationBinding2.getAnnotationType().hasNullBit(96);
                        i14++;
                    }
                    if (!z10 && i13 != 0) {
                        int i15 = i14 - i12;
                        AnnotationBinding[] annotationBindingArr2 = new AnnotationBinding[i15 + 1];
                        annotationBindingArr2[0] = annotationBinding;
                        System.arraycopy(typeAnnotations, i12, annotationBindingArr2, 1, i15);
                        annotationBindingArr[i13] = annotationBindingArr2;
                    } else if (i14 > i12) {
                        int i16 = i14 - i12;
                        AnnotationBinding[] annotationBindingArr3 = new AnnotationBinding[i16];
                        System.arraycopy(typeAnnotations, i12, annotationBindingArr3, 0, i16);
                        annotationBindingArr[i13] = annotationBindingArr3;
                    }
                    i12 = i14 + 1;
                }
            }
        }
        return scope.environment().createAnnotatedType(typeBinding, annotationBindingArr);
    }

    public void lambda$0(TypeBinding typeBinding) {
        this.leafComponentTypeWithoutDefaultNullness = typeBinding;
    }

    public static TypeBinding maybeMarkArrayContentsNonNull(Scope scope, TypeBinding typeBinding, int i10, int i11, Consumer<TypeBinding> consumer) {
        LookupEnvironment environment = scope.environment();
        if (!environment.usesNullTypeAnnotations() || !scope.hasDefaultNullnessFor(512, i10)) {
            return typeBinding;
        }
        AnnotationBinding nonNullAnnotation = environment.getNonNullAnnotation();
        TypeBinding addNonNullToDimensions = addNonNullToDimensions(scope, typeBinding, nonNullAnnotation, i11);
        TypeBinding leafComponentType = addNonNullToDimensions.leafComponentType();
        if ((leafComponentType.tagBits & TagBits.AnnotationNullMASK) != 0 || !leafComponentType.acceptsNonNullDefault()) {
            return addNonNullToDimensions;
        }
        if (consumer != null) {
            consumer.accept(leafComponentType);
        }
        return scope.createArrayType(scope.environment().createAnnotatedType(leafComponentType, new AnnotationBinding[]{nonNullAnnotation}), addNonNullToDimensions.dimensions(), addNonNullToDimensions.getTypeAnnotations());
    }

    @Override
    public int dimensions() {
        return this.dimensions;
    }

    @Override
    public int extraDimensions() {
        return this.extendedDimensions;
    }

    @Override
    public Annotation[][] getAnnotationsOnDimensions(boolean z10) {
        Annotation[][] annotationArr;
        int i10;
        int i11;
        if (z10 || (annotationArr = this.annotationsOnDimensions) == null || annotationArr.length == 0 || (i10 = this.extendedDimensions) == 0 || i10 == (i11 = this.dimensions)) {
            return this.annotationsOnDimensions;
        }
        Annotation[][] annotationArr2 = new Annotation[i11];
        int i12 = i11 - i10;
        System.arraycopy(annotationArr, i12, annotationArr2, 0, i10);
        System.arraycopy(this.annotationsOnDimensions, 0, annotationArr2, this.extendedDimensions, i12);
        return annotationArr2;
    }

    @Override
    public char[][] getParameterizedTypeName() {
        int i10 = this.dimensions;
        char[] cArr = new char[i10 * 2];
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = i11 * 2;
            cArr[i12] = '[';
            cArr[i12 + 1] = JavaElement.JEM_TYPE_PARAMETER;
        }
        return new char[][]{CharOperation.concat(this.token, cArr)};
    }

    @Override
    public TypeBinding getTypeBinding(Scope scope) {
        TypeBinding typeBinding = this.resolvedType;
        if (typeBinding != null) {
            return typeBinding;
        }
        if (this.dimensions > 255) {
            scope.problemReporter().tooManyDimensions(this);
        }
        return scope.createArrayType(scope.getType(this.token), this.dimensions);
    }

    @Override
    public boolean hasNullTypeAnnotation(TypeReference.AnnotationPosition annotationPosition) {
        int i10 = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$TypeReference$AnnotationPosition()[annotationPosition.ordinal()];
        if (i10 == 1) {
            Annotation[][] annotationArr = this.annotationsOnDimensions;
            return (annotationArr == null || annotationArr.length <= 0) ? super.hasNullTypeAnnotation(annotationPosition) : TypeReference.containsNullAnnotation(annotationArr[0]);
        }
        if (i10 == 2) {
            return super.hasNullTypeAnnotation(annotationPosition);
        }
        if (i10 == 3) {
            if (super.hasNullTypeAnnotation(annotationPosition)) {
                return true;
            }
            TypeBinding typeBinding = this.resolvedType;
            if ((typeBinding == null || typeBinding.hasNullTypeAnnotations()) && this.annotationsOnDimensions != null) {
                int i11 = 0;
                while (true) {
                    Annotation[][] annotationArr2 = this.annotationsOnDimensions;
                    if (i11 >= annotationArr2.length) {
                        break;
                    }
                    if (TypeReference.containsNullAnnotation(annotationArr2[i11])) {
                        return true;
                    }
                    i11++;
                }
            }
        }
        return false;
    }

    @Override
    public TypeBinding internalResolveType(Scope scope, int i10) {
        return maybeMarkArrayContentsNonNull(scope, super.internalResolveType(scope, i10), this.sourceStart, this.dimensions, new Consumer() {
            @Override
            public final void accept(Object obj) {
                ArrayTypeReference.this.lambda$0((TypeBinding) obj);
            }
        });
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        int i11;
        super.printExpression(i10, stringBuffer);
        int i12 = 0;
        if ((this.bits & 16384) != 0) {
            while (true) {
                i11 = this.dimensions;
                if (i12 >= i11 - 1) {
                    break;
                }
                Annotation[][] annotationArr = this.annotationsOnDimensions;
                if (annotationArr != null && annotationArr[i12] != null) {
                    stringBuffer.append(C15883c.f126249O);
                    ASTNode.printAnnotations(this.annotationsOnDimensions[i12], stringBuffer);
                    stringBuffer.append(C15883c.f126249O);
                }
                stringBuffer.append(v.f99450n);
                i12++;
            }
            Annotation[][] annotationArr2 = this.annotationsOnDimensions;
            if (annotationArr2 != null && annotationArr2[i11 - 1] != null) {
                stringBuffer.append(C15883c.f126249O);
                ASTNode.printAnnotations(this.annotationsOnDimensions[this.dimensions - 1], stringBuffer);
                stringBuffer.append(C15883c.f126249O);
            }
            stringBuffer.append("...");
        } else {
            while (i12 < this.dimensions) {
                Annotation[][] annotationArr3 = this.annotationsOnDimensions;
                if (annotationArr3 != null && annotationArr3[i12] != null) {
                    stringBuffer.append(" ");
                    ASTNode.printAnnotations(this.annotationsOnDimensions[i12], stringBuffer);
                    stringBuffer.append(" ");
                }
                stringBuffer.append(v.f99450n);
                i12++;
            }
        }
        return stringBuffer;
    }

    @Override
    public void setAnnotationsOnDimensions(Annotation[][] annotationArr) {
        this.annotationsOnDimensions = annotationArr;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            Annotation[][] annotationArr = this.annotations;
            if (annotationArr != null) {
                Annotation[] annotationArr2 = annotationArr[0];
                int length = annotationArr2 == null ? 0 : annotationArr2.length;
                for (int i10 = 0; i10 < length; i10++) {
                    annotationArr2[i10].traverse(aSTVisitor, blockScope);
                }
            }
            Annotation[][] annotationArr3 = this.annotationsOnDimensions;
            if (annotationArr3 != null) {
                int length2 = annotationArr3.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    Annotation[] annotationArr4 = this.annotationsOnDimensions[i11];
                    if (annotationArr4 != null) {
                        for (Annotation annotation : annotationArr4) {
                            annotation.traverse(aSTVisitor, blockScope);
                        }
                    }
                }
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    public ArrayTypeReference(char[] cArr, int i10, Annotation[][] annotationArr, long j10) {
        this(cArr, i10, j10);
        if (annotationArr != null) {
            this.bits |= 1048576;
        }
        this.annotationsOnDimensions = annotationArr;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        if (aSTVisitor.visit(this, classScope)) {
            Annotation[][] annotationArr = this.annotations;
            if (annotationArr != null) {
                Annotation[] annotationArr2 = annotationArr[0];
                int length = annotationArr2 == null ? 0 : annotationArr2.length;
                for (int i10 = 0; i10 < length; i10++) {
                    annotationArr2[i10].traverse(aSTVisitor, classScope);
                }
            }
            Annotation[][] annotationArr3 = this.annotationsOnDimensions;
            if (annotationArr3 != null) {
                int length2 = annotationArr3.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    Annotation[] annotationArr4 = this.annotationsOnDimensions[i11];
                    if (annotationArr4 != null) {
                        for (Annotation annotation : annotationArr4) {
                            annotation.traverse(aSTVisitor, classScope);
                        }
                    }
                }
            }
        }
        aSTVisitor.endVisit(this, classScope);
    }
}
