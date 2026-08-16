package com.android.dx.cf.code;

import com.android.dx.rop.code.LocalItem;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.type.Type;
import com.android.dx.util.FixedSizeList;

public final class LocalVariableList extends FixedSizeList {
    public static final LocalVariableList EMPTY = new LocalVariableList(0);

    public static class Item {
        private final CstString descriptor;
        private final int index;
        private final int length;
        private final CstString name;
        private final CstString signature;
        private final int startPc;

        public Item(int i10, int i11, CstString cstString, CstString cstString2, CstString cstString3, int i12) {
            if (i10 < 0) {
                throw new IllegalArgumentException("startPc < 0");
            }
            if (i11 < 0) {
                throw new IllegalArgumentException("length < 0");
            }
            if (cstString == null) {
                throw new NullPointerException("name == null");
            }
            if (cstString2 == null && cstString3 == null) {
                throw new NullPointerException("(descriptor == null) && (signature == null)");
            }
            if (i12 < 0) {
                throw new IllegalArgumentException("index < 0");
            }
            this.startPc = i10;
            this.length = i11;
            this.name = cstString;
            this.descriptor = cstString2;
            this.signature = cstString3;
            this.index = i12;
        }

        public CstString getSignature() {
            return this.signature;
        }

        public CstString getDescriptor() {
            return this.descriptor;
        }

        public int getIndex() {
            return this.index;
        }

        public int getLength() {
            return this.length;
        }

        public LocalItem getLocalItem() {
            return LocalItem.make(this.name, this.signature);
        }

        public int getStartPc() {
            return this.startPc;
        }

        public Type getType() {
            return Type.intern(this.descriptor.getString());
        }

        public boolean matchesAllButType(Item item) {
            return this.startPc == item.startPc && this.length == item.length && this.index == item.index && this.name.equals(item.name);
        }

        public boolean matchesPcAndIndex(int i10, int i11) {
            int i12;
            return i11 == this.index && i10 >= (i12 = this.startPc) && i10 < i12 + this.length;
        }

        public Item withSignature(CstString cstString) {
            return new Item(this.startPc, this.length, this.name, this.descriptor, cstString, this.index);
        }
    }

    public LocalVariableList(int i10) {
        super(i10);
    }

    public static LocalVariableList concat(LocalVariableList localVariableList, LocalVariableList localVariableList2) {
        if (localVariableList == EMPTY) {
            return localVariableList2;
        }
        int size = localVariableList.size();
        int size2 = localVariableList2.size();
        LocalVariableList localVariableList3 = new LocalVariableList(size + size2);
        for (int i10 = 0; i10 < size; i10++) {
            localVariableList3.set(i10, localVariableList.get(i10));
        }
        for (int i11 = 0; i11 < size2; i11++) {
            localVariableList3.set(size + i11, localVariableList2.get(i11));
        }
        localVariableList3.setImmutable();
        return localVariableList3;
    }

    public static LocalVariableList mergeDescriptorsAndSignatures(LocalVariableList localVariableList, LocalVariableList localVariableList2) {
        int size = localVariableList.size();
        LocalVariableList localVariableList3 = new LocalVariableList(size);
        for (int i10 = 0; i10 < size; i10++) {
            Item item = localVariableList.get(i10);
            Item itemToLocal = localVariableList2.itemToLocal(item);
            if (itemToLocal != null) {
                item = item.withSignature(itemToLocal.getSignature());
            }
            localVariableList3.set(i10, item);
        }
        localVariableList3.setImmutable();
        return localVariableList3;
    }

    public Item get(int i10) {
        return (Item) get0(i10);
    }

    public Item itemToLocal(Item item) {
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            Item item2 = (Item) get0(i10);
            if (item2 != null && item2.matchesAllButType(item)) {
                return item2;
            }
        }
        return null;
    }

    public Item pcAndIndexToLocal(int i10, int i11) {
        int size = size();
        for (int i12 = 0; i12 < size; i12++) {
            Item item = (Item) get0(i12);
            if (item != null && item.matchesPcAndIndex(i10, i11)) {
                return item;
            }
        }
        return null;
    }

    public void set(int i10, Item item) {
        if (item != null) {
            set0(i10, item);
            return;
        }
        throw new NullPointerException("item == null");
    }

    public void set(int i10, int i11, int i12, CstString cstString, CstString cstString2, CstString cstString3, int i13) {
        set0(i10, new Item(i11, i12, cstString, cstString2, cstString3, i13));
    }
}
