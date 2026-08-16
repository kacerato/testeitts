package com.android.dx.dex.file;

import com.android.dex.EncodedValueCodec;
import com.android.dx.rop.annotation.Annotation;
import com.android.dx.rop.annotation.NameValuePair;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstAnnotation;
import com.android.dx.rop.cst.CstArray;
import com.android.dx.rop.cst.CstBoolean;
import com.android.dx.rop.cst.CstByte;
import com.android.dx.rop.cst.CstChar;
import com.android.dx.rop.cst.CstDouble;
import com.android.dx.rop.cst.CstEnumRef;
import com.android.dx.rop.cst.CstFieldRef;
import com.android.dx.rop.cst.CstFloat;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.rop.cst.CstKnownNull;
import com.android.dx.rop.cst.CstLiteralBits;
import com.android.dx.rop.cst.CstLong;
import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.rop.cst.CstShort;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import java.util.Collection;
import w2.C15883c;

public final class ValueEncoder {
    private static final int VALUE_ANNOTATION = 29;
    private static final int VALUE_ARRAY = 28;
    private static final int VALUE_BOOLEAN = 31;
    private static final int VALUE_BYTE = 0;
    private static final int VALUE_CHAR = 3;
    private static final int VALUE_DOUBLE = 17;
    private static final int VALUE_ENUM = 27;
    private static final int VALUE_FIELD = 25;
    private static final int VALUE_FLOAT = 16;
    private static final int VALUE_INT = 4;
    private static final int VALUE_LONG = 6;
    private static final int VALUE_METHOD = 26;
    private static final int VALUE_NULL = 30;
    private static final int VALUE_SHORT = 2;
    private static final int VALUE_STRING = 23;
    private static final int VALUE_TYPE = 24;
    private final DexFile file;
    private final AnnotatedOutput out;

    public ValueEncoder(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        if (dexFile == null) {
            throw new NullPointerException("file == null");
        }
        if (annotatedOutput == null) {
            throw new NullPointerException("out == null");
        }
        this.file = dexFile;
        this.out = annotatedOutput;
    }

    public static void addContents(DexFile dexFile, Annotation annotation) {
        TypeIdsSection typeIds = dexFile.getTypeIds();
        StringIdsSection stringIds = dexFile.getStringIds();
        typeIds.intern(annotation.getType());
        for (NameValuePair nameValuePair : annotation.getNameValuePairs()) {
            stringIds.intern(nameValuePair.getName());
            addContents(dexFile, nameValuePair.getValue());
        }
    }

    public static String constantToHuman(Constant constant) {
        if (constantToValueType(constant) == 30) {
            return "null";
        }
        return constant.typeName() + C15883c.f126249O + constant.toHuman();
    }

    private static int constantToValueType(Constant constant) {
        if (constant instanceof CstByte) {
            return 0;
        }
        if (constant instanceof CstShort) {
            return 2;
        }
        if (constant instanceof CstChar) {
            return 3;
        }
        if (constant instanceof CstInteger) {
            return 4;
        }
        if (constant instanceof CstLong) {
            return 6;
        }
        if (constant instanceof CstFloat) {
            return 16;
        }
        if (constant instanceof CstDouble) {
            return 17;
        }
        if (constant instanceof CstString) {
            return 23;
        }
        if (constant instanceof CstType) {
            return 24;
        }
        if (constant instanceof CstFieldRef) {
            return 25;
        }
        if (constant instanceof CstMethodRef) {
            return 26;
        }
        if (constant instanceof CstEnumRef) {
            return 27;
        }
        if (constant instanceof CstArray) {
            return 28;
        }
        if (constant instanceof CstAnnotation) {
            return 29;
        }
        if (constant instanceof CstKnownNull) {
            return 30;
        }
        if (constant instanceof CstBoolean) {
            return 31;
        }
        throw new RuntimeException("Shouldn't happen");
    }

