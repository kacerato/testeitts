package com.android.dx.dex.code;

import com.android.dx.rop.code.SourcePosition;
import com.android.dx.util.FixedSizeList;

public final class PositionList extends FixedSizeList {
    public static final PositionList EMPTY = new PositionList(0);
    public static final int IMPORTANT = 3;
    public static final int LINES = 2;
    public static final int NONE = 1;

    public static class Entry {
        private final int address;
        private final SourcePosition position;

        public Entry(int i10, SourcePosition sourcePosition) {
            if (i10 < 0) {
                throw new IllegalArgumentException("address < 0");
            }
            if (sourcePosition == null) {
                throw new NullPointerException("position == null");
            }
            this.address = i10;
            this.position = sourcePosition;
        }

        public int getAddress() {
            return this.address;
        }

        public SourcePosition getPosition() {
            return this.position;
        }
    }

    public PositionList(int i10) {
        super(i10);
    }

    public static PositionList make(DalvInsnList dalvInsnList, int i10) {
        if (i10 == 1) {
            return EMPTY;
        }
        if (i10 != 2 && i10 != 3) {
            throw new IllegalArgumentException("bogus howMuch");
        }
        SourcePosition sourcePosition = SourcePosition.NO_INFO;
        int size = dalvInsnList.size();
        Entry[] entryArr = new Entry[size];
        SourcePosition sourcePosition2 = sourcePosition;
        int i11 = 0;
        boolean z10 = false;
        for (int i12 = 0; i12 < size; i12++) {
            DalvInsn dalvInsn = dalvInsnList.get(i12);
            if (dalvInsn instanceof CodeAddress) {
                z10 = true;
            } else {
                SourcePosition position = dalvInsn.getPosition();
                if (!position.equals(sourcePosition) && !position.sameLine(sourcePosition2) && (i10 != 3 || z10)) {
                    entryArr[i11] = new Entry(dalvInsn.getAddress(), position);
                    i11++;
                    z10 = false;
                    sourcePosition2 = position;
                }
            }
        }
        PositionList positionList = new PositionList(i11);
        for (int i13 = 0; i13 < i11; i13++) {
            positionList.set(i13, entryArr[i13]);
        }
        positionList.setImmutable();
        return positionList;
    }

    public Entry get(int i10) {
        return (Entry) get0(i10);
    }

    public void set(int i10, Entry entry) {
        set0(i10, entry);
    }
}
