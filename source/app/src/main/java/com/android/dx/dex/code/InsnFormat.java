package com.android.dx.dex.code;

import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.rop.cst.CstKnownNull;
import com.android.dx.rop.cst.CstLiteral64;
import com.android.dx.rop.cst.CstLiteralBits;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import java.util.BitSet;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.JavaElement;
import w2.C15883c;
import yd.C16181m;

public abstract class InsnFormat {
    public static final boolean ALLOW_EXTENDED_OPCODES = true;

    public static int argIndex(DalvInsn dalvInsn) {
        int value = ((CstInteger) ((CstInsn) dalvInsn).getConstant()).getValue();
        if (value >= 0) {
            return value;
        }
        throw new IllegalArgumentException("bogus insn");
    }

    public static String branchComment(DalvInsn dalvInsn) {
        int targetOffset = ((TargetInsn) dalvInsn).getTargetOffset();
        return targetOffset == ((short) targetOffset) ? Hex.s2(targetOffset) : Hex.s4(targetOffset);
    }

    public static String branchString(DalvInsn dalvInsn) {
        int targetAddress = ((TargetInsn) dalvInsn).getTargetAddress();
        return targetAddress == ((char) targetAddress) ? Hex.u2(targetAddress) : Hex.u4(targetAddress);
    }

    public static short codeUnit(int i10, int i11) {
        if ((i10 & 255) != i10) {
            throw new IllegalArgumentException("low out of range 0..255");
        }
        if ((i11 & 255) == i11) {
            return (short) (i10 | (i11 << 8));
        }
        throw new IllegalArgumentException("high out of range 0..255");
    }

    public static boolean isRegListSequential(RegisterSpecList registerSpecList) {
        int size = registerSpecList.size();
        if (size < 2) {
            return true;
        }
        int reg = registerSpecList.get(0).getReg();
        for (int i10 = 0; i10 < size; i10++) {
            RegisterSpec registerSpec = registerSpecList.get(i10);
            if (registerSpec.getReg() != reg) {
                return false;
            }
            reg += registerSpec.getCategory();
        }
        return true;
    }

    public static String literalBitsComment(CstLiteralBits cstLiteralBits, int i10) {
        StringBuffer stringBuffer = new StringBuffer(20);
        stringBuffer.append(C16181m.f130230g);
        long longBits = cstLiteralBits instanceof CstLiteral64 ? ((CstLiteral64) cstLiteralBits).getLongBits() : cstLiteralBits.getIntBits();
        if (i10 == 4) {
            stringBuffer.append(Hex.uNibble((int) longBits));
        } else if (i10 == 8) {
            stringBuffer.append(Hex.u1((int) longBits));
        } else if (i10 == 16) {
            stringBuffer.append(Hex.u2((int) longBits));
        } else if (i10 == 32) {
            stringBuffer.append(Hex.u4((int) longBits));
        } else {
            if (i10 != 64) {
                throw new RuntimeException("shouldn't happen");
            }
            stringBuffer.append(Hex.u8(longBits));
        }
        return stringBuffer.toString();
    }

    public static String literalBitsString(CstLiteralBits cstLiteralBits) {
        StringBuffer stringBuffer = new StringBuffer(100);
        stringBuffer.append(JavaElement.JEM_IMPORTDECLARATION);
        if (cstLiteralBits instanceof CstKnownNull) {
            stringBuffer.append("null");
        } else {
            stringBuffer.append(cstLiteralBits.typeName());
            stringBuffer.append(C15883c.f126249O);
            stringBuffer.append(cstLiteralBits.toHuman());
        }
        return stringBuffer.toString();
    }

    public static int makeByte(int i10, int i11) {
        if ((i10 & 15) != i10) {
            throw new IllegalArgumentException("low out of range 0..15");
        }
        if ((i11 & 15) == i11) {
            return i10 | (i11 << 4);
        }
        throw new IllegalArgumentException("high out of range 0..15");
    }

    public static short opcodeUnit(DalvInsn dalvInsn, int i10) {
        if ((i10 & 255) == i10) {
            int opcode = dalvInsn.getOpcode().getOpcode();
            if ((opcode & 255) == opcode) {
                return (short) (opcode | (i10 << 8));
            }
            throw new IllegalArgumentException("opcode out of range 0..255");
        }
        throw new IllegalArgumentException("arg out of range 0..255");
    }

