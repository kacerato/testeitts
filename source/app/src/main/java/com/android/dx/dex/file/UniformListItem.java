package com.android.dx.dex.file;

import com.android.dx.dex.file.OffsettedItem;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.geometry.VectorFormat;

public final class UniformListItem<T extends OffsettedItem> extends OffsettedItem {
    private static final int HEADER_SIZE = 4;
    private final ItemType itemType;
    private final List<T> items;

    public UniformListItem(ItemType itemType, List<T> list) {
        super(getAlignment(list), writeSize(list));
        if (itemType == null) {
            throw new NullPointerException("itemType == null");
        }
        this.items = list;
        this.itemType = itemType;
    }

    private static int getAlignment(List<? extends OffsettedItem> list) {
        try {
            return Math.max(4, list.get(0).getAlignment());
        } catch (IndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("items.size() == 0");
        } catch (NullPointerException unused2) {
            throw new NullPointerException("items == null");
        }
    }

    private int headerSize() {
        return getAlignment();
    }

    private static int writeSize(List<? extends OffsettedItem> list) {
        return (list.size() * list.get(0).writeSize()) + getAlignment(list);
    }

    @Override
    public void addContents(DexFile dexFile) {
        Iterator<T> it = this.items.iterator();
        while (it.hasNext()) {
            it.next().addContents(dexFile);
        }
    }

    public final List<T> getItems() {
        return this.items;
    }

    @Override
    public ItemType itemType() {
        return this.itemType;
    }

    @Override
    public void place0(Section section, int i10) {
        int headerSize = i10 + headerSize();
        boolean z10 = true;
        int i11 = -1;
        int i12 = -1;
        for (T t10 : this.items) {
            int writeSize = t10.writeSize();
            if (z10) {
                i12 = t10.getAlignment();
                z10 = false;
                i11 = writeSize;
            } else {
                if (writeSize != i11) {
                    throw new UnsupportedOperationException("item size mismatch");
                }
                if (t10.getAlignment() != i12) {
                    throw new UnsupportedOperationException("item alignment mismatch");
                }
            }
            headerSize = t10.place(section, headerSize) + writeSize;
        }
    }

    @Override
    public final String toHuman() {
        StringBuffer stringBuffer = new StringBuffer(100);
        stringBuffer.append("{");
        boolean z10 = true;
        for (T t10 : this.items) {
            if (z10) {
                z10 = false;
            } else {
                stringBuffer.append(", ");
            }
            stringBuffer.append(t10.toHuman());
        }
        stringBuffer.append(VectorFormat.DEFAULT_SUFFIX);
        return stringBuffer.toString();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(100);
        stringBuffer.append(UniformListItem.class.getName());
        stringBuffer.append((Object) this.items);
        return stringBuffer.toString();
    }

    @Override
    public void writeTo0(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        int size = this.items.size();
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(0, offsetString() + " " + typeName());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("  size: ");
            sb2.append(Hex.u4(size));
            annotatedOutput.annotate(4, sb2.toString());
        }
        annotatedOutput.writeInt(size);
        Iterator<T> it = this.items.iterator();
        while (it.hasNext()) {
            it.next().writeTo(dexFile, annotatedOutput);
        }
    }
}
