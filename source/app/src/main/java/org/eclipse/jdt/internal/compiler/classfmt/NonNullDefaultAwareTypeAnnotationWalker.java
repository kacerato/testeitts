package org.eclipse.jdt.internal.compiler.classfmt;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryElementValuePair;
import org.eclipse.jdt.internal.compiler.env.IBinaryTypeAnnotation;
import org.eclipse.jdt.internal.compiler.env.ITypeAnnotationWalker;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;

public class NonNullDefaultAwareTypeAnnotationWalker extends TypeAnnotationWalker {
    private final boolean atDefaultLocation;
    private final boolean atTypeBound;
    private final boolean currentArrayContentIsNonNull;
    private final int defaultNullness;
    private final LookupEnvironment environment;
    private final boolean isEmpty;
    private boolean nextArrayContentIsNonNull;
    private boolean nextIsDefaultLocation;
    private boolean nextIsTypeBound;
    private final IBinaryAnnotation nonNullAnnotation;

    public NonNullDefaultAwareTypeAnnotationWalker(IBinaryTypeAnnotation[] iBinaryTypeAnnotationArr, int i10, LookupEnvironment lookupEnvironment) {
        super(iBinaryTypeAnnotationArr);
        this.nonNullAnnotation = getNonNullAnnotation(lookupEnvironment);
        this.defaultNullness = i10;
        this.environment = lookupEnvironment;
        this.atDefaultLocation = false;
        this.atTypeBound = false;
        this.isEmpty = false;
        this.currentArrayContentIsNonNull = false;
    }

    private static IBinaryAnnotation getNonNullAnnotation(LookupEnvironment lookupEnvironment) {
        final char[] concat = CharOperation.concat('L', CharOperation.concatWith(lookupEnvironment.getNonNullAnnotationName(), '/'), ';');
        return new IBinaryAnnotation() {
            @Override
            public IBinaryElementValuePair[] getElementValuePairs() {
                return null;
            }

            @Override
            public char[] getTypeName() {
                return concat;
            }
        };
    }

    public static ITypeAnnotationWalker updateWalkerForParamNonNullDefault(ITypeAnnotationWalker iTypeAnnotationWalker, int i10, LookupEnvironment lookupEnvironment) {
        IBinaryAnnotation nonNullAnnotation;
        if (!lookupEnvironment.globalOptions.isAnnotationBasedNullAnalysisEnabled || i10 == 0) {
            return iTypeAnnotationWalker;
        }
        if (i10 == 2) {
            if (!(iTypeAnnotationWalker instanceof NonNullDefaultAwareTypeAnnotationWalker)) {
                return iTypeAnnotationWalker;
            }
            NonNullDefaultAwareTypeAnnotationWalker nonNullDefaultAwareTypeAnnotationWalker = (NonNullDefaultAwareTypeAnnotationWalker) iTypeAnnotationWalker;
            return new TypeAnnotationWalker(nonNullDefaultAwareTypeAnnotationWalker.typeAnnotations, nonNullDefaultAwareTypeAnnotationWalker.matches, nonNullDefaultAwareTypeAnnotationWalker.pathPtr);
        }
        if (!(iTypeAnnotationWalker instanceof TypeAnnotationWalker)) {
            return new NonNullDefaultAwareTypeAnnotationWalker(i10, lookupEnvironment);
        }
        TypeAnnotationWalker typeAnnotationWalker = (TypeAnnotationWalker) iTypeAnnotationWalker;
        if (iTypeAnnotationWalker instanceof NonNullDefaultAwareTypeAnnotationWalker) {
            NonNullDefaultAwareTypeAnnotationWalker nonNullDefaultAwareTypeAnnotationWalker2 = (NonNullDefaultAwareTypeAnnotationWalker) iTypeAnnotationWalker;
            if (nonNullDefaultAwareTypeAnnotationWalker2.isEmpty) {
                return new NonNullDefaultAwareTypeAnnotationWalker(i10, lookupEnvironment);
            }
            nonNullAnnotation = nonNullDefaultAwareTypeAnnotationWalker2.nonNullAnnotation;
        } else {
            nonNullAnnotation = getNonNullAnnotation(lookupEnvironment);
        }
        return new NonNullDefaultAwareTypeAnnotationWalker(typeAnnotationWalker.typeAnnotations, typeAnnotationWalker.matches, typeAnnotationWalker.pathPtr, i10, nonNullAnnotation, false, false, lookupEnvironment, false);
    }

