package com.android.dx.cf.direct;

import com.android.dx.cf.attrib.AttAnnotationDefault;
import com.android.dx.cf.attrib.AttCode;
import com.android.dx.cf.attrib.AttConstantValue;
import com.android.dx.cf.attrib.AttDeprecated;
import com.android.dx.cf.attrib.AttEnclosingMethod;
import com.android.dx.cf.attrib.AttExceptions;
import com.android.dx.cf.attrib.AttInnerClasses;
import com.android.dx.cf.attrib.AttLineNumberTable;
import com.android.dx.cf.attrib.AttLocalVariableTable;
import com.android.dx.cf.attrib.AttLocalVariableTypeTable;
import com.android.dx.cf.attrib.AttRuntimeInvisibleAnnotations;
import com.android.dx.cf.attrib.AttRuntimeInvisibleParameterAnnotations;
import com.android.dx.cf.attrib.AttRuntimeVisibleAnnotations;
import com.android.dx.cf.attrib.AttRuntimeVisibleParameterAnnotations;
import com.android.dx.cf.attrib.AttSignature;
import com.android.dx.cf.attrib.AttSourceDebugExtension;
import com.android.dx.cf.attrib.AttSourceFile;
import com.android.dx.cf.attrib.AttSynthetic;
import com.android.dx.cf.attrib.InnerClassList;
import com.android.dx.cf.code.ByteCatchList;
import com.android.dx.cf.code.BytecodeArray;
import com.android.dx.cf.code.LineNumberList;
import com.android.dx.cf.code.LocalVariableList;
import com.android.dx.cf.iface.Attribute;
import com.android.dx.cf.iface.ParseException;
import com.android.dx.cf.iface.ParseObserver;
import com.android.dx.cf.iface.StdAttributeList;
import com.android.dx.rop.annotation.AnnotationVisibility;
import com.android.dx.rop.code.AccessFlags;
import com.android.dx.rop.cst.ConstantPool;
import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.cst.TypedConstant;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;
import java.io.IOException;
import org.eclipse.jdt.internal.core.ClasspathEntry;

public class StdAttributeFactory extends AttributeFactory {
    public static final StdAttributeFactory THE_ONE = new StdAttributeFactory();

    private Attribute annotationDefault(DirectClassFile directClassFile, int i10, int i11, ParseObserver parseObserver) {
        if (i11 < 2) {
            throwSeverelyTruncated();
        }
        return new AttAnnotationDefault(new AnnotationParser(directClassFile, i10, i11, parseObserver).parseValueAttribute(), i11);
    }

