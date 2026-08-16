package org.eclipse.jdt.internal.core;

import java.lang.reflect.Array;
import java.util.Map;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.codeassist.impl.AssistOptions;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.compiler.util.SimpleSetOfCharArray;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class InternalNamingConventions {
    public static final int BK_SIMPLE_NAME = 1;
    public static final int BK_SIMPLE_TYPE_NAME = 2;
    private static final char[] DEFAULT_NAME = "name".toCharArray();
    public static final int VK_INSTANCE_FIELD = 2;
    public static final int VK_LOCAL = 5;
    public static final int VK_PARAMETER = 4;
    public static final int VK_STATIC_FIELD = 1;
    public static final int VK_STATIC_FINAL_FIELD = 3;

    private static void acceptName(char[] cArr, char[] cArr2, char[] cArr3, boolean z10, boolean z11, int i10, INamingRequestor iNamingRequestor) {
        if (cArr2.length > 0 && cArr3.length > 0) {
            iNamingRequestor.acceptNameWithPrefixAndSuffix(cArr, z10, z11, i10);
            return;
        }
        if (cArr2.length > 0) {
            iNamingRequestor.acceptNameWithPrefix(cArr, z10, i10);
        } else if (cArr3.length > 0) {
            iNamingRequestor.acceptNameWithSuffix(cArr, z11, i10);
        } else {
            iNamingRequestor.acceptNameWithoutPrefixAndSuffix(cArr, i10);
        }
    }

    private static char[][] computeBaseTypeNames(char[] cArr, boolean z10, char[][] cArr2) {
        if (z10) {
            return computeNonBaseTypeNames(cArr, z10, false);
        }
        char[] computeBaseTypeNames = computeBaseTypeNames(cArr[0], cArr2);
        if (computeBaseTypeNames != null) {
            return new char[][]{computeBaseTypeNames};
        }
        return computeNonBaseTypeNames(cArr, z10, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00ac, code lost:
    
        if (r2 == '_') goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00ae, code lost:
    
        r7 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00b0, code lost:
    
        r7 = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00f9, code lost:
    
        if (r2 == '_') goto L60;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static char[][] computeNonBaseTypeNames(char[] cArr, boolean z10, boolean z11) {
        int length = cArr.length;
        if (length == 0) {
            return CharOperation.NO_CHAR_CHAR;
        }
        if (length == 1) {
            return z10 ? generateConstantName(new char[][]{CharOperation.toLowerCase(cArr)}, 0, z11) : generateNonConstantName(new char[][]{CharOperation.toLowerCase(cArr)}, 0, z11);
        }
        char[][] cArr2 = new char[length];
        int i10 = length - 1;
        char c10 = cArr[i10];
        char c11 = ScannerHelper.isLowerCase(c10) ? (char) 1 : ScannerHelper.isUpperCase(c10) ? (char) 2 : c10 == '_' ? (char) 3 : (char) 4;
        int i11 = -1;
        while (i10 >= 0) {
            char c12 = cArr[i10];
            char c13 = ScannerHelper.isLowerCase(c12) ? (char) 1 : ScannerHelper.isUpperCase(c12) ? (char) 2 : c12 == '_' ? (char) 3 : (char) 4;
            if (c13 == 1) {
                if (c11 == 2) {
                    i11++;
                    int i12 = i10 + 1;
                    cArr2[i11] = CharOperation.subarray(cArr, i12, length);
                    length = i12;
                }
                c11 = 1;
            } else if (c13 != 2) {
                if (c13 != 3) {
                    c11 = 4;
                } else if (c11 == 1 || c11 == 2) {
                    i11++;
                    int i13 = i10 + 1;
                    cArr2[i11] = CharOperation.subarray(cArr, i13, length);
                    if (i10 > 0) {
                        char c14 = cArr[i10 - 1];
                        c11 = ScannerHelper.isLowerCase(c14) ? (char) 1 : ScannerHelper.isUpperCase(c14) ? (char) 2 : c14 == '_' ? (char) 3 : (char) 4;
                    }
                    length = i13;
                } else if (c11 != 3) {
                    c11 = 3;
                } else if (z10) {
                    if (i10 > 0) {
                        char c15 = cArr[i10 - 1];
                        if (!ScannerHelper.isLowerCase(c15)) {
                            if (!ScannerHelper.isUpperCase(c15)) {
                            }
                            c11 = 2;
                        }
                        c11 = 1;
                    }
                    length = i10;
                }
            } else if (c11 == 1) {
                i11++;
                cArr2[i11] = CharOperation.subarray(cArr, i10, length);
                if (i10 > 0) {
                    char c16 = cArr[i10 - 1];
                    if (!ScannerHelper.isLowerCase(c16)) {
                        if (!ScannerHelper.isUpperCase(c16)) {
                        }
                        c11 = 2;
                    }
                    c11 = 1;
                }
                length = i10;
            } else {
                c11 = 2;
            }
            i10--;
        }
        if (length > 0) {
            i11++;
            cArr2[i11] = CharOperation.subarray(cArr, 0, length);
        }
        return i11 == -1 ? new char[][]{cArr} : z10 ? generateConstantName(cArr2, i11, z11) : generateNonConstantName(cArr2, i11, z11);
    }

    private static char[] excludeNames(char[] cArr, char[] cArr2, char[] cArr3, char[][] cArr4) {
        int i10 = 2;
        int i11 = 0;
        while (i11 < cArr4.length) {
            if (CharOperation.equals(cArr, cArr4[i11], false)) {
                int i12 = i10 + 1;
                char[] concat = CharOperation.concat(cArr2, String.valueOf(i10).toCharArray(), cArr3);
                i11 = 0;
                i10 = i12;
                cArr = concat;
            } else {
                i11++;
            }
        }
        return cArr;
    }

    private static char[][] generateConstantName(char[][] cArr, int i10, boolean z10) {
        char[][] cArr2 = z10 ? new char[1] : new char[i10 + 1];
        char[] upperCase = CharOperation.toUpperCase(cArr[0]);
        System.arraycopy(upperCase, 0, upperCase, 0, upperCase.length);
        if (!z10) {
            cArr2[i10] = upperCase;
        }
        for (int i11 = 1; i11 <= i10; i11++) {
            char[] upperCase2 = CharOperation.toUpperCase(cArr[i11]);
            upperCase = upperCase2[upperCase2.length - 1] != '_' ? CharOperation.concat(upperCase2, upperCase, '_') : CharOperation.concat(upperCase2, upperCase);
            if (!z10) {
                cArr2[i10 - i11] = upperCase;
            }
        }
        if (z10) {
            cArr2[0] = upperCase;
        }
        return cArr2;
    }

    private static char[][] generateNonConstantName(char[][] cArr, int i10, boolean z10) {
        int i11 = 1;
        char[][] cArr2 = z10 ? new char[1] : new char[i10 + 1];
        char[] cArr3 = cArr[0];
        char[] lowerCase = CharOperation.toLowerCase(cArr3);
        if (!z10) {
            cArr2[i10] = lowerCase;
        }
        while (i11 <= i10) {
            char[] cArr4 = cArr[i11];
            char[] concat = CharOperation.concat(CharOperation.toLowerCase(cArr4), cArr3);
            if (!z10) {
                cArr2[i10 - i11] = concat;
            }
            cArr3 = CharOperation.concat(cArr4, cArr3);
            i11++;
            lowerCase = concat;
        }
        if (z10) {
            cArr2[0] = lowerCase;
        }
        return cArr2;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static char[] getBaseName(int i10, IJavaProject iJavaProject, char[] cArr, boolean z10) {
        AssistOptions assistOptions;
        char[][] cArr2;
        char[][] cArr3;
        char[][] cArr4;
        char[][] cArr5;
        if (iJavaProject != null) {
            assistOptions = new AssistOptions(iJavaProject.getOptions(true));
        } else {
            assistOptions = new AssistOptions(JavaCore.getOptions());
        }
        if (i10 == 1) {
            cArr2 = assistOptions.staticFieldPrefixes;
            cArr3 = assistOptions.staticFieldSuffixes;
        } else if (i10 == 2) {
            cArr2 = assistOptions.fieldPrefixes;
            cArr3 = assistOptions.fieldSuffixes;
        } else if (i10 == 3) {
            cArr2 = assistOptions.staticFinalFieldPrefixes;
            cArr3 = assistOptions.staticFinalFieldSuffixes;
        } else if (i10 == 4) {
            cArr2 = assistOptions.argumentPrefixes;
            cArr3 = assistOptions.argumentSuffixes;
        } else if (i10 == 5) {
            cArr2 = assistOptions.localPrefixes;
            cArr3 = assistOptions.localSuffixes;
        } else {
            cArr5 = null;
            cArr4 = null;
            return getBaseName(cArr, cArr5, cArr4, i10 == 3, z10);
        }
        char[][] cArr6 = cArr2;
        cArr4 = cArr3;
        cArr5 = cArr6;
        return getBaseName(cArr, cArr5, cArr4, i10 == 3, z10);
    }

    private static Scanner getNameScanner(CompilerOptions compilerOptions) {
        return new Scanner(false, false, false, compilerOptions.sourceLevel, null, null, true);
    }

    private static char[] removePrefix(char[] cArr, char[][] cArr2) {
        if (cArr2 == null) {
            return cArr;
        }
        int length = cArr.length;
        int i10 = 0;
        for (char[] cArr3 : cArr2) {
            int length2 = cArr3.length;
            if (length2 <= length) {
                if (CharOperation.prefixEquals(cArr3, cArr, false)) {
                    if (length2 <= i10) {
                    }
                    i10 = length2;
                }
            } else {
                length2 = 0;
                while (true) {
                    if (length2 >= length) {
                        break;
                    }
                    if (ScannerHelper.toLowerCase(cArr3[length2]) == ScannerHelper.toLowerCase(cArr[length2])) {
                        length2++;
                    } else if (length2 > i10) {
                        i10 = length2;
                    }
                }
                if (length2 == length) {
                    if (length2 <= i10) {
                    }
                    i10 = length2;
                }
            }
        }
        return i10 > 0 ? i10 == length ? CharOperation.NO_CHAR : CharOperation.subarray(cArr, i10, length) : cArr;
    }

    public static char[] removeVariablePrefixAndSuffix(int i10, IJavaProject iJavaProject, char[] cArr) {
        AssistOptions assistOptions;
        char[][] cArr2;
        char[][] cArr3;
        if (iJavaProject != null) {
            assistOptions = new AssistOptions(iJavaProject.getOptions(true));
        } else {
            assistOptions = new AssistOptions(JavaCore.getOptions());
        }
        if (i10 == 1) {
            cArr2 = assistOptions.staticFieldPrefixes;
            cArr3 = assistOptions.staticFieldSuffixes;
        } else if (i10 == 2) {
            cArr2 = assistOptions.fieldPrefixes;
            cArr3 = assistOptions.fieldSuffixes;
        } else if (i10 == 3) {
            cArr2 = assistOptions.staticFinalFieldPrefixes;
            cArr3 = assistOptions.staticFinalFieldSuffixes;
        } else if (i10 == 4) {
            cArr2 = assistOptions.argumentPrefixes;
            cArr3 = assistOptions.argumentSuffixes;
        } else if (i10 != 5) {
            cArr2 = null;
            cArr3 = null;
        } else {
            cArr2 = assistOptions.localPrefixes;
            cArr3 = assistOptions.localSuffixes;
        }
        return removeVariablePrefixAndSuffix(cArr, cArr2, cArr3, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:230:0x00a9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:240:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void suggestVariableNames(int i10, int i11, char[] cArr, IJavaProject iJavaProject, int i12, char[] cArr2, char[][] cArr3, boolean z10, INamingRequestor iNamingRequestor) {
        char[][] cArr4;
        char[][] cArr5;
        boolean z11;
        char[][] cArr6;
        char[][] cArr7;
        char[][] computeNonBaseTypeNames;
        int i13;
        int i14;
        char[][] cArr8;
        char[] concat;
        int i15;
        int i16;
        int i17;
        char[] cArr9;
        int i18;
        char[] excludeNames;
        int i19;
        char[] cArr10;
        char c10;
        char[] cArr11;
        char[] cArr12;
        char c11;
        char[][] cArr13 = cArr3;
        if (cArr == null || cArr.length == 0) {
            return;
        }
        Map<String, String> options = iJavaProject != null ? iJavaProject.getOptions(true) : JavaCore.getOptions();
        CompilerOptions compilerOptions = new CompilerOptions(options);
        AssistOptions assistOptions = new AssistOptions(options);
        int i20 = 0;
        if (i10 == 1) {
            cArr4 = assistOptions.staticFieldPrefixes;
            cArr5 = assistOptions.staticFieldSuffixes;
        } else if (i10 == 2) {
            cArr4 = assistOptions.fieldPrefixes;
            cArr5 = assistOptions.fieldSuffixes;
        } else {
            if (i10 == 3) {
                cArr4 = assistOptions.staticFinalFieldPrefixes;
                cArr5 = assistOptions.staticFinalFieldSuffixes;
                z11 = true;
                if (cArr4 != null || cArr4.length == 0) {
                    cArr6 = (char[][]) Array.newInstance(Character.TYPE, 1, 0);
                } else {
                    int length = cArr4.length;
                    cArr6 = new char[length + 1];
                    System.arraycopy(cArr4, 0, cArr6, 0, length);
                    cArr6[length] = CharOperation.NO_CHAR;
                }
                if (cArr5 != null || cArr5.length == 0) {
                    cArr7 = (char[][]) Array.newInstance(Character.TYPE, 1, 0);
                } else {
                    int length2 = cArr5.length;
                    cArr7 = new char[length2 + 1];
                    System.arraycopy(cArr5, 0, cArr7, 0, length2);
                    cArr7[length2] = CharOperation.NO_CHAR;
                }
                char[] removePrefix = cArr2 != null ? CharOperation.NO_CHAR : removePrefix(cArr2, cArr6);
                Scanner nameScanner = getNameScanner(compilerOptions);
                if (i11 != 2) {
                    try {
                        nameScanner.setSource(cArr);
                    } catch (InvalidInputException unused) {
                    }
                    switch (nameScanner.getNextToken()) {
                        case 99:
                        case 100:
                        case 103:
                        case 104:
                        case 105:
                        case 107:
                        case 108:
                        case 109:
                            if (removePrefix.length <= 0) {
                                computeNonBaseTypeNames = computeBaseTypeNames(cArr, z11, cArr13);
                                break;
                            } else {
                                return;
                            }
                        case 101:
                        case 102:
                        case 106:
                        default:
                            computeNonBaseTypeNames = computeNonBaseTypeNames(cArr, z11, false);
                            break;
                    }
                } else {
                    computeNonBaseTypeNames = computeNonBaseTypeNames(cArr, z11, true);
                }
                SimpleSetOfCharArray simpleSetOfCharArray = new SimpleSetOfCharArray();
                int i21 = 1;
                i13 = 0;
                while (i13 < computeNonBaseTypeNames.length) {
                    char[] cArr14 = computeNonBaseTypeNames[i13];
                    if (i12 > 0) {
                        int length3 = cArr14.length;
                        if (z11) {
                            int i22 = length3 - 1;
                            char c12 = cArr14[i22];
                            if (c12 == 'S') {
                                if (cArr14.length > 1 && cArr14[length3 - 2] == 'S') {
                                    char[] cArr15 = new char[length3 + 2];
                                    System.arraycopy(cArr14, 0, cArr15, 0, length3);
                                    cArr15[length3] = IIndexConstants.ENUM_SUFFIX;
                                    cArr15[length3 + 1] = 'S';
                                    cArr14 = cArr15;
                                }
                                i20 = 0;
                            } else if (c12 == 'Y') {
                                if (cArr14.length <= 1 || !((c11 = cArr14[length3 - 2]) == 'A' || c11 == 'E' || c11 == 'I' || c11 == 'O' || c11 == 'U')) {
                                    i20 = 0;
                                    cArr11 = new char[length3 + 2];
                                    System.arraycopy(cArr14, 0, cArr11, 0, length3);
                                    cArr11[i22] = 'I';
                                    cArr11[length3] = IIndexConstants.ENUM_SUFFIX;
                                    cArr11[length3 + 1] = 'S';
                                } else {
                                    cArr11 = new char[length3 + 1];
                                    i20 = 0;
                                    System.arraycopy(cArr14, 0, cArr11, 0, length3);
                                    cArr11[length3] = 'S';
                                }
                                cArr14 = cArr11;
                            } else {
                                cArr12 = new char[length3 + 1];
                                System.arraycopy(cArr14, 0, cArr12, 0, length3);
                                cArr12[length3] = 'S';
                                cArr14 = cArr12;
                                i20 = 0;
                            }
                        } else {
                            int i23 = length3 - 1;
                            char c13 = cArr14[i23];
                            if (c13 == 's') {
                                if (cArr14.length > 1 && cArr14[length3 - 2] == 's') {
                                    cArr12 = new char[length3 + 2];
                                    System.arraycopy(cArr14, 0, cArr12, 0, length3);
                                    cArr12[length3] = 'e';
                                    cArr12[length3 + 1] = 's';
                                    cArr14 = cArr12;
                                }
                                i20 = 0;
                            } else {
                                if (c13 != 'y') {
                                    i20 = 0;
                                    cArr10 = new char[length3 + 1];
                                    System.arraycopy(cArr14, 0, cArr10, 0, length3);
                                    cArr10[length3] = 's';
                                } else if (cArr14.length <= 1 || !((c10 = cArr14[length3 - 2]) == 'a' || c10 == 'e' || c10 == 'i' || c10 == 'o' || c10 == 'u')) {
                                    i20 = 0;
                                    cArr10 = new char[length3 + 2];
                                    System.arraycopy(cArr14, 0, cArr10, 0, length3);
                                    cArr10[i23] = 'i';
                                    cArr10[length3] = 'e';
                                    cArr10[length3 + 1] = 's';
                                } else {
                                    cArr11 = new char[length3 + 1];
                                    i20 = 0;
                                    System.arraycopy(cArr14, 0, cArr11, 0, length3);
                                    cArr11[length3] = 's';
                                    cArr14 = cArr11;
                                }
                                cArr14 = cArr10;
                            }
                        }
                    }
                    if (z11) {
                        int i24 = 0;
                        while (i24 <= removePrefix.length) {
                            if (i24 != removePrefix.length) {
                                if (!CharOperation.prefixEquals(CharOperation.subarray(removePrefix, i24, -1), cArr14, i24 != 0)) {
                                    cArr8 = computeNonBaseTypeNames;
                                } else if (i24 != 0 && removePrefix[i24 - 1] != '_') {
                                    cArr8 = computeNonBaseTypeNames;
                                }
                                i24++;
                                computeNonBaseTypeNames = cArr8;
                                cArr13 = cArr3;
                            }
                            i14 = i24;
                        }
                        i14 = -1;
                    } else {
                        cArr14[i20] = ScannerHelper.toUpperCase(cArr14[i20]);
                        i14 = 0;
                        while (i14 <= removePrefix.length) {
                            if (i14 != removePrefix.length) {
                                if (!CharOperation.prefixEquals(CharOperation.subarray(removePrefix, i14, -1), cArr14, i14 != 0)) {
                                    i14++;
                                }
                            }
                        }
                        i14 = -1;
                    }
                    if (i14 > -1) {
                        if (z11) {
                            concat = (i14 == 0 || cArr14[0] == '_' || removePrefix[i14 + (-1)] == '_') ? CharOperation.concat(CharOperation.subarray(CharOperation.toUpperCase(removePrefix), 0, i14), cArr14) : CharOperation.concat(CharOperation.subarray(CharOperation.toUpperCase(removePrefix), 0, i14), cArr14, '_');
                        } else {
                            concat = CharOperation.concat(CharOperation.subarray(removePrefix, 0, i14), cArr14);
                            if (i14 == 0) {
                                concat[0] = ScannerHelper.toLowerCase(concat[0]);
                            }
                        }
                        char[] cArr16 = concat;
                        int i25 = 0;
                        while (i25 < cArr6.length) {
                            if (z11) {
                                i15 = 0;
                            } else {
                                char[] cArr17 = cArr6[i25];
                                if (cArr17.length <= 0 || !ScannerHelper.isLetterOrDigit(cArr17[cArr17.length - 1])) {
                                    i15 = 0;
                                    cArr16[0] = ScannerHelper.toLowerCase(cArr16[0]);
                                } else {
                                    i15 = 0;
                                    cArr16[0] = ScannerHelper.toUpperCase(cArr16[0]);
                                }
                            }
                            char[] concat2 = CharOperation.concat(cArr6[i25], cArr16);
                            char[][] cArr18 = computeNonBaseTypeNames;
                            int i26 = i15;
                            while (i26 < cArr7.length) {
                                char[] cArr19 = cArr16;
                                char[] excludeNames2 = excludeNames(CharOperation.concat(concat2, cArr7[i26]), concat2, cArr7[i26], cArr13);
                                try {
                                    nameScanner.setSource(excludeNames2);
                                    i16 = i21;
                                } catch (InvalidInputException unused2) {
                                    i16 = i21;
                                }
                                if (nameScanner.getNextToken() != 22) {
                                    try {
                                        excludeNames = excludeNames(CharOperation.concat(concat2, String.valueOf(1).toCharArray(), cArr7[i26]), concat2, cArr7[i26], cArr13);
                                        nameScanner.setSource(excludeNames);
                                    } catch (InvalidInputException unused3) {
                                    }
                                    if (nameScanner.getNextToken() != 22) {
                                        i17 = i26;
                                        cArr9 = concat2;
                                        i18 = i25;
                                        i19 = i16;
                                    } else {
                                        if (nameScanner.getNextToken() == 61 && nameScanner.startPosition == excludeNames.length && !simpleSetOfCharArray.includes(excludeNames)) {
                                            i17 = i26;
                                            cArr9 = concat2;
                                            i18 = i25;
                                            try {
                                                acceptName(excludeNames, cArr6[i25], cArr7[i26], i25 == 0 ? 1 : i15, i26 == 0 ? 1 : i15, removePrefix.length - i14, iNamingRequestor);
                                                simpleSetOfCharArray.add(excludeNames);
                                                i19 = i15;
                                            } catch (InvalidInputException unused4) {
                                            }
                                        }
                                        i17 = i26;
                                        cArr9 = concat2;
                                        i18 = i25;
                                        i21 = i16;
                                    }
                                    i21 = i19;
                                } else {
                                    i17 = i26;
                                    cArr9 = concat2;
                                    i18 = i25;
                                    if (nameScanner.getNextToken() == 61 && nameScanner.startPosition == excludeNames2.length && !simpleSetOfCharArray.includes(excludeNames2)) {
                                        acceptName(excludeNames2, cArr6[i18], cArr7[i17], i18 == 0 ? 1 : i15, i17 == 0 ? 1 : i15, removePrefix.length - i14, iNamingRequestor);
                                        simpleSetOfCharArray.add(excludeNames2);
                                        i21 = i15;
                                    }
                                    i21 = i16;
                                }
                                i26 = i17 + 1;
                                cArr13 = cArr3;
                                i25 = i18;
                                concat2 = cArr9;
                                cArr16 = cArr19;
                            }
                            i25++;
                            computeNonBaseTypeNames = cArr18;
                        }
                    }
                    i13++;
                    computeNonBaseTypeNames = computeNonBaseTypeNames;
                    cArr13 = cArr3;
                    i20 = 0;
                }
                if (z10 || i21 == 0) {
                }
                char[] cArr20 = DEFAULT_NAME;
                iNamingRequestor.acceptNameWithoutPrefixAndSuffix(excludeNames(cArr20, cArr20, CharOperation.NO_CHAR, cArr13), i20);
                return;
            }
            if (i10 == 4) {
                cArr4 = assistOptions.argumentPrefixes;
                cArr5 = assistOptions.argumentSuffixes;
            } else if (i10 != 5) {
                cArr4 = null;
                cArr5 = null;
            } else {
                cArr4 = assistOptions.localPrefixes;
                cArr5 = assistOptions.localSuffixes;
            }
        }
        z11 = false;
        if (cArr4 != null) {
        }
        cArr6 = (char[][]) Array.newInstance(Character.TYPE, 1, 0);
        if (cArr5 != null) {
        }
        cArr7 = (char[][]) Array.newInstance(Character.TYPE, 1, 0);
        if (cArr2 != null) {
        }
        Scanner nameScanner2 = getNameScanner(compilerOptions);
        if (i11 != 2) {
        }
        SimpleSetOfCharArray simpleSetOfCharArray2 = new SimpleSetOfCharArray();
        int i212 = 1;
        i13 = 0;
        while (i13 < computeNonBaseTypeNames.length) {
        }
        if (z10) {
        }
    }

    private static char[] computeBaseTypeNames(char c10, char[][] cArr) {
        char[] cArr2 = {c10};
        int i10 = 0;
        while (i10 < cArr.length) {
            if (CharOperation.equals(cArr2, cArr[i10], false)) {
                char c11 = (char) (cArr2[0] + 1);
                cArr2[0] = c11;
                if (c11 > 'z') {
                    cArr2[0] = 'a';
                }
                if (cArr2[0] == c10) {
                    return null;
                }
                i10 = 0;
            }
            i10++;
        }
        return cArr2;
    }

    private static char[] getBaseName(char[] cArr, char[][] cArr2, char[][] cArr3, boolean z10, boolean z11) {
        char[] removeVariablePrefixAndSuffix = removeVariablePrefixAndSuffix(cArr, cArr2, cArr3, z11);
        if (!z10) {
            return removeVariablePrefixAndSuffix;
        }
        char[] cArr4 = new char[removeVariablePrefixAndSuffix.length];
        int i10 = -1;
        boolean z12 = false;
        for (char c10 : removeVariablePrefixAndSuffix) {
            if (c10 == '_') {
                z12 = true;
            } else if (z12) {
                i10++;
                cArr4[i10] = ScannerHelper.toUpperCase(c10);
                z12 = false;
            } else {
                i10++;
                cArr4[i10] = ScannerHelper.toLowerCase(c10);
            }
        }
        int i11 = i10 + 1;
        char[] cArr5 = new char[i11];
        System.arraycopy(cArr4, 0, cArr5, 0, i11);
        return cArr5;
    }

    private static char[] removeVariablePrefixAndSuffix(char[] cArr, char[][] cArr2, char[][] cArr3, boolean z10) {
        int length;
        if (cArr2 != null) {
            char[] cArr4 = cArr;
            int i10 = 0;
            for (char[] cArr5 : cArr2) {
                if (CharOperation.prefixEquals(cArr5, cArr)) {
                    int length2 = cArr5.length;
                    boolean isLetter = ScannerHelper.isLetter(cArr5[length2 - 1]);
                    if ((!isLetter || (isLetter && cArr.length > length2 && ScannerHelper.isUpperCase(cArr[length2]))) && i10 < length2 && cArr.length != length2) {
                        cArr4 = CharOperation.subarray(cArr, length2, cArr.length);
                        i10 = length2;
                    }
                }
            }
            cArr = cArr4;
        }
        if (cArr3 != null) {
            char[] cArr6 = cArr;
            int i11 = 0;
            for (char[] cArr7 : cArr3) {
                if (CharOperation.endsWith(cArr, cArr7) && i11 < (length = cArr7.length) && cArr.length != length) {
                    cArr6 = CharOperation.subarray(cArr, 0, cArr.length - length);
                    i11 = length;
                }
            }
            cArr = cArr6;
        }
        if (z10) {
            cArr[0] = ScannerHelper.toLowerCase(cArr[0]);
        }
        return cArr;
    }
}
