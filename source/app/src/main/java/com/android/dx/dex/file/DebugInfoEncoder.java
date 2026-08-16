package com.android.dx.dex.file;

import com.android.dex.util.ExceptionWithContext;
import com.android.dx.dex.code.LocalList;
import com.android.dx.dex.code.PositionList;
import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Prototype;
import com.android.dx.rop.type.StdTypeList;
import com.android.dx.rop.type.Type;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.ByteArrayAnnotatedOutput;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import w2.C15883c;

public final class DebugInfoEncoder {
    private static final boolean DEBUG = false;
    private AnnotatedOutput annotateTo;
    private final int codeSize;
    private PrintWriter debugPrint;
    private final Prototype desc;
    private final DexFile file;
    private final boolean isStatic;
    private final LocalList.Entry[] lastEntryForReg;
    private final LocalList locals;
    private final PositionList positions;
    private String prefix;
    private final int regSize;
    private boolean shouldConsume;
    private int address = 0;
    private int line = 1;
    private final ByteArrayAnnotatedOutput output = new ByteArrayAnnotatedOutput();

    public DebugInfoEncoder(PositionList positionList, LocalList localList, DexFile dexFile, int i10, int i11, boolean z10, CstMethodRef cstMethodRef) {
        this.positions = positionList;
        this.locals = localList;
        this.file = dexFile;
        this.desc = cstMethodRef.getPrototype();
        this.isStatic = z10;
        this.codeSize = i10;
        this.regSize = i11;
        this.lastEntryForReg = new LocalList.Entry[i11];
    }

    private void annotate(int i10, String str) {
        if (this.prefix != null) {
            str = this.prefix + str;
        }
        AnnotatedOutput annotatedOutput = this.annotateTo;
        if (annotatedOutput != null) {
            if (!this.shouldConsume) {
                i10 = 0;
            }
            annotatedOutput.annotate(i10, str);
        }
        PrintWriter printWriter = this.debugPrint;
        if (printWriter != null) {
            printWriter.println(str);
        }
    }