    @Override
    public IBinaryAnnotation[] getAnnotationsAtCursor(int i10, boolean z10) {
        IBinaryAnnotation[] annotationsAtCursor = this.isEmpty ? ITypeAnnotationWalker.NO_ANNOTATIONS : super.getAnnotationsAtCursor(i10, z10);
        if ((!this.atDefaultLocation && (!z10 || !this.currentArrayContentIsNonNull)) || i10 == -1 || (this.atTypeBound && i10 == 1)) {
            return annotationsAtCursor;
        }
        if (annotationsAtCursor == null || annotationsAtCursor.length == 0) {
            return new IBinaryAnnotation[]{this.nonNullAnnotation};
        }
        if (this.environment.containsNullTypeAnnotation(annotationsAtCursor)) {
            return annotationsAtCursor;
        }
        int length = annotationsAtCursor.length;
        IBinaryAnnotation[] iBinaryAnnotationArr = new IBinaryAnnotation[1 + length];
        System.arraycopy(annotationsAtCursor, 0, iBinaryAnnotationArr, 0, length);
        iBinaryAnnotationArr[length] = this.nonNullAnnotation;
        return iBinaryAnnotationArr;
    }

    @Override
    public ITypeAnnotationWalker toField() {
        return this.isEmpty ? restrict(this.matches, this.pathPtr) : super.toField();
    }

    @Override
    public ITypeAnnotationWalker toMethodParameter(short s10) {
        return this.isEmpty ? restrict(this.matches, this.pathPtr) : super.toMethodParameter(s10);
    }

    @Override
    public ITypeAnnotationWalker toMethodReturn() {
        return this.isEmpty ? restrict(this.matches, this.pathPtr) : super.toMethodReturn();
    }

    @Override
    public ITypeAnnotationWalker toNextArrayDimension() {
        if ((this.defaultNullness & 512) != 0) {
            this.nextArrayContentIsNonNull = true;
        }
        this.nextIsDefaultLocation = false;
        this.nextIsTypeBound = false;
        return this.isEmpty ? restrict(this.matches, this.pathPtr) : super.toNextArrayDimension();
    }

    @Override
    public ITypeAnnotationWalker toNextDetail(int i10) {
        return this.isEmpty ? restrict(this.matches, this.pathPtr) : super.toNextDetail(i10);
    }

    @Override
    public ITypeAnnotationWalker toSupertype(short s10, char[] cArr) {
        return this.isEmpty ? restrict(this.matches, this.pathPtr) : super.toSupertype(s10, cArr);
    }

    @Override
    public ITypeAnnotationWalker toTypeArgument(int i10) {
        this.nextIsDefaultLocation = (this.defaultNullness & 64) != 0;
        this.nextIsTypeBound = false;
        this.nextArrayContentIsNonNull = false;
        return this.isEmpty ? restrict(this.matches, this.pathPtr) : super.toTypeArgument(i10);
    }

    @Override
    public ITypeAnnotationWalker toTypeBound(short s10) {
        this.nextIsDefaultLocation = (this.defaultNullness & 256) != 0;
        this.nextIsTypeBound = true;
        this.nextArrayContentIsNonNull = false;
        return this.isEmpty ? restrict(this.matches, this.pathPtr) : super.toTypeBound(s10);
    }

    @Override
    public ITypeAnnotationWalker toTypeParameter(boolean z10, int i10) {
        this.nextIsDefaultLocation = (this.defaultNullness & 128) != 0;
        this.nextIsTypeBound = false;
        this.nextArrayContentIsNonNull = false;
        return this.isEmpty ? restrict(this.matches, this.pathPtr) : super.toTypeParameter(z10, i10);
    }