    private Attribute code(DirectClassFile directClassFile, int i10, int i11, ParseObserver parseObserver) {
        if (i11 < 12) {
            return throwSeverelyTruncated();
        }
        ByteArray bytes = directClassFile.getBytes();
        ConstantPool constantPool = directClassFile.getConstantPool();
        int unsignedShort = bytes.getUnsignedShort(i10);
        int i12 = i10 + 2;
        int unsignedShort2 = bytes.getUnsignedShort(i12);
        int i13 = i10 + 4;
        int i14 = bytes.getInt(i13);
        if (parseObserver != null) {
            parseObserver.parsed(bytes, i10, 2, "max_stack: " + Hex.u2(unsignedShort));
            parseObserver.parsed(bytes, i12, 2, "max_locals: " + Hex.u2(unsignedShort2));
            parseObserver.parsed(bytes, i13, 4, "code_length: " + Hex.u4(i14));
        }
        int i15 = i10 + 8;
        int i16 = i11 - 8;
        if (i16 < i14 + 4) {
            return throwTruncated();
        }
        int i17 = i15 + i14;
        int i18 = i16 - i14;
        BytecodeArray bytecodeArray = new BytecodeArray(bytes.slice(i15, i17), constantPool);
        if (parseObserver != null) {
            bytecodeArray.forEach(new CodeObserver(bytecodeArray.getBytes(), parseObserver));
        }
        int unsignedShort3 = bytes.getUnsignedShort(i17);
        ByteCatchList byteCatchList = unsignedShort3 == 0 ? ByteCatchList.EMPTY : new ByteCatchList(unsignedShort3);
        if (parseObserver != null) {
            parseObserver.parsed(bytes, i17, 2, "exception_table_length: " + Hex.u2(unsignedShort3));
        }
        int i19 = i17 + 2;
        int i20 = i18 - 2;
        if (i20 < (unsignedShort3 * 8) + 2) {
            return throwTruncated();
        }
        for (int i21 = 0; i21 < unsignedShort3; i21++) {
            if (parseObserver != null) {
                parseObserver.changeIndent(1);
            }
            int unsignedShort4 = bytes.getUnsignedShort(i19);
            int unsignedShort5 = bytes.getUnsignedShort(i19 + 2);
            int unsignedShort6 = bytes.getUnsignedShort(i19 + 4);
            CstType cstType = (CstType) constantPool.get0Ok(bytes.getUnsignedShort(i19 + 6));
            byteCatchList.set(i21, unsignedShort4, unsignedShort5, unsignedShort6, cstType);
            if (parseObserver != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(Hex.u2(unsignedShort4));
                sb2.append(ClasspathEntry.DOT_DOT);
                sb2.append(Hex.u2(unsignedShort5));
                sb2.append(" -> ");
                sb2.append(Hex.u2(unsignedShort6));
                sb2.append(" ");
                sb2.append(cstType == null ? "<any>" : cstType.toHuman());
                parseObserver.parsed(bytes, i19, 8, sb2.toString());
            }
            i19 += 8;
            i20 -= 8;
            if (parseObserver != null) {
                parseObserver.changeIndent(-1);
            }
        }
        byteCatchList.setImmutable();
        AttributeListParser attributeListParser = new AttributeListParser(directClassFile, 3, i19, this);
        attributeListParser.setObserver(parseObserver);
        StdAttributeList list = attributeListParser.getList();
        list.setImmutable();
        int endOffset = attributeListParser.getEndOffset() - i19;
        return endOffset != i20 ? throwBadLength(endOffset + (i19 - i10)) : new AttCode(unsignedShort, unsignedShort2, bytecodeArray, byteCatchList, list);
    }

    private Attribute constantValue(DirectClassFile directClassFile, int i10, int i11, ParseObserver parseObserver) {
        if (i11 != 2) {
            return throwBadLength(2);
        }
        ByteArray bytes = directClassFile.getBytes();
        TypedConstant typedConstant = (TypedConstant) directClassFile.getConstantPool().get(bytes.getUnsignedShort(i10));
        AttConstantValue attConstantValue = new AttConstantValue(typedConstant);
        if (parseObserver != null) {
            parseObserver.parsed(bytes, i10, 2, "value: " + ((Object) typedConstant));
        }
        return attConstantValue;
    }

    private Attribute deprecated(DirectClassFile directClassFile, int i10, int i11, ParseObserver parseObserver) {
        return i11 != 0 ? throwBadLength(0) : new AttDeprecated();
    }

    private Attribute enclosingMethod(DirectClassFile directClassFile, int i10, int i11, ParseObserver parseObserver) {
        if (i11 != 4) {
            throwBadLength(4);
        }
        ByteArray bytes = directClassFile.getBytes();
        ConstantPool constantPool = directClassFile.getConstantPool();
        CstType cstType = (CstType) constantPool.get(bytes.getUnsignedShort(i10));
        int i12 = i10 + 2;
        CstNat cstNat = (CstNat) constantPool.get0Ok(bytes.getUnsignedShort(i12));
        AttEnclosingMethod attEnclosingMethod = new AttEnclosingMethod(cstType, cstNat);
        if (parseObserver != null) {
            parseObserver.parsed(bytes, i10, 2, "class: " + ((Object) cstType));
            parseObserver.parsed(bytes, i12, 2, "method: " + DirectClassFile.stringOrNone(cstNat));
        }
        return attEnclosingMethod;
    }

