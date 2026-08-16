package com.android.dx.cf.code;

import com.android.dx.util.FixedSizeList;

public final class LineNumberList extends FixedSizeList {
    public static final LineNumberList EMPTY = new LineNumberList(0);

    public static class Item {
        private final int lineNumber;
        private final int startPc;

        public Item(int i10, int i11) {
            if (i10 < 0) {
                throw new IllegalArgumentException("startPc < 0");
            }
            if (i11 < 0) {
                throw new IllegalArgumentException("lineNumber < 0");
            }
            this.startPc = i10;
            this.lineNumber = i11;
        }

        public int getLineNumber() {
            return this.lineNumber;
        }

        public int getStartPc() {
            return this.startPc;
        }
    }

    public LineNumberList(int i10) {
        super(i10);
    }

    public static LineNumberList concat(LineNumberList lineNumberList, LineNumberList lineNumberList2) {
        if (lineNumberList == EMPTY) {
            return lineNumberList2;
        }
        int size = lineNumberList.size();
        int size2 = lineNumberList2.size();
        LineNumberList lineNumberList3 = new LineNumberList(size + size2);
        for (int i10 = 0; i10 < size; i10++) {
            lineNumberList3.set(i10, lineNumberList.get(i10));
        }
        for (int i11 = 0; i11 < size2; i11++) {
            lineNumberList3.set(size + i11, lineNumberList2.get(i11));
        }
        return lineNumberList3;
    }

    public Item get(int i10) {
        return (Item) get0(i10);
    }

    public int pcToLine(int i10) {
        int size = size();
        int i11 = -1;
        int i12 = -1;
        for (int i13 = 0; i13 < size; i13++) {
            Item item = get(i13);
            int startPc = item.getStartPc();
            if (startPc <= i10 && startPc > i11) {
                i12 = item.getLineNumber();
                if (startPc == i10) {
                    break;
                }
                i11 = startPc;
            }
        }
        return i12;
    }

    public void set(int i10, Item item) {
        if (item != null) {
            set0(i10, item);
            return;
        }
        throw new NullPointerException("item == null");
    }

    public void set(int i10, int i11, int i12) {
        set0(i10, new Item(i11, i12));
    }
}
