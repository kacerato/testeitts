package com.android.dx.dex.file;

import com.android.dex.Leb128;
import com.android.dex.util.ByteArrayByteInput;
import com.android.dex.util.ByteInput;
import com.android.dex.util.ExceptionWithContext;
import com.android.dx.dex.code.DalvCode;
import com.android.dx.dex.code.DalvInsnList;
import com.android.dx.dex.code.LocalList;
import com.android.dx.dex.code.PositionList;
import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.type.Prototype;
import com.android.dx.rop.type.StdTypeList;
import com.android.dx.rop.type.Type;
import com.bumptech.glide.load.engine.GlideException;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

public class DebugInfoDecoder {
    private final int codesize;
    private final Prototype desc;
    private final byte[] encoded;
    private final DexFile file;
    private final boolean isStatic;
    private final LocalEntry[] lastEntryForReg;
    private final ArrayList<LocalEntry> locals;
    private final ArrayList<PositionEntry> positions;
    private final int regSize;
    private final int thisStringIdx;
    private int line = 1;
    private int address = 0;

    public static class LocalEntry {
        public int address;
        public boolean isStart;
        public int nameIndex;
        public int reg;
        public int signatureIndex;
        public int typeIndex;

        public LocalEntry(int i10, boolean z10, int i11, int i12, int i13, int i14) {
            this.address = i10;
            this.isStart = z10;
            this.reg = i11;
            this.nameIndex = i12;
            this.typeIndex = i13;
            this.signatureIndex = i14;
        }

        public String toString() {
            return String.format("[%x %s v%d %04x %04x %04x]", Integer.valueOf(this.address), this.isStart ? "start" : "end", Integer.valueOf(this.reg), Integer.valueOf(this.nameIndex), Integer.valueOf(this.typeIndex), Integer.valueOf(this.signatureIndex));
        }
    }

    public static class PositionEntry {
        public int address;
        public int line;

        public PositionEntry(int i10, int i11) {
            this.address = i10;
            this.line = i11;
        }
    }

    public DebugInfoDecoder(byte[] bArr, int i10, int i11, boolean z10, CstMethodRef cstMethodRef, DexFile dexFile) {
        int i12;
        if (bArr == null) {
            throw new NullPointerException("encoded == null");
        }
        this.encoded = bArr;
        this.isStatic = z10;
        this.desc = cstMethodRef.getPrototype();
        this.file = dexFile;
        this.regSize = i11;
        this.positions = new ArrayList<>();
        this.locals = new ArrayList<>();
        this.codesize = i10;
        this.lastEntryForReg = new LocalEntry[i11];
        try {
            i12 = dexFile.getStringIds().indexOf(new CstString("this"));
        } catch (IllegalArgumentException unused) {
            i12 = -1;
        }
        this.thisStringIdx = i12;
    }