    private Attribute exceptions(DirectClassFile directClassFile, int i10, int i11, ParseObserver parseObserver) {
        if (i11 < 2) {
            return throwSeverelyTruncated();
        }
        ByteArray bytes = directClassFile.getBytes();
        int unsignedShort = bytes.getUnsignedShort(i10);
        if (parseObserver != null) {
            parseObserver.parsed(bytes, i10, 2, "number_of_exceptions: " + Hex.u2(unsignedShort));
        }
        int i12 = i10 + 2;
        int i13 = unsignedShort * 2;
        if (i11 - 2 != i13) {
            throwBadLength(i13 + 2);
        }
        return new AttExceptions(directClassFile.makeTypeList(i12, unsignedShort));
    }

    private Attribute innerClasses(DirectClassFile directClassFile, int i10, int i11, ParseObserver parseObserver) {
        if (i11 < 2) {
            return throwSeverelyTruncated();
        }
        ByteArray bytes = directClassFile.getBytes();
        ConstantPool constantPool = directClassFile.getConstantPool();
        int unsignedShort = bytes.getUnsignedShort(i10);
        if (parseObserver != null) {
            parseObserver.parsed(bytes, i10, 2, "number_of_classes: " + Hex.u2(unsignedShort));
        }
        int i12 = i10 + 2;
        int i13 = unsignedShort * 8;
        if (i11 - 2 != i13) {
            throwBadLength(i13 + 2);
        }
        InnerClassList innerClassList = new InnerClassList(unsignedShort);
        for (int i14 = 0; i14 < unsignedShort; i14++) {
            int unsignedShort2 = bytes.getUnsignedShort(i12);
            int i15 = i12 + 2;
            int unsignedShort3 = bytes.getUnsignedShort(i15);
            int i16 = i12 + 4;
            int unsignedShort4 = bytes.getUnsignedShort(i16);
            int i17 = i12 + 6;
            int unsignedShort5 = bytes.getUnsignedShort(i17);
            CstType cstType = (CstType) constantPool.get(unsignedShort2);
            CstType cstType2 = (CstType) constantPool.get0Ok(unsignedShort3);
            CstString cstString = (CstString) constantPool.get0Ok(unsignedShort4);
            innerClassList.set(i14, cstType, cstType2, cstString, unsignedShort5);
            if (parseObserver != null) {
                parseObserver.parsed(bytes, i12, 2, "inner_class: " + DirectClassFile.stringOrNone(cstType));
                parseObserver.parsed(bytes, i15, 2, "  outer_class: " + DirectClassFile.stringOrNone(cstType2));
                parseObserver.parsed(bytes, i16, 2, "  name: " + DirectClassFile.stringOrNone(cstString));
                parseObserver.parsed(bytes, i17, 2, "  access_flags: " + AccessFlags.innerClassString(unsignedShort5));
            }
            i12 += 8;
        }
        innerClassList.setImmutable();
        return new AttInnerClasses(innerClassList);
    }

    private Attribute lineNumberTable(DirectClassFile directClassFile, int i10, int i11, ParseObserver parseObserver) {
        if (i11 < 2) {
            return throwSeverelyTruncated();
        }
        ByteArray bytes = directClassFile.getBytes();
        int unsignedShort = bytes.getUnsignedShort(i10);
        if (parseObserver != null) {
            parseObserver.parsed(bytes, i10, 2, "line_number_table_length: " + Hex.u2(unsignedShort));
        }
        int i12 = i10 + 2;
        int i13 = unsignedShort * 4;
        if (i11 - 2 != i13) {
            throwBadLength(i13 + 2);
        }
        LineNumberList lineNumberList = new LineNumberList(unsignedShort);
        for (int i14 = 0; i14 < unsignedShort; i14++) {
            int unsignedShort2 = bytes.getUnsignedShort(i12);
            int unsignedShort3 = bytes.getUnsignedShort(i12 + 2);
            lineNumberList.set(i14, unsignedShort2, unsignedShort3);
            if (parseObserver != null) {
                parseObserver.parsed(bytes, i12, 4, Hex.u2(unsignedShort2) + " " + unsignedShort3);
            }
            i12 += 4;
        }
        lineNumberList.setImmutable();
        return new AttLineNumberTable(lineNumberList);
    }

