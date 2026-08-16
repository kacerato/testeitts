package com.android.dx.dex.file;

import com.android.dex.Leb128;
import com.android.dx.rop.code.AccessFlags;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstFieldRef;
import com.android.dx.rop.cst.CstString;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import java.io.PrintWriter;
import org.eclipse.jdt.internal.core.JavaElement;
import w2.C15883c;

public final class EncodedField extends EncodedMember implements Comparable<EncodedField> {
    private final CstFieldRef field;

    public EncodedField(CstFieldRef cstFieldRef, int i10) {
        super(i10);
        if (cstFieldRef == null) {
            throw new NullPointerException("field == null");
        }
        this.field = cstFieldRef;
    }

    @Override
    public void addContents(DexFile dexFile) {
        dexFile.getFieldIds().intern(this.field);
    }

    @Override
    public void debugPrint(PrintWriter printWriter, boolean z10) {
        printWriter.println(toString());
    }

    @Override
    public int encode(DexFile dexFile, AnnotatedOutput annotatedOutput, int i10, int i11) {
        int indexOf = dexFile.getFieldIds().indexOf(this.field);
        int i12 = indexOf - i10;
        int accessFlags = getAccessFlags();
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(0, String.format("  [%x] %s", Integer.valueOf(i11), this.field.toHuman()));
            annotatedOutput.annotate(Leb128.unsignedLeb128Size(i12), "    field_idx:    " + Hex.u4(indexOf));
            annotatedOutput.annotate(Leb128.unsignedLeb128Size(accessFlags), "    access_flags: " + AccessFlags.fieldString(accessFlags));
        }
        annotatedOutput.writeUleb128(i12);
        annotatedOutput.writeUleb128(accessFlags);
        return indexOf;
    }

    public boolean equals(Object obj) {
        return (obj instanceof EncodedField) && compareTo((EncodedField) obj) == 0;
    }

    @Override
    public CstString getName() {
        return this.field.getNat().getName();
    }

    public CstFieldRef getRef() {
        return this.field;
    }

    public int hashCode() {
        return this.field.hashCode();
    }

    @Override
    public String toHuman() {
        return this.field.toHuman();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(100);
        stringBuffer.append(EncodedField.class.getName());
        stringBuffer.append(JavaElement.JEM_COMPILATIONUNIT);
        stringBuffer.append(Hex.u2(getAccessFlags()));
        stringBuffer.append(C15883c.f126249O);
        stringBuffer.append((Object) this.field);
        stringBuffer.append(JavaElement.JEM_ANNOTATION);
        return stringBuffer.toString();
    }

    @Override
    public int compareTo(EncodedField encodedField) {
        return this.field.compareTo((Constant) encodedField.field);
    }
}
