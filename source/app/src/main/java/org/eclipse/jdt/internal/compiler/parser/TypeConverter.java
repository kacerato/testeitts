package org.eclipse.jdt.internal.compiler.parser;

import java.util.ArrayList;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ArrayQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ArrayTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.Wildcard;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;

public abstract class TypeConverter {
    protected boolean has1_5Compliance;
    private char memberTypeSeparator;
    int namePos;
    protected ProblemReporter problemReporter;

    public TypeConverter(ProblemReporter problemReporter, char c10) {
        this.problemReporter = problemReporter;
        this.has1_5Compliance = problemReporter.options.originalComplianceLevel >= ClassFileConstants.JDK1_5;
        this.memberTypeSeparator = c10;
    }

    private void addIdentifiers(String str, int i10, int i11, int i12, ArrayList arrayList) {
        if (i12 != 1) {
            arrayList.add(extractIdentifiers(str, i10, i11 - 1, i12));
            return;
        }
        char[] cArr = new char[i11 - i10];
        str.getChars(i10, i11, cArr, 0);
        arrayList.add(cArr);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x023d, code lost:
    
        if (r13 != null) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x023f, code lost:
    
        if (r4 != 1) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0241, code lost:
    
        if (r15 != 0) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0243, code lost:
    
        r0 = new char[(r1 - r12) + 1];
        r21.getChars(r12, r1 + 1, r0, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0256, code lost:
    
        return new org.eclipse.jdt.internal.compiler.ast.SingleTypeReference(r0, (r23 << 32) + r24);
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0257, code lost:
    
        r0 = new char[(r1 - r12) + 1];
        r21.getChars(r12, r1 + 1, r0, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x026a, code lost:
    
        return new org.eclipse.jdt.internal.compiler.ast.ArrayTypeReference(r0, r15, (r23 << 32) + r24);
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x026b, code lost:
    
        r2 = new long[r4];
        r17 = (r23 << 32) + r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0273, code lost:
    
        if (r11 < r4) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0287, code lost:
    
        r2[r11] = r17;
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0275, code lost:
    
        r0 = extractIdentifiers(r21, r12, r1, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0279, code lost:
    
        if (r15 != 0) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0280, code lost:
    
        return new org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference(r0, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0286, code lost:
    
        return new org.eclipse.jdt.internal.compiler.ast.ArrayQualifiedTypeReference(r0, r15, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x028c, code lost:
    
        if (r0 == false) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x028e, code lost:
    
        addIdentifiers(r21, r12, r1 + 1, r4, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0299, code lost:
    
        r2 = r13.size();
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x029d, code lost:
    
        if (r2 != 2) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x029f, code lost:
    
        r0 = r13.get(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x02a5, code lost:
    
        if ((r0 instanceof char[]) == false) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x02c1, code lost:
    
        return new org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference((char[]) r0, (org.eclipse.jdt.internal.compiler.ast.TypeReference[]) r13.get(1), r15, (r23 << 32) + r24);
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x02c2, code lost:
    
        r5 = r15;
        r0 = 0;
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x02c5, code lost:
    
        if (r0 < r2) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0309, code lost:
    
        r3 = r13.get(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x030f, code lost:
    
        if ((r3 instanceof char[][]) == false) goto L165;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0311, code lost:
    
        r1 = r1 + ((char[][]) r3).length;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x031c, code lost:
    
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0318, code lost:
    
        if ((r3 instanceof char[]) == false) goto L203;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x031a, code lost:
    
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x02c7, code lost:
    
        r3 = new char[r1];
        r4 = new org.eclipse.jdt.internal.compiler.ast.TypeReference[r1];
        r0 = 0;
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x02cd, code lost:
    
        if (r0 < r2) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x02e4, code lost:
    
        r10 = r13.get(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x02ea, code lost:
    
        if ((r10 instanceof char[][]) == false) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x02ec, code lost:
    
        r10 = (char[][]) r10;
        r12 = r10.length;
        java.lang.System.arraycopy(r10, 0, r3, r7, r12);
        r7 = r7 + r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0306, code lost:
    
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x02f6, code lost:
    
        if ((r10 instanceof char[]) == false) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x02f8, code lost:
    
        r3[r7] = (char[]) r10;
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0300, code lost:
    
        r4[r7 - 1] = (org.eclipse.jdt.internal.compiler.ast.TypeReference[]) r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x02cf, code lost:
    
        r10 = new long[r1];
        r14 = (r23 << 32) + r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x02d7, code lost:
    
        if (r11 < r1) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x02df, code lost:
    
        r10[r11] = r14;
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x02de, code lost:
    
        return new org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference(r3, r4, r5, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x0235, code lost:
    
        r1 = r20.namePos;
        r20.namePos = r1 + 1;
        r1 = r1 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x0322, code lost:
    
        if (r20.memberTypeSeparator != '$') goto L177;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:40:0x006a. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private TypeReference decodeType(String str, int i10, int i11, int i12) {
        int i13;
        int i14 = 0;
        int i15 = -1;
        int i16 = this.namePos;
        ArrayList arrayList = null;
        int i17 = 1;
        boolean z10 = false;
        int i18 = 0;
        while (true) {
            int i19 = this.namePos;
            if (i19 < i10) {
                char charAt = str.charAt(i19);
                if (charAt == '$') {
                    i13 = i18;
                } else if (charAt != '>') {
                    if (charAt != 'F') {
                        if (charAt != 'L' && charAt != 'Q') {
                            if (charAt != 'V') {
                                if (charAt == '*') {
                                    this.namePos++;
                                    Wildcard wildcard = new Wildcard(0);
                                    wildcard.sourceStart = i11;
                                    wildcard.sourceEnd = i12;
                                    return wildcard;
                                }
                                if (charAt == '+') {
                                    this.namePos++;
                                    Wildcard wildcard2 = new Wildcard(1);
                                    wildcard2.bound = decodeType(str, i10, i11, i12);
                                    wildcard2.sourceStart = i11;
                                    wildcard2.sourceEnd = i12;
                                    return wildcard2;
                                }
                                if (charAt == '-') {
                                    this.namePos++;
                                    Wildcard wildcard3 = new Wildcard(2);
                                    wildcard3.bound = decodeType(str, i10, i11, i12);
                                    wildcard3.sourceStart = i11;
                                    wildcard3.sourceEnd = i12;
                                    return wildcard3;
                                }
                                if (charAt == '.') {
                                    i13 = i18;
                                    if (z10) {
                                        if (this.namePos > i16) {
                                            i17++;
                                        }
                                        i18 = i13;
                                    } else {
                                        i16 = this.namePos + 1;
                                        i18 = i13;
                                        z10 = true;
                                    }
                                } else if (charAt != ';') {
                                    if (charAt == '<') {
                                        int i20 = this.namePos;
                                        int i21 = i20 - 1;
                                        if (this.has1_5Compliance) {
                                            if (arrayList == null) {
                                                arrayList = new ArrayList(2);
                                            }
                                            addIdentifiers(str, i16, i20, i17, arrayList);
                                            this.namePos++;
                                            arrayList.add(decodeTypeArguments(str, i10, i11, i12));
                                            i17 = 1;
                                            z10 = false;
                                            i15 = i21;
                                        } else {
                                            i15 = i21;
                                        }
                                    } else if (charAt != 'I') {
                                        if (charAt != 'J') {
                                            if (charAt != 'S') {
                                                if (charAt != 'T') {
                                                    if (charAt != 'Z') {
                                                        if (charAt != '[') {
                                                            switch (charAt) {
                                                                case 'B':
                                                                    if (!z10) {
                                                                        this.namePos++;
                                                                        return i18 == 0 ? new SingleTypeReference(TypeBinding.BYTE.simpleName, (i11 << 32) + i12) : new ArrayTypeReference(TypeBinding.BYTE.simpleName, i18, (i11 << 32) + i12);
                                                                    }
                                                                    break;
                                                                case 'C':
                                                                    if (!z10) {
                                                                        this.namePos++;
                                                                        return i18 == 0 ? new SingleTypeReference(TypeBinding.CHAR.simpleName, (i11 << 32) + i12) : new ArrayTypeReference(TypeBinding.CHAR.simpleName, i18, (i11 << 32) + i12);
                                                                    }
                                                                    break;
                                                                case 'D':
                                                                    if (!z10) {
                                                                        this.namePos++;
                                                                        return i18 == 0 ? new SingleTypeReference(TypeBinding.DOUBLE.simpleName, (i11 << 32) + i12) : new ArrayTypeReference(TypeBinding.DOUBLE.simpleName, i18, (i11 << 32) + i12);
                                                                    }
                                                                    break;
                                                            }
                                                        } else {
                                                            i18++;
                                                        }
                                                    } else if (!z10) {
                                                        this.namePos++;
                                                        return i18 == 0 ? new SingleTypeReference(TypeBinding.BOOLEAN.simpleName, (i11 << 32) + i12) : new ArrayTypeReference(TypeBinding.BOOLEAN.simpleName, i18, (i11 << 32) + i12);
                                                    }
                                                }
                                            } else if (!z10) {
                                                this.namePos++;
                                                return i18 == 0 ? new SingleTypeReference(TypeBinding.SHORT.simpleName, (i11 << 32) + i12) : new ArrayTypeReference(TypeBinding.SHORT.simpleName, i18, (i11 << 32) + i12);
                                            }
                                        } else if (!z10) {
                                            this.namePos++;
                                            return i18 == 0 ? new SingleTypeReference(TypeBinding.LONG.simpleName, (i11 << 32) + i12) : new ArrayTypeReference(TypeBinding.LONG.simpleName, i18, (i11 << 32) + i12);
                                        }
                                    } else if (!z10) {
                                        this.namePos++;
                                        return i18 == 0 ? new SingleTypeReference(TypeBinding.INT.simpleName, (i11 << 32) + i12) : new ArrayTypeReference(TypeBinding.INT.simpleName, i18, (i11 << 32) + i12);
                                    }
                                }
                            } else if (!z10) {
                                this.namePos++;
                                return new SingleTypeReference(TypeBinding.VOID.simpleName, (i11 << 32) + i12);
                            }
                        }
                        if (!z10) {
                            i16 = this.namePos + 1;
                            z10 = true;
                        }
                    } else if (!z10) {
                        this.namePos++;
                        return i18 == 0 ? new SingleTypeReference(TypeBinding.FLOAT.simpleName, (i11 << 32) + i12) : new ArrayTypeReference(TypeBinding.FLOAT.simpleName, i18, (i11 << 32) + i12);
                    }
                    i13 = i18;
                    i18 = i13;
                }
                this.namePos++;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x010c, code lost:
    
        return decodeType3(r17, r18, r19, r20, r7, r8, r9, r11, r12);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private TypeReference decodeType2(char[] cArr, int i10, int i11, int i12, boolean z10) {
        char c10;
        char c11;
        int i13 = 1;
        int i14 = this.namePos;
        int i15 = 0;
        ArrayList arrayList = null;
        int i16 = -1;
        int i17 = 1;
        while (true) {
            int i18 = this.namePos;
            if (i18 >= i10 || (c10 = cArr[i18]) == ',') {
                break;
            }
            if (c10 == '.') {
                if (i14 < 0) {
                    i14 = i18 + 1;
                }
                i17++;
            } else if (c10 == '<') {
                if ((this.has1_5Compliance || z10) && arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                int i19 = this.namePos;
                i16 = i19 - 1;
                if (this.has1_5Compliance || z10) {
                    arrayList.add(CharOperation.splitOn('.', cArr, i14, i19));
                }
                this.namePos++;
                TypeReference[] decodeTypeArguments = decodeTypeArguments(cArr, i10, i11, i12, z10);
                if (this.has1_5Compliance || z10) {
                    arrayList.add(decodeTypeArguments);
                    i17 = 0;
                    i14 = -1;
                    i16 = -1;
                }
            } else if (c10 == '[') {
                if (i15 == 0 && i16 < 0) {
                    i16 = i18 - 1;
                }
                i15++;
            } else {
                if (c10 == '>') {
                    break;
                }
                if (c10 == '?') {
                    this.namePos = i18 + 1;
                    while (true) {
                        int i20 = this.namePos;
                        c11 = cArr[i20];
                        if (c11 != ' ') {
                            break;
                        }
                        this.namePos = i20 + 1;
                    }
                    if (c11 == 'e') {
                        int length = TypeConstants.WILDCARD_EXTENDS.length - 1;
                        int i21 = 1;
                        while (i21 < length) {
                            char c12 = cArr[this.namePos + i21];
                            i21++;
                            if (c12 != TypeConstants.WILDCARD_EXTENDS[i21]) {
                            }
                        }
                        this.namePos += length;
                        Wildcard wildcard = new Wildcard(1);
                        wildcard.bound = decodeType2(cArr, i10, i11, i12, z10);
                        wildcard.sourceStart = i11;
                        wildcard.sourceEnd = i12;
                        return wildcard;
                    }
                    if (c11 == 's') {
                        int length2 = TypeConstants.WILDCARD_SUPER.length - 1;
                        while (i13 < length2) {
                            char c13 = cArr[this.namePos + i13];
                            i13++;
                            if (c13 != TypeConstants.WILDCARD_SUPER[i13]) {
                            }
                        }
                        this.namePos += length2;
                        Wildcard wildcard2 = new Wildcard(2);
                        wildcard2.bound = decodeType2(cArr, i10, i11, i12, z10);
                        wildcard2.sourceStart = i11;
                        wildcard2.sourceEnd = i12;
                        return wildcard2;
                    }
                    Wildcard wildcard3 = new Wildcard(0);
                    wildcard3.sourceStart = i11;
                    wildcard3.sourceEnd = i12;
                    return wildcard3;
                }
            }
            this.namePos++;
        }
    }

    private TypeReference decodeType3(char[] cArr, int i10, int i11, int i12, int i13, int i14, int i15, int i16, ArrayList arrayList) {
        char[] cArr2 = cArr;
        int i17 = i16 < 0 ? this.namePos - 1 : i16;
        int i18 = 0;
        if (arrayList == null) {
            if (i13 != 1) {
                long[] jArr = new long[i13];
                long j10 = (i11 << 32) + i12;
                while (i18 < i13) {
                    jArr[i18] = j10;
                    i18++;
                }
                char[][] splitOn = CharOperation.splitOn('.', cArr2, i15, i17 + 1);
                return i14 == 0 ? new QualifiedTypeReference(splitOn, jArr) : new ArrayQualifiedTypeReference(splitOn, i14, jArr);
            }
            if (i14 != 0) {
                int i19 = (i17 - i15) + 1;
                char[] cArr3 = new char[i19];
                System.arraycopy(cArr2, i15, cArr3, 0, i19);
                return new ArrayTypeReference(cArr3, i14, (i11 << 32) + i12);
            }
            if (i15 != 0 || i17 >= 0) {
                int i20 = (i17 - i15) + 1;
                char[] cArr4 = new char[i20];
                System.arraycopy(cArr2, i15, cArr4, 0, i20);
                cArr2 = cArr4;
            }
            return new SingleTypeReference(cArr2, (i11 << 32) + i12);
        }
        if (i15 > 0 && i15 < i10) {
            arrayList.add(CharOperation.splitOn('.', cArr2, i15, i17 + 1));
        }
        int size = arrayList.size();
        if (size == 2) {
            char[][] cArr5 = (char[][]) arrayList.get(0);
            if (cArr5.length == 1) {
                return new ParameterizedSingleTypeReference(cArr5[0], (TypeReference[]) arrayList.get(1), i14, i12 + (i11 << 32));
            }
        }
        int i21 = 0;
        for (int i22 = 0; i22 < size; i22++) {
            Object obj = arrayList.get(i22);
            if (obj instanceof char[][]) {
                i21 += ((char[][]) obj).length;
            }
        }
        char[][] cArr6 = new char[i21];
        TypeReference[][] typeReferenceArr = new TypeReference[i21];
        int i23 = 0;
        for (int i24 = 0; i24 < size; i24++) {
            Object obj2 = arrayList.get(i24);
            if (obj2 instanceof char[][]) {
                char[][] cArr7 = (char[][]) obj2;
                int length = cArr7.length;
                System.arraycopy(cArr7, 0, cArr6, i23, length);
                i23 += length;
            } else {
                typeReferenceArr[i23 - 1] = (TypeReference[]) obj2;
            }
        }
        long[] jArr2 = new long[i21];
        long j11 = (i11 << 32) + i12;
        while (i18 < i21) {
            jArr2[i18] = j11;
            i18++;
        }
        return new ParameterizedQualifiedTypeReference(cArr6, typeReferenceArr, i14, jArr2);
    }

    private TypeReference[] decodeTypeArguments(char[] cArr, int i10, int i11, int i12, boolean z10) {
        ArrayList arrayList = new ArrayList(1);
        int i13 = 0;
        while (this.namePos < i10) {
            i13++;
            arrayList.add(decodeType2(cArr, i10, i11, i12, z10));
            int i14 = this.namePos;
            if (i14 >= i10 || cArr[i14] == '>') {
                break;
            }
            this.namePos = i14 + 1;
        }
        TypeReference[] typeReferenceArr = new TypeReference[i13];
        arrayList.toArray(typeReferenceArr);
        return typeReferenceArr;
    }

    private char[][] extractIdentifiers(String str, int i10, int i11, int i12) {
        char[][] cArr = new char[i12];
        int i13 = i10;
        int i14 = 0;
        while (i10 < i11) {
            char charAt = str.charAt(i10);
            if (charAt == this.memberTypeSeparator || charAt == '.') {
                char[] cArr2 = new char[i10 - i13];
                cArr[i14] = cArr2;
                str.getChars(i13, i10, cArr2, 0);
                i13 = i10 + 1;
                i10 = i13;
                i14++;
            } else {
                i10++;
            }
        }
        int i15 = i10 + 1;
        char[] cArr3 = new char[(i10 - i13) + 1];
        cArr[i14] = cArr3;
        str.getChars(i13, i15, cArr3, 0);
        return cArr;
    }

    public ImportReference createImportReference(String[] strArr, int i10, int i11, boolean z10, int i12) {
        int length = strArr.length;
        long[] jArr = new long[length];
        long j10 = (i10 << 32) + i11;
        char[][] cArr = new char[length];
        for (int i13 = 0; i13 < length; i13++) {
            cArr[i13] = strArr[i13].toCharArray();
            jArr[i13] = j10;
        }
        return new ImportReference(cArr, jArr, z10, i12);
    }

    public TypeParameter createTypeParameter(char[] cArr, char[][] cArr2, int i10, int i11) {
        int length;
        TypeParameter typeParameter = new TypeParameter();
        typeParameter.name = cArr;
        typeParameter.sourceStart = i10;
        typeParameter.sourceEnd = i11;
        if (cArr2 != null && (length = cArr2.length) > 0) {
            typeParameter.type = createTypeReference(cArr2[0], i10, i11);
            if (length > 1) {
                typeParameter.bounds = new TypeReference[length - 1];
                for (int i12 = 1; i12 < length; i12++) {
                    TypeReference createTypeReference = createTypeReference(cArr2[i12], i10, i11);
                    createTypeReference.bits |= 16;
                    typeParameter.bounds[i12 - 1] = createTypeReference;
                }
            }
        }
        return typeParameter;
    }

    public TypeReference createTypeReference(char[] cArr, int i10, int i11, boolean z10) {
        int length = cArr.length;
        this.namePos = 0;
        return decodeType2(cArr, length, i10, i11, true);
    }

    public TypeReference createTypeReference(char[] cArr, int i10, int i11) {
        int length = cArr.length;
        this.namePos = 0;
        return decodeType2(cArr, length, i10, i11, false);
    }

    public TypeReference createTypeReference(String str, int i10, int i11) {
        int length = str.length();
        this.namePos = 0;
        return decodeType(str, length, i10, i11);
    }

    private TypeReference[] decodeTypeArguments(String str, int i10, int i11, int i12) {
        ArrayList arrayList = new ArrayList(1);
        int i13 = 0;
        while (this.namePos < i10) {
            i13++;
            arrayList.add(decodeType(str, i10, i11, i12));
            int i14 = this.namePos;
            if (i14 >= i10 || str.charAt(i14) == '>') {
                break;
            }
        }
        TypeReference[] typeReferenceArr = new TypeReference[i13];
        arrayList.toArray(typeReferenceArr);
        return typeReferenceArr;
    }
}