    public static String regListString(RegisterSpecList registerSpecList) {
        int size = registerSpecList.size();
        StringBuffer stringBuffer = new StringBuffer((size * 5) + 2);
        stringBuffer.append(JavaElement.JEM_COMPILATIONUNIT);
        for (int i10 = 0; i10 < size; i10++) {
            if (i10 != 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(registerSpecList.get(i10).regString());
        }
        stringBuffer.append(JavaElement.JEM_ANNOTATION);
        return stringBuffer.toString();
    }

    public static String regRangeString(RegisterSpecList registerSpecList) {
        int size = registerSpecList.size();
        StringBuilder sb2 = new StringBuilder(30);
        sb2.append("{");
        if (size != 0) {
            if (size != 1) {
                RegisterSpec registerSpec = registerSpecList.get(size - 1);
                if (registerSpec.getCategory() == 2) {
                    registerSpec = registerSpec.withOffset(1);
                }
                sb2.append(registerSpecList.get(0).regString());
                sb2.append(ClasspathEntry.DOT_DOT);
                sb2.append(registerSpec.regString());
            } else {
                sb2.append(registerSpecList.get(0).regString());
            }
        }
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    public static boolean signedFitsInByte(int i10) {
        return ((byte) i10) == i10;
    }

    public static boolean signedFitsInNibble(int i10) {
        return i10 >= -8 && i10 <= 7;
    }

    public static boolean signedFitsInShort(int i10) {
        return ((short) i10) == i10;
    }

    public static boolean unsignedFitsInByte(int i10) {
        return i10 == (i10 & 255);
    }

    public static boolean unsignedFitsInNibble(int i10) {
        return i10 == (i10 & 15);
    }

    public static boolean unsignedFitsInShort(int i10) {
        return i10 == (65535 & i10);
    }

    public static void write(AnnotatedOutput annotatedOutput, short s10) {
        annotatedOutput.writeShort(s10);
    }

    public boolean branchFits(TargetInsn targetInsn) {
        return false;
    }

    public abstract int codeSize();

    public BitSet compatibleRegs(DalvInsn dalvInsn) {
        return new BitSet();
    }

    public abstract String insnArgString(DalvInsn dalvInsn);

    public abstract String insnCommentString(DalvInsn dalvInsn, boolean z10);

    public abstract boolean isCompatible(DalvInsn dalvInsn);

    public final String listingString(DalvInsn dalvInsn, boolean z10) {
        String name = dalvInsn.getOpcode().getName();
        String insnArgString = insnArgString(dalvInsn);
        String insnCommentString = insnCommentString(dalvInsn, z10);
        StringBuilder sb2 = new StringBuilder(100);
        sb2.append(name);
        if (insnArgString.length() != 0) {
            sb2.append(C15883c.f126249O);
            sb2.append(insnArgString);
        }
        if (insnCommentString.length() != 0) {
            sb2.append(" // ");
            sb2.append(insnCommentString);
        }
        return sb2.toString();
    }

    public abstract void writeTo(AnnotatedOutput annotatedOutput, DalvInsn dalvInsn);

    public static void write(AnnotatedOutput annotatedOutput, short s10, short s11) {
        annotatedOutput.writeShort(s10);
        annotatedOutput.writeShort(s11);
    }

    public static short codeUnit(int i10, int i11, int i12, int i13) {
        if ((i10 & 15) != i10) {
            throw new IllegalArgumentException("n0 out of range 0..15");
        }
        if ((i11 & 15) != i11) {
            throw new IllegalArgumentException("n1 out of range 0..15");
        }
        if ((i12 & 15) != i12) {
            throw new IllegalArgumentException("n2 out of range 0..15");
        }
        if ((i13 & 15) == i13) {
            return (short) (i10 | (i11 << 4) | (i12 << 8) | (i13 << 12));
        }
        throw new IllegalArgumentException("n3 out of range 0..15");
    }

    public static short opcodeUnit(DalvInsn dalvInsn) {
        int opcode = dalvInsn.getOpcode().getOpcode();
        if (opcode < 256 || opcode > 65535) {
            throw new IllegalArgumentException("opcode out of range 0..65535");
        }
        return (short) opcode;
    }

    public static void write(AnnotatedOutput annotatedOutput, short s10, short s11, short s12) {
        annotatedOutput.writeShort(s10);
        annotatedOutput.writeShort(s11);
        annotatedOutput.writeShort(s12);
    }

    public static void write(AnnotatedOutput annotatedOutput, short s10, short s11, short s12, short s13) {
        annotatedOutput.writeShort(s10);
        annotatedOutput.writeShort(s11);
        annotatedOutput.writeShort(s12);
        annotatedOutput.writeShort(s13);
    }

    public static void write(AnnotatedOutput annotatedOutput, short s10, short s11, short s12, short s13, short s14) {
        annotatedOutput.writeShort(s10);
        annotatedOutput.writeShort(s11);
        annotatedOutput.writeShort(s12);
        annotatedOutput.writeShort(s13);
        annotatedOutput.writeShort(s14);
    }

    public static void write(AnnotatedOutput annotatedOutput, short s10, int i10) {
        write(annotatedOutput, s10, (short) i10, (short) (i10 >> 16));
    }

    public static void write(AnnotatedOutput annotatedOutput, short s10, int i10, short s11) {
        write(annotatedOutput, s10, (short) i10, (short) (i10 >> 16), s11);
    }

    public static void write(AnnotatedOutput annotatedOutput, short s10, int i10, short s11, short s12) {
        write(annotatedOutput, s10, (short) i10, (short) (i10 >> 16), s11, s12);
    }

    public static void write(AnnotatedOutput annotatedOutput, short s10, long j10) {
        write(annotatedOutput, s10, (short) j10, (short) (j10 >> 16), (short) (j10 >> 32), (short) (j10 >> 48));
    }
}
