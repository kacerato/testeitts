package org.eclipse.jdt.internal.compiler.classfmt;

import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryTypeAnnotation;
import org.eclipse.jdt.internal.compiler.env.ITypeAnnotationWalker;

public class TypeAnnotationWalker implements ITypeAnnotationWalker {
    protected final long matches;
    protected final int pathPtr;
    protected final IBinaryTypeAnnotation[] typeAnnotations;

    public TypeAnnotationWalker(IBinaryTypeAnnotation[] iBinaryTypeAnnotationArr) {
        this(iBinaryTypeAnnotationArr, (-1) >>> (64 - iBinaryTypeAnnotationArr.length));
    }

    @Override
    public IBinaryAnnotation[] getAnnotationsAtCursor(int i10, boolean z10) {
        int length = this.typeAnnotations.length;
        IBinaryAnnotation[] iBinaryAnnotationArr = new IBinaryAnnotation[length];
        long j10 = 1;
        int i11 = 0;
        int i12 = 0;
        while (i11 < length) {
            if ((this.matches & j10) != 0) {
                IBinaryTypeAnnotation iBinaryTypeAnnotation = this.typeAnnotations[i11];
                if (iBinaryTypeAnnotation.getTypePath().length <= this.pathPtr) {
                    iBinaryAnnotationArr[i12] = iBinaryTypeAnnotation.getAnnotation();
                    i12++;
                }
            }
            i11++;
            j10 <<= 1;
        }
        if (i12 == 0) {
            return ITypeAnnotationWalker.NO_ANNOTATIONS;
        }
        if (i12 >= length) {
            return iBinaryAnnotationArr;
        }
        IBinaryAnnotation[] iBinaryAnnotationArr2 = new IBinaryAnnotation[i12];
        System.arraycopy(iBinaryAnnotationArr, 0, iBinaryAnnotationArr2, 0, i12);
        return iBinaryAnnotationArr2;
    }

    public ITypeAnnotationWalker restrict(long j10, int i10) {
        IBinaryTypeAnnotation[] iBinaryTypeAnnotationArr;
        return (this.matches == j10 && this.pathPtr == i10) ? this : (j10 == 0 || (iBinaryTypeAnnotationArr = this.typeAnnotations) == null || iBinaryTypeAnnotationArr.length == 0) ? ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER : new TypeAnnotationWalker(iBinaryTypeAnnotationArr, j10, i10);
    }

    @Override
    public ITypeAnnotationWalker toField() {
        return toTarget(19);
    }

    @Override
    public ITypeAnnotationWalker toMethodParameter(short s10) {
        long j10 = this.matches;
        if (j10 == 0) {
            return ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER;
        }
        int length = this.typeAnnotations.length;
        long j11 = 1;
        int i10 = 0;
        while (i10 < length) {
            IBinaryTypeAnnotation iBinaryTypeAnnotation = this.typeAnnotations[i10];
            if (iBinaryTypeAnnotation.getTargetType() != 22 || ((short) iBinaryTypeAnnotation.getMethodFormalParameterIndex()) != s10) {
                j10 &= ~j11;
            }
            i10++;
            j11 <<= 1;
        }
        return restrict(j10, 0);
    }

    @Override
    public ITypeAnnotationWalker toMethodReturn() {
        return toTarget(20);
    }

    @Override
    public ITypeAnnotationWalker toNextArrayDimension() {
        return toNextDetail(0);
    }

    public ITypeAnnotationWalker toNextDetail(int i10) {
        long j10 = this.matches;
        if (j10 == 0) {
            return restrict(j10, this.pathPtr + 2);
        }
        int length = this.typeAnnotations.length;
        long j11 = 1;
        int i11 = 0;
        while (i11 < length) {
            int[] typePath = this.typeAnnotations[i11].getTypePath();
            int i12 = this.pathPtr;
            if (i12 >= typePath.length || typePath[i12] != i10) {
                j10 &= ~j11;
            }
            i11++;
            j11 <<= 1;
        }
        return restrict(j10, this.pathPtr + 2);
    }

    @Override
    public ITypeAnnotationWalker toNextNestedType() {
        return toNextDetail(1);
    }

    @Override
    public ITypeAnnotationWalker toReceiver() {
        return toTarget(21);
    }

    @Override
    public ITypeAnnotationWalker toSupertype(short s10, char[] cArr) {
        long j10 = this.matches;
        if (j10 == 0) {
            return ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER;
        }
        int length = this.typeAnnotations.length;
        long j11 = 1;
        int i10 = 0;
        while (i10 < length) {
            IBinaryTypeAnnotation iBinaryTypeAnnotation = this.typeAnnotations[i10];
            if (iBinaryTypeAnnotation.getTargetType() != 16 || ((short) iBinaryTypeAnnotation.getSupertypeIndex()) != s10) {
                j10 &= ~j11;
            }
            i10++;
            j11 <<= 1;
        }
        return restrict(j10, 0);
    }

