package com.android.dx.dex.file;

import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstString;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import w2.C15883c;

public final class StringIdItem extends IndexedItem implements Comparable {
    private StringDataItem data;
    private final CstString value;

    public StringIdItem(CstString cstString) {
        if (cstString == null) {
            throw new NullPointerException("value == null");
        }
        this.value = cstString;
        this.data = null;
    }

    @Override
    public void addContents(DexFile dexFile) {
        if (this.data == null) {
            MixedItemSection stringData = dexFile.getStringData();
            StringDataItem stringDataItem = new StringDataItem(this.value);
            this.data = stringDataItem;
            stringData.add(stringDataItem);
        }
    }

    @Override
    public int compareTo(Object obj) {
        return this.value.compareTo((Constant) ((StringIdItem) obj).value);
    }

    public boolean equals(Object obj) {
        if (obj instanceof StringIdItem) {
            return this.value.equals(((StringIdItem) obj).value);
        }
        return false;
    }

    public StringDataItem getData() {
        return this.data;
    }

    public CstString getValue() {
        return this.value;
    }

    public int hashCode() {
        return this.value.hashCode();
    }

    @Override
    public ItemType itemType() {
        return ItemType.TYPE_STRING_ID_ITEM;
    }

    @Override
    public int writeSize() {
        return 4;
    }

    @Override
    public void writeTo(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        int absoluteOffset = this.data.getAbsoluteOffset();
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(0, indexString() + C15883c.f126249O + this.value.toQuoted(100));
            StringBuilder sb2 = new StringBuilder();
            sb2.append("  string_data_off: ");
            sb2.append(Hex.u4(absoluteOffset));
            annotatedOutput.annotate(4, sb2.toString());
        }
        annotatedOutput.writeInt(absoluteOffset);
    }
}
