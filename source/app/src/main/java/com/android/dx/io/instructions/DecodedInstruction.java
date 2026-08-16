package com.android.dx.io.instructions;

import com.android.dex.DexException;
import com.android.dx.io.IndexType;
import com.android.dx.io.OpcodeInfo;
import com.android.dx.io.Opcodes;
import com.android.dx.util.Hex;
import java.io.EOFException;

public abstract class DecodedInstruction {
    private final InstructionCodec format;
    private final int index;
    private final IndexType indexType;
    private final long literal;
    private final int opcode;
    private final int target;

    public DecodedInstruction(InstructionCodec instructionCodec, int i10, int i11, IndexType indexType, int i12, long j10) {
        if (instructionCodec == null) {
            throw new NullPointerException("format == null");
        }
        if (!Opcodes.isValidShape(i10)) {
            throw new IllegalArgumentException("invalid opcode");
        }
        this.format = instructionCodec;
        this.opcode = i10;
        this.index = i11;
        this.indexType = indexType;
        this.target = i12;
        this.literal = j10;
    }

    public static DecodedInstruction decode(CodeInput codeInput) throws EOFException {
        int read = codeInput.read();
        return OpcodeInfo.getFormat(Opcodes.extractOpcodeFromUnit(read)).decode(read, codeInput);
    }

    public static DecodedInstruction[] decodeAll(short[] sArr) {
        DecodedInstruction[] decodedInstructionArr = new DecodedInstruction[sArr.length];
        ShortArrayCodeInput shortArrayCodeInput = new ShortArrayCodeInput(sArr);
        while (shortArrayCodeInput.hasMore()) {
            try {
                decodedInstructionArr[shortArrayCodeInput.cursor()] = decode(shortArrayCodeInput);
            } catch (EOFException e10) {
                throw new DexException(e10);
            }
        }
        return decodedInstructionArr;
    }

    public final void encode(CodeOutput codeOutput) {
        this.format.encode(this, codeOutput);
    }

    public int getA() {
        return 0;
    }

    public final short getAByte() {
        int a10 = getA();
        if ((a10 & (-256)) == 0) {
            return (short) a10;
        }
        throw new DexException("Register A out of range: " + Hex.u8(a10));
    }

    public final short getANibble() {
        int a10 = getA();
        if ((a10 & (-16)) == 0) {
            return (short) a10;
        }
        throw new DexException("Register A out of range: " + Hex.u8(a10));
    }

    public final short getAUnit() {
        int a10 = getA();
        if (((-65536) & a10) == 0) {
            return (short) a10;
        }
        throw new DexException("Register A out of range: " + Hex.u8(a10));
    }

    public int getB() {
        return 0;
    }

    public final short getBByte() {
        int b10 = getB();
        if ((b10 & (-256)) == 0) {
            return (short) b10;
        }
        throw new DexException("Register B out of range: " + Hex.u8(b10));
    }

    public final short getBNibble() {
        int b10 = getB();
        if ((b10 & (-16)) == 0) {
            return (short) b10;
        }
        throw new DexException("Register B out of range: " + Hex.u8(b10));
    }

    public final short getBUnit() {
        int b10 = getB();
        if (((-65536) & b10) == 0) {
            return (short) b10;
        }
        throw new DexException("Register B out of range: " + Hex.u8(b10));
    }

    public int getC() {
        return 0;
    }

    public final short getCByte() {
        int c10 = getC();
        if ((c10 & (-256)) == 0) {
            return (short) c10;
        }
        throw new DexException("Register C out of range: " + Hex.u8(c10));
    }

    public final short getCNibble() {
        int c10 = getC();
        if ((c10 & (-16)) == 0) {
            return (short) c10;
        }
        throw new DexException("Register C out of range: " + Hex.u8(c10));
    }

    public final short getCUnit() {
        int c10 = getC();
        if (((-65536) & c10) == 0) {
            return (short) c10;
        }
        throw new DexException("Register C out of range: " + Hex.u8(c10));
    }

    public int getD() {
        return 0;
    }

    public final short getDByte() {
        int d10 = getD();
        if ((d10 & (-256)) == 0) {
            return (short) d10;
        }
        throw new DexException("Register D out of range: " + Hex.u8(d10));
    }

    public final short getDNibble() {
        int d10 = getD();
        if ((d10 & (-16)) == 0) {
            return (short) d10;
        }
        throw new DexException("Register D out of range: " + Hex.u8(d10));
    }

    public final short getDUnit() {
        int d10 = getD();
        if (((-65536) & d10) == 0) {
            return (short) d10;
        }
        throw new DexException("Register D out of range: " + Hex.u8(d10));
    }

    public int getE() {
        return 0;
    }

    public final short getENibble() {
        int e10 = getE();
        if ((e10 & (-16)) == 0) {
            return (short) e10;
        }
        throw new DexException("Register E out of range: " + Hex.u8(e10));
    }

    public final InstructionCodec getFormat() {
        return this.format;
    }

    public final int getIndex() {
        return this.index;
    }

    public final IndexType getIndexType() {
        return this.indexType;
    }

    public final short getIndexUnit() {
        return (short) this.index;
    }

    public final long getLiteral() {
        return this.literal;
    }

    public final int getLiteralByte() {
        long j10 = this.literal;
        if (j10 == ((byte) j10)) {
            return ((int) j10) & 255;
        }
        throw new DexException("Literal out of range: " + Hex.u8(this.literal));
    }

    public final int getLiteralInt() {
        long j10 = this.literal;
        if (j10 == ((int) j10)) {
            return (int) j10;
        }
        throw new DexException("Literal out of range: " + Hex.u8(this.literal));
    }

    public final int getLiteralNibble() {
        long j10 = this.literal;
        if (j10 >= -8 && j10 <= 7) {
            return ((int) j10) & 15;
        }
        throw new DexException("Literal out of range: " + Hex.u8(this.literal));
    }

    public final short getLiteralUnit() {
        long j10 = this.literal;
        if (j10 == ((short) j10)) {
            return (short) j10;
        }
        throw new DexException("Literal out of range: " + Hex.u8(this.literal));
    }

    public final int getOpcode() {
        return this.opcode;
    }

    public final short getOpcodeUnit() {
        return (short) this.opcode;
    }

    public abstract int getRegisterCount();

    public final short getRegisterCountUnit() {
        int registerCount = getRegisterCount();
        if (((-65536) & registerCount) == 0) {
            return (short) registerCount;
        }
        throw new DexException("Register count out of range: " + Hex.u8(registerCount));
    }

    public final int getTarget() {
        return this.target;
    }

    public final int getTargetByte(int i10) {
        int target = getTarget(i10);
        if (target == ((byte) target)) {
            return target & 255;
        }
        throw new DexException("Target out of range: " + Hex.s4(target));
    }

    public final short getTargetUnit(int i10) {
        int target = getTarget(i10);
        short s10 = (short) target;
        if (target == s10) {
            return s10;
        }
        throw new DexException("Target out of range: " + Hex.s4(target));
    }

    public abstract DecodedInstruction withIndex(int i10);

    public final int getTarget(int i10) {
        return this.target - i10;
    }
}
