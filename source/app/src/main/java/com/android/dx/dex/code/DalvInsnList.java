package com.android.dx.dex.code;

import com.android.dex.util.ExceptionWithContext;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstBaseMethodRef;
import com.android.dx.rop.cst.CstProtoRef;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.FixedSizeList;
import com.android.dx.util.IndentingWriter;
import com.bumptech.glide.load.engine.GlideException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;

public final class DalvInsnList extends FixedSizeList {
    private final int regCount;

    public DalvInsnList(int i10, int i11) {
        super(i10);
        this.regCount = i11;
    }

    public static DalvInsnList makeImmutable(ArrayList<DalvInsn> arrayList, int i10) {
        int size = arrayList.size();
        DalvInsnList dalvInsnList = new DalvInsnList(size, i10);
        for (int i11 = 0; i11 < size; i11++) {
            dalvInsnList.set(i11, arrayList.get(i11));
        }
        dalvInsnList.setImmutable();
        return dalvInsnList;
    }

    public int codeSize() {
        int size = size();
        if (size == 0) {
            return 0;
        }
        return get(size - 1).getNextAddress();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0026 A[Catch: IOException -> 0x002a, TryCatch #0 {IOException -> 0x002a, blocks: (B:4:0x000d, B:10:0x0026, B:12:0x002c, B:14:0x001e, B:21:0x002f), top: B:3:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void debugPrint(Writer writer, String str, boolean z10) {
        String listingString;
        IndentingWriter indentingWriter = new IndentingWriter(writer, 0, str);
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                DalvInsn dalvInsn = (DalvInsn) get0(i10);
                if (dalvInsn.codeSize() == 0 && !z10) {
                    listingString = null;
                    if (listingString == null) {
                        indentingWriter.write(listingString);
                    }
                }
                listingString = dalvInsn.listingString("", 0, z10);
                if (listingString == null) {
                }
            } catch (IOException e10) {
                throw new RuntimeException(e10);
            }
        }
        indentingWriter.flush();
    }

    public DalvInsn get(int i10) {
        return (DalvInsn) get0(i10);
    }

    public int getOutsSize() {
        int wordCount;
        int size = size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            DalvInsn dalvInsn = (DalvInsn) get0(i11);
            if (dalvInsn instanceof CstInsn) {
                Constant constant = ((CstInsn) dalvInsn).getConstant();
                wordCount = constant instanceof CstBaseMethodRef ? ((CstBaseMethodRef) constant).getParameterWordCount(dalvInsn.getOpcode().getFamily() == 113) : 0;
            } else if (!(dalvInsn instanceof MultiCstInsn)) {
                continue;
            } else {
                if (dalvInsn.getOpcode().getFamily() != 250) {
                    throw new RuntimeException("Expecting invoke-polymorphic");
                }
                wordCount = ((CstProtoRef) ((MultiCstInsn) dalvInsn).getConstant(1)).getPrototype().getParameterTypes().getWordCount() + 1;
            }
            if (wordCount > i10) {
                i10 = wordCount;
            }
        }
        return i10;
    }

    public int getRegistersSize() {
        return this.regCount;
    }

    public void set(int i10, DalvInsn dalvInsn) {
        set0(i10, dalvInsn);
    }

    public void writeTo(AnnotatedOutput annotatedOutput) {
        int cursor = annotatedOutput.getCursor();
        int size = size();
        if (annotatedOutput.annotates()) {
            boolean isVerbose = annotatedOutput.isVerbose();
            for (int i10 = 0; i10 < size; i10++) {
                DalvInsn dalvInsn = (DalvInsn) get0(i10);
                int codeSize = dalvInsn.codeSize() * 2;
                String listingString = (codeSize != 0 || isVerbose) ? dalvInsn.listingString(GlideException.a.f59088e, annotatedOutput.getAnnotationWidth(), true) : null;
                if (listingString != null) {
                    annotatedOutput.annotate(codeSize, listingString);
                } else if (codeSize != 0) {
                    annotatedOutput.annotate(codeSize, "");
                }
            }
        }
        for (int i11 = 0; i11 < size; i11++) {
            DalvInsn dalvInsn2 = (DalvInsn) get0(i11);
            try {
                dalvInsn2.writeTo(annotatedOutput);
            } catch (RuntimeException e10) {
                throw ExceptionWithContext.withContext(e10, "...while writing " + ((Object) dalvInsn2));
            }
        }
        int cursor2 = (annotatedOutput.getCursor() - cursor) / 2;
        if (cursor2 == codeSize()) {
            return;
        }
        throw new RuntimeException("write length mismatch; expected " + codeSize() + " but actually wrote " + cursor2);
    }

    public void debugPrint(OutputStream outputStream, String str, boolean z10) {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream);
        debugPrint(outputStreamWriter, str, z10);
        try {
            outputStreamWriter.flush();
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }
}
