package org.eclipse.jdt.internal.compiler.env;

public interface ITypeAnnotationWalker {
    public static final IBinaryAnnotation[] NO_ANNOTATIONS = new IBinaryAnnotation[0];
    public static final ITypeAnnotationWalker EMPTY_ANNOTATION_WALKER = new ITypeAnnotationWalker() {
        @Override
        public IBinaryAnnotation[] getAnnotationsAtCursor(int i10, boolean z10) {
            return ITypeAnnotationWalker.NO_ANNOTATIONS;
        }

        @Override
        public ITypeAnnotationWalker toField() {
            return this;
        }

        @Override
        public ITypeAnnotationWalker toMethodParameter(short s10) {
            return this;
        }

        @Override
        public ITypeAnnotationWalker toMethodReturn() {
            return this;
        }

        @Override
        public ITypeAnnotationWalker toNextArrayDimension() {
            return this;
        }

        @Override
        public ITypeAnnotationWalker toNextNestedType() {
            return this;
        }

        @Override
        public ITypeAnnotationWalker toReceiver() {
            return this;
        }

        @Override
        public ITypeAnnotationWalker toSupertype(short s10, char[] cArr) {
            return this;
        }

        @Override
        public ITypeAnnotationWalker toThrows(int i10) {
            return this;
        }

        @Override
        public ITypeAnnotationWalker toTypeArgument(int i10) {
            return this;
        }

        @Override
        public ITypeAnnotationWalker toTypeBound(short s10) {
            return this;
        }

        @Override
        public ITypeAnnotationWalker toTypeParameter(boolean z10, int i10) {
            return this;
        }

        @Override
        public ITypeAnnotationWalker toTypeParameterBounds(boolean z10, int i10) {
            return this;
        }

        @Override
        public ITypeAnnotationWalker toWildcardBound() {
            return this;
        }
    };

    IBinaryAnnotation[] getAnnotationsAtCursor(int i10, boolean z10);

    ITypeAnnotationWalker toField();

    ITypeAnnotationWalker toMethodParameter(short s10);

    ITypeAnnotationWalker toMethodReturn();

    ITypeAnnotationWalker toNextArrayDimension();

    ITypeAnnotationWalker toNextNestedType();

    ITypeAnnotationWalker toReceiver();

    ITypeAnnotationWalker toSupertype(short s10, char[] cArr);

    ITypeAnnotationWalker toThrows(int i10);

    ITypeAnnotationWalker toTypeArgument(int i10);

    ITypeAnnotationWalker toTypeBound(short s10);

    ITypeAnnotationWalker toTypeParameter(boolean z10, int i10);

    ITypeAnnotationWalker toTypeParameterBounds(boolean z10, int i10);

    ITypeAnnotationWalker toWildcardBound();
}