    public void writeAnnotation(Annotation annotation, boolean z10) {
        boolean z11 = z10 && this.out.annotates();
        StringIdsSection stringIds = this.file.getStringIds();
        TypeIdsSection typeIds = this.file.getTypeIds();
        CstType type = annotation.getType();
        int indexOf = typeIds.indexOf(type);
        if (z11) {
            this.out.annotate("  type_idx: " + Hex.u4(indexOf) + " // " + type.toHuman());
        }
        this.out.writeUleb128(typeIds.indexOf(annotation.getType()));
        Collection<NameValuePair> nameValuePairs = annotation.getNameValuePairs();
        int size = nameValuePairs.size();
        if (z11) {
            this.out.annotate("  size: " + Hex.u4(size));
        }
        this.out.writeUleb128(size);
        int i10 = 0;
        for (NameValuePair nameValuePair : nameValuePairs) {
            CstString name = nameValuePair.getName();
            int indexOf2 = stringIds.indexOf(name);
            Constant value = nameValuePair.getValue();
            if (z11) {
                this.out.annotate(0, "  elements[" + i10 + "]:");
                i10++;
                this.out.annotate("    name_idx: " + Hex.u4(indexOf2) + " // " + name.toHuman());
            }
            this.out.writeUleb128(indexOf2);
            if (z11) {
                this.out.annotate("    value: " + constantToHuman(value));
            }
            writeConstant(value);
        }
        if (z11) {
            this.out.endAnnotation();
        }
    }

    public void writeArray(CstArray cstArray, boolean z10) {
        boolean z11 = z10 && this.out.annotates();
        CstArray.List list = cstArray.getList();
        int size = list.size();
        if (z11) {
            this.out.annotate("  size: " + Hex.u4(size));
        }
        this.out.writeUleb128(size);
        for (int i10 = 0; i10 < size; i10++) {
            Constant constant = list.get(i10);
            if (z11) {
                this.out.annotate("  [" + Integer.toHexString(i10) + "] " + constantToHuman(constant));
            }
            writeConstant(constant);
        }
        if (z11) {
            this.out.endAnnotation();
        }
    }

    public void writeConstant(Constant constant) {
        int constantToValueType = constantToValueType(constant);
        if (constantToValueType != 0 && constantToValueType != 6 && constantToValueType != 2) {
            if (constantToValueType == 3) {
                EncodedValueCodec.writeUnsignedIntegralValue(this.out, constantToValueType, ((CstLiteralBits) constant).getLongBits());
                return;
            }
            if (constantToValueType != 4) {
                if (constantToValueType == 16) {
                    EncodedValueCodec.writeRightZeroExtendedValue(this.out, constantToValueType, ((CstFloat) constant).getLongBits() << 32);
                    return;
                }
                if (constantToValueType == 17) {
                    EncodedValueCodec.writeRightZeroExtendedValue(this.out, constantToValueType, ((CstDouble) constant).getLongBits());
                    return;
                }
                switch (constantToValueType) {
                    case 23:
                        EncodedValueCodec.writeUnsignedIntegralValue(this.out, constantToValueType, this.file.getStringIds().indexOf((CstString) constant));
                        return;
                    case 24:
                        EncodedValueCodec.writeUnsignedIntegralValue(this.out, constantToValueType, this.file.getTypeIds().indexOf((CstType) constant));
                        return;
                    case 25:
                        EncodedValueCodec.writeUnsignedIntegralValue(this.out, constantToValueType, this.file.getFieldIds().indexOf((CstFieldRef) constant));
                        return;
                    case 26:
                        EncodedValueCodec.writeUnsignedIntegralValue(this.out, constantToValueType, this.file.getMethodIds().indexOf((CstMethodRef) constant));
                        return;
                    case 27:
                        EncodedValueCodec.writeUnsignedIntegralValue(this.out, constantToValueType, this.file.getFieldIds().indexOf(((CstEnumRef) constant).getFieldRef()));
                        return;
                    case 28:
                        this.out.writeByte(constantToValueType);
                        writeArray((CstArray) constant, false);
                        return;
                    case 29:
                        this.out.writeByte(constantToValueType);
                        writeAnnotation(((CstAnnotation) constant).getAnnotation(), false);
                        return;
                    case 30:
                        this.out.writeByte(constantToValueType);
                        return;
                    case 31:
                        this.out.writeByte((((CstBoolean) constant).getIntBits() << 5) | constantToValueType);
                        return;
                    default:
                        throw new RuntimeException("Shouldn't happen");
                }
            }
        }
        EncodedValueCodec.writeSignedIntegralValue(this.out, constantToValueType, ((CstLiteralBits) constant).getLongBits());
    }

    public static void addContents(DexFile dexFile, Constant constant) {
        if (constant instanceof CstAnnotation) {
            addContents(dexFile, ((CstAnnotation) constant).getAnnotation());
            return;
        }
        if (constant instanceof CstArray) {
            CstArray.List list = ((CstArray) constant).getList();
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                addContents(dexFile, list.get(i10));
            }
            return;
        }
        dexFile.internIfAppropriate(constant);
    }
}
