package com.android.dx.dex.file;

import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstArray;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.ByteArrayAnnotatedOutput;

public final class EncodedArrayItem extends OffsettedItem {
    private static final int ALIGNMENT = 1;
    private final CstArray array;
    private byte[] encodedForm;

    public EncodedArrayItem(CstArray cstArray) {
        super(1, -1);
        if (cstArray == null) {
            throw new NullPointerException("array == null");
        }
        this.array = cstArray;
        this.encodedForm = null;
    }

    @Override
    public void addContents(DexFile dexFile) {
        ValueEncoder.addContents(dexFile, this.array);
    }

    @Override
    public int compareTo0(OffsettedItem offsettedItem) {
        return this.array.compareTo((Constant) ((EncodedArrayItem) offsettedItem).array);
    }

    public int hashCode() {
        return this.array.hashCode();
    }

    @Override
    public ItemType itemType() {
        return ItemType.TYPE_ENCODED_ARRAY_ITEM;
    }

    @Override
    public void place0(Section section, int i10) {
        ByteArrayAnnotatedOutput byteArrayAnnotatedOutput = new ByteArrayAnnotatedOutput();
        new ValueEncoder(section.getFile(), byteArrayAnnotatedOutput).writeArray(this.array, false);
        byte[] byteArray = byteArrayAnnotatedOutput.toByteArray();
        this.encodedForm = byteArray;
        setWriteSize(byteArray.length);
    }

    @Override
    public String toHuman() {
        return this.array.toHuman();
    }

    @Override
    public void writeTo0(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        if (!annotatedOutput.annotates()) {
            annotatedOutput.write(this.encodedForm);
            return;
        }
        annotatedOutput.annotate(0, offsetString() + " encoded array");
        new ValueEncoder(dexFile, annotatedOutput).writeArray(this.array, true);
    }
}
