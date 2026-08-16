package com.android.dx.cf.cst;

import com.android.dx.cf.iface.ParseException;
import com.android.dx.cf.iface.ParseObserver;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstDouble;
import com.android.dx.rop.cst.CstFieldRef;
import com.android.dx.rop.cst.CstFloat;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.rop.cst.CstInterfaceMethodRef;
import com.android.dx.rop.cst.CstLong;
import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.cst.StdConstantPool;
import com.android.dx.rop.type.Type;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;
import java.util.BitSet;

public final class ConstantPoolParser {
    private final ByteArray bytes;
    private int endOffset;
    private ParseObserver observer;
    private final int[] offsets;
    private final StdConstantPool pool;

    public ConstantPoolParser(ByteArray byteArray) {
        int unsignedShort = byteArray.getUnsignedShort(8);
        this.bytes = byteArray;
        this.pool = new StdConstantPool(unsignedShort);
        this.offsets = new int[unsignedShort];
        this.endOffset = -1;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0011. Please report as an issue. */
    private void determineOffsets() {
        int i10;
        int i11 = 10;
        int i12 = 1;
        while (true) {
            int[] iArr = this.offsets;
            if (i12 >= iArr.length) {
                this.endOffset = i11;
                return;
            }
            iArr[i12] = i11;
            int unsignedByte = this.bytes.getUnsignedByte(i11);
            switch (unsignedByte) {
                case 1:
                    i11 += this.bytes.getUnsignedShort(i11 + 1) + 3;
                    i10 = 1;
                    i12 += i10;
                case 2:
                case 13:
                case 14:
                case 17:
                default:
                    throw new ParseException("unknown tag byte: " + Hex.u1(unsignedByte));
                case 3:
                case 4:
                case 9:
                case 10:
                case 11:
                case 12:
                    i11 += 5;
                    i10 = 1;
                    i12 += i10;
                case 5:
                case 6:
                    i11 += 9;
                    i10 = 2;
                    i12 += i10;
                case 7:
                case 8:
                    try {
                        i11 += 3;
                        i10 = 1;
                        i12 += i10;
                    } catch (ParseException e10) {
                        e10.addContext("...while preparsing cst " + Hex.u2(i12) + " at offset " + Hex.u4(i11));
                        throw e10;
                    }
                case 15:
                    throw new ParseException("MethodHandle not supported");
                case 16:
                    throw new ParseException("MethodType not supported");
                case 18:
                    throw new ParseException("InvokeDynamic not supported");
            }
        }
    }

    private void parse() {
        determineOffsets();
        ParseObserver parseObserver = this.observer;
        if (parseObserver != null) {
            parseObserver.parsed(this.bytes, 8, 2, "constant_pool_count: " + Hex.u2(this.offsets.length));
            this.observer.parsed(this.bytes, 10, 0, "\nconstant_pool:");
            this.observer.changeIndent(1);
        }
        BitSet bitSet = new BitSet(this.offsets.length);
        int i10 = 1;
        while (true) {
            int[] iArr = this.offsets;
            if (i10 >= iArr.length) {
                break;
            }
            if (iArr[i10] != 0 && this.pool.getOrNull(i10) == null) {
                parse0(i10, bitSet);
            }
            i10++;
        }
        if (this.observer != null) {
            for (int i11 = 1; i11 < this.offsets.length; i11++) {
                Constant orNull = this.pool.getOrNull(i11);
                if (orNull != null) {
                    int i12 = this.offsets[i11];
                    int i13 = this.endOffset;
                    int i14 = i11 + 1;
                    while (true) {
                        int[] iArr2 = this.offsets;
                        if (i14 >= iArr2.length) {
                            break;
                        }
                        int i15 = iArr2[i14];
                        if (i15 != 0) {
                            i13 = i15;
                            break;
                        }
                        i14++;
                    }
                    this.observer.parsed(this.bytes, i12, i13 - i12, bitSet.get(i11) ? Hex.u2(i11) + ": utf8{\"" + orNull.toHuman() + "\"}" : Hex.u2(i11) + ": " + orNull.toString());
                }
            }
            this.observer.changeIndent(-1);
            this.observer.parsed(this.bytes, this.endOffset, 0, "end constant_pool");
        }
    }

    private Constant parse0(int i10, BitSet bitSet) {
        Constant parseUtf8;
        Constant orNull = this.pool.getOrNull(i10);
        if (orNull != null) {
            return orNull;
        }
        int i11 = this.offsets[i10];
        try {
            int unsignedByte = this.bytes.getUnsignedByte(i11);
            switch (unsignedByte) {
                case 1:
                    parseUtf8 = parseUtf8(i11);
                    bitSet.set(i10);
                    break;
                case 2:
                case 13:
                case 14:
                case 17:
                default:
                    throw new ParseException("unknown tag byte: " + Hex.u1(unsignedByte));
                case 3:
                    parseUtf8 = CstInteger.make(this.bytes.getInt(i11 + 1));
                    break;
                case 4:
                    parseUtf8 = CstFloat.make(this.bytes.getInt(i11 + 1));
                    break;
                case 5:
                    parseUtf8 = CstLong.make(this.bytes.getLong(i11 + 1));
                    break;
                case 6:
                    parseUtf8 = CstDouble.make(this.bytes.getLong(i11 + 1));
                    break;
                case 7:
                    parseUtf8 = new CstType(Type.internClassName(((CstString) parse0(this.bytes.getUnsignedShort(i11 + 1), bitSet)).getString()));
                    break;
                case 8:
                    parseUtf8 = parse0(this.bytes.getUnsignedShort(i11 + 1), bitSet);
                    break;
                case 9:
                    parseUtf8 = new CstFieldRef((CstType) parse0(this.bytes.getUnsignedShort(i11 + 1), bitSet), (CstNat) parse0(this.bytes.getUnsignedShort(i11 + 3), bitSet));
                    break;
                case 10:
                    parseUtf8 = new CstMethodRef((CstType) parse0(this.bytes.getUnsignedShort(i11 + 1), bitSet), (CstNat) parse0(this.bytes.getUnsignedShort(i11 + 3), bitSet));
                    break;
                case 11:
                    parseUtf8 = new CstInterfaceMethodRef((CstType) parse0(this.bytes.getUnsignedShort(i11 + 1), bitSet), (CstNat) parse0(this.bytes.getUnsignedShort(i11 + 3), bitSet));
                    break;
                case 12:
                    parseUtf8 = new CstNat((CstString) parse0(this.bytes.getUnsignedShort(i11 + 1), bitSet), (CstString) parse0(this.bytes.getUnsignedShort(i11 + 3), bitSet));
                    break;
                case 15:
                    throw new ParseException("MethodHandle not supported");
                case 16:
                    throw new ParseException("MethodType not supported");
                case 18:
                    throw new ParseException("InvokeDynamic not supported");
            }
            this.pool.set(i10, parseUtf8);
            return parseUtf8;
        } catch (ParseException e10) {
            e10.addContext("...while parsing cst " + Hex.u2(i10) + " at offset " + Hex.u4(i11));
            throw e10;
        } catch (RuntimeException e11) {
            ParseException parseException = new ParseException(e11);
            parseException.addContext("...while parsing cst " + Hex.u2(i10) + " at offset " + Hex.u4(i11));
            throw parseException;
        }
    }

    private void parseIfNecessary() {
        if (this.endOffset < 0) {
            parse();
        }
    }

    private CstString parseUtf8(int i10) {
        int unsignedShort = this.bytes.getUnsignedShort(i10 + 1);
        int i11 = i10 + 3;
        try {
            return new CstString(this.bytes.slice(i11, unsignedShort + i11));
        } catch (IllegalArgumentException e10) {
            throw new ParseException(e10);
        }
    }

    public int getEndOffset() {
        parseIfNecessary();
        return this.endOffset;
    }

    public StdConstantPool getPool() {
        parseIfNecessary();
        return this.pool;
    }

    public void setObserver(ParseObserver parseObserver) {
        this.observer = parseObserver;
    }
}