    private void decode0() throws IOException {
        ByteArrayByteInput byteArrayByteInput = new ByteArrayByteInput(this.encoded);
        this.line = Leb128.readUnsignedLeb128(byteArrayByteInput);
        int readUnsignedLeb128 = Leb128.readUnsignedLeb128(byteArrayByteInput);
        StdTypeList parameterTypes = this.desc.getParameterTypes();
        int paramBase = getParamBase();
        if (readUnsignedLeb128 != parameterTypes.size()) {
            throw new RuntimeException("Mismatch between parameters_size and prototype");
        }
        if (!this.isStatic) {
            LocalEntry localEntry = new LocalEntry(0, true, paramBase, this.thisStringIdx, 0, 0);
            this.locals.add(localEntry);
            this.lastEntryForReg[paramBase] = localEntry;
            paramBase++;
        }
        int i10 = paramBase;
        for (int i11 = 0; i11 < readUnsignedLeb128; i11++) {
            Type type = parameterTypes.getType(i11);
            int readStringIndex = readStringIndex(byteArrayByteInput);
            LocalEntry localEntry2 = readStringIndex == -1 ? new LocalEntry(0, true, i10, -1, 0, 0) : new LocalEntry(0, true, i10, readStringIndex, 0, 0);
            this.locals.add(localEntry2);
            this.lastEntryForReg[i10] = localEntry2;
            i10 += type.getCategory();
        }
        while (true) {
            int readByte = byteArrayByteInput.readByte() & 255;
            switch (readByte) {
                case 0:
                    return;
                case 1:
                    this.address += Leb128.readUnsignedLeb128(byteArrayByteInput);
                    break;
                case 2:
                    this.line += Leb128.readSignedLeb128(byteArrayByteInput);
                    break;
                case 3:
                    int readUnsignedLeb1282 = Leb128.readUnsignedLeb128(byteArrayByteInput);
                    LocalEntry localEntry3 = new LocalEntry(this.address, true, readUnsignedLeb1282, readStringIndex(byteArrayByteInput), readStringIndex(byteArrayByteInput), 0);
                    this.locals.add(localEntry3);
                    this.lastEntryForReg[readUnsignedLeb1282] = localEntry3;
                    break;
                case 4:
                    int readUnsignedLeb1283 = Leb128.readUnsignedLeb128(byteArrayByteInput);
                    LocalEntry localEntry4 = new LocalEntry(this.address, true, readUnsignedLeb1283, readStringIndex(byteArrayByteInput), readStringIndex(byteArrayByteInput), readStringIndex(byteArrayByteInput));
                    this.locals.add(localEntry4);
                    this.lastEntryForReg[readUnsignedLeb1283] = localEntry4;
                    break;
                case 5:
                    int readUnsignedLeb1284 = Leb128.readUnsignedLeb128(byteArrayByteInput);
                    try {
                        LocalEntry localEntry5 = this.lastEntryForReg[readUnsignedLeb1284];
                        if (!localEntry5.isStart) {
                            throw new RuntimeException("nonsensical END_LOCAL on dead register v" + readUnsignedLeb1284);
                        }
                        LocalEntry localEntry6 = new LocalEntry(this.address, false, readUnsignedLeb1284, localEntry5.nameIndex, localEntry5.typeIndex, localEntry5.signatureIndex);
                        this.locals.add(localEntry6);
                        this.lastEntryForReg[readUnsignedLeb1284] = localEntry6;
                        break;
                    } catch (NullPointerException unused) {
                        throw new RuntimeException("Encountered END_LOCAL on new v" + readUnsignedLeb1284);
                    }
                case 6:
                    int readUnsignedLeb1285 = Leb128.readUnsignedLeb128(byteArrayByteInput);
                    try {
                        LocalEntry localEntry7 = this.lastEntryForReg[readUnsignedLeb1285];
                        if (localEntry7.isStart) {
                            throw new RuntimeException("nonsensical RESTART_LOCAL on live register v" + readUnsignedLeb1285);
                        }
                        LocalEntry localEntry8 = new LocalEntry(this.address, true, readUnsignedLeb1285, localEntry7.nameIndex, localEntry7.typeIndex, 0);
                        this.locals.add(localEntry8);
                        this.lastEntryForReg[readUnsignedLeb1285] = localEntry8;
                        break;
                    } catch (NullPointerException unused2) {
                        throw new RuntimeException("Encountered RESTART_LOCAL on new v" + readUnsignedLeb1285);
                    }
                case 7:
                case 8:
                case 9:
                    break;
                default:
                    if (readByte < 10) {
                        throw new RuntimeException("Invalid extended opcode encountered " + readByte);
                    }
                    int i12 = this.address + ((readByte - 10) / 15);
                    this.address = i12;
                    int i13 = this.line + ((r2 % 15) - 4);
                    this.line = i13;
                    this.positions.add(new PositionEntry(i12, i13));
                    break;
            }
        }
    }

    private int getParamBase() {
        return (this.regSize - this.desc.getParameterTypes().getWordCount()) - (!this.isStatic ? 1 : 0);
    }

    private int readStringIndex(ByteInput byteInput) throws IOException {
        return Leb128.readUnsignedLeb128(byteInput) - 1;
    }