    private ArrayList<PositionList.Entry> buildSortedPositions() {
        PositionList positionList = this.positions;
        int size = positionList == null ? 0 : positionList.size();
        ArrayList<PositionList.Entry> arrayList = new ArrayList<>(size);
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(this.positions.get(i10));
        }
        Collections.sort(arrayList, new Comparator<PositionList.Entry>() {
            @Override
            public boolean equals(Object obj) {
                return obj == this;
            }

            @Override
            public int compare(PositionList.Entry entry, PositionList.Entry entry2) {
                return entry.getAddress() - entry2.getAddress();
            }
        });
        return arrayList;
    }

    private static int computeOpcode(int i10, int i11) {
        if (i10 < -4 || i10 > 10) {
            throw new RuntimeException("Parameter out of range");
        }
        return (i10 - (-4)) + (i11 * 15) + 10;
    }

    private byte[] convert0() throws IOException {
        ArrayList<PositionList.Entry> buildSortedPositions = buildSortedPositions();
        emitHeader(buildSortedPositions, extractMethodArguments());
        this.output.writeByte(7);
        if (this.annotateTo != null || this.debugPrint != null) {
            annotate(1, String.format("%04x: prologue end", Integer.valueOf(this.address)));
        }
        int size = buildSortedPositions.size();
        int size2 = this.locals.size();
        int i10 = 0;
        int i11 = 0;
        while (true) {
            i10 = emitLocalsAtAddress(i10);
            i11 = emitPositionsAtAddress(i11, buildSortedPositions);
            int address = i10 < size2 ? this.locals.get(i10).getAddress() : Integer.MAX_VALUE;
            int address2 = i11 < size ? buildSortedPositions.get(i11).getAddress() : Integer.MAX_VALUE;
            int min = Math.min(address2, address);
            if (min != Integer.MAX_VALUE && (min != this.codeSize || address != Integer.MAX_VALUE || address2 != Integer.MAX_VALUE)) {
                if (min == address2) {
                    emitPosition(buildSortedPositions.get(i11));
                    i11++;
                } else {
                    emitAdvancePc(min - this.address);
                }
            }
        }
        emitEndSequence();
        return this.output.toByteArray();
    }

    private void emitAdvanceLine(int i10) throws IOException {
        int cursor = this.output.getCursor();
        this.output.writeByte(2);
        this.output.writeSleb128(i10);
        this.line += i10;
        if (this.annotateTo == null && this.debugPrint == null) {
            return;
        }
        annotate(this.output.getCursor() - cursor, String.format("line = %d", Integer.valueOf(this.line)));
    }

    private void emitAdvancePc(int i10) throws IOException {
        int cursor = this.output.getCursor();
        this.output.writeByte(1);
        this.output.writeUleb128(i10);
        this.address += i10;
        if (this.annotateTo == null && this.debugPrint == null) {
            return;
        }
        annotate(this.output.getCursor() - cursor, String.format("%04x: advance pc", Integer.valueOf(this.address)));
    }

    private void emitEndSequence() {
        this.output.writeByte(0);
        if (this.annotateTo == null && this.debugPrint == null) {
            return;
        }
        annotate(1, "end sequence");
    }

    private void emitHeader(ArrayList<PositionList.Entry> arrayList, ArrayList<LocalList.Entry> arrayList2) throws IOException {
        LocalList.Entry entry;
        boolean z10 = (this.annotateTo == null && this.debugPrint == null) ? false : true;
        int cursor = this.output.getCursor();
        if (arrayList.size() > 0) {
            this.line = arrayList.get(0).getPosition().getLine();
        }
        this.output.writeUleb128(this.line);
        if (z10) {
            annotate(this.output.getCursor() - cursor, "line_start: " + this.line);
        }
        int paramBase = getParamBase();
        StdTypeList parameterTypes = this.desc.getParameterTypes();
        int size = parameterTypes.size();
        if (!this.isStatic) {
            Iterator<LocalList.Entry> it = arrayList2.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                LocalList.Entry next = it.next();
                if (paramBase == next.getRegister()) {
                    this.lastEntryForReg[paramBase] = next;
                    break;
                }
            }
            paramBase++;
        }
        int cursor2 = this.output.getCursor();
        this.output.writeUleb128(size);
        if (z10) {
            annotate(this.output.getCursor() - cursor2, String.format("parameters_size: %04x", Integer.valueOf(size)));
        }
        for (int i10 = 0; i10 < size; i10++) {
            Type type = parameterTypes.get(i10);
            int cursor3 = this.output.getCursor();
            Iterator<LocalList.Entry> it2 = arrayList2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    entry = null;
                    break;
                }
                entry = it2.next();
                if (paramBase == entry.getRegister()) {
                    if (entry.getSignature() != null) {
                        emitStringIndex(null);
                    } else {
                        emitStringIndex(entry.getName());
                    }
                    this.lastEntryForReg[paramBase] = entry;
                }
            }
            if (entry == null) {
                emitStringIndex(null);
            }
            if (z10) {
                annotate(this.output.getCursor() - cursor3, "parameter " + ((entry == null || entry.getSignature() != null) ? "<unnamed>" : entry.getName().toHuman()) + " v" + paramBase);
            }
            paramBase += type.getCategory();
        }
        for (LocalList.Entry entry2 : this.lastEntryForReg) {
            if (entry2 != null && entry2.getSignature() != null) {
                emitLocalStartExtended(entry2);
            }
        }
    }

    private void emitLocalEnd(LocalList.Entry entry) throws IOException {
        int cursor = this.output.getCursor();
        this.output.writeByte(5);
        this.output.writeUleb128(entry.getRegister());
        if (this.annotateTo == null && this.debugPrint == null) {
            return;
        }
        annotate(this.output.getCursor() - cursor, String.format("%04x: -local %s", Integer.valueOf(this.address), entryAnnotationString(entry)));
    }

    private void emitLocalRestart(LocalList.Entry entry) throws IOException {
        int cursor = this.output.getCursor();
        this.output.writeByte(6);
        emitUnsignedLeb128(entry.getRegister());
        if (this.annotateTo == null && this.debugPrint == null) {
            return;
        }
        annotate(this.output.getCursor() - cursor, String.format("%04x: +local restart %s", Integer.valueOf(this.address), entryAnnotationString(entry)));
    }

    private void emitLocalStart(LocalList.Entry entry) throws IOException {
        if (entry.getSignature() != null) {
            emitLocalStartExtended(entry);
            return;
        }
        int cursor = this.output.getCursor();
        this.output.writeByte(3);
        emitUnsignedLeb128(entry.getRegister());
        emitStringIndex(entry.getName());
        emitTypeIndex(entry.getType());
        if (this.annotateTo == null && this.debugPrint == null) {
            return;
        }
        annotate(this.output.getCursor() - cursor, String.format("%04x: +local %s", Integer.valueOf(this.address), entryAnnotationString(entry)));
    }

    private void emitLocalStartExtended(LocalList.Entry entry) throws IOException {
        int cursor = this.output.getCursor();
        this.output.writeByte(4);
        emitUnsignedLeb128(entry.getRegister());
        emitStringIndex(entry.getName());
        emitTypeIndex(entry.getType());
        emitStringIndex(entry.getSignature());
        if (this.annotateTo == null && this.debugPrint == null) {
            return;
        }
        annotate(this.output.getCursor() - cursor, String.format("%04x: +localx %s", Integer.valueOf(this.address), entryAnnotationString(entry)));
    }

    private int emitLocalsAtAddress(int i10) throws IOException {
        int size = this.locals.size();
        while (i10 < size && this.locals.get(i10).getAddress() == this.address) {
            int i11 = i10 + 1;
            LocalList.Entry entry = this.locals.get(i10);
            int register = entry.getRegister();
            LocalList.Entry[] entryArr = this.lastEntryForReg;
            LocalList.Entry entry2 = entryArr[register];
            if (entry != entry2) {
                entryArr[register] = entry;
                if (entry.isStart()) {
                    if (entry2 == null || !entry.matches(entry2)) {
                        emitLocalStart(entry);
                    } else {
                        if (entry2.isStart()) {
                            throw new RuntimeException("shouldn't happen");
                        }
                        emitLocalRestart(entry);
                    }
                } else if (entry.getDisposition() != LocalList.Disposition.END_REPLACED) {
                    emitLocalEnd(entry);
                }
            }
            i10 = i11;
        }
        return i10;
    }

    private void emitPosition(PositionList.Entry entry) throws IOException {
        int line = entry.getPosition().getLine();
        int address = entry.getAddress();
        int i10 = line - this.line;
        int i11 = address - this.address;
        if (i11 < 0) {
            throw new RuntimeException("Position entries must be in ascending address order");
        }
        int i12 = 0;
        if (i10 < -4 || i10 > 10) {
            emitAdvanceLine(i10);
            i10 = 0;
        }
        int computeOpcode = computeOpcode(i10, i11);
        if ((computeOpcode & (-256)) > 0) {
            emitAdvancePc(i11);
            computeOpcode = computeOpcode(i10, 0);
            if ((computeOpcode & (-256)) > 0) {
                emitAdvanceLine(i10);
                computeOpcode = computeOpcode(0, 0);
                i11 = 0;
                this.output.writeByte(computeOpcode);
                this.line += i12;
                int i13 = this.address + i11;
                this.address = i13;
                if (this.annotateTo == null || this.debugPrint != null) {
                    annotate(1, String.format("%04x: line %d", Integer.valueOf(i13), Integer.valueOf(this.line)));
                }
                return;
            }
            i11 = 0;
        }
        i12 = i10;
        this.output.writeByte(computeOpcode);
        this.line += i12;
        int i132 = this.address + i11;
        this.address = i132;
        if (this.annotateTo == null) {
        }
        annotate(1, String.format("%04x: line %d", Integer.valueOf(i132), Integer.valueOf(this.line)));
    }

    private int emitPositionsAtAddress(int i10, ArrayList<PositionList.Entry> arrayList) throws IOException {
        int size = arrayList.size();
        while (i10 < size && arrayList.get(i10).getAddress() == this.address) {
            emitPosition(arrayList.get(i10));
            i10++;
        }
        return i10;
    }

    private void emitStringIndex(CstString cstString) throws IOException {
        DexFile dexFile;
        if (cstString == null || (dexFile = this.file) == null) {
            this.output.writeUleb128(0);
        } else {
            this.output.writeUleb128(dexFile.getStringIds().indexOf(cstString) + 1);
        }
    }

    private void emitTypeIndex(CstType cstType) throws IOException {
        DexFile dexFile;
        if (cstType == null || (dexFile = this.file) == null) {
            this.output.writeUleb128(0);
        } else {
            this.output.writeUleb128(dexFile.getTypeIds().indexOf(cstType) + 1);
        }
    }

    private void emitUnsignedLeb128(int i10) throws IOException {
        if (i10 >= 0) {
            this.output.writeUleb128(i10);
            return;
        }
        throw new RuntimeException("Signed value where unsigned required: " + i10);
    }

    private String entryAnnotationString(LocalList.Entry entry) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("v");
        sb2.append(entry.getRegister());
        sb2.append(C15883c.f126249O);
        CstString name = entry.getName();
        if (name == null) {
            sb2.append("null");
        } else {
            sb2.append(name.toHuman());
        }
        sb2.append(C15883c.f126249O);
        CstType type = entry.getType();
        if (type == null) {
            sb2.append("null");
        } else {
            sb2.append(type.toHuman());
        }
        CstString signature = entry.getSignature();
        if (signature != null) {
            sb2.append(C15883c.f126249O);
            sb2.append(signature.toHuman());
        }
        return sb2.toString();
    }

    private ArrayList<LocalList.Entry> extractMethodArguments() {
        ArrayList<LocalList.Entry> arrayList = new ArrayList<>(this.desc.getParameterTypes().size());
        int paramBase = getParamBase();
        BitSet bitSet = new BitSet(this.regSize - paramBase);
        int size = this.locals.size();
        for (int i10 = 0; i10 < size; i10++) {
            LocalList.Entry entry = this.locals.get(i10);
            int register = entry.getRegister();
            if (register >= paramBase) {
                int i11 = register - paramBase;
                if (!bitSet.get(i11)) {
                    bitSet.set(i11);
                    arrayList.add(entry);
                }
            }
        }
        Collections.sort(arrayList, new Comparator<LocalList.Entry>() {
            @Override
            public boolean equals(Object obj) {
                return obj == this;
            }

            @Override
            public int compare(LocalList.Entry entry2, LocalList.Entry entry3) {
                return entry2.getRegister() - entry3.getRegister();
            }
        });
        return arrayList;
    }

    private int getParamBase() {
        return (this.regSize - this.desc.getParameterTypes().getWordCount()) - (!this.isStatic ? 1 : 0);
    }

    public byte[] convert() {
        try {
            return convert0();
        } catch (IOException e10) {
            throw ExceptionWithContext.withContext(e10, "...while encoding debug info");
        }
    }

    public byte[] convertAndAnnotate(String str, PrintWriter printWriter, AnnotatedOutput annotatedOutput, boolean z10) {
        this.prefix = str;
        this.debugPrint = printWriter;
        this.annotateTo = annotatedOutput;
        this.shouldConsume = z10;
        return convert();
    }
}
