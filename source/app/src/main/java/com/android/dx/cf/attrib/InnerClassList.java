package com.android.dx.cf.attrib;

import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.util.FixedSizeList;

public final class InnerClassList extends FixedSizeList {

    public static class Item {
        private final int accessFlags;
        private final CstType innerClass;
        private final CstString innerName;
        private final CstType outerClass;

        public Item(CstType cstType, CstType cstType2, CstString cstString, int i10) {
            if (cstType == null) {
                throw new NullPointerException("innerClass == null");
            }
            this.innerClass = cstType;
            this.outerClass = cstType2;
            this.innerName = cstString;
            this.accessFlags = i10;
        }

        public int getAccessFlags() {
            return this.accessFlags;
        }

        public CstType getInnerClass() {
            return this.innerClass;
        }

        public CstString getInnerName() {
            return this.innerName;
        }

        public CstType getOuterClass() {
            return this.outerClass;
        }
    }

    public InnerClassList(int i10) {
        super(i10);
    }

    public Item get(int i10) {
        return (Item) get0(i10);
    }

    public void set(int i10, CstType cstType, CstType cstType2, CstString cstString, int i11) {
        set0(i10, new Item(cstType, cstType2, cstString, i11));
    }
}
