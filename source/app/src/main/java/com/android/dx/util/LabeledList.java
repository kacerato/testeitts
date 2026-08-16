package com.android.dx.util;

import java.util.Arrays;

public class LabeledList extends FixedSizeList {
    private final IntList labelToIndex;

    public LabeledList(int i10) {
        super(i10);
        this.labelToIndex = new IntList(i10);
    }

    private void addLabelIndex(int i10, int i11) {
        int size = this.labelToIndex.size();
        for (int i12 = 0; i12 <= i10 - size; i12++) {
            this.labelToIndex.add(-1);
        }
        this.labelToIndex.set(i10, i11);
    }

    private void rebuildLabelToIndex() {
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            LabeledItem labeledItem = (LabeledItem) get0(i10);
            if (labeledItem != null) {
                this.labelToIndex.set(labeledItem.getLabel(), i10);
            }
        }
    }

    private void removeLabel(int i10) {
        this.labelToIndex.set(i10, -1);
    }

    public final int[] getLabelsInOrder() {
        int size = size();
        int[] iArr = new int[size];
        for (int i10 = 0; i10 < size; i10++) {
            LabeledItem labeledItem = (LabeledItem) get0(i10);
            if (labeledItem == null) {
                throw new NullPointerException("null at index " + i10);
            }
            iArr[i10] = labeledItem.getLabel();
        }
        Arrays.sort(iArr);
        return iArr;
    }

    public final int getMaxLabel() {
        int size = this.labelToIndex.size() - 1;
        while (size >= 0 && this.labelToIndex.get(size) < 0) {
            size--;
        }
        int i10 = size + 1;
        this.labelToIndex.shrink(i10);
        return i10;
    }

    public final int indexOfLabel(int i10) {
        if (i10 >= this.labelToIndex.size()) {
            return -1;
        }
        return this.labelToIndex.get(i10);
    }

    public void set(int i10, LabeledItem labeledItem) {
        LabeledItem labeledItem2 = (LabeledItem) getOrNull0(i10);
        set0(i10, labeledItem);
        if (labeledItem2 != null) {
            removeLabel(labeledItem2.getLabel());
        }
        if (labeledItem != null) {
            addLabelIndex(labeledItem.getLabel(), i10);
        }
    }

    @Override
    public void shrinkToFit() {
        super.shrinkToFit();
        rebuildLabelToIndex();
    }

    public LabeledList(LabeledList labeledList) {
        super(labeledList.size());
        this.labelToIndex = labeledList.labelToIndex.mutableCopy();
        int size = labeledList.size();
        for (int i10 = 0; i10 < size; i10++) {
            Object obj = labeledList.get0(i10);
            if (obj != null) {
                set0(i10, obj);
            }
        }
    }
}
