package com.android.dx.dex.file;

import com.android.dx.rop.annotation.Annotation;
import com.android.dx.rop.annotation.Annotations;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import ei.C13155a;
import java.util.Iterator;

public final class AnnotationSetItem extends OffsettedItem {
    private static final int ALIGNMENT = 4;
    private static final int ENTRY_WRITE_SIZE = 4;
    private final Annotations annotations;
    private final AnnotationItem[] items;

    public AnnotationSetItem(Annotations annotations, DexFile dexFile) {
        super(4, writeSize(annotations));
        this.annotations = annotations;
        this.items = new AnnotationItem[annotations.size()];
        Iterator<Annotation> it = annotations.getAnnotations().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            this.items[i10] = new AnnotationItem(it.next(), dexFile);
            i10++;
        }
    }

    private static int writeSize(Annotations annotations) {
        try {
            return (annotations.size() * 4) + 4;
        } catch (NullPointerException unused) {
            throw new NullPointerException("list == null");
        }
    }

    @Override
    public void addContents(DexFile dexFile) {
        MixedItemSection byteData = dexFile.getByteData();
        int length = this.items.length;
        for (int i10 = 0; i10 < length; i10++) {
            AnnotationItem[] annotationItemArr = this.items;
            annotationItemArr[i10] = (AnnotationItem) byteData.intern(annotationItemArr[i10]);
        }
    }

    @Override
    public int compareTo0(OffsettedItem offsettedItem) {
        return this.annotations.compareTo(((AnnotationSetItem) offsettedItem).annotations);
    }

    public Annotations getAnnotations() {
        return this.annotations;
    }

    public int hashCode() {
        return this.annotations.hashCode();
    }

    @Override
    public ItemType itemType() {
        return ItemType.TYPE_ANNOTATION_SET_ITEM;
    }

    @Override
    public void place0(Section section, int i10) {
        AnnotationItem.sortByTypeIdIndex(this.items);
    }

    @Override
    public String toHuman() {
        return this.annotations.toString();
    }

    @Override
    public void writeTo0(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        boolean annotates = annotatedOutput.annotates();
        int length = this.items.length;
        if (annotates) {
            annotatedOutput.annotate(0, offsetString() + " annotation set");
            annotatedOutput.annotate(4, "  size: " + Hex.u4(length));
        }
        annotatedOutput.writeInt(length);
        for (int i10 = 0; i10 < length; i10++) {
            int absoluteOffset = this.items[i10].getAbsoluteOffset();
            if (annotates) {
                annotatedOutput.annotate(4, "  entries[" + Integer.toHexString(i10) + "]: " + Hex.u4(absoluteOffset));
                this.items[i10].annotateTo(annotatedOutput, C13155a.f85806a);
            }
            annotatedOutput.writeInt(absoluteOffset);
        }
    }
}