    private Attribute localVariableTable(DirectClassFile directClassFile, int i10, int i11, ParseObserver parseObserver) {
        if (i11 < 2) {
            return throwSeverelyTruncated();
        }
        ByteArray bytes = directClassFile.getBytes();
        int unsignedShort = bytes.getUnsignedShort(i10);
        if (parseObserver != null) {
            parseObserver.parsed(bytes, i10, 2, "local_variable_table_length: " + Hex.u2(unsignedShort));
        }
        return new AttLocalVariableTable(parseLocalVariables(bytes.slice(i10 + 2, i10 + i11), directClassFile.getConstantPool(), parseObserver, unsignedShort, false));
    }

    private Attribute localVariableTypeTable(DirectClassFile directClassFile, int i10, int i11, ParseObserver parseObserver) {
        if (i11 < 2) {
            return throwSeverelyTruncated();
        }
        ByteArray bytes = directClassFile.getBytes();
        int unsignedShort = bytes.getUnsignedShort(i10);
        if (parseObserver != null) {
            parseObserver.parsed(bytes, i10, 2, "local_variable_type_table_length: " + Hex.u2(unsignedShort));
        }
        return new AttLocalVariableTypeTable(parseLocalVariables(bytes.slice(i10 + 2, i10 + i11), directClassFile.getConstantPool(), parseObserver, unsignedShort, true));
    }

    private LocalVariableList parseLocalVariables(ByteArray byteArray, ConstantPool constantPool, ParseObserver parseObserver, int i10, boolean z10) {
        CstString cstString;
        CstString cstString2;
        int i11 = i10 * 10;
        if (byteArray.size() != i11) {
            throwBadLength(i11 + 2);
        }
        ByteArray.MyDataInputStream makeDataInputStream = byteArray.makeDataInputStream();
        LocalVariableList localVariableList = new LocalVariableList(i10);
        for (int i12 = 0; i12 < i10; i12++) {
            try {
                int readUnsignedShort = makeDataInputStream.readUnsignedShort();
                int readUnsignedShort2 = makeDataInputStream.readUnsignedShort();
                int readUnsignedShort3 = makeDataInputStream.readUnsignedShort();
                int readUnsignedShort4 = makeDataInputStream.readUnsignedShort();
                int readUnsignedShort5 = makeDataInputStream.readUnsignedShort();
                CstString cstString3 = (CstString) constantPool.get(readUnsignedShort3);
                CstString cstString4 = (CstString) constantPool.get(readUnsignedShort4);
                if (z10) {
                    cstString2 = null;
                    cstString = cstString4;
                } else {
                    cstString = null;
                    cstString2 = cstString4;
                }
                localVariableList.set(i12, readUnsignedShort, readUnsignedShort2, cstString3, cstString2, cstString, readUnsignedShort5);
                if (parseObserver != null) {
                    parseObserver.parsed(byteArray, i12 * 10, 10, Hex.u2(readUnsignedShort) + ClasspathEntry.DOT_DOT + Hex.u2(readUnsignedShort + readUnsignedShort2) + " " + Hex.u2(readUnsignedShort5) + " " + cstString3.toHuman() + " " + cstString4.toHuman());
                }
            } catch (IOException e10) {
                throw new RuntimeException("shouldn't happen", e10);
            }
        }
        localVariableList.setImmutable();
        return localVariableList;
    }