    @Override
    public ITypeAnnotationWalker toTypeParameterBounds(boolean z10, int i10) {
        this.nextIsDefaultLocation = (this.defaultNullness & 256) != 0;
        this.nextIsTypeBound = true;
        this.nextArrayContentIsNonNull = false;
        return this.isEmpty ? restrict(this.matches, this.pathPtr) : super.toTypeParameterBounds(z10, i10);
    }

    @Override
    public ITypeAnnotationWalker toWildcardBound() {
        this.nextIsDefaultLocation = (this.defaultNullness & 256) != 0;
        this.nextIsTypeBound = true;
        this.nextArrayContentIsNonNull = false;
        return this.isEmpty ? restrict(this.matches, this.pathPtr) : super.toWildcardBound();
    }

    @Override
    public TypeAnnotationWalker restrict(long j10, int i10) {
        NonNullDefaultAwareTypeAnnotationWalker nonNullDefaultAwareTypeAnnotationWalker;
        IBinaryTypeAnnotation[] iBinaryTypeAnnotationArr;
        boolean z10;
        try {
            if (this.matches == j10 && this.pathPtr == i10 && this.atDefaultLocation == this.nextIsDefaultLocation && this.atTypeBound == this.nextIsTypeBound && (z10 = this.currentArrayContentIsNonNull) == this.nextArrayContentIsNonNull) {
                this.nextIsDefaultLocation = false;
                this.nextIsTypeBound = false;
                this.nextArrayContentIsNonNull = z10;
                return this;
            }
            if (j10 != 0 && (iBinaryTypeAnnotationArr = this.typeAnnotations) != null && iBinaryTypeAnnotationArr.length != 0) {
                nonNullDefaultAwareTypeAnnotationWalker = new NonNullDefaultAwareTypeAnnotationWalker(iBinaryTypeAnnotationArr, j10, i10, this.defaultNullness, this.nonNullAnnotation, this.nextIsDefaultLocation, this.nextIsTypeBound, this.environment, this.nextArrayContentIsNonNull);
                return nonNullDefaultAwareTypeAnnotationWalker;
            }
            nonNullDefaultAwareTypeAnnotationWalker = new NonNullDefaultAwareTypeAnnotationWalker(this.defaultNullness, this.nonNullAnnotation, this.nextIsDefaultLocation, this.nextIsTypeBound, this.environment, this.nextArrayContentIsNonNull);
            return nonNullDefaultAwareTypeAnnotationWalker;
        } finally {
            this.nextIsDefaultLocation = false;
            this.nextIsTypeBound = false;
            this.nextArrayContentIsNonNull = this.currentArrayContentIsNonNull;
        }
    }

    public NonNullDefaultAwareTypeAnnotationWalker(int i10, LookupEnvironment lookupEnvironment) {
        this(i10, getNonNullAnnotation(lookupEnvironment), false, false, lookupEnvironment, false);
    }

    public NonNullDefaultAwareTypeAnnotationWalker(IBinaryTypeAnnotation[] iBinaryTypeAnnotationArr, long j10, int i10, int i11, IBinaryAnnotation iBinaryAnnotation, boolean z10, boolean z11, LookupEnvironment lookupEnvironment, boolean z12) {
        super(iBinaryTypeAnnotationArr, j10, i10);
        this.defaultNullness = i11;
        this.nonNullAnnotation = iBinaryAnnotation;
        this.atDefaultLocation = z10;
        this.atTypeBound = z11;
        this.environment = lookupEnvironment;
        this.nextArrayContentIsNonNull = z12;
        this.currentArrayContentIsNonNull = z12;
        this.isEmpty = false;
    }

    public NonNullDefaultAwareTypeAnnotationWalker(int i10, IBinaryAnnotation iBinaryAnnotation, boolean z10, boolean z11, LookupEnvironment lookupEnvironment, boolean z12) {
        super(null, 0L, 0);
        this.nonNullAnnotation = iBinaryAnnotation;
        this.defaultNullness = i10;
        this.atDefaultLocation = z10;
        this.atTypeBound = z11;
        this.isEmpty = true;
        this.environment = lookupEnvironment;
        this.nextArrayContentIsNonNull = z12;
        this.currentArrayContentIsNonNull = z12;
    }
}
