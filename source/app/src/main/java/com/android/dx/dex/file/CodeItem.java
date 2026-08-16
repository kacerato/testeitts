package com.android.dx.dex.file;

import b3.s;
import com.android.dex.util.ExceptionWithContext;
import com.android.dx.dex.code.DalvCode;
import com.android.dx.dex.code.DalvInsnList;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.rop.type.StdTypeList;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeList;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import com.bumptech.glide.load.engine.GlideException;
import ei.C13155a;
import java.io.PrintWriter;
import java.util.Iterator;
import org.apache.commons.math3.geometry.VectorFormat;
import w2.C15883c;

public final class CodeItem extends OffsettedItem {
    private static final int ALIGNMENT = 4;
    private static final int HEADER_SIZE = 16;
    private CatchStructs catches;
    private final DalvCode code;
    private DebugInfoItem debugInfo;
    private final boolean isStatic;
    private final CstMethodRef ref;
    private final TypeList throwsList;

    public CodeItem(CstMethodRef cstMethodRef, DalvCode dalvCode, boolean z10, TypeList typeList) {
        super(4, -1);
        if (cstMethodRef == null) {
            throw new NullPointerException("ref == null");
        }
        if (dalvCode == null) {
            throw new NullPointerException("code == null");
        }
        if (typeList == null) {
            throw new NullPointerException("throwsList == null");
        }
        this.ref = cstMethodRef;
        this.code = dalvCode;
        this.isStatic = z10;
        this.throwsList = typeList;
        this.catches = null;
        this.debugInfo = null;
    }

    private int getInsSize() {
        return this.ref.getParameterWordCount(this.isStatic);
    }

    private int getOutsSize() {
        return this.code.getInsns().getOutsSize();
    }

    private int getRegistersSize() {
        return this.code.getInsns().getRegistersSize();
    }

    private void writeCodes(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        try {
            this.code.getInsns().writeTo(annotatedOutput);
        } catch (RuntimeException e10) {
            throw ExceptionWithContext.withContext(e10, "...while writing instructions for " + this.ref.toHuman());
        }
    }

    @Override
    public void addContents(DexFile dexFile) {
        MixedItemSection byteData = dexFile.getByteData();
        TypeIdsSection typeIds = dexFile.getTypeIds();
        if (this.code.hasPositions() || this.code.hasLocals()) {
            DebugInfoItem debugInfoItem = new DebugInfoItem(this.code, this.isStatic, this.ref);
            this.debugInfo = debugInfoItem;
            byteData.add(debugInfoItem);
        }
        if (this.code.hasAnyCatches()) {
            Iterator<Type> it = this.code.getCatchTypes().iterator();
            while (it.hasNext()) {
                typeIds.intern(it.next());
            }
            this.catches = new CatchStructs(this.code);
        }
        Iterator<Constant> it2 = this.code.getInsnConstants().iterator();
        while (it2.hasNext()) {
            dexFile.internIfAppropriate(it2.next());
        }
    }

    public void debugPrint(PrintWriter printWriter, String str, boolean z10) {
        printWriter.println(this.ref.toHuman() + s.f32937c);
        DalvInsnList insns = this.code.getInsns();
        printWriter.println("regs: " + Hex.u2(getRegistersSize()) + "; ins: " + Hex.u2(getInsSize()) + "; outs: " + Hex.u2(getOutsSize()));
        insns.debugPrint(printWriter, str, z10);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(GlideException.a.f59088e);
        String sb3 = sb2.toString();
        if (this.catches != null) {
            printWriter.print(str);
            printWriter.println("catches");
            this.catches.debugPrint(printWriter, sb3);
        }
        if (this.debugInfo != null) {
            printWriter.print(str);
            printWriter.println("debug info");
            this.debugInfo.debugPrint(printWriter, sb3);
        }
    }

    public CstMethodRef getRef() {
        return this.ref;
    }

    @Override
    public ItemType itemType() {
        return ItemType.TYPE_CODE_ITEM;
    }

    @Override
    public void place0(Section section, int i10) {
        int i11;
        final DexFile file = section.getFile();
        this.code.assignIndices(new DalvCode.AssignIndicesCallback() {
            @Override
            public int getIndex(Constant constant) {
                IndexedItem findItemOrNull = file.findItemOrNull(constant);
                if (findItemOrNull == null) {
                    return -1;
                }
                return findItemOrNull.getIndex();
            }
        });
        CatchStructs catchStructs = this.catches;
        if (catchStructs != null) {
            catchStructs.encode(file);
            i11 = this.catches.writeSize();
        } else {
            i11 = 0;
        }
        int codeSize = this.code.getInsns().codeSize();
        if ((codeSize & 1) != 0) {
            codeSize++;
        }
        setWriteSize((codeSize * 2) + 16 + i11);
    }

    @Override
    public String toHuman() {
        return this.ref.toHuman();
    }

    public String toString() {
        return "CodeItem{" + toHuman() + VectorFormat.DEFAULT_SUFFIX;
    }

    @Override
    public void writeTo0(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        boolean annotates = annotatedOutput.annotates();
        int registersSize = getRegistersSize();
        int outsSize = getOutsSize();
        int insSize = getInsSize();
        int codeSize = this.code.getInsns().codeSize();
        boolean z10 = (codeSize & 1) != 0;
        CatchStructs catchStructs = this.catches;
        int triesSize = catchStructs == null ? 0 : catchStructs.triesSize();
        DebugInfoItem debugInfoItem = this.debugInfo;
        int absoluteOffset = debugInfoItem == null ? 0 : debugInfoItem.getAbsoluteOffset();
        if (annotates) {
            annotatedOutput.annotate(0, offsetString() + C15883c.f126249O + this.ref.toHuman());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("  registers_size: ");
            sb2.append(Hex.u2(registersSize));
            annotatedOutput.annotate(2, sb2.toString());
            annotatedOutput.annotate(2, "  ins_size:       " + Hex.u2(insSize));
            annotatedOutput.annotate(2, "  outs_size:      " + Hex.u2(outsSize));
            annotatedOutput.annotate(2, "  tries_size:     " + Hex.u2(triesSize));
            annotatedOutput.annotate(4, "  debug_off:      " + Hex.u4(absoluteOffset));
            annotatedOutput.annotate(4, "  insns_size:     " + Hex.u4(codeSize));
            if (this.throwsList.size() != 0) {
                annotatedOutput.annotate(0, "  throws " + StdTypeList.toHuman(this.throwsList));
            }
        }
        annotatedOutput.writeShort(registersSize);
        annotatedOutput.writeShort(insSize);
        annotatedOutput.writeShort(outsSize);
        annotatedOutput.writeShort(triesSize);
        annotatedOutput.writeInt(absoluteOffset);
        annotatedOutput.writeInt(codeSize);
        writeCodes(dexFile, annotatedOutput);
        if (this.catches != null) {
            if (z10) {
                if (annotates) {
                    annotatedOutput.annotate(2, "  padding: 0");
                }
                annotatedOutput.writeShort(0);
            }
            this.catches.writeTo(dexFile, annotatedOutput);
        }
        if (!annotates || this.debugInfo == null) {
            return;
        }
        annotatedOutput.annotate(0, "  debug info");
        this.debugInfo.annotateTo(dexFile, annotatedOutput, C13155a.f85806a);
    }
}