    private Attribute runtimeInvisibleAnnotations(DirectClassFile directClassFile, int i10, int i11, ParseObserver parseObserver) {
        if (i11 < 2) {
            throwSeverelyTruncated();
        }
        return new AttRuntimeInvisibleAnnotations(new AnnotationParser(directClassFile, i10, i11, parseObserver).parseAnnotationAttribute(AnnotationVisibility.BUILD), i11);
    }

    private Attribute runtimeInvisibleParameterAnnotations(DirectClassFile directClassFile, int i10, int i11, ParseObserver parseObserver) {
        if (i11 < 2) {
            throwSeverelyTruncated();
        }
        return new AttRuntimeInvisibleParameterAnnotations(new AnnotationParser(directClassFile, i10, i11, parseObserver).parseParameterAttribute(AnnotationVisibility.BUILD), i11);
    }

    private Attribute runtimeVisibleAnnotations(DirectClassFile directClassFile, int i10, int i11, ParseObserver parseObserver) {
        if (i11 < 2) {
            throwSeverelyTruncated();
        }
        return new AttRuntimeVisibleAnnotations(new AnnotationParser(directClassFile, i10, i11, parseObserver).parseAnnotationAttribute(AnnotationVisibility.RUNTIME), i11);
    }

    private Attribute runtimeVisibleParameterAnnotations(DirectClassFile directClassFile, int i10, int i11, ParseObserver parseObserver) {
        if (i11 < 2) {
            throwSeverelyTruncated();
        }
        return new AttRuntimeVisibleParameterAnnotations(new AnnotationParser(directClassFile, i10, i11, parseObserver).parseParameterAttribute(AnnotationVisibility.RUNTIME), i11);
    }

    private Attribute signature(DirectClassFile directClassFile, int i10, int i11, ParseObserver parseObserver) {
        if (i11 != 2) {
            throwBadLength(2);
        }
        ByteArray bytes = directClassFile.getBytes();
        CstString cstString = (CstString) directClassFile.getConstantPool().get(bytes.getUnsignedShort(i10));
        AttSignature attSignature = new AttSignature(cstString);
        if (parseObserver != null) {
            parseObserver.parsed(bytes, i10, 2, "signature: " + ((Object) cstString));
        }
        return attSignature;
    }

    private Attribute sourceDebugExtension(DirectClassFile directClassFile, int i10, int i11, ParseObserver parseObserver) {
        ByteArray slice = directClassFile.getBytes().slice(i10, i10 + i11);
        CstString cstString = new CstString(slice);
        AttSourceDebugExtension attSourceDebugExtension = new AttSourceDebugExtension(cstString);
        if (parseObserver != null) {
            parseObserver.parsed(slice, i10, i11, "sourceDebugExtension: " + cstString.getString());
        }
        return attSourceDebugExtension;
    }

    private Attribute sourceFile(DirectClassFile directClassFile, int i10, int i11, ParseObserver parseObserver) {
        if (i11 != 2) {
            throwBadLength(2);
        }
        ByteArray bytes = directClassFile.getBytes();
        CstString cstString = (CstString) directClassFile.getConstantPool().get(bytes.getUnsignedShort(i10));
        AttSourceFile attSourceFile = new AttSourceFile(cstString);
        if (parseObserver != null) {
            parseObserver.parsed(bytes, i10, 2, "source: " + ((Object) cstString));
        }
        return attSourceFile;
    }

    private Attribute synthetic(DirectClassFile directClassFile, int i10, int i11, ParseObserver parseObserver) {
        return i11 != 0 ? throwBadLength(0) : new AttSynthetic();
    }

    private static Attribute throwBadLength(int i10) {
        throw new ParseException("bad attribute length; expected length " + Hex.u4(i10));
    }

    private static Attribute throwSeverelyTruncated() {
        throw new ParseException("severely truncated attribute");
    }

    private static Attribute throwTruncated() {
        throw new ParseException("truncated attribute");
    }

