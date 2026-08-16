package com.android.dx.cf.code;

import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.StdTypeList;
import com.android.dx.rop.type.TypeList;
import com.android.dx.util.FixedSizeList;
import com.android.dx.util.IntList;

public final class ByteCatchList extends FixedSizeList {
    public static final ByteCatchList EMPTY = new ByteCatchList(0);

    public static class Item {
        private final int endPc;
        private final CstType exceptionClass;
        private final int handlerPc;
        private final int startPc;

        public Item(int i10, int i11, int i12, CstType cstType) {
            if (i10 < 0) {
                throw new IllegalArgumentException("startPc < 0");
            }
            if (i11 < i10) {
                throw new IllegalArgumentException("endPc < startPc");
            }
            if (i12 < 0) {
                throw new IllegalArgumentException("handlerPc < 0");
            }
            this.startPc = i10;
            this.endPc = i11;
            this.handlerPc = i12;
            this.exceptionClass = cstType;
        }

        public boolean covers(int i10) {
            return i10 >= this.startPc && i10 < this.endPc;
        }

        public int getEndPc() {
            return this.endPc;
        }

        public CstType getExceptionClass() {
            CstType cstType = this.exceptionClass;
            return cstType != null ? cstType : CstType.OBJECT;
        }

        public int getHandlerPc() {
            return this.handlerPc;
        }

        public int getStartPc() {
            return this.startPc;
        }
    }

    public ByteCatchList(int i10) {
        super(i10);
    }

    private static boolean typeNotFound(Item item, Item[] itemArr, int i10) {
        CstType exceptionClass = item.getExceptionClass();
        for (int i11 = 0; i11 < i10; i11++) {
            CstType exceptionClass2 = itemArr[i11].getExceptionClass();
            if (exceptionClass2 == exceptionClass || exceptionClass2 == CstType.OBJECT) {
                return false;
            }
        }
        return true;
    }

    public int byteLength() {
        return (size() * 8) + 2;
    }

    public Item get(int i10) {
        return (Item) get0(i10);
    }

    public ByteCatchList listFor(int i10) {
        int size = size();
        Item[] itemArr = new Item[size];
        int i11 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            Item item = get(i12);
            if (item.covers(i10) && typeNotFound(item, itemArr, i11)) {
                itemArr[i11] = item;
                i11++;
            }
        }
        if (i11 == 0) {
            return EMPTY;
        }
        ByteCatchList byteCatchList = new ByteCatchList(i11);
        for (int i13 = 0; i13 < i11; i13++) {
            byteCatchList.set(i13, itemArr[i13]);
        }
        byteCatchList.setImmutable();
        return byteCatchList;
    }

    public void set(int i10, Item item) {
        if (item != null) {
            set0(i10, item);
            return;
        }
        throw new NullPointerException("item == null");
    }

    public TypeList toRopCatchList() {
        int size = size();
        if (size == 0) {
            return StdTypeList.EMPTY;
        }
        StdTypeList stdTypeList = new StdTypeList(size);
        for (int i10 = 0; i10 < size; i10++) {
            stdTypeList.set(i10, get(i10).getExceptionClass().getClassType());
        }
        stdTypeList.setImmutable();
        return stdTypeList;
    }

    public IntList toTargetList(int i10) {
        if (i10 < -1) {
            throw new IllegalArgumentException("noException < -1");
        }
        int i11 = i10 >= 0 ? 1 : 0;
        int size = size();
        if (size == 0) {
            return i11 != 0 ? IntList.makeImmutable(i10) : IntList.EMPTY;
        }
        IntList intList = new IntList(size + i11);
        for (int i12 = 0; i12 < size; i12++) {
            intList.add(get(i12).getHandlerPc());
        }
        if (i11 != 0) {
            intList.add(i10);
        }
        intList.setImmutable();
        return intList;
    }

    public void set(int i10, int i11, int i12, int i13, CstType cstType) {
        set0(i10, new Item(i11, i12, i13, cstType));
    }
}