    public ITypeAnnotationWalker toTarget(int i10) {
        long j10 = this.matches;
        if (j10 == 0) {
            return ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER;
        }
        int length = this.typeAnnotations.length;
        long j11 = 1;
        int i11 = 0;
        while (i11 < length) {
            if (this.typeAnnotations[i11].getTargetType() != i10) {
                j10 &= ~j11;
            }
            i11++;
            j11 <<= 1;
        }
        return restrict(j10, 0);
    }

    @Override
    public ITypeAnnotationWalker toThrows(int i10) {
        long j10 = this.matches;
        if (j10 == 0) {
            return ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER;
        }
        int length = this.typeAnnotations.length;
        long j11 = 1;
        int i11 = 0;
        while (i11 < length) {
            IBinaryTypeAnnotation iBinaryTypeAnnotation = this.typeAnnotations[i11];
            if (iBinaryTypeAnnotation.getTargetType() != 23 || iBinaryTypeAnnotation.getThrowsTypeIndex() != i10) {
                j10 &= ~j11;
            }
            i11++;
            j11 <<= 1;
        }
        return restrict(j10, 0);
    }

    @Override
    public ITypeAnnotationWalker toTypeArgument(int i10) {
        long j10 = this.matches;
        if (j10 == 0) {
            return ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER;
        }
        int length = this.typeAnnotations.length;
        long j11 = 1;
        int i11 = 0;
        while (i11 < length) {
            int[] typePath = this.typeAnnotations[i11].getTypePath();
            int i12 = this.pathPtr;
            if (i12 >= typePath.length || typePath[i12] != 3 || typePath[i12 + 1] != i10) {
                j10 &= ~j11;
            }
            i11++;
            j11 <<= 1;
        }
        return restrict(j10, this.pathPtr + 2);
    }

    @Override
    public ITypeAnnotationWalker toTypeBound(short s10) {
        long j10 = this.matches;
        if (j10 == 0) {
            return ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER;
        }
        int length = this.typeAnnotations.length;
        long j11 = 1;
        int i10 = 0;
        while (i10 < length) {
            if (((short) this.typeAnnotations[i10].getBoundIndex()) != s10) {
                j10 &= ~j11;
            }
            i10++;
            j11 <<= 1;
        }
        return restrict(j10, 0);
    }

    @Override
    public ITypeAnnotationWalker toTypeParameter(boolean z10, int i10) {
        long j10 = this.matches;
        if (j10 == 0) {
            return ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER;
        }
        boolean z11 = !z10;
        int length = this.typeAnnotations.length;
        long j11 = 1;
        int i11 = 0;
        while (i11 < length) {
            IBinaryTypeAnnotation iBinaryTypeAnnotation = this.typeAnnotations[i11];
            if (iBinaryTypeAnnotation.getTargetType() != z11 || iBinaryTypeAnnotation.getTypeParameterIndex() != i10) {
                j10 &= ~j11;
            }
            i11++;
            j11 <<= 1;
        }
        return restrict(j10, 0);
    }

    @Override
    public ITypeAnnotationWalker toTypeParameterBounds(boolean z10, int i10) {
        long j10 = this.matches;
        if (j10 == 0) {
            return ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER;
        }
        int length = this.typeAnnotations.length;
        int i11 = z10 ? 17 : 18;
        long j11 = 1;
        int i12 = 0;
        while (i12 < length) {
            IBinaryTypeAnnotation iBinaryTypeAnnotation = this.typeAnnotations[i12];
            if (iBinaryTypeAnnotation.getTargetType() != i11 || ((short) iBinaryTypeAnnotation.getTypeParameterIndex()) != i10) {
                j10 &= ~j11;
            }
            i12++;
            j11 <<= 1;
        }
        return restrict(j10, 0);
    }

    @Override
    public ITypeAnnotationWalker toWildcardBound() {
        long j10 = this.matches;
        if (j10 == 0) {
            return ITypeAnnotationWalker.EMPTY_ANNOTATION_WALKER;
        }
        int length = this.typeAnnotations.length;
        long j11 = 1;
        int i10 = 0;
        while (i10 < length) {
            int[] typePath = this.typeAnnotations[i10].getTypePath();
            int i11 = this.pathPtr;
            if (i11 >= typePath.length || typePath[i11] != 2) {
                j10 &= ~j11;
            }
            i10++;
            j11 <<= 1;
        }
        return restrict(j10, this.pathPtr + 2);
    }

    public TypeAnnotationWalker(IBinaryTypeAnnotation[] iBinaryTypeAnnotationArr, long j10) {
        this(iBinaryTypeAnnotationArr, j10, 0);
    }

    public TypeAnnotationWalker(IBinaryTypeAnnotation[] iBinaryTypeAnnotationArr, long j10, int i10) {
        this.typeAnnotations = iBinaryTypeAnnotationArr;
        this.matches = j10;
        this.pathPtr = i10;
    }
}
