package com.android.dx.rop.annotation;

import com.android.dx.util.FixedSizeList;

public final class AnnotationsList extends FixedSizeList {
    public static final AnnotationsList EMPTY = new AnnotationsList(0);

    public AnnotationsList(int i10) {
        super(i10);
    }

    public static AnnotationsList combine(AnnotationsList annotationsList, AnnotationsList annotationsList2) {
        int size = annotationsList.size();
        if (size != annotationsList2.size()) {
            throw new IllegalArgumentException("list1.size() != list2.size()");
        }
        AnnotationsList annotationsList3 = new AnnotationsList(size);
        for (int i10 = 0; i10 < size; i10++) {
            annotationsList3.set(i10, Annotations.combine(annotationsList.get(i10), annotationsList2.get(i10)));
        }
        annotationsList3.setImmutable();
        return annotationsList3;
    }

    public Annotations get(int i10) {
        return (Annotations) get0(i10);
    }

    public void set(int i10, Annotations annotations) {
        annotations.throwIfMutable();
        set0(i10, annotations);
    }
}
