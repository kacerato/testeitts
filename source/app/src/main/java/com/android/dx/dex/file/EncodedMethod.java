package com.android.dx.dex.file;

import com.android.dex.Leb128;
import com.android.dx.dex.code.DalvCode;
import com.android.dx.rop.code.AccessFlags;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.type.TypeList;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import com.bumptech.glide.load.engine.GlideException;
import java.io.PrintWriter;
import org.eclipse.jdt.internal.core.JavaElement;
import w2.C15883c;

public final class EncodedMethod extends EncodedMember implements Comparable<EncodedMethod> {
    private final CodeItem code;
    private final CstMethodRef method;

    public EncodedMethod(CstMethodRef cstMethodRef, int i10, DalvCode dalvCode, TypeList typeList) {
        super(i10);
        if (cstMethodRef == null) {
            throw new NullPointerException("method == null");
        }
        this.method = cstMethodRef;
        if (dalvCode == null) {
            this.code = null;
        } else {
            this.code = new CodeItem(cstMethodRef, dalvCode, (i10 & 8) != 0, typeList);
        }
    }

    @Override
    public void addContents(DexFile dexFile) {
        MethodIdsSection methodIds = dexFile.getMethodIds();
        MixedItemSection wordData = dexFile.getWordData();
        methodIds.intern(this.method);
        CodeItem codeItem = this.code;
        if (codeItem != null) {
            wordData.add(codeItem);
        }
    }

    @Override
    public void debugPrint(PrintWriter printWriter, boolean z10) {
        CodeItem codeItem = this.code;
        if (codeItem != null) {
            codeItem.debugPrint(printWriter, GlideException.a.f59088e, z10);
            return;
        }
        printWriter.println(getRef().toHuman() + ": abstract or native");
    }

    @Override
    public int encode(DexFile dexFile, AnnotatedOutput annotatedOutput, int i10, int i11) {
        int indexOf = dexFile.getMethodIds().indexOf(this.method);
        int i12 = indexOf - i10;
        int accessFlags = getAccessFlags();
        int absoluteOffsetOr0 = OffsettedItem.getAbsoluteOffsetOr0(this.code);
        if ((absoluteOffsetOr0 != 0) != ((accessFlags & 1280) == 0)) {
            throw new UnsupportedOperationException("code vs. access_flags mismatch");
        }
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(0, String.format("  [%x] %s", Integer.valueOf(i11), this.method.toHuman()));
            annotatedOutput.annotate(Leb128.unsignedLeb128Size(i12), "    method_idx:   " + Hex.u4(indexOf));
            annotatedOutput.annotate(Leb128.unsignedLeb128Size(accessFlags), "    access_flags: " + AccessFlags.methodString(accessFlags));
            annotatedOutput.annotate(Leb128.unsignedLeb128Size(absoluteOffsetOr0), "    code_off:     " + Hex.u4(absoluteOffsetOr0));
        }
        annotatedOutput.writeUleb128(i12);
        annotatedOutput.writeUleb128(accessFlags);
        annotatedOutput.writeUleb128(absoluteOffsetOr0);
        return indexOf;
    }

    public boolean equals(Object obj) {
        return (obj instanceof EncodedMethod) && compareTo((EncodedMethod) obj) == 0;
    }

    @Override
    public final CstString getName() {
        return this.method.getNat().getName();
    }

    public final CstMethodRef getRef() {
        return this.method;
    }

    @Override
    public final String toHuman() {
        return this.method.toHuman();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(100);
        stringBuffer.append(EncodedMethod.class.getName());
        stringBuffer.append(JavaElement.JEM_COMPILATIONUNIT);
        stringBuffer.append(Hex.u2(getAccessFlags()));
        stringBuffer.append(C15883c.f126249O);
        stringBuffer.append((Object) this.method);
        if (this.code != null) {
            stringBuffer.append(C15883c.f126249O);
            stringBuffer.append((Object) this.code);
        }
        stringBuffer.append(JavaElement.JEM_ANNOTATION);
        return stringBuffer.toString();
    }

    @Override
    public int compareTo(EncodedMethod encodedMethod) {
        return this.method.compareTo((Constant) encodedMethod.method);
    }
}