    public static void validateEncode(byte[] bArr, DexFile dexFile, CstMethodRef cstMethodRef, DalvCode dalvCode, boolean z10) {
        PositionList positions = dalvCode.getPositions();
        LocalList locals = dalvCode.getLocals();
        DalvInsnList insns = dalvCode.getInsns();
        try {
            validateEncode0(bArr, insns.codeSize(), insns.getRegistersSize(), z10, cstMethodRef, dexFile, positions, locals);
        } catch (RuntimeException e10) {
            System.err.println("instructions:");
            insns.debugPrint((OutputStream) System.err, GlideException.a.f59088e, true);
            System.err.println("local list:");
            locals.debugPrint(System.err, GlideException.a.f59088e);
            throw ExceptionWithContext.withContext(e10, "while processing " + cstMethodRef.toHuman());
        }
    }

    private static void validateEncode0(byte[] bArr, int i10, int i11, boolean z10, CstMethodRef cstMethodRef, DexFile dexFile, PositionList positionList, LocalList localList) {
        int i12;
        LocalEntry localEntry;
        DebugInfoDecoder debugInfoDecoder = new DebugInfoDecoder(bArr, i10, i11, z10, cstMethodRef, dexFile);
        debugInfoDecoder.decode();
        List<PositionEntry> positionList2 = debugInfoDecoder.getPositionList();
        if (positionList2.size() != positionList.size()) {
            throw new RuntimeException("Decoded positions table not same size was " + positionList2.size() + " expected " + positionList.size());
        }
        for (PositionEntry positionEntry : positionList2) {
            for (int size = positionList.size() - 1; size >= 0; size--) {
                PositionList.Entry entry = positionList.get(size);
                if (positionEntry.line != entry.getPosition().getLine() || positionEntry.address != entry.getAddress()) {
                }
            }
            throw new RuntimeException("Could not match position entry: " + positionEntry.address + ", " + positionEntry.line);
        }
        List<LocalEntry> locals = debugInfoDecoder.getLocals();
        int i13 = debugInfoDecoder.thisStringIdx;
        int size2 = locals.size();
        int paramBase = debugInfoDecoder.getParamBase();
        for (int i14 = 0; i14 < size2; i14++) {
            LocalEntry localEntry2 = locals.get(i14);
            int i15 = localEntry2.nameIndex;
            if (i15 < 0 || i15 == i13) {
                int i16 = i14 + 1;
                while (true) {
                    if (i16 < size2) {
                        LocalEntry localEntry3 = locals.get(i16);
                        if (localEntry3.address == 0) {
                            if (localEntry2.reg == localEntry3.reg && localEntry3.isStart) {
                                locals.set(i14, localEntry3);
                                locals.remove(i16);
                                size2--;
                                break;
                            }
                            i16++;
                        }
                    }
                }
            }
        }
        int size3 = localList.size();
        int i17 = 0;
        while (i12 < size3) {
            LocalList.Entry entry2 = localList.get(i12);
            i12 = entry2.getDisposition() == LocalList.Disposition.END_REPLACED ? i12 + 1 : 0;
            do {
                localEntry = locals.get(i17);
                if (localEntry.nameIndex >= 0) {
                    break;
                } else {
                    i17++;
                }
            } while (i17 < size2);
            int i18 = localEntry.address;
            if (localEntry.reg != entry2.getRegister()) {
                System.err.println("local register mismatch at orig " + i12 + " / decoded " + i17);
            } else if (localEntry.isStart != entry2.isStart()) {
                System.err.println("local start/end mismatch at orig " + i12 + " / decoded " + i17);
            } else if (i18 == entry2.getAddress() || (i18 == 0 && localEntry.reg >= paramBase)) {
                i17++;
            } else {
                System.err.println("local address mismatch at orig " + i12 + " / decoded " + i17);
            }
            System.err.println("decoded locals:");
            for (LocalEntry localEntry4 : locals) {
                System.err.println(GlideException.a.f59088e + ((Object) localEntry4));
            }
            throw new RuntimeException("local table problem");
        }
    }

    public void decode() {
        try {
            decode0();
        } catch (Exception e10) {
            throw ExceptionWithContext.withContext(e10, "...while decoding debug info");
        }
    }

    public List<LocalEntry> getLocals() {
        return this.locals;
    }

    public List<PositionEntry> getPositionList() {
        return this.positions;
    }
}
