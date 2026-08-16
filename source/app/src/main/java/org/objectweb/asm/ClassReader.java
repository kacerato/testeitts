package org.objectweb.asm;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.classfile.Attributes;
import java.lang.constant.ConstantDescs;

public class ClassReader {
    static final int EXPAND_ASM_INSNS = 256;
    public static final int EXPAND_FRAMES = 8;
    private static final int INPUT_STREAM_DATA_CHUNK_SIZE = 4096;
    private static final int MAX_BUFFER_SIZE = 1048576;
    public static final int SKIP_CODE = 1;
    public static final int SKIP_DEBUG = 2;
    public static final int SKIP_FRAMES = 4;

    @Deprecated
    public final byte[] f102849b;
    private final int[] bootstrapMethodOffsets;
    final byte[] classFileBuffer;
    private final ConstantDynamic[] constantDynamicValues;
    private final String[] constantUtf8Values;
    private final int[] cpInfoOffsets;
    public final int header;
    private final int maxStringLength;

    public ClassReader(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    private static int computeBufferSize(InputStream inputStream) throws IOException {
        int available = inputStream.available();
        if (available < 256) {
            return 4096;
        }
        return Math.min(available, 1048576);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x006a, code lost:
    
        if (r0.charAt(r5) == 'L') goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x006c, code lost:
    
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0072, code lost:
    
        if (r0.charAt(r5) == ';') goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0075, code lost:
    
        r5 = r5 + 1;
        r1[r4] = r0.substring(r2, r5);
        r2 = r5;
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0051, code lost:
    
        r11.currentFrameLocalCount = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0053, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void computeImplicitFrame(Context context) {
        int i10;
        String str = context.currentMethodDescriptor;
        Object[] objArr = context.currentFrameLocalTypes;
        int i11 = 0;
        if ((context.currentMethodAccessFlags & 8) == 0) {
            if (ConstantDescs.INIT_NAME.equals(context.currentMethodName)) {
                objArr[0] = Opcodes.UNINITIALIZED_THIS;
            } else {
                objArr[0] = readClass(this.header + 2, context.charBuffer);
            }
            i11 = 1;
        }
        int i12 = 1;
        while (true) {
            int i13 = i12 + 1;
            char charAt = str.charAt(i12);
            if (charAt == 'F') {
                i10 = i11 + 1;
                objArr[i11] = Opcodes.FLOAT;
            } else if (charAt != 'L') {
                if (charAt != 'S' && charAt != 'I') {
                    if (charAt == 'J') {
                        i10 = i11 + 1;
                        objArr[i11] = Opcodes.LONG;
                    } else if (charAt != 'Z') {
                        if (charAt != '[') {
                            switch (charAt) {
                                case 'D':
                                    i10 = i11 + 1;
                                    objArr[i11] = Opcodes.DOUBLE;
                                    break;
                            }
                        } else {
                            while (str.charAt(i13) == '[') {
                                i13++;
                            }
                        }
                    }
                }
                i10 = i11 + 1;
                objArr[i11] = Opcodes.INTEGER;
            } else {
                int i14 = i13;
                while (str.charAt(i14) != ';') {
                    i14++;
                }
                objArr[i11] = str.substring(i13, i14);
                i11++;
                i12 = i14 + 1;
            }
            i11 = i10;
            i12 = i13;
        }
    }

    private void createDebugLabel(int i10, Label[] labelArr) {
        if (labelArr[i10] == null) {
            Label readLabel = readLabel(i10, labelArr);
            readLabel.flags = (short) (readLabel.flags | 1);
        }
    }

    private Label createLabel(int i10, Label[] labelArr) {
        Label readLabel = readLabel(i10, labelArr);
        readLabel.flags = (short) (readLabel.flags & (-2));
        return readLabel;
    }

    private int getTypeAnnotationBytecodeOffset(int[] iArr, int i10) {
        if (iArr == null || i10 >= iArr.length || readByte(iArr[i10]) < 67) {
            return -1;
        }
        return readUnsignedShort(iArr[i10] + 1);
    }

    private Attribute readAttribute(Attribute[] attributeArr, String str, int i10, int i11, char[] cArr, int i12, Label[] labelArr) {
        for (Attribute attribute : attributeArr) {
            if (attribute.type.equals(str)) {
                return attribute.read(this, i10, i11, cArr, i12, labelArr);
            }
        }
        return new Attribute(str).read(this, i10, i11, null, -1, null);
    }

    private int[] readBootstrapMethodsAttribute(int i10) {
        char[] cArr = new char[i10];
        int firstAttributeOffset = getFirstAttributeOffset();
        for (int readUnsignedShort = readUnsignedShort(firstAttributeOffset - 2); readUnsignedShort > 0; readUnsignedShort--) {
            String readUTF8 = readUTF8(firstAttributeOffset, cArr);
            int readInt = readInt(firstAttributeOffset + 2);
            int i11 = firstAttributeOffset + 6;
            if (Attributes.NAME_BOOTSTRAP_METHODS.equals(readUTF8)) {
                int readUnsignedShort2 = readUnsignedShort(i11);
                int[] iArr = new int[readUnsignedShort2];
                int i12 = firstAttributeOffset + 8;
                for (int i13 = 0; i13 < readUnsignedShort2; i13++) {
                    iArr[i13] = i12;
                    i12 += (readUnsignedShort(i12 + 2) * 2) + 4;
                }
                return iArr;
            }
            firstAttributeOffset = i11 + readInt;
        }
        throw new IllegalArgumentException();
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:155:0x0513 -> B:148:0x0820). Please report as a decompilation issue!!! */
    private void readCode(org.objectweb.asm.MethodVisitor r43, org.objectweb.asm.Context r44, int r45) {
        /*
            Method dump skipped, instructions count: 3518
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.objectweb.asm.ClassReader.readCode(org.objectweb.asm.MethodVisitor, org.objectweb.asm.Context, int):void");
    }

    private ConstantDynamic readConstantDynamic(int i10, char[] cArr) {
        ConstantDynamic constantDynamic = this.constantDynamicValues[i10];
        if (constantDynamic != null) {
            return constantDynamic;
        }
        int[] iArr = this.cpInfoOffsets;
        int i11 = iArr[i10];
        int i12 = iArr[readUnsignedShort(i11 + 2)];
        String readUTF8 = readUTF8(i12, cArr);
        String readUTF82 = readUTF8(i12 + 2, cArr);
        int i13 = this.bootstrapMethodOffsets[readUnsignedShort(i11)];
        Handle handle = (Handle) readConst(readUnsignedShort(i13), cArr);
        int readUnsignedShort = readUnsignedShort(i13 + 2);
        Object[] objArr = new Object[readUnsignedShort];
        int i14 = i13 + 4;
        for (int i15 = 0; i15 < readUnsignedShort; i15++) {
            objArr[i15] = readConst(readUnsignedShort(i14), cArr);
            i14 += 2;
        }
        ConstantDynamic[] constantDynamicArr = this.constantDynamicValues;
        ConstantDynamic constantDynamic2 = new ConstantDynamic(readUTF8, readUTF82, handle, objArr);
        constantDynamicArr[i10] = constantDynamic2;
        return constantDynamic2;
    }

    private int readElementValue(AnnotationVisitor annotationVisitor, int i10, String str, char[] cArr) {
        int i11 = 0;
        if (annotationVisitor == null) {
            int i12 = this.classFileBuffer[i10] & 255;
            return i12 != 64 ? i12 != 91 ? i12 != 101 ? i10 + 3 : i10 + 5 : readElementValues(null, i10 + 1, false, cArr) : readElementValues(null, i10 + 3, true, cArr);
        }
        int i13 = i10 + 1;
        int i14 = this.classFileBuffer[i10] & 255;
        if (i14 == 64) {
            return readElementValues(annotationVisitor.visitAnnotation(str, readUTF8(i13, cArr)), i10 + 3, true, cArr);
        }
        if (i14 != 70) {
            if (i14 == 83) {
                annotationVisitor.visit(str, Short.valueOf((short) readInt(this.cpInfoOffsets[readUnsignedShort(i13)])));
            } else if (i14 == 99) {
                annotationVisitor.visit(str, Type.getType(readUTF8(i13, cArr)));
            } else {
                if (i14 == 101) {
                    annotationVisitor.visitEnum(str, readUTF8(i13, cArr), readUTF8(i10 + 3, cArr));
                    return i10 + 5;
                }
                if (i14 == 115) {
                    annotationVisitor.visit(str, readUTF8(i13, cArr));
                } else if (i14 != 73 && i14 != 74) {
                    if (i14 == 90) {
                        annotationVisitor.visit(str, readInt(this.cpInfoOffsets[readUnsignedShort(i13)]) == 0 ? Boolean.FALSE : Boolean.TRUE);
                    } else {
                        if (i14 == 91) {
                            int readUnsignedShort = readUnsignedShort(i13);
                            int i15 = i10 + 3;
                            if (readUnsignedShort == 0) {
                                return readElementValues(annotationVisitor.visitArray(str), i10 + 1, false, cArr);
                            }
                            int i16 = this.classFileBuffer[i15] & 255;
                            if (i16 == 70) {
                                float[] fArr = new float[readUnsignedShort];
                                while (i11 < readUnsignedShort) {
                                    fArr[i11] = Float.intBitsToFloat(readInt(this.cpInfoOffsets[readUnsignedShort(i15 + 1)]));
                                    i15 += 3;
                                    i11++;
                                }
                                annotationVisitor.visit(str, fArr);
                            } else if (i16 == 83) {
                                short[] sArr = new short[readUnsignedShort];
                                while (i11 < readUnsignedShort) {
                                    sArr[i11] = (short) readInt(this.cpInfoOffsets[readUnsignedShort(i15 + 1)]);
                                    i15 += 3;
                                    i11++;
                                }
                                annotationVisitor.visit(str, sArr);
                            } else if (i16 == 90) {
                                boolean[] zArr = new boolean[readUnsignedShort];
                                for (int i17 = 0; i17 < readUnsignedShort; i17++) {
                                    zArr[i17] = readInt(this.cpInfoOffsets[readUnsignedShort(i15 + 1)]) != 0;
                                    i15 += 3;
                                }
                                annotationVisitor.visit(str, zArr);
                            } else if (i16 == 73) {
                                int[] iArr = new int[readUnsignedShort];
                                while (i11 < readUnsignedShort) {
                                    iArr[i11] = readInt(this.cpInfoOffsets[readUnsignedShort(i15 + 1)]);
                                    i15 += 3;
                                    i11++;
                                }
                                annotationVisitor.visit(str, iArr);
                            } else if (i16 != 74) {
                                switch (i16) {
                                    case 66:
                                        byte[] bArr = new byte[readUnsignedShort];
                                        while (i11 < readUnsignedShort) {
                                            bArr[i11] = (byte) readInt(this.cpInfoOffsets[readUnsignedShort(i15 + 1)]);
                                            i15 += 3;
                                            i11++;
                                        }
                                        annotationVisitor.visit(str, bArr);
                                        break;
                                    case 67:
                                        char[] cArr2 = new char[readUnsignedShort];
                                        while (i11 < readUnsignedShort) {
                                            cArr2[i11] = (char) readInt(this.cpInfoOffsets[readUnsignedShort(i15 + 1)]);
                                            i15 += 3;
                                            i11++;
                                        }
                                        annotationVisitor.visit(str, cArr2);
                                        break;
                                    case 68:
                                        double[] dArr = new double[readUnsignedShort];
                                        while (i11 < readUnsignedShort) {
                                            dArr[i11] = Double.longBitsToDouble(readLong(this.cpInfoOffsets[readUnsignedShort(i15 + 1)]));
                                            i15 += 3;
                                            i11++;
                                        }
                                        annotationVisitor.visit(str, dArr);
                                        break;
                                    default:
                                        return readElementValues(annotationVisitor.visitArray(str), i10 + 1, false, cArr);
                                }
                            } else {
                                long[] jArr = new long[readUnsignedShort];
                                while (i11 < readUnsignedShort) {
                                    jArr[i11] = readLong(this.cpInfoOffsets[readUnsignedShort(i15 + 1)]);
                                    i15 += 3;
                                    i11++;
                                }
                                annotationVisitor.visit(str, jArr);
                            }
                            return i15;
                        }
                        switch (i14) {
                            case 66:
                                annotationVisitor.visit(str, Byte.valueOf((byte) readInt(this.cpInfoOffsets[readUnsignedShort(i13)])));
                                break;
                            case 67:
                                annotationVisitor.visit(str, Character.valueOf((char) readInt(this.cpInfoOffsets[readUnsignedShort(i13)])));
                                break;
                            case 68:
                                break;
                            default:
                                throw new IllegalArgumentException();
                        }
                    }
                }
            }
            return i10 + 3;
        }
        annotationVisitor.visit(str, readConst(readUnsignedShort(i13), cArr));
        return i10 + 3;
    }

    private int readElementValues(AnnotationVisitor annotationVisitor, int i10, boolean z10, char[] cArr) {
        int readUnsignedShort = readUnsignedShort(i10);
        int i11 = i10 + 2;
        if (!z10) {
            while (true) {
                int i12 = readUnsignedShort - 1;
                if (readUnsignedShort <= 0) {
                    break;
                }
                i11 = readElementValue(annotationVisitor, i11, null, cArr);
                readUnsignedShort = i12;
            }
        } else {
            while (true) {
                int i13 = readUnsignedShort - 1;
                if (readUnsignedShort <= 0) {
                    break;
                }
                i11 = readElementValue(annotationVisitor, i11 + 2, readUTF8(i11, cArr), cArr);
                readUnsignedShort = i13;
            }
        }
        if (annotationVisitor != null) {
            annotationVisitor.visitEnd();
        }
        return i11;
    }

    private int readField(ClassVisitor classVisitor, Context context, int i10) {
        int i11;
        int i12;
        Context context2 = context;
        char[] cArr = context2.charBuffer;
        int readUnsignedShort = readUnsignedShort(i10);
        String readUTF8 = readUTF8(i10 + 2, cArr);
        String readUTF82 = readUTF8(i10 + 4, cArr);
        int readUnsignedShort2 = readUnsignedShort(i10 + 6);
        int i13 = i10 + 8;
        int i14 = readUnsignedShort;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        Attribute attribute = null;
        String str = null;
        Object obj = null;
        while (true) {
            int i19 = readUnsignedShort2 - 1;
            if (readUnsignedShort2 <= 0) {
                break;
            }
            String readUTF83 = readUTF8(i13, cArr);
            int readInt = readInt(i13 + 2);
            int i20 = i13 + 6;
            if ("ConstantValue".equals(readUTF83)) {
                int readUnsignedShort3 = readUnsignedShort(i20);
                obj = readUnsignedShort3 == 0 ? null : readConst(readUnsignedShort3, cArr);
            } else if ("Signature".equals(readUTF83)) {
                str = readUTF8(i20, cArr);
            } else {
                if ("Deprecated".equals(readUTF83)) {
                    i12 = 131072 | i14;
                } else if ("Synthetic".equals(readUTF83)) {
                    i12 = i14 | 4096;
                } else {
                    if ("RuntimeVisibleAnnotations".equals(readUTF83)) {
                        i18 = i20;
                        i11 = i18;
                    } else if (Attributes.NAME_RUNTIME_VISIBLE_TYPE_ANNOTATIONS.equals(readUTF83)) {
                        i16 = i20;
                        i11 = i16;
                    } else if ("RuntimeInvisibleAnnotations".equals(readUTF83)) {
                        i17 = i20;
                        i11 = i17;
                    } else if (Attributes.NAME_RUNTIME_INVISIBLE_TYPE_ANNOTATIONS.equals(readUTF83)) {
                        i15 = i20;
                        i11 = i15;
                    } else {
                        i11 = i20;
                        Attribute attribute2 = attribute;
                        attribute = readAttribute(context2.attributePrototypes, readUTF83, i11, readInt, cArr, -1, null);
                        attribute.nextAttribute = attribute2;
                        i17 = i17;
                        i18 = i18;
                        i15 = i15;
                        i16 = i16;
                    }
                    i13 = i11 + readInt;
                    context2 = context;
                    readUnsignedShort2 = i19;
                }
                i14 = i12;
            }
            i11 = i20;
            i13 = i11 + readInt;
            context2 = context;
            readUnsignedShort2 = i19;
        }
        Attribute attribute3 = attribute;
        int i21 = i15;
        int i22 = i16;
        int i23 = i17;
        int i24 = i18;
        FieldVisitor visitField = classVisitor.visitField(i14, readUTF8, readUTF82, str, obj);
        if (visitField == null) {
            return i13;
        }
        if (i24 != 0) {
            int readUnsignedShort4 = readUnsignedShort(i24);
            int i25 = i24 + 2;
            while (true) {
                int i26 = readUnsignedShort4 - 1;
                if (readUnsignedShort4 <= 0) {
                    break;
                }
                i25 = readElementValues(visitField.visitAnnotation(readUTF8(i25, cArr), true), i25 + 2, true, cArr);
                readUnsignedShort4 = i26;
            }
        }
        if (i23 != 0) {
            int readUnsignedShort5 = readUnsignedShort(i23);
            int i27 = i23 + 2;
            while (true) {
                int i28 = readUnsignedShort5 - 1;
                if (readUnsignedShort5 <= 0) {
                    break;
                }
                i27 = readElementValues(visitField.visitAnnotation(readUTF8(i27, cArr), false), i27 + 2, true, cArr);
                readUnsignedShort5 = i28;
            }
        }
        if (i22 != 0) {
            int readUnsignedShort6 = readUnsignedShort(i22);
            int i29 = i22 + 2;
            while (true) {
                int i30 = readUnsignedShort6 - 1;
                if (readUnsignedShort6 <= 0) {
                    break;
                }
                int readTypeAnnotationTarget = readTypeAnnotationTarget(context, i29);
                i29 = readElementValues(visitField.visitTypeAnnotation(context.currentTypeAnnotationTarget, context.currentTypeAnnotationTargetPath, readUTF8(readTypeAnnotationTarget, cArr), true), readTypeAnnotationTarget + 2, true, cArr);
                readUnsignedShort6 = i30;
            }
        }
        if (i21 != 0) {
            int readUnsignedShort7 = readUnsignedShort(i21);
            int i31 = i21 + 2;
            while (true) {
                int i32 = readUnsignedShort7 - 1;
                if (readUnsignedShort7 <= 0) {
                    break;
                }
                int readTypeAnnotationTarget2 = readTypeAnnotationTarget(context, i31);
                i31 = readElementValues(visitField.visitTypeAnnotation(context.currentTypeAnnotationTarget, context.currentTypeAnnotationTargetPath, readUTF8(readTypeAnnotationTarget2, cArr), false), readTypeAnnotationTarget2 + 2, true, cArr);
                readUnsignedShort7 = i32;
            }
        }
        while (true) {
            Attribute attribute4 = attribute3;
            if (attribute4 == null) {
                visitField.visitEnd();
                return i13;
            }
            attribute3 = attribute4.nextAttribute;
            attribute4.nextAttribute = null;
            visitField.visitAttribute(attribute4);
        }
    }

    private int readMethod(ClassVisitor classVisitor, Context context, int i10) {
        int i11;
        int i12;
        char[] cArr = context.charBuffer;
        context.currentMethodAccessFlags = readUnsignedShort(i10);
        context.currentMethodName = readUTF8(i10 + 2, cArr);
        int i13 = i10 + 4;
        context.currentMethodDescriptor = readUTF8(i13, cArr);
        int readUnsignedShort = readUnsignedShort(i10 + 6);
        int i14 = i10 + 8;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        Attribute attribute = null;
        boolean z10 = false;
        int i21 = 0;
        String[] strArr = null;
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        while (true) {
            int i26 = readUnsignedShort - 1;
            if (readUnsignedShort <= 0) {
                break;
            }
            String readUTF8 = readUTF8(i14, cArr);
            int readInt = readInt(i14 + 2);
            int i27 = i20;
            int i28 = i14 + 6;
            int i29 = i15;
            if (!"Code".equals(readUTF8)) {
                if ("Exceptions".equals(readUTF8)) {
                    int readUnsignedShort2 = readUnsignedShort(i28);
                    String[] strArr2 = new String[readUnsignedShort2];
                    int i30 = i14 + 8;
                    int i31 = i16;
                    for (int i32 = 0; i32 < readUnsignedShort2; i32++) {
                        strArr2[i32] = readClass(i30, cArr);
                        i30 += 2;
                    }
                    strArr = strArr2;
                    i21 = i28;
                    i15 = i29;
                    i16 = i31;
                    i20 = i27;
                    i12 = i21;
                } else {
                    i11 = i16;
                    if ("Signature".equals(readUTF8)) {
                        i12 = i28;
                        i15 = i29;
                        i16 = i11;
                        i20 = readUnsignedShort(i28);
                    } else if ("Deprecated".equals(readUTF8)) {
                        context.currentMethodAccessFlags |= 131072;
                        i15 = i29;
                        i16 = i11;
                    } else if ("RuntimeVisibleAnnotations".equals(readUTF8)) {
                        i17 = i28;
                        i15 = i29;
                        i16 = i11;
                        i20 = i27;
                        i12 = i17;
                    } else if (Attributes.NAME_RUNTIME_VISIBLE_TYPE_ANNOTATIONS.equals(readUTF8)) {
                        i15 = i28;
                        i16 = i11;
                        i20 = i27;
                        i12 = i15;
                    } else if ("AnnotationDefault".equals(readUTF8)) {
                        i18 = i28;
                        i15 = i29;
                        i16 = i11;
                        i20 = i27;
                        i12 = i18;
                    } else if ("Synthetic".equals(readUTF8)) {
                        context.currentMethodAccessFlags |= 4096;
                        i15 = i29;
                        i16 = i11;
                        z10 = true;
                    } else if ("RuntimeInvisibleAnnotations".equals(readUTF8)) {
                        i16 = i28;
                        i15 = i29;
                        i20 = i27;
                        i12 = i16;
                    } else if (Attributes.NAME_RUNTIME_INVISIBLE_TYPE_ANNOTATIONS.equals(readUTF8)) {
                        i22 = i28;
                        i15 = i29;
                        i16 = i11;
                        i20 = i27;
                        i12 = i22;
                    } else if ("RuntimeVisibleParameterAnnotations".equals(readUTF8)) {
                        i23 = i28;
                        i15 = i29;
                        i16 = i11;
                        i20 = i27;
                        i12 = i23;
                    } else if ("RuntimeInvisibleParameterAnnotations".equals(readUTF8)) {
                        i24 = i28;
                        i15 = i29;
                        i16 = i11;
                        i20 = i27;
                        i12 = i24;
                    } else if (Attributes.NAME_METHOD_PARAMETERS.equals(readUTF8)) {
                        i19 = i28;
                        i15 = i29;
                        i16 = i11;
                        i20 = i27;
                        i12 = i19;
                    } else {
                        i12 = i28;
                        Attribute readAttribute = readAttribute(context.attributePrototypes, readUTF8, i28, readInt, cArr, -1, null);
                        readAttribute.nextAttribute = attribute;
                        attribute = readAttribute;
                        i20 = i27;
                        i15 = i29;
                        i16 = i11;
                        i17 = i17;
                        i18 = i18;
                        i19 = i19;
                    }
                }
                i14 = i12 + readInt;
                readUnsignedShort = i26;
            } else if ((context.parsingOptions & 1) == 0) {
                i25 = i28;
                i15 = i29;
                i20 = i27;
                i12 = i25;
                i14 = i12 + readInt;
                readUnsignedShort = i26;
            } else {
                i11 = i16;
                i15 = i29;
                i16 = i11;
            }
            i12 = i28;
            i20 = i27;
            i14 = i12 + readInt;
            readUnsignedShort = i26;
        }
        int i33 = i15;
        int i34 = i16;
        int i35 = i17;
        int i36 = i18;
        int i37 = i19;
        int i38 = i20;
        MethodVisitor visitMethod = classVisitor.visitMethod(context.currentMethodAccessFlags, context.currentMethodName, context.currentMethodDescriptor, i38 == 0 ? null : readUtf(i38, cArr), strArr);
        if (visitMethod == null) {
            return i14;
        }
        if (visitMethod instanceof MethodWriter) {
            MethodWriter methodWriter = (MethodWriter) visitMethod;
            if (methodWriter.canCopyMethodAttributes(this, z10, (context.currentMethodAccessFlags & 131072) != 0, readUnsignedShort(i13), i38, i21)) {
                methodWriter.setMethodAttributesSource(i10, i14 - i10);
                return i14;
            }
        }
        if (i37 != 0 && (context.parsingOptions & 2) == 0) {
            int readByte = readByte(i37);
            int i39 = i37 + 1;
            while (true) {
                int i40 = readByte - 1;
                if (readByte <= 0) {
                    break;
                }
                visitMethod.visitParameter(readUTF8(i39, cArr), readUnsignedShort(i39 + 2));
                i39 += 4;
                readByte = i40;
            }
        }
        if (i36 != 0) {
            AnnotationVisitor visitAnnotationDefault = visitMethod.visitAnnotationDefault();
            readElementValue(visitAnnotationDefault, i36, null, cArr);
            if (visitAnnotationDefault != null) {
                visitAnnotationDefault.visitEnd();
            }
        }
        if (i35 != 0) {
            int readUnsignedShort3 = readUnsignedShort(i35);
            int i41 = i35 + 2;
            while (true) {
                int i42 = readUnsignedShort3 - 1;
                if (readUnsignedShort3 <= 0) {
                    break;
                }
                i41 = readElementValues(visitMethod.visitAnnotation(readUTF8(i41, cArr), true), i41 + 2, true, cArr);
                readUnsignedShort3 = i42;
            }
        }
        if (i34 != 0) {
            int readUnsignedShort4 = readUnsignedShort(i34);
            int i43 = i34 + 2;
            while (true) {
                int i44 = readUnsignedShort4 - 1;
                if (readUnsignedShort4 <= 0) {
                    break;
                }
                i43 = readElementValues(visitMethod.visitAnnotation(readUTF8(i43, cArr), false), i43 + 2, true, cArr);
                readUnsignedShort4 = i44;
            }
        }
        if (i33 != 0) {
            int readUnsignedShort5 = readUnsignedShort(i33);
            int i45 = i33 + 2;
            while (true) {
                int i46 = readUnsignedShort5 - 1;
                if (readUnsignedShort5 <= 0) {
                    break;
                }
                int readTypeAnnotationTarget = readTypeAnnotationTarget(context, i45);
                i45 = readElementValues(visitMethod.visitTypeAnnotation(context.currentTypeAnnotationTarget, context.currentTypeAnnotationTargetPath, readUTF8(readTypeAnnotationTarget, cArr), true), readTypeAnnotationTarget + 2, true, cArr);
                readUnsignedShort5 = i46;
            }
        }
        int i47 = i22;
        if (i47 != 0) {
            int readUnsignedShort6 = readUnsignedShort(i47);
            int i48 = i47 + 2;
            while (true) {
                int i49 = readUnsignedShort6 - 1;
                if (readUnsignedShort6 <= 0) {
                    break;
                }
                int readTypeAnnotationTarget2 = readTypeAnnotationTarget(context, i48);
                i48 = readElementValues(visitMethod.visitTypeAnnotation(context.currentTypeAnnotationTarget, context.currentTypeAnnotationTargetPath, readUTF8(readTypeAnnotationTarget2, cArr), false), readTypeAnnotationTarget2 + 2, true, cArr);
                readUnsignedShort6 = i49;
            }
        }
        int i50 = i23;
        if (i50 != 0) {
            readParameterAnnotations(visitMethod, context, i50, true);
        }
        int i51 = i24;
        if (i51 != 0) {
            readParameterAnnotations(visitMethod, context, i51, false);
        }
        while (attribute != null) {
            Attribute attribute2 = attribute.nextAttribute;
            attribute.nextAttribute = null;
            visitMethod.visitAttribute(attribute);
            attribute = attribute2;
        }
        int i52 = i25;
        if (i52 != 0) {
            visitMethod.visitCode();
            readCode(visitMethod, context, i52);
        }
        visitMethod.visitEnd();
        return i14;
    }

    private void readModuleAttributes(ClassVisitor classVisitor, Context context, int i10, int i11, String str) {
        String[] strArr;
        char[] cArr = context.charBuffer;
        int i12 = i10 + 6;
        ModuleVisitor visitModule = classVisitor.visitModule(readModule(i10, cArr), readUnsignedShort(i10 + 2), readUTF8(i10 + 4, cArr));
        if (visitModule == null) {
            return;
        }
        if (str != null) {
            visitModule.visitMainClass(str);
        }
        if (i11 != 0) {
            int readUnsignedShort = readUnsignedShort(i11);
            int i13 = i11 + 2;
            while (true) {
                int i14 = readUnsignedShort - 1;
                if (readUnsignedShort <= 0) {
                    break;
                }
                visitModule.visitPackage(readPackage(i13, cArr));
                i13 += 2;
                readUnsignedShort = i14;
            }
        }
        int readUnsignedShort2 = readUnsignedShort(i12);
        int i15 = i10 + 8;
        while (true) {
            int i16 = readUnsignedShort2 - 1;
            if (readUnsignedShort2 <= 0) {
                break;
            }
            String readModule = readModule(i15, cArr);
            int readUnsignedShort3 = readUnsignedShort(i15 + 2);
            String readUTF8 = readUTF8(i15 + 4, cArr);
            i15 += 6;
            visitModule.visitRequire(readModule, readUnsignedShort3, readUTF8);
            readUnsignedShort2 = i16;
        }
        int readUnsignedShort4 = readUnsignedShort(i15);
        int i17 = i15 + 2;
        while (true) {
            int i18 = readUnsignedShort4 - 1;
            String[] strArr2 = null;
            if (readUnsignedShort4 <= 0) {
                break;
            }
            String readPackage = readPackage(i17, cArr);
            int readUnsignedShort5 = readUnsignedShort(i17 + 2);
            int readUnsignedShort6 = readUnsignedShort(i17 + 4);
            i17 += 6;
            if (readUnsignedShort6 != 0) {
                strArr2 = new String[readUnsignedShort6];
                for (int i19 = 0; i19 < readUnsignedShort6; i19++) {
                    strArr2[i19] = readModule(i17, cArr);
                    i17 += 2;
                }
            }
            visitModule.visitExport(readPackage, readUnsignedShort5, strArr2);
            readUnsignedShort4 = i18;
        }
        int readUnsignedShort7 = readUnsignedShort(i17);
        int i20 = i17 + 2;
        while (true) {
            int i21 = readUnsignedShort7 - 1;
            if (readUnsignedShort7 <= 0) {
                break;
            }
            String readPackage2 = readPackage(i20, cArr);
            int readUnsignedShort8 = readUnsignedShort(i20 + 2);
            int readUnsignedShort9 = readUnsignedShort(i20 + 4);
            i20 += 6;
            if (readUnsignedShort9 != 0) {
                strArr = new String[readUnsignedShort9];
                for (int i22 = 0; i22 < readUnsignedShort9; i22++) {
                    strArr[i22] = readModule(i20, cArr);
                    i20 += 2;
                }
            } else {
                strArr = null;
            }
            visitModule.visitOpen(readPackage2, readUnsignedShort8, strArr);
            readUnsignedShort7 = i21;
        }
        int readUnsignedShort10 = readUnsignedShort(i20);
        int i23 = i20 + 2;
        while (true) {
            int i24 = readUnsignedShort10 - 1;
            if (readUnsignedShort10 <= 0) {
                break;
            }
            visitModule.visitUse(readClass(i23, cArr));
            i23 += 2;
            readUnsignedShort10 = i24;
        }
        int readUnsignedShort11 = readUnsignedShort(i23);
        int i25 = i23 + 2;
        while (true) {
            int i26 = readUnsignedShort11 - 1;
            if (readUnsignedShort11 <= 0) {
                visitModule.visitEnd();
                return;
            }
            String readClass = readClass(i25, cArr);
            int readUnsignedShort12 = readUnsignedShort(i25 + 2);
            i25 += 4;
            String[] strArr3 = new String[readUnsignedShort12];
            for (int i27 = 0; i27 < readUnsignedShort12; i27++) {
                strArr3[i27] = readClass(i25, cArr);
                i25 += 2;
            }
            visitModule.visitProvide(readClass, strArr3);
            readUnsignedShort11 = i26;
        }
    }

    private void readParameterAnnotations(MethodVisitor methodVisitor, Context context, int i10, boolean z10) {
        int i11 = i10 + 1;
        int i12 = this.classFileBuffer[i10] & 255;
        methodVisitor.visitAnnotableParameterCount(i12, z10);
        char[] cArr = context.charBuffer;
        for (int i13 = 0; i13 < i12; i13++) {
            int readUnsignedShort = readUnsignedShort(i11);
            i11 += 2;
            while (true) {
                int i14 = readUnsignedShort - 1;
                if (readUnsignedShort > 0) {
                    i11 = readElementValues(methodVisitor.visitParameterAnnotation(i13, readUTF8(i11, cArr), z10), i11 + 2, true, cArr);
                    readUnsignedShort = i14;
                }
            }
        }
    }

    private int readRecordComponent(ClassVisitor classVisitor, Context context, int i10) {
        int i11;
        Context context2 = context;
        char[] cArr = context2.charBuffer;
        String readUTF8 = readUTF8(i10, cArr);
        String readUTF82 = readUTF8(i10 + 2, cArr);
        int readUnsignedShort = readUnsignedShort(i10 + 4);
        int i12 = i10 + 6;
        int i13 = 0;
        Attribute attribute = null;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        String str = null;
        while (true) {
            int i17 = readUnsignedShort - 1;
            if (readUnsignedShort <= 0) {
                break;
            }
            String readUTF83 = readUTF8(i12, cArr);
            int readInt = readInt(i12 + 2);
            int i18 = i12 + 6;
            if ("Signature".equals(readUTF83)) {
                str = readUTF8(i18, cArr);
                i11 = i18;
            } else if ("RuntimeVisibleAnnotations".equals(readUTF83)) {
                i16 = i18;
                i11 = i16;
            } else if (Attributes.NAME_RUNTIME_VISIBLE_TYPE_ANNOTATIONS.equals(readUTF83)) {
                i14 = i18;
                i11 = i14;
            } else if ("RuntimeInvisibleAnnotations".equals(readUTF83)) {
                i15 = i18;
                i11 = i15;
            } else if (Attributes.NAME_RUNTIME_INVISIBLE_TYPE_ANNOTATIONS.equals(readUTF83)) {
                i13 = i18;
                i11 = i13;
            } else {
                i11 = i18;
                Attribute attribute2 = attribute;
                attribute = readAttribute(context2.attributePrototypes, readUTF83, i11, readInt, cArr, -1, null);
                attribute.nextAttribute = attribute2;
                i16 = i16;
                i15 = i15;
                i14 = i14;
                i13 = i13;
            }
            i12 = i11 + readInt;
            context2 = context;
            readUnsignedShort = i17;
        }
        int i19 = i13;
        Attribute attribute3 = attribute;
        int i20 = i14;
        int i21 = i15;
        int i22 = i16;
        RecordComponentVisitor visitRecordComponent = classVisitor.visitRecordComponent(readUTF8, readUTF82, str);
        if (visitRecordComponent == null) {
            return i12;
        }
        if (i22 != 0) {
            int readUnsignedShort2 = readUnsignedShort(i22);
            int i23 = i22 + 2;
            while (true) {
                int i24 = readUnsignedShort2 - 1;
                if (readUnsignedShort2 <= 0) {
                    break;
                }
                i23 = readElementValues(visitRecordComponent.visitAnnotation(readUTF8(i23, cArr), true), i23 + 2, true, cArr);
                readUnsignedShort2 = i24;
            }
        }
        if (i21 != 0) {
            int readUnsignedShort3 = readUnsignedShort(i21);
            int i25 = i21 + 2;
            while (true) {
                int i26 = readUnsignedShort3 - 1;
                if (readUnsignedShort3 <= 0) {
                    break;
                }
                i25 = readElementValues(visitRecordComponent.visitAnnotation(readUTF8(i25, cArr), false), i25 + 2, true, cArr);
                readUnsignedShort3 = i26;
            }
        }
        if (i20 != 0) {
            int readUnsignedShort4 = readUnsignedShort(i20);
            int i27 = i20 + 2;
            while (true) {
                int i28 = readUnsignedShort4 - 1;
                if (readUnsignedShort4 <= 0) {
                    break;
                }
                int readTypeAnnotationTarget = readTypeAnnotationTarget(context, i27);
                i27 = readElementValues(visitRecordComponent.visitTypeAnnotation(context.currentTypeAnnotationTarget, context.currentTypeAnnotationTargetPath, readUTF8(readTypeAnnotationTarget, cArr), true), readTypeAnnotationTarget + 2, true, cArr);
                readUnsignedShort4 = i28;
            }
        }
        if (i19 != 0) {
            int readUnsignedShort5 = readUnsignedShort(i19);
            int i29 = i19 + 2;
            while (true) {
                int i30 = readUnsignedShort5 - 1;
                if (readUnsignedShort5 <= 0) {
                    break;
                }
                int readTypeAnnotationTarget2 = readTypeAnnotationTarget(context, i29);
                i29 = readElementValues(visitRecordComponent.visitTypeAnnotation(context.currentTypeAnnotationTarget, context.currentTypeAnnotationTargetPath, readUTF8(readTypeAnnotationTarget2, cArr), false), readTypeAnnotationTarget2 + 2, true, cArr);
                readUnsignedShort5 = i30;
            }
        }
        Attribute attribute4 = attribute3;
        while (attribute4 != null) {
            Attribute attribute5 = attribute4.nextAttribute;
            attribute4.nextAttribute = null;
            visitRecordComponent.visitAttribute(attribute4);
            attribute4 = attribute5;
        }
        visitRecordComponent.visitEnd();
        return i12;
    }

    private int readStackMapFrame(int i10, boolean z10, boolean z11, Context context) {
        int i11;
        int i12;
        char[] cArr = context.charBuffer;
        Label[] labelArr = context.currentMethodLabels;
        if (z10) {
            i11 = i10 + 1;
            i12 = this.classFileBuffer[i10] & 255;
        } else {
            context.currentFrameOffset = -1;
            i11 = i10;
            i12 = 255;
        }
        context.currentFrameLocalCountDelta = 0;
        if (i12 < 64) {
            context.currentFrameType = 3;
            context.currentFrameStackCount = 0;
        } else if (i12 < 128) {
            i12 -= 64;
            i11 = readVerificationTypeInfo(i11, context.currentFrameStackTypes, 0, cArr, labelArr);
            context.currentFrameType = 4;
            context.currentFrameStackCount = 1;
        } else {
            if (i12 < 247) {
                throw new IllegalArgumentException();
            }
            int readUnsignedShort = readUnsignedShort(i11);
            int i13 = i11 + 2;
            if (i12 == 247) {
                i11 = readVerificationTypeInfo(i13, context.currentFrameStackTypes, 0, cArr, labelArr);
                context.currentFrameType = 4;
                context.currentFrameStackCount = 1;
            } else {
                if (i12 >= 248 && i12 < 251) {
                    context.currentFrameType = 2;
                    int i14 = 251 - i12;
                    context.currentFrameLocalCountDelta = i14;
                    context.currentFrameLocalCount -= i14;
                    context.currentFrameStackCount = 0;
                } else if (i12 == 251) {
                    context.currentFrameType = 3;
                    context.currentFrameStackCount = 0;
                } else if (i12 < 255) {
                    int i15 = i12 - 251;
                    int i16 = z11 ? context.currentFrameLocalCount : 0;
                    i11 = i13;
                    int i17 = i15;
                    while (i17 > 0) {
                        i11 = readVerificationTypeInfo(i11, context.currentFrameLocalTypes, i16, cArr, labelArr);
                        i17--;
                        i16++;
                    }
                    context.currentFrameType = 1;
                    context.currentFrameLocalCountDelta = i15;
                    context.currentFrameLocalCount += i15;
                    context.currentFrameStackCount = 0;
                } else {
                    int readUnsignedShort2 = readUnsignedShort(i13);
                    int i18 = i11 + 4;
                    context.currentFrameType = 0;
                    context.currentFrameLocalCountDelta = readUnsignedShort2;
                    context.currentFrameLocalCount = readUnsignedShort2;
                    for (int i19 = 0; i19 < readUnsignedShort2; i19++) {
                        i18 = readVerificationTypeInfo(i18, context.currentFrameLocalTypes, i19, cArr, labelArr);
                    }
                    int readUnsignedShort3 = readUnsignedShort(i18);
                    i11 = i18 + 2;
                    context.currentFrameStackCount = readUnsignedShort3;
                    for (int i20 = 0; i20 < readUnsignedShort3; i20++) {
                        i11 = readVerificationTypeInfo(i11, context.currentFrameStackTypes, i20, cArr, labelArr);
                    }
                }
                i11 = i13;
            }
            i12 = readUnsignedShort;
        }
        int i21 = context.currentFrameOffset + i12 + 1;
        context.currentFrameOffset = i21;
        createLabel(i21, labelArr);
        return i11;
    }

    private static byte[] readStream(InputStream inputStream, boolean z10) throws IOException {
        if (inputStream == null) {
            throw new IOException("Class not found");
        }
        int computeBufferSize = computeBufferSize(inputStream);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byte[] bArr = new byte[computeBufferSize];
                int i10 = 0;
                while (true) {
                    int read = inputStream.read(bArr, 0, computeBufferSize);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                    i10++;
                }
                byteArrayOutputStream.flush();
                if (i10 == 1) {
                    byteArrayOutputStream.close();
                    return bArr;
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
                if (z10) {
                    inputStream.close();
                }
                return byteArray;
            } catch (Throwable th2) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable unused) {
                }
                throw th2;
            }
        } finally {
            if (z10) {
                inputStream.close();
            }
        }
    }

    private String readStringish(int i10, char[] cArr) {
        return readUTF8(this.cpInfoOffsets[readUnsignedShort(i10)], cArr);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x000d. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0010. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:13:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int readTypeAnnotationTarget(Context context, int i10) {
        int i11;
        int i12;
        int readInt = readInt(i10);
        int i13 = readInt >>> 24;
        if (i13 != 0 && i13 != 1) {
            switch (i13) {
                case 16:
                case 17:
                case 18:
                case 23:
                    i11 = readInt & (-256);
                    i12 = i10 + 3;
                    context.currentTypeAnnotationTarget = i11;
                    int readByte = readByte(i12);
                    context.currentTypeAnnotationTargetPath = readByte != 0 ? null : new TypePath(this.classFileBuffer, i12);
                    return i12 + 1 + (readByte * 2);
                case 19:
                case 20:
                case 21:
                    i11 = readInt & (-16777216);
                    i12 = i10 + 1;
                    context.currentTypeAnnotationTarget = i11;
                    int readByte2 = readByte(i12);
                    context.currentTypeAnnotationTargetPath = readByte2 != 0 ? null : new TypePath(this.classFileBuffer, i12);
                    return i12 + 1 + (readByte2 * 2);
                case 22:
                    break;
                default:
                    switch (i13) {
                        case 64:
                        case 65:
                            i11 = readInt & (-16777216);
                            int readUnsignedShort = readUnsignedShort(i10 + 1);
                            i12 = i10 + 3;
                            context.currentLocalVariableAnnotationRangeStarts = new Label[readUnsignedShort];
                            context.currentLocalVariableAnnotationRangeEnds = new Label[readUnsignedShort];
                            context.currentLocalVariableAnnotationRangeIndices = new int[readUnsignedShort];
                            for (int i14 = 0; i14 < readUnsignedShort; i14++) {
                                int readUnsignedShort2 = readUnsignedShort(i12);
                                int readUnsignedShort3 = readUnsignedShort(i12 + 2);
                                int readUnsignedShort4 = readUnsignedShort(i12 + 4);
                                i12 += 6;
                                context.currentLocalVariableAnnotationRangeStarts[i14] = createLabel(readUnsignedShort2, context.currentMethodLabels);
                                context.currentLocalVariableAnnotationRangeEnds[i14] = createLabel(readUnsignedShort2 + readUnsignedShort3, context.currentMethodLabels);
                                context.currentLocalVariableAnnotationRangeIndices[i14] = readUnsignedShort4;
                            }
                            context.currentTypeAnnotationTarget = i11;
                            int readByte22 = readByte(i12);
                            context.currentTypeAnnotationTargetPath = readByte22 != 0 ? null : new TypePath(this.classFileBuffer, i12);
                            return i12 + 1 + (readByte22 * 2);
                        case 66:
                            break;
                        case 67:
                        case 68:
                        case 69:
                        case 70:
                            i11 = readInt & (-16777216);
                            i12 = i10 + 3;
                            context.currentTypeAnnotationTarget = i11;
                            int readByte222 = readByte(i12);
                            context.currentTypeAnnotationTargetPath = readByte222 != 0 ? null : new TypePath(this.classFileBuffer, i12);
                            return i12 + 1 + (readByte222 * 2);
                        case 71:
                        case 72:
                        case 73:
                        case 74:
                        case 75:
                            i11 = readInt & (-16776961);
                            i12 = i10 + 4;
                            context.currentTypeAnnotationTarget = i11;
                            int readByte2222 = readByte(i12);
                            context.currentTypeAnnotationTargetPath = readByte2222 != 0 ? null : new TypePath(this.classFileBuffer, i12);
                            return i12 + 1 + (readByte2222 * 2);
                        default:
                            throw new IllegalArgumentException();
                    }
            }
        }
        i11 = readInt & (-65536);
        i12 = i10 + 2;
        context.currentTypeAnnotationTarget = i11;
        int readByte22222 = readByte(i12);
        context.currentTypeAnnotationTargetPath = readByte22222 != 0 ? null : new TypePath(this.classFileBuffer, i12);
        return i12 + 1 + (readByte22222 * 2);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0019. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int[] readTypeAnnotations(MethodVisitor methodVisitor, Context context, int i10, boolean z10) {
        int i11;
        char[] cArr = context.charBuffer;
        int readUnsignedShort = readUnsignedShort(i10);
        int[] iArr = new int[readUnsignedShort];
        int i12 = i10 + 2;
        for (int i13 = 0; i13 < readUnsignedShort; i13++) {
            iArr[i13] = i12;
            int readInt = readInt(i12);
            int i14 = readInt >>> 24;
            if (i14 != 23) {
                switch (i14) {
                    default:
                        switch (i14) {
                            case 64:
                            case 65:
                                int readUnsignedShort2 = readUnsignedShort(i12 + 1);
                                i11 = i12 + 3;
                                while (true) {
                                    int i15 = readUnsignedShort2 - 1;
                                    if (readUnsignedShort2 <= 0) {
                                        break;
                                    } else {
                                        int readUnsignedShort3 = readUnsignedShort(i11);
                                        int readUnsignedShort4 = readUnsignedShort(i11 + 2);
                                        i11 += 6;
                                        createLabel(readUnsignedShort3, context.currentMethodLabels);
                                        createLabel(readUnsignedShort3 + readUnsignedShort4, context.currentMethodLabels);
                                        readUnsignedShort2 = i15;
                                    }
                                }
                            case 66:
                            case 67:
                            case 68:
                            case 69:
                            case 70:
                                break;
                            case 71:
                            case 72:
                            case 73:
                            case 74:
                            case 75:
                                i11 = i12 + 4;
                                break;
                            default:
                                throw new IllegalArgumentException();
                        }
                        int readByte = readByte(i11);
                        if (i14 == 66) {
                            TypePath typePath = readByte != 0 ? new TypePath(this.classFileBuffer, i11) : null;
                            int i16 = i11 + (readByte * 2) + 1;
                            i12 = readElementValues(methodVisitor.visitTryCatchAnnotation(readInt & (-256), typePath, readUTF8(i16, cArr), z10), i16 + 2, true, cArr);
                        } else {
                            i12 = readElementValues(null, i11 + (readByte * 2) + 3, true, cArr);
                        }
                    case 16:
                    case 17:
                    case 18:
                        i11 = i12 + 3;
                        int readByte2 = readByte(i11);
                        if (i14 == 66) {
                        }
                        break;
                }
            }
            i11 = i12 + 3;
            int readByte22 = readByte(i11);
            if (i14 == 66) {
            }
        }
        return iArr;
    }

    private int readVerificationTypeInfo(int i10, Object[] objArr, int i11, char[] cArr, Label[] labelArr) {
        int i12 = i10 + 1;
        switch (this.classFileBuffer[i10] & 255) {
            case 0:
                objArr[i11] = Opcodes.TOP;
                return i12;
            case 1:
                objArr[i11] = Opcodes.INTEGER;
                return i12;
            case 2:
                objArr[i11] = Opcodes.FLOAT;
                return i12;
            case 3:
                objArr[i11] = Opcodes.DOUBLE;
                return i12;
            case 4:
                objArr[i11] = Opcodes.LONG;
                return i12;
            case 5:
                objArr[i11] = Opcodes.NULL;
                return i12;
            case 6:
                objArr[i11] = Opcodes.UNINITIALIZED_THIS;
                return i12;
            case 7:
                objArr[i11] = readClass(i12, cArr);
                break;
            case 8:
                objArr[i11] = createLabel(readUnsignedShort(i12), labelArr);
                break;
            default:
                throw new IllegalArgumentException();
        }
        return i10 + 3;
    }

    public void accept(ClassVisitor classVisitor, int i10) {
        accept(classVisitor, new Attribute[0], i10);
    }

    public int getAccess() {
        return readUnsignedShort(this.header);
    }

    public String getClassName() {
        return readClass(this.header + 2, new char[this.maxStringLength]);
    }

    public final int getFirstAttributeOffset() {
        int i10 = this.header;
        int readUnsignedShort = i10 + 8 + (readUnsignedShort(i10 + 6) * 2);
        int readUnsignedShort2 = readUnsignedShort(readUnsignedShort);
        int i11 = readUnsignedShort + 2;
        while (true) {
            int i12 = readUnsignedShort2 - 1;
            if (readUnsignedShort2 <= 0) {
                break;
            }
            int readUnsignedShort3 = readUnsignedShort(i11 + 6);
            i11 += 8;
            while (true) {
                int i13 = readUnsignedShort3 - 1;
                if (readUnsignedShort3 > 0) {
                    i11 += readInt(i11 + 2) + 6;
                    readUnsignedShort3 = i13;
                }
            }
            readUnsignedShort2 = i12;
        }
        int readUnsignedShort4 = readUnsignedShort(i11);
        int i14 = i11 + 2;
        while (true) {
            int i15 = readUnsignedShort4 - 1;
            if (readUnsignedShort4 <= 0) {
                return i14 + 2;
            }
            int readUnsignedShort5 = readUnsignedShort(i14 + 6);
            i14 += 8;
            while (true) {
                int i16 = readUnsignedShort5 - 1;
                if (readUnsignedShort5 > 0) {
                    i14 += readInt(i14 + 2) + 6;
                    readUnsignedShort5 = i16;
                }
            }
            readUnsignedShort4 = i15;
        }
    }

    public String[] getInterfaces() {
        int i10 = this.header + 6;
        int readUnsignedShort = readUnsignedShort(i10);
        String[] strArr = new String[readUnsignedShort];
        if (readUnsignedShort > 0) {
            char[] cArr = new char[this.maxStringLength];
            for (int i11 = 0; i11 < readUnsignedShort; i11++) {
                i10 += 2;
                strArr[i11] = readClass(i10, cArr);
            }
        }
        return strArr;
    }

    public int getItem(int i10) {
        return this.cpInfoOffsets[i10];
    }

    public int getItemCount() {
        return this.cpInfoOffsets.length;
    }

    public int getMaxStringLength() {
        return this.maxStringLength;
    }

    public String getSuperName() {
        return readClass(this.header + 4, new char[this.maxStringLength]);
    }

    public int readByte(int i10) {
        return this.classFileBuffer[i10] & 255;
    }

    public void readBytecodeInstructionOffset(int i10) {
    }

    public String readClass(int i10, char[] cArr) {
        return readStringish(i10, cArr);
    }

    public Object readConst(int i10, char[] cArr) {
        int i11 = this.cpInfoOffsets[i10];
        byte b10 = this.classFileBuffer[i11 - 1];
        switch (b10) {
            case 3:
                return Integer.valueOf(readInt(i11));
            case 4:
                return Float.valueOf(Float.intBitsToFloat(readInt(i11)));
            case 5:
                return Long.valueOf(readLong(i11));
            case 6:
                return Double.valueOf(Double.longBitsToDouble(readLong(i11)));
            case 7:
                return Type.getObjectType(readUTF8(i11, cArr));
            case 8:
                return readUTF8(i11, cArr);
            default:
                switch (b10) {
                    case 15:
                        int readByte = readByte(i11);
                        int i12 = this.cpInfoOffsets[readUnsignedShort(i11 + 1)];
                        int i13 = this.cpInfoOffsets[readUnsignedShort(i12 + 2)];
                        return new Handle(readByte, readClass(i12, cArr), readUTF8(i13, cArr), readUTF8(i13 + 2, cArr), this.classFileBuffer[i12 - 1] == 11);
                    case 16:
                        return Type.getMethodType(readUTF8(i11, cArr));
                    case 17:
                        return readConstantDynamic(i10, cArr);
                    default:
                        throw new IllegalArgumentException();
                }
        }
    }

    public int readInt(int i10) {
        byte[] bArr = this.classFileBuffer;
        return (bArr[i10 + 3] & 255) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
    }

    public Label readLabel(int i10, Label[] labelArr) {
        if (labelArr[i10] == null) {
            labelArr[i10] = new Label();
        }
        return labelArr[i10];
    }

    public long readLong(int i10) {
        return (readInt(i10) << 32) | (readInt(i10 + 4) & 4294967295L);
    }

    public String readModule(int i10, char[] cArr) {
        return readStringish(i10, cArr);
    }

    public String readPackage(int i10, char[] cArr) {
        return readStringish(i10, cArr);
    }

    public short readShort(int i10) {
        byte[] bArr = this.classFileBuffer;
        return (short) ((bArr[i10 + 1] & 255) | ((bArr[i10] & 255) << 8));
    }

    public String readUTF8(int i10, char[] cArr) {
        int readUnsignedShort = readUnsignedShort(i10);
        if (i10 == 0 || readUnsignedShort == 0) {
            return null;
        }
        return readUtf(readUnsignedShort, cArr);
    }

    public int readUnsignedShort(int i10) {
        byte[] bArr = this.classFileBuffer;
        return (bArr[i10 + 1] & 255) | ((bArr[i10] & 255) << 8);
    }

    public final String readUtf(int i10, char[] cArr) {
        String[] strArr = this.constantUtf8Values;
        String str = strArr[i10];
        if (str != null) {
            return str;
        }
        int i11 = this.cpInfoOffsets[i10];
        String readUtf = readUtf(i11 + 2, readUnsignedShort(i11), cArr);
        strArr[i10] = readUtf;
        return readUtf;
    }

    public ClassReader(byte[] bArr, int i10, int i11) {
        this(bArr, i10, true);
    }

    public void accept(ClassVisitor classVisitor, Attribute[] attributeArr, int i10) {
        int i11;
        int i12;
        int i13;
        String[] strArr;
        Context context = new Context();
        context.attributePrototypes = attributeArr;
        context.parsingOptions = i10;
        char[] cArr = new char[this.maxStringLength];
        context.charBuffer = cArr;
        int i14 = this.header;
        int readUnsignedShort = readUnsignedShort(i14);
        String readClass = readClass(i14 + 2, cArr);
        String readClass2 = readClass(i14 + 4, cArr);
        int readUnsignedShort2 = readUnsignedShort(i14 + 6);
        String[] strArr2 = new String[readUnsignedShort2];
        int i15 = i14 + 8;
        for (int i16 = 0; i16 < readUnsignedShort2; i16++) {
            strArr2[i16] = readClass(i15, cArr);
            i15 += 2;
        }
        int firstAttributeOffset = getFirstAttributeOffset();
        int i17 = readUnsignedShort;
        int readUnsignedShort3 = readUnsignedShort(firstAttributeOffset - 2);
        String str = null;
        String str2 = null;
        int i18 = 0;
        String str3 = null;
        int i19 = 0;
        String str4 = null;
        String str5 = null;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        Attribute attribute = null;
        int i26 = 0;
        int i27 = 0;
        int i28 = 0;
        while (readUnsignedShort3 > 0) {
            String readUTF8 = readUTF8(firstAttributeOffset, cArr);
            int readInt = readInt(firstAttributeOffset + 2);
            int i29 = firstAttributeOffset + 6;
            String str6 = str;
            if ("SourceFile".equals(readUTF8)) {
                i11 = i29;
                str2 = readUTF8(i29, cArr);
            } else if ("InnerClasses".equals(readUTF8)) {
                i27 = i29;
                i11 = i27;
            } else if ("EnclosingMethod".equals(readUTF8)) {
                i20 = i29;
                i11 = i20;
            } else if (Attributes.NAME_NEST_HOST.equals(readUTF8)) {
                i11 = i29;
                str5 = readClass(i29, cArr);
            } else if (Attributes.NAME_NEST_MEMBERS.equals(readUTF8)) {
                i25 = i29;
                i11 = i25;
            } else if (Attributes.NAME_PERMITTED_SUBCLASSES.equals(readUTF8)) {
                i26 = i29;
                i11 = i26;
            } else {
                if ("Signature".equals(readUTF8)) {
                    str3 = readUTF8(i29, cArr);
                } else if ("RuntimeVisibleAnnotations".equals(readUTF8)) {
                    i21 = i29;
                    i11 = i21;
                } else if (Attributes.NAME_RUNTIME_VISIBLE_TYPE_ANNOTATIONS.equals(readUTF8)) {
                    i23 = i29;
                    i11 = i23;
                } else if ("Deprecated".equals(readUTF8)) {
                    i17 |= 131072;
                } else if ("Synthetic".equals(readUTF8)) {
                    i17 |= 4096;
                } else if ("SourceDebugExtension".equals(readUTF8)) {
                    if (readInt <= this.classFileBuffer.length - i29) {
                        str = readUtf(i29, readInt, new char[readInt]);
                        i11 = i29;
                        i12 = i15;
                        i13 = readInt;
                        strArr = strArr2;
                        firstAttributeOffset = i11 + i13;
                        readUnsignedShort3--;
                        strArr2 = strArr;
                        i15 = i12;
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else if ("RuntimeInvisibleAnnotations".equals(readUTF8)) {
                    i22 = i29;
                    i11 = i22;
                } else if (Attributes.NAME_RUNTIME_INVISIBLE_TYPE_ANNOTATIONS.equals(readUTF8)) {
                    i24 = i29;
                    i11 = i24;
                } else if (Attributes.NAME_RECORD.equals(readUTF8)) {
                    i17 |= 65536;
                    i28 = i29;
                    i11 = i28;
                } else if (Attributes.NAME_MODULE.equals(readUTF8)) {
                    i18 = i29;
                    i11 = i18;
                } else if (Attributes.NAME_MODULE_MAIN_CLASS.equals(readUTF8)) {
                    str4 = readClass(i29, cArr);
                } else if (Attributes.NAME_MODULE_PACKAGES.equals(readUTF8)) {
                    i19 = i29;
                    i11 = i19;
                } else {
                    if (Attributes.NAME_BOOTSTRAP_METHODS.equals(readUTF8)) {
                        i11 = i29;
                        i12 = i15;
                        i13 = readInt;
                        strArr = strArr2;
                        str = str6;
                    } else {
                        i11 = i29;
                        i12 = i15;
                        i13 = readInt;
                        strArr = strArr2;
                        Attribute readAttribute = readAttribute(attributeArr, readUTF8, i11, readInt, cArr, -1, null);
                        readAttribute.nextAttribute = attribute;
                        attribute = readAttribute;
                        i17 = i17;
                        str = str6;
                        str2 = str2;
                    }
                    firstAttributeOffset = i11 + i13;
                    readUnsignedShort3--;
                    strArr2 = strArr;
                    i15 = i12;
                }
                i11 = i29;
            }
            i12 = i15;
            i13 = readInt;
            strArr = strArr2;
            str = str6;
            firstAttributeOffset = i11 + i13;
            readUnsignedShort3--;
            strArr2 = strArr;
            i15 = i12;
        }
        String str7 = str;
        String str8 = str2;
        int i30 = i15;
        String[] strArr3 = strArr2;
        Attribute attribute2 = attribute;
        classVisitor.visit(readInt(this.cpInfoOffsets[1] - 7), i17, readClass, str3, readClass2, strArr3);
        if ((i10 & 2) == 0 && (str8 != null || str7 != null)) {
            classVisitor.visitSource(str8, str7);
        }
        if (i18 != 0) {
            readModuleAttributes(classVisitor, context, i18, i19, str4);
        }
        String str9 = str5;
        if (str9 != null) {
            classVisitor.visitNestHost(str9);
        }
        int i31 = i20;
        if (i31 != 0) {
            String readClass3 = readClass(i31, cArr);
            int readUnsignedShort4 = readUnsignedShort(i31 + 2);
            classVisitor.visitOuterClass(readClass3, readUnsignedShort4 == 0 ? null : readUTF8(this.cpInfoOffsets[readUnsignedShort4], cArr), readUnsignedShort4 == 0 ? null : readUTF8(this.cpInfoOffsets[readUnsignedShort4] + 2, cArr));
        }
        int i32 = i21;
        if (i32 != 0) {
            int readUnsignedShort5 = readUnsignedShort(i32);
            int i33 = i32 + 2;
            while (true) {
                int i34 = readUnsignedShort5 - 1;
                if (readUnsignedShort5 <= 0) {
                    break;
                }
                i33 = readElementValues(classVisitor.visitAnnotation(readUTF8(i33, cArr), true), i33 + 2, true, cArr);
                readUnsignedShort5 = i34;
            }
        }
        int i35 = i22;
        if (i35 != 0) {
            int readUnsignedShort6 = readUnsignedShort(i35);
            int i36 = i35 + 2;
            while (true) {
                int i37 = readUnsignedShort6 - 1;
                if (readUnsignedShort6 <= 0) {
                    break;
                }
                i36 = readElementValues(classVisitor.visitAnnotation(readUTF8(i36, cArr), false), i36 + 2, true, cArr);
                readUnsignedShort6 = i37;
            }
        }
        int i38 = i23;
        if (i38 != 0) {
            int readUnsignedShort7 = readUnsignedShort(i38);
            int i39 = i38 + 2;
            while (true) {
                int i40 = readUnsignedShort7 - 1;
                if (readUnsignedShort7 <= 0) {
                    break;
                }
                int readTypeAnnotationTarget = readTypeAnnotationTarget(context, i39);
                i39 = readElementValues(classVisitor.visitTypeAnnotation(context.currentTypeAnnotationTarget, context.currentTypeAnnotationTargetPath, readUTF8(readTypeAnnotationTarget, cArr), true), readTypeAnnotationTarget + 2, true, cArr);
                readUnsignedShort7 = i40;
            }
        }
        int i41 = i24;
        if (i41 != 0) {
            int readUnsignedShort8 = readUnsignedShort(i41);
            int i42 = i41 + 2;
            while (true) {
                int i43 = readUnsignedShort8 - 1;
                if (readUnsignedShort8 <= 0) {
                    break;
                }
                int readTypeAnnotationTarget2 = readTypeAnnotationTarget(context, i42);
                i42 = readElementValues(classVisitor.visitTypeAnnotation(context.currentTypeAnnotationTarget, context.currentTypeAnnotationTargetPath, readUTF8(readTypeAnnotationTarget2, cArr), false), readTypeAnnotationTarget2 + 2, true, cArr);
                readUnsignedShort8 = i43;
            }
        }
        while (attribute2 != null) {
            Attribute attribute3 = attribute2.nextAttribute;
            attribute2.nextAttribute = null;
            classVisitor.visitAttribute(attribute2);
            attribute2 = attribute3;
        }
        int i44 = i25;
        if (i44 != 0) {
            int readUnsignedShort9 = readUnsignedShort(i44);
            int i45 = i44 + 2;
            while (true) {
                int i46 = readUnsignedShort9 - 1;
                if (readUnsignedShort9 <= 0) {
                    break;
                }
                classVisitor.visitNestMember(readClass(i45, cArr));
                i45 += 2;
                readUnsignedShort9 = i46;
            }
        }
        int i47 = i26;
        if (i47 != 0) {
            int readUnsignedShort10 = readUnsignedShort(i47);
            int i48 = i47 + 2;
            while (true) {
                int i49 = readUnsignedShort10 - 1;
                if (readUnsignedShort10 <= 0) {
                    break;
                }
                classVisitor.visitPermittedSubclass(readClass(i48, cArr));
                i48 += 2;
                readUnsignedShort10 = i49;
            }
        }
        int i50 = i27;
        if (i50 != 0) {
            int readUnsignedShort11 = readUnsignedShort(i50);
            int i51 = i50 + 2;
            while (true) {
                int i52 = readUnsignedShort11 - 1;
                if (readUnsignedShort11 <= 0) {
                    break;
                }
                classVisitor.visitInnerClass(readClass(i51, cArr), readClass(i51 + 2, cArr), readUTF8(i51 + 4, cArr), readUnsignedShort(i51 + 6));
                i51 += 8;
                readUnsignedShort11 = i52;
            }
        }
        int i53 = i28;
        if (i53 != 0) {
            int readUnsignedShort12 = readUnsignedShort(i53);
            int i54 = i53 + 2;
            while (true) {
                int i55 = readUnsignedShort12 - 1;
                if (readUnsignedShort12 <= 0) {
                    break;
                }
                i54 = readRecordComponent(classVisitor, context, i54);
                readUnsignedShort12 = i55;
            }
        }
        int readUnsignedShort13 = readUnsignedShort(i30);
        int i56 = i30 + 2;
        while (true) {
            int i57 = readUnsignedShort13 - 1;
            if (readUnsignedShort13 <= 0) {
                break;
            }
            i56 = readField(classVisitor, context, i56);
            readUnsignedShort13 = i57;
        }
        int readUnsignedShort14 = readUnsignedShort(i56);
        int i58 = i56 + 2;
        while (true) {
            int i59 = readUnsignedShort14 - 1;
            if (readUnsignedShort14 > 0) {
                i58 = readMethod(classVisitor, context, i58);
                readUnsignedShort14 = i59;
            } else {
                classVisitor.visitEnd();
                return;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x0052. Please report as an issue. */
    public ClassReader(byte[] bArr, int i10, boolean z10) {
        this.classFileBuffer = bArr;
        this.f102849b = bArr;
        if (z10) {
            int i11 = i10 + 6;
            if (readShort(i11) > 65) {
                throw new IllegalArgumentException("Unsupported class file major version " + ((int) readShort(i11)));
            }
        }
        int readUnsignedShort = readUnsignedShort(i10 + 8);
        this.cpInfoOffsets = new int[readUnsignedShort];
        this.constantUtf8Values = new String[readUnsignedShort];
        int i12 = i10 + 10;
        int i13 = 0;
        boolean z11 = false;
        boolean z12 = false;
        int i14 = 1;
        while (i14 < readUnsignedShort) {
            int i15 = i14 + 1;
            int i16 = i12 + 1;
            this.cpInfoOffsets[i14] = i16;
            int i17 = 3;
            switch (bArr[i12]) {
                case 1:
                    i17 = 3 + readUnsignedShort(i16);
                    if (i17 > i13) {
                        i14 = i15;
                        i13 = i17;
                        i12 += i17;
                    }
                    i14 = i15;
                    i12 += i17;
                case 2:
                case 13:
                case 14:
                default:
                    throw new IllegalArgumentException();
                case 3:
                case 4:
                case 9:
                case 10:
                case 11:
                case 12:
                    i14 = i15;
                    i17 = 5;
                    i12 += i17;
                case 5:
                case 6:
                    i14 += 2;
                    i17 = 9;
                    i12 += i17;
                case 7:
                case 8:
                case 16:
                case 19:
                case 20:
                    i14 = i15;
                    i12 += i17;
                case 15:
                    i17 = 4;
                    i14 = i15;
                    i12 += i17;
                case 17:
                    z11 = true;
                    z12 = true;
                    i14 = i15;
                    i17 = 5;
                    i12 += i17;
                case 18:
                    z12 = true;
                    i14 = i15;
                    i17 = 5;
                    i12 += i17;
            }
        }
        this.maxStringLength = i13;
        this.header = i12;
        this.constantDynamicValues = z11 ? new ConstantDynamic[readUnsignedShort] : null;
        this.bootstrapMethodOffsets = z12 ? readBootstrapMethodsAttribute(i13) : null;
    }

    private String readUtf(int i10, int i11, char[] cArr) {
        int i12;
        int i13 = i11 + i10;
        byte[] bArr = this.classFileBuffer;
        int i14 = 0;
        while (i10 < i13) {
            int i15 = i10 + 1;
            byte b10 = bArr[i10];
            if ((b10 & 128) == 0) {
                cArr[i14] = (char) (b10 & Byte.MAX_VALUE);
                i14++;
                i10 = i15;
            } else {
                if ((b10 & 224) == 192) {
                    i12 = i14 + 1;
                    i10 += 2;
                    cArr[i14] = (char) (((b10 & 31) << 6) + (bArr[i15] & org.eclipse.jdt.internal.compiler.codegen.Opcodes.OPC_lstore_0));
                } else {
                    i12 = i14 + 1;
                    int i16 = i10 + 2;
                    i10 += 3;
                    cArr[i14] = (char) (((b10 & 15) << 12) + ((bArr[i15] & org.eclipse.jdt.internal.compiler.codegen.Opcodes.OPC_lstore_0) << 6) + (bArr[i16] & org.eclipse.jdt.internal.compiler.codegen.Opcodes.OPC_lstore_0));
                }
                i14 = i12;
            }
        }
        return new String(cArr, 0, i14);
    }

    public ClassReader(InputStream inputStream) throws IOException {
        this(readStream(inputStream, false));
    }

    public ClassReader(String str) throws IOException {
        this(readStream(ClassLoader.getSystemResourceAsStream(str.replace('.', '/') + ".class"), true));
    }
}
