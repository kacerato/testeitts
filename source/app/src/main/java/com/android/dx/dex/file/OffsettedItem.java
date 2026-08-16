package com.android.dx.dex.file;

import com.android.dex.util.ExceptionWithContext;
import com.android.dx.util.AnnotatedOutput;
import org.eclipse.jdt.internal.core.JavaElement;

public abstract class OffsettedItem extends Item implements Comparable<OffsettedItem> {
    private Section addedTo;
    private final int alignment;
    private int offset;
    private int writeSize;

    public OffsettedItem(int i10, int i11) {
        Section.validateAlignment(i10);
        if (i11 < -1) {
            throw new IllegalArgumentException("writeSize < -1");
        }
        this.alignment = i10;
        this.writeSize = i11;
        this.addedTo = null;
        this.offset = -1;
    }

    public static int getAbsoluteOffsetOr0(OffsettedItem offsettedItem) {
        if (offsettedItem == null) {
            return 0;
        }
        return offsettedItem.getAbsoluteOffset();
    }

    public int compareTo0(OffsettedItem offsettedItem) {
        throw new UnsupportedOperationException("unsupported");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        OffsettedItem offsettedItem = (OffsettedItem) obj;
        return itemType() == offsettedItem.itemType() && compareTo0(offsettedItem) == 0;
    }

    public final int getAbsoluteOffset() {
        int i10 = this.offset;
        if (i10 >= 0) {
            return this.addedTo.getAbsoluteOffset(i10);
        }
        throw new RuntimeException("offset not yet known");
    }

    public final int getAlignment() {
        return this.alignment;
    }

    public final int getRelativeOffset() {
        int i10 = this.offset;
        if (i10 >= 0) {
            return i10;
        }
        throw new RuntimeException("offset not yet known");
    }

    public final String offsetString() {
        return '[' + Integer.toHexString(getAbsoluteOffset()) + JavaElement.JEM_TYPE_PARAMETER;
    }

    public final int place(Section section, int i10) {
        if (section == null) {
            throw new NullPointerException("addedTo == null");
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("offset < 0");
        }
        if (this.addedTo != null) {
            throw new RuntimeException("already written");
        }
        int i11 = this.alignment - 1;
        int i12 = (i10 + i11) & (~i11);
        this.addedTo = section;
        this.offset = i12;
        place0(section, i12);
        return i12;
    }

    public void place0(Section section, int i10) {
    }

    public final void setWriteSize(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("writeSize < 0");
        }
        if (this.writeSize >= 0) {
            throw new UnsupportedOperationException("writeSize already set");
        }
        this.writeSize = i10;
    }

    public abstract String toHuman();

    @Override
    public final int writeSize() {
        int i10 = this.writeSize;
        if (i10 >= 0) {
            return i10;
        }
        throw new UnsupportedOperationException("writeSize is unknown");
    }

    @Override
    public final void writeTo(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        annotatedOutput.alignTo(this.alignment);
        try {
            if (this.writeSize < 0) {
                throw new UnsupportedOperationException("writeSize is unknown");
            }
            annotatedOutput.assertCursor(getAbsoluteOffset());
            writeTo0(dexFile, annotatedOutput);
        } catch (RuntimeException e10) {
            throw ExceptionWithContext.withContext(e10, "...while writing " + ((Object) this));
        }
    }

    public abstract void writeTo0(DexFile dexFile, AnnotatedOutput annotatedOutput);

    @Override
    public final int compareTo(OffsettedItem offsettedItem) {
        if (this == offsettedItem) {
            return 0;
        }
        ItemType itemType = itemType();
        ItemType itemType2 = offsettedItem.itemType();
        if (itemType != itemType2) {
            return itemType.compareTo(itemType2);
        }
        return compareTo0(offsettedItem);
    }
}