    @Override
    public Attribute parse0(DirectClassFile directClassFile, int i10, String str, int i11, int i12, ParseObserver parseObserver) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        if (str == "LineNumberTable") {
                            return lineNumberTable(directClassFile, i11, i12, parseObserver);
                        }
                        if (str == "LocalVariableTable") {
                            return localVariableTable(directClassFile, i11, i12, parseObserver);
                        }
                        if (str == "LocalVariableTypeTable") {
                            return localVariableTypeTable(directClassFile, i11, i12, parseObserver);
                        }
                    }
                } else {
                    if (str == "AnnotationDefault") {
                        return annotationDefault(directClassFile, i11, i12, parseObserver);
                    }
                    if (str == "Code") {
                        return code(directClassFile, i11, i12, parseObserver);
                    }
                    if (str == "Deprecated") {
                        return deprecated(directClassFile, i11, i12, parseObserver);
                    }
                    if (str == "Exceptions") {
                        return exceptions(directClassFile, i11, i12, parseObserver);
                    }
                    if (str == "RuntimeInvisibleAnnotations") {
                        return runtimeInvisibleAnnotations(directClassFile, i11, i12, parseObserver);
                    }
                    if (str == "RuntimeVisibleAnnotations") {
                        return runtimeVisibleAnnotations(directClassFile, i11, i12, parseObserver);
                    }
                    if (str == "RuntimeInvisibleParameterAnnotations") {
                        return runtimeInvisibleParameterAnnotations(directClassFile, i11, i12, parseObserver);
                    }
                    if (str == "RuntimeVisibleParameterAnnotations") {
                        return runtimeVisibleParameterAnnotations(directClassFile, i11, i12, parseObserver);
                    }
                    if (str == "Signature") {
                        return signature(directClassFile, i11, i12, parseObserver);
                    }
                    if (str == "Synthetic") {
                        return synthetic(directClassFile, i11, i12, parseObserver);
                    }
                }
            } else {
                if (str == "ConstantValue") {
                    return constantValue(directClassFile, i11, i12, parseObserver);
                }
                if (str == "Deprecated") {
                    return deprecated(directClassFile, i11, i12, parseObserver);
                }
                if (str == "RuntimeInvisibleAnnotations") {
                    return runtimeInvisibleAnnotations(directClassFile, i11, i12, parseObserver);
                }
                if (str == "RuntimeVisibleAnnotations") {
                    return runtimeVisibleAnnotations(directClassFile, i11, i12, parseObserver);
                }
                if (str == "Signature") {
                    return signature(directClassFile, i11, i12, parseObserver);
                }
                if (str == "Synthetic") {
                    return synthetic(directClassFile, i11, i12, parseObserver);
                }
            }
        } else {
            if (str == "Deprecated") {
                return deprecated(directClassFile, i11, i12, parseObserver);
            }
            if (str == "EnclosingMethod") {
                return enclosingMethod(directClassFile, i11, i12, parseObserver);
            }
            if (str == "InnerClasses") {
                return innerClasses(directClassFile, i11, i12, parseObserver);
            }
            if (str == "RuntimeInvisibleAnnotations") {
                return runtimeInvisibleAnnotations(directClassFile, i11, i12, parseObserver);
            }
            if (str == "RuntimeVisibleAnnotations") {
                return runtimeVisibleAnnotations(directClassFile, i11, i12, parseObserver);
            }
            if (str == "Synthetic") {
                return synthetic(directClassFile, i11, i12, parseObserver);
            }
            if (str == "Signature") {
                return signature(directClassFile, i11, i12, parseObserver);
            }
            if (str == "SourceDebugExtension") {
                return sourceDebugExtension(directClassFile, i11, i12, parseObserver);
            }
            if (str == "SourceFile") {
                return sourceFile(directClassFile, i11, i12, parseObserver);
            }
        }
        return super.parse0(directClassFile, i10, str, i11, i12, parseObserver);
    }
}
