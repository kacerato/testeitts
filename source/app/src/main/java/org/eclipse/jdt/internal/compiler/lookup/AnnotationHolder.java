package org.eclipse.jdt.internal.compiler.lookup;

public class AnnotationHolder {
    AnnotationBinding[] annotations;

    public static class AnnotationMethodHolder extends MethodHolder {
        Object defaultValue;
        LookupEnvironment env;

        public AnnotationMethodHolder(AnnotationBinding[] annotationBindingArr, AnnotationBinding[][] annotationBindingArr2, Object obj, LookupEnvironment lookupEnvironment) {
            super(annotationBindingArr, annotationBindingArr2);
            this.defaultValue = obj;
            this.env = lookupEnvironment;
        }

        @Override
        public Object getDefaultValue() {
            Object obj = this.defaultValue;
            if (obj instanceof UnresolvedReferenceBinding) {
                LookupEnvironment lookupEnvironment = this.env;
                if (lookupEnvironment == null) {
                    throw new IllegalStateException();
                }
                this.defaultValue = ((UnresolvedReferenceBinding) obj).resolve(lookupEnvironment, false);
            }
            return this.defaultValue;
        }
    }

    public static class MethodHolder extends AnnotationHolder {
        AnnotationBinding[][] parameterAnnotations;

        public MethodHolder(AnnotationBinding[] annotationBindingArr, AnnotationBinding[][] annotationBindingArr2) {
            setAnnotations(annotationBindingArr);
            this.parameterAnnotations = annotationBindingArr2;
        }

        @Override
        public AnnotationBinding[][] getParameterAnnotations() {
            return this.parameterAnnotations;
        }

        @Override
        public AnnotationHolder setAnnotations(AnnotationBinding[] annotationBindingArr) {
            if (annotationBindingArr == null || annotationBindingArr.length == 0) {
                annotationBindingArr = Binding.NO_ANNOTATIONS;
            }
            this.annotations = annotationBindingArr;
            return this;
        }

        @Override
        public AnnotationBinding[] getParameterAnnotations(int i10) {
            AnnotationBinding[][] annotationBindingArr = this.parameterAnnotations;
            AnnotationBinding[] annotationBindingArr2 = annotationBindingArr == null ? null : annotationBindingArr[i10];
            return annotationBindingArr2 == null ? Binding.NO_ANNOTATIONS : annotationBindingArr2;
        }
    }

    public static AnnotationHolder storeAnnotations(AnnotationBinding[] annotationBindingArr, AnnotationBinding[][] annotationBindingArr2, Object obj, LookupEnvironment lookupEnvironment) {
        if (annotationBindingArr2 != null) {
            int length = annotationBindingArr2.length;
            boolean z10 = true;
            while (z10) {
                length--;
                if (length < 0) {
                    break;
                }
                AnnotationBinding[] annotationBindingArr3 = annotationBindingArr2[length];
                if (annotationBindingArr3 != null && annotationBindingArr3.length > 0) {
                    z10 = false;
                }
            }
            if (z10) {
                annotationBindingArr2 = null;
            }
        }
        return obj != null ? new AnnotationMethodHolder(annotationBindingArr, annotationBindingArr2, obj, lookupEnvironment) : annotationBindingArr2 != null ? new MethodHolder(annotationBindingArr, annotationBindingArr2) : new AnnotationHolder().setAnnotations(annotationBindingArr);
    }

    public AnnotationBinding[] getAnnotations() {
        return this.annotations;
    }

    public Object getDefaultValue() {
        return null;
    }

    public AnnotationBinding[][] getParameterAnnotations() {
        return null;
    }

    public AnnotationHolder setAnnotations(AnnotationBinding[] annotationBindingArr) {
        this.annotations = annotationBindingArr;
        if (annotationBindingArr == null || annotationBindingArr.length == 0) {
            return null;
        }
        return this;
    }

    public AnnotationBinding[] getParameterAnnotations(int i10) {
        return Binding.NO_ANNOTATIONS;
    }
}
