package com.android.dx.dex.file;

import com.android.dex.util.ExceptionWithContext;
import com.android.dx.dex.code.DalvCode;
import com.android.dx.dex.code.DalvInsnList;
import com.android.dx.dex.code.LocalList;
import com.android.dx.dex.code.PositionList;
import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.util.AnnotatedOutput;
import java.io.PrintWriter;

public class DebugInfoItem extends OffsettedItem {
    private static final int ALIGNMENT = 1;
    private static final boolean ENABLE_ENCODER_SELF_CHECK = false;
    private final DalvCode code;
    private byte[] encoded;
    private final boolean isStatic;
    private final CstMethodRef ref;

    public DebugInfoItem(DalvCode dalvCode, boolean z10, CstMethodRef cstMethodRef) {
        super(1, -1);
        if (dalvCode == null) {
            throw new NullPointerException("code == null");
        }
        this.code = dalvCode;
        this.isStatic = z10;
        this.ref = cstMethodRef;
    }

    private byte[] encode(DexFile dexFile, String str, PrintWriter printWriter, AnnotatedOutput annotatedOutput, boolean z10) {
        return encode0(dexFile, str, printWriter, annotatedOutput, z10);
    }

    private byte[] encode0(DexFile dexFile, String str, PrintWriter printWriter, AnnotatedOutput annotatedOutput, boolean z10) {
        PositionList positions = this.code.getPositions();
        LocalList locals = this.code.getLocals();
        DalvInsnList insns = this.code.getInsns();
        DebugInfoEncoder debugInfoEncoder = new DebugInfoEncoder(positions, locals, dexFile, insns.codeSize(), insns.getRegistersSize(), this.isStatic, this.ref);
        return (printWriter == null && annotatedOutput == null) ? debugInfoEncoder.convert() : debugInfoEncoder.convertAndAnnotate(str, printWriter, annotatedOutput, z10);
    }

    @Override
    public void addContents(DexFile dexFile) {
    }

    public void annotateTo(DexFile dexFile, AnnotatedOutput annotatedOutput, String str) {
        encode(dexFile, str, null, annotatedOutput, false);
    }

    public void debugPrint(PrintWriter printWriter, String str) {
        encode(null, str, printWriter, null, false);
    }

    @Override
    public ItemType itemType() {
        return ItemType.TYPE_DEBUG_INFO_ITEM;
    }

    @Override
    public void place0(Section section, int i10) {
        try {
            byte[] encode = encode(section.getFile(), null, null, null, false);
            this.encoded = encode;
            setWriteSize(encode.length);
        } catch (RuntimeException e10) {
            throw ExceptionWithContext.withContext(e10, "...while placing debug info for " + this.ref.toHuman());
        }
    }

    @Override
    public String toHuman() {
        throw new RuntimeException("unsupported");
    }

    @Override
    public void writeTo0(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(offsetString() + " debug info");
            encode(dexFile, null, null, annotatedOutput, true);
        }
        annotatedOutput.write(this.encoded);
    }
}
