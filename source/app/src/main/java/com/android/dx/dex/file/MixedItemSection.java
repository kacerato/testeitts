package com.android.dx.dex.file;

import com.android.dex.util.ExceptionWithContext;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.TreeMap;
import w2.C15883c;

public final class MixedItemSection extends Section {
    private static final Comparator<OffsettedItem> TYPE_SORTER = new Comparator<OffsettedItem>() {
        @Override
        public int compare(OffsettedItem offsettedItem, OffsettedItem offsettedItem2) {
            return offsettedItem.itemType().compareTo(offsettedItem2.itemType());
        }
    };
    private final HashMap<OffsettedItem, OffsettedItem> interns;
    private final ArrayList<OffsettedItem> items;
    private final SortType sort;
    private int writeSize;

    public static class AnonymousClass2 {
        static final int[] $SwitchMap$com$android$dx$dex$file$MixedItemSection$SortType;

        static {
            int[] iArr = new int[SortType.values().length];
            $SwitchMap$com$android$dx$dex$file$MixedItemSection$SortType = iArr;
            try {
                iArr[SortType.INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$dx$dex$file$MixedItemSection$SortType[SortType.TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum SortType {
        NONE,
        TYPE,
        INSTANCE
    }

    public MixedItemSection(String str, DexFile dexFile, int i10, SortType sortType) {
        super(str, dexFile, i10);
        this.items = new ArrayList<>(100);
        this.interns = new HashMap<>(100);
        this.sort = sortType;
        this.writeSize = -1;
    }

    public void add(OffsettedItem offsettedItem) {
        throwIfPrepared();
        try {
            if (offsettedItem.getAlignment() > getAlignment()) {
                throw new IllegalArgumentException("incompatible item alignment");
            }
            this.items.add(offsettedItem);
        } catch (NullPointerException unused) {
            throw new NullPointerException("item == null");
        }
    }

    public <T extends OffsettedItem> T get(T t10) {
        throwIfNotPrepared();
        T t11 = (T) this.interns.get(t10);
        if (t11 != null) {
            return t11;
        }
        throw new NoSuchElementException(t10.toString());
    }

    @Override
    public int getAbsoluteItemOffset(Item item) {
        return ((OffsettedItem) item).getAbsoluteOffset();
    }

    public synchronized <T extends OffsettedItem> T intern(T t10) {
        throwIfPrepared();
        T t11 = (T) this.interns.get(t10);
        if (t11 != null) {
            return t11;
        }
        add(t10);
        this.interns.put(t10, t10);
        return t10;
    }

    @Override
    public Collection<? extends Item> items() {
        return this.items;
    }

    public void placeItems() {
        throwIfNotPrepared();
        int i10 = AnonymousClass2.$SwitchMap$com$android$dx$dex$file$MixedItemSection$SortType[this.sort.ordinal()];
        if (i10 == 1) {
            Collections.sort(this.items);
        } else if (i10 == 2) {
            Collections.sort(this.items, TYPE_SORTER);
        }
        int size = this.items.size();
        int i11 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            OffsettedItem offsettedItem = this.items.get(i12);
            try {
                int place = offsettedItem.place(this, i11);
                if (place < i11) {
                    throw new RuntimeException("bogus place() result for " + ((Object) offsettedItem));
                }
                i11 = offsettedItem.writeSize() + place;
            } catch (RuntimeException e10) {
                throw ExceptionWithContext.withContext(e10, "...while placing " + ((Object) offsettedItem));
            }
        }
        this.writeSize = i11;
    }

    @Override
    public void prepare0() {
        DexFile file = getFile();
        int i10 = 0;
        while (true) {
            int size = this.items.size();
            if (i10 >= size) {
                return;
            }
            while (i10 < size) {
                this.items.get(i10).addContents(file);
                i10++;
            }
        }
    }

    public int size() {
        return this.items.size();
    }

    public void writeHeaderPart(AnnotatedOutput annotatedOutput) {
        throwIfNotPrepared();
        int i10 = this.writeSize;
        if (i10 == -1) {
            throw new RuntimeException("write size not yet set");
        }
        int fileOffset = i10 == 0 ? 0 : getFileOffset();
        String name = getName();
        if (name == null) {
            name = "<unnamed>";
        }
        char[] cArr = new char[15 - name.length()];
        Arrays.fill(cArr, C15883c.f126249O);
        String str = new String(cArr);
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(4, name + "_size:" + str + Hex.u4(i10));
            annotatedOutput.annotate(4, name + "_off: " + str + Hex.u4(fileOffset));
        }
        annotatedOutput.writeInt(i10);
        annotatedOutput.writeInt(fileOffset);
    }

    public void writeIndexAnnotation(AnnotatedOutput annotatedOutput, ItemType itemType, String str) {
        throwIfNotPrepared();
        TreeMap treeMap = new TreeMap();
        Iterator<OffsettedItem> it = this.items.iterator();
        while (it.hasNext()) {
            OffsettedItem next = it.next();
            if (next.itemType() == itemType) {
                treeMap.put(next.toHuman(), next);
            }
        }
        if (treeMap.size() == 0) {
            return;
        }
        annotatedOutput.annotate(0, str);
        for (Map.Entry entry : treeMap.entrySet()) {
            annotatedOutput.annotate(0, ((OffsettedItem) entry.getValue()).offsetString() + C15883c.f126249O + ((String) entry.getKey()) + '\n');
        }
    }

    @Override
    public int writeSize() {
        throwIfNotPrepared();
        return this.writeSize;
    }

    @Override
    public void writeTo0(AnnotatedOutput annotatedOutput) {
        boolean annotates = annotatedOutput.annotates();
        DexFile file = getFile();
        Iterator<OffsettedItem> it = this.items.iterator();
        boolean z10 = true;
        int i10 = 0;
        while (it.hasNext()) {
            OffsettedItem next = it.next();
            if (annotates) {
                if (z10) {
                    z10 = false;
                } else {
                    annotatedOutput.annotate(0, "\n");
                }
            }
            int alignment = next.getAlignment() - 1;
            int i11 = (~alignment) & (i10 + alignment);
            if (i10 != i11) {
                annotatedOutput.writeZeroes(i11 - i10);
                i10 = i11;
            }
            next.writeTo(file, annotatedOutput);
            i10 += next.writeSize();
        }
        if (i10 != this.writeSize) {
            throw new RuntimeException("output size mismatch");
        }
    }
}
