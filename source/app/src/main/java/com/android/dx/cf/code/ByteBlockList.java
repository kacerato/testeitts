package com.android.dx.cf.code;

import com.android.dx.util.Hex;
import com.android.dx.util.LabeledItem;
import com.android.dx.util.LabeledList;

public final class ByteBlockList extends LabeledList {
    public ByteBlockList(int i10) {
        super(i10);
    }

    public ByteBlock get(int i10) {
        return (ByteBlock) get0(i10);
    }

    public ByteBlock labelToBlock(int i10) {
        int indexOfLabel = indexOfLabel(i10);
        if (indexOfLabel >= 0) {
            return get(indexOfLabel);
        }
        throw new IllegalArgumentException("no such label: " + Hex.u2(i10));
    }

    public void set(int i10, ByteBlock byteBlock) {
        super.set(i10, (LabeledItem) byteBlock);
    }
}
