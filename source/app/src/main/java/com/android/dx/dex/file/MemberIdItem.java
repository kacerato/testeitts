package com.android.dx.dex.file;

import com.android.dx.rop.cst.CstMemberRef;
import com.android.dx.rop.cst.CstNat;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import w2.C15883c;

public abstract class MemberIdItem extends IdItem {
    private final CstMemberRef cst;

    public MemberIdItem(CstMemberRef cstMemberRef) {
        super(cstMemberRef.getDefiningClass());
        this.cst = cstMemberRef;
    }

    @Override
    public void addContents(DexFile dexFile) {
        super.addContents(dexFile);
        dexFile.getStringIds().intern(getRef().getNat().getName());
    }

    public final CstMemberRef getRef() {
        return this.cst;
    }

    public abstract int getTypoidIdx(DexFile dexFile);

    public abstract String getTypoidName();

    @Override
    public int writeSize() {
        return 8;
    }

    @Override
    public final void writeTo(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        TypeIdsSection typeIds = dexFile.getTypeIds();
        StringIdsSection stringIds = dexFile.getStringIds();
        CstNat nat = this.cst.getNat();
        int indexOf = typeIds.indexOf(getDefiningClass());
        int indexOf2 = stringIds.indexOf(nat.getName());
        int typoidIdx = getTypoidIdx(dexFile);
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(0, indexString() + C15883c.f126249O + this.cst.toHuman());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("  class_idx: ");
            sb2.append(Hex.u2(indexOf));
            annotatedOutput.annotate(2, sb2.toString());
            annotatedOutput.annotate(2, String.format("  %-10s %s", getTypoidName() + ':', Hex.u2(typoidIdx)));
            annotatedOutput.annotate(4, "  name_idx:  " + Hex.u4(indexOf2));
        }
        annotatedOutput.writeShort(indexOf);
        annotatedOutput.writeShort(typoidIdx);
        annotatedOutput.writeInt(indexOf2);
    }
}
