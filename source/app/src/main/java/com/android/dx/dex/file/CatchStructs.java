package com.android.dx.dex.file;

import com.android.dx.dex.code.CatchHandlerList;
import com.android.dx.dex.code.CatchTable;
import com.android.dx.dex.code.DalvCode;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.ByteArrayAnnotatedOutput;
import com.android.dx.util.Hex;
import com.bumptech.glide.load.engine.GlideException;
import java.io.PrintWriter;
import java.util.Map;
import java.util.TreeMap;
import org.eclipse.jdt.internal.core.ClasspathEntry;

public final class CatchStructs {
    private static final int TRY_ITEM_WRITE_SIZE = 8;
    private final DalvCode code;
    private CatchTable table = null;
    private byte[] encodedHandlers = null;
    private int encodedHandlerHeaderSize = 0;
    private TreeMap<CatchHandlerList, Integer> handlerOffsets = null;

    public CatchStructs(DalvCode dalvCode) {
        this.code = dalvCode;
    }

    private static void annotateAndConsumeHandlers(CatchHandlerList catchHandlerList, int i10, int i11, String str, PrintWriter printWriter, AnnotatedOutput annotatedOutput) {
        String human = catchHandlerList.toHuman(str, Hex.u2(i10) + ": ");
        if (printWriter != null) {
            printWriter.println(human);
        }
        annotatedOutput.annotate(i11, human);
    }

    private void annotateEntries(String str, PrintWriter printWriter, AnnotatedOutput annotatedOutput) {
        finishProcessingIfNecessary();
        int i10 = 0;
        boolean z10 = annotatedOutput != null;
        int i11 = z10 ? 6 : 0;
        int i12 = z10 ? 2 : 0;
        int size = this.table.size();
        String str2 = str + GlideException.a.f59088e;
        if (z10) {
            annotatedOutput.annotate(0, str + "tries:");
        } else {
            printWriter.println(str + "tries:");
        }
        for (int i13 = 0; i13 < size; i13++) {
            CatchTable.Entry entry = this.table.get(i13);
            CatchHandlerList handlers = entry.getHandlers();
            String str3 = str2 + "try " + Hex.u2or4(entry.getStart()) + ClasspathEntry.DOT_DOT + Hex.u2or4(entry.getEnd());
            String human = handlers.toHuman(str2, "");
            if (z10) {
                annotatedOutput.annotate(i11, str3);
                annotatedOutput.annotate(i12, human);
            } else {
                printWriter.println(str3);
                printWriter.println(human);
            }
        }
        if (z10) {
            annotatedOutput.annotate(0, str + "handlers:");
            annotatedOutput.annotate(this.encodedHandlerHeaderSize, str2 + "size: " + Hex.u2(this.handlerOffsets.size()));
            CatchHandlerList catchHandlerList = null;
            for (Map.Entry<CatchHandlerList, Integer> entry2 : this.handlerOffsets.entrySet()) {
                CatchHandlerList key = entry2.getKey();
                int intValue = entry2.getValue().intValue();
                if (catchHandlerList != null) {
                    annotateAndConsumeHandlers(catchHandlerList, i10, intValue - i10, str2, printWriter, annotatedOutput);
                }
                catchHandlerList = key;
                i10 = intValue;
            }
            annotateAndConsumeHandlers(catchHandlerList, i10, this.encodedHandlers.length - i10, str2, printWriter, annotatedOutput);
        }
    }

    private void finishProcessingIfNecessary() {
        if (this.table == null) {
            this.table = this.code.getCatches();
        }
    }

    public void debugPrint(PrintWriter printWriter, String str) {
        annotateEntries(str, printWriter, null);
    }

    public void encode(DexFile dexFile) {
        finishProcessingIfNecessary();
        TypeIdsSection typeIds = dexFile.getTypeIds();
        int size = this.table.size();
        this.handlerOffsets = new TreeMap<>();
        for (int i10 = 0; i10 < size; i10++) {
            this.handlerOffsets.put(this.table.get(i10).getHandlers(), null);
        }
        if (this.handlerOffsets.size() > 65535) {
            throw new UnsupportedOperationException("too many catch handlers");
        }
        ByteArrayAnnotatedOutput byteArrayAnnotatedOutput = new ByteArrayAnnotatedOutput();
        this.encodedHandlerHeaderSize = byteArrayAnnotatedOutput.writeUleb128(this.handlerOffsets.size());
        for (Map.Entry<CatchHandlerList, Integer> entry : this.handlerOffsets.entrySet()) {
            CatchHandlerList key = entry.getKey();
            int size2 = key.size();
            boolean catchesAll = key.catchesAll();
            entry.setValue(Integer.valueOf(byteArrayAnnotatedOutput.getCursor()));
            if (catchesAll) {
                byteArrayAnnotatedOutput.writeSleb128(-(size2 - 1));
                size2--;
            } else {
                byteArrayAnnotatedOutput.writeSleb128(size2);
            }
            for (int i11 = 0; i11 < size2; i11++) {
                CatchHandlerList.Entry entry2 = key.get(i11);
                byteArrayAnnotatedOutput.writeUleb128(typeIds.indexOf(entry2.getExceptionType()));
                byteArrayAnnotatedOutput.writeUleb128(entry2.getHandler());
            }
            if (catchesAll) {
                byteArrayAnnotatedOutput.writeUleb128(key.get(size2).getHandler());
            }
        }
        this.encodedHandlers = byteArrayAnnotatedOutput.toByteArray();
    }

    public int triesSize() {
        finishProcessingIfNecessary();
        return this.table.size();
    }

    public int writeSize() {
        return (triesSize() * 8) + this.encodedHandlers.length;
    }

    public void writeTo(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        finishProcessingIfNecessary();
        if (annotatedOutput.annotates()) {
            annotateEntries(GlideException.a.f59088e, null, annotatedOutput);
        }
        int size = this.table.size();
        for (int i10 = 0; i10 < size; i10++) {
            CatchTable.Entry entry = this.table.get(i10);
            int start = entry.getStart();
            int end = entry.getEnd();
            int i11 = end - start;
            if (i11 >= 65536) {
                throw new UnsupportedOperationException("bogus exception range: " + Hex.u4(start) + ClasspathEntry.DOT_DOT + Hex.u4(end));
            }
            annotatedOutput.writeInt(start);
            annotatedOutput.writeShort(i11);
            annotatedOutput.writeShort(this.handlerOffsets.get(entry.getHandlers()).intValue());
        }
        annotatedOutput.write(this.encodedHandlers);
    }
}
