package com.android.dx.dex.file;

import com.android.dx.rop.annotation.AnnotationsList;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import com.android.dx.util.ToHuman;
import ei.C13155a;
import java.util.ArrayList;

public final class ParameterAnnotationStruct implements ToHuman, Comparable<ParameterAnnotationStruct> {
    private final UniformListItem<AnnotationSetRefItem> annotationsItem;
    private final AnnotationsList annotationsList;
    private final CstMethodRef method;

    public ParameterAnnotationStruct(CstMethodRef cstMethodRef, AnnotationsList annotationsList, DexFile dexFile) {
        if (cstMethodRef == null) {
            throw new NullPointerException("method == null");
        }
        if (annotationsList == null) {
            throw new NullPointerException("annotationsList == null");
        }
        this.method = cstMethodRef;
        this.annotationsList = annotationsList;
        int size = annotationsList.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(new AnnotationSetRefItem(new AnnotationSetItem(annotationsList.get(i10), dexFile)));
        }
        this.annotationsItem = new UniformListItem<>(ItemType.TYPE_ANNOTATION_SET_REF_LIST, arrayList);
    }

    public void addContents(DexFile dexFile) {
        MethodIdsSection methodIds = dexFile.getMethodIds();
        MixedItemSection wordData = dexFile.getWordData();
        methodIds.intern(this.method);
        wordData.add(this.annotationsItem);
    }

    public boolean equals(Object obj) {
        if (obj instanceof ParameterAnnotationStruct) {
            return this.method.equals(((ParameterAnnotationStruct) obj).method);
        }
        return false;
    }

    public AnnotationsList getAnnotationsList() {
        return this.annotationsList;
    }

    public CstMethodRef getMethod() {
        return this.method;
    }

    public int hashCode() {
        return this.method.hashCode();
    }

    @Override
    public String toHuman() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.method.toHuman());
        sb2.append(": ");
        boolean z10 = true;
        for (AnnotationSetRefItem annotationSetRefItem : this.annotationsItem.getItems()) {
            if (z10) {
                z10 = false;
            } else {
                sb2.append(", ");
            }
            sb2.append(annotationSetRefItem.toHuman());
        }
        return sb2.toString();
    }

    public void writeTo(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        int indexOf = dexFile.getMethodIds().indexOf(this.method);
        int absoluteOffset = this.annotationsItem.getAbsoluteOffset();
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(0, C13155a.f85806a + this.method.toHuman());
            annotatedOutput.annotate(4, "      method_idx:      " + Hex.u4(indexOf));
            annotatedOutput.annotate(4, "      annotations_off: " + Hex.u4(absoluteOffset));
        }
        annotatedOutput.writeInt(indexOf);
        annotatedOutput.writeInt(absoluteOffset);
    }

    @Override
    public int compareTo(ParameterAnnotationStruct parameterAnnotationStruct) {
        return this.method.compareTo((Constant) parameterAnnotationStruct.method);
    }
}
