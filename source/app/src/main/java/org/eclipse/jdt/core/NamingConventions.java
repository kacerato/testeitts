package org.eclipse.jdt.core;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.core.INamingRequestor;
import org.eclipse.jdt.internal.core.InternalNamingConventions;

public final class NamingConventions {
    public static final int BK_NAME = 1;
    public static final int BK_TYPE_NAME = 2;
    private static final char[] GETTER_BOOL_NAME = "is".toCharArray();
    private static final char[] GETTER_NAME = "get".toCharArray();
    private static final char[] SETTER_NAME = "set".toCharArray();
    public static final int VK_INSTANCE_FIELD = 2;
    public static final int VK_LOCAL = 5;
    public static final int VK_PARAMETER = 4;
    public static final int VK_STATIC_FIELD = 1;
    public static final int VK_STATIC_FINAL_FIELD = 3;

    public static class NamingRequestor implements INamingRequestor {
        private static final int SIZE = 10;
        private char[][] firstPrefixAndFirstSuffixResults = new char[10];
        private int firstPrefixAndFirstSuffixResultsCount = 0;
        private char[][] firstPrefixAndSuffixResults = new char[10];
        private int firstPrefixAndSuffixResultsCount = 0;
        private char[][] prefixAndFirstSuffixResults = new char[10];
        private int prefixAndFirstSuffixResultsCount = 0;
        private char[][] prefixAndSuffixResults = new char[10];
        private int prefixAndSuffixResultsCount = 0;
        private char[][] firstPrefixResults = new char[10];
        private int firstPrefixResultsCount = 0;
        private char[][] prefixResults = new char[10];
        private int prefixResultsCount = 0;
        private char[][] firstSuffixResults = new char[10];
        private int firstSuffixResultsCount = 0;
        private char[][] suffixResults = new char[10];
        private int suffixResultsCount = 0;
        private char[][] otherResults = new char[10];
        private int otherResultsCount = 0;

        @Override
        public void acceptNameWithPrefix(char[] cArr, boolean z10, int i10) {
            if (z10) {
                char[][] cArr2 = this.firstPrefixResults;
                int length = cArr2.length;
                if (length == this.firstPrefixResultsCount) {
                    char[][] cArr3 = new char[length * 2];
                    this.firstPrefixResults = cArr3;
                    System.arraycopy(cArr2, 0, cArr3, 0, length);
                }
                char[][] cArr4 = this.firstPrefixResults;
                int i11 = this.firstPrefixResultsCount;
                this.firstPrefixResultsCount = i11 + 1;
                cArr4[i11] = cArr;
                return;
            }
            char[][] cArr5 = this.prefixResults;
            int length2 = cArr5.length;
            if (length2 == this.prefixResultsCount) {
                char[][] cArr6 = new char[length2 * 2];
                this.prefixResults = cArr6;
                System.arraycopy(cArr5, 0, cArr6, 0, length2);
            }
            char[][] cArr7 = this.prefixResults;
            int i12 = this.prefixResultsCount;
            this.prefixResultsCount = i12 + 1;
            cArr7[i12] = cArr;
        }

        @Override
        public void acceptNameWithPrefixAndSuffix(char[] cArr, boolean z10, boolean z11, int i10) {
            if (z10 && z11) {
                char[][] cArr2 = this.firstPrefixAndFirstSuffixResults;
                int length = cArr2.length;
                if (length == this.firstPrefixAndFirstSuffixResultsCount) {
                    char[][] cArr3 = new char[length * 2];
                    this.firstPrefixAndFirstSuffixResults = cArr3;
                    System.arraycopy(cArr2, 0, cArr3, 0, length);
                }
                char[][] cArr4 = this.firstPrefixAndFirstSuffixResults;
                int i11 = this.firstPrefixAndFirstSuffixResultsCount;
                this.firstPrefixAndFirstSuffixResultsCount = i11 + 1;
                cArr4[i11] = cArr;
                return;
            }
            if (z10) {
                char[][] cArr5 = this.firstPrefixAndSuffixResults;
                int length2 = cArr5.length;
                if (length2 == this.firstPrefixAndSuffixResultsCount) {
                    char[][] cArr6 = new char[length2 * 2];
                    this.firstPrefixAndSuffixResults = cArr6;
                    System.arraycopy(cArr5, 0, cArr6, 0, length2);
                }
                char[][] cArr7 = this.firstPrefixAndSuffixResults;
                int i12 = this.firstPrefixAndSuffixResultsCount;
                this.firstPrefixAndSuffixResultsCount = i12 + 1;
                cArr7[i12] = cArr;
                return;
            }
            if (z11) {
                char[][] cArr8 = this.prefixAndFirstSuffixResults;
                int length3 = cArr8.length;
                if (length3 == this.prefixAndFirstSuffixResultsCount) {
                    char[][] cArr9 = new char[length3 * 2];
                    this.prefixAndFirstSuffixResults = cArr9;
                    System.arraycopy(cArr8, 0, cArr9, 0, length3);
                }
                char[][] cArr10 = this.prefixAndFirstSuffixResults;
                int i13 = this.prefixAndFirstSuffixResultsCount;
                this.prefixAndFirstSuffixResultsCount = i13 + 1;
                cArr10[i13] = cArr;
                return;
            }
            char[][] cArr11 = this.prefixAndSuffixResults;
            int length4 = cArr11.length;
            if (length4 == this.prefixAndSuffixResultsCount) {
                char[][] cArr12 = new char[length4 * 2];
                this.prefixAndSuffixResults = cArr12;
                System.arraycopy(cArr11, 0, cArr12, 0, length4);
            }
            char[][] cArr13 = this.prefixAndSuffixResults;
            int i14 = this.prefixAndSuffixResultsCount;
            this.prefixAndSuffixResultsCount = i14 + 1;
            cArr13[i14] = cArr;
        }

        @Override
        public void acceptNameWithSuffix(char[] cArr, boolean z10, int i10) {
            if (z10) {
                char[][] cArr2 = this.firstSuffixResults;
                int length = cArr2.length;
                if (length == this.firstSuffixResultsCount) {
                    char[][] cArr3 = new char[length * 2];
                    this.firstSuffixResults = cArr3;
                    System.arraycopy(cArr2, 0, cArr3, 0, length);
                }
                char[][] cArr4 = this.firstSuffixResults;
                int i11 = this.firstSuffixResultsCount;
                this.firstSuffixResultsCount = i11 + 1;
                cArr4[i11] = cArr;
                return;
            }
            char[][] cArr5 = this.suffixResults;
            int length2 = cArr5.length;
            if (length2 == this.suffixResultsCount) {
                char[][] cArr6 = new char[length2 * 2];
                this.suffixResults = cArr6;
                System.arraycopy(cArr5, 0, cArr6, 0, length2);
            }
            char[][] cArr7 = this.suffixResults;
            int i12 = this.suffixResultsCount;
            this.suffixResultsCount = i12 + 1;
            cArr7[i12] = cArr;
        }

        @Override
        public void acceptNameWithoutPrefixAndSuffix(char[] cArr, int i10) {
            char[][] cArr2 = this.otherResults;
            int length = cArr2.length;
            if (length == this.otherResultsCount) {
                char[][] cArr3 = new char[length * 2];
                this.otherResults = cArr3;
                System.arraycopy(cArr2, 0, cArr3, 0, length);
            }
            char[][] cArr4 = this.otherResults;
            int i11 = this.otherResultsCount;
            this.otherResultsCount = i11 + 1;
            cArr4[i11] = cArr;
        }

        public char[][] getResults() {
            int i10 = this.firstPrefixAndFirstSuffixResultsCount;
            char[][] cArr = new char[this.firstPrefixAndSuffixResultsCount + i10 + this.prefixAndFirstSuffixResultsCount + this.prefixAndSuffixResultsCount + this.firstPrefixResultsCount + this.prefixResultsCount + this.firstSuffixResultsCount + this.suffixResultsCount + this.otherResultsCount];
            System.arraycopy(this.firstPrefixAndFirstSuffixResults, 0, cArr, 0, i10);
            int i11 = this.firstPrefixAndFirstSuffixResultsCount;
            System.arraycopy(this.firstPrefixAndSuffixResults, 0, cArr, i11, this.firstPrefixAndSuffixResultsCount);
            int i12 = i11 + this.firstPrefixAndSuffixResultsCount;
            System.arraycopy(this.prefixAndFirstSuffixResults, 0, cArr, i12, this.prefixAndFirstSuffixResultsCount);
            int i13 = i12 + this.prefixAndFirstSuffixResultsCount;
            System.arraycopy(this.prefixAndSuffixResults, 0, cArr, i13, this.prefixAndSuffixResultsCount);
            int i14 = i13 + this.prefixAndSuffixResultsCount;
            System.arraycopy(this.firstPrefixResults, 0, cArr, i14, this.firstPrefixResultsCount);
            int i15 = i14 + this.firstPrefixResultsCount;
            System.arraycopy(this.prefixResults, 0, cArr, i15, this.prefixResultsCount);
            int i16 = i15 + this.prefixResultsCount;
            System.arraycopy(this.firstSuffixResults, 0, cArr, i16, this.firstSuffixResultsCount);
            int i17 = i16 + this.firstSuffixResultsCount;
            System.arraycopy(this.suffixResults, 0, cArr, i17, this.suffixResultsCount);
            System.arraycopy(this.otherResults, 0, cArr, i17 + this.suffixResultsCount, this.otherResultsCount);
            return cArr;
        }
    }

    private NamingConventions() {
    }

    private static String[] convertCharsToString(char[][] cArr) {
        int length = cArr == null ? 0 : cArr.length;
        String[] strArr = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            strArr[i10] = String.valueOf(cArr[i10]);
        }
        return strArr;
    }

    private static char[][] convertStringToChars(String[] strArr) {
        int length = strArr == null ? 0 : strArr.length;
        char[][] cArr = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            String str = strArr[i10];
            if (str == null) {
                cArr[i10] = CharOperation.NO_CHAR;
            } else {
                cArr[i10] = str.toCharArray();
            }
        }
        return cArr;
    }

    public static String getBaseName(int i10, String str, IJavaProject iJavaProject) {
        return String.valueOf(InternalNamingConventions.getBaseName(i10, iJavaProject, str.toCharArray(), true));
    }

    private static int getFieldVariableKind(int i10) {
        if (Flags.isStatic(i10)) {
            return Flags.isFinal(i10) ? 3 : 1;
        }
        return 2;
    }

    public static char[] removePrefixAndSuffixForArgumentName(IJavaProject iJavaProject, char[] cArr) {
        return InternalNamingConventions.removeVariablePrefixAndSuffix(4, iJavaProject, cArr);
    }

    public static char[] removePrefixAndSuffixForFieldName(IJavaProject iJavaProject, char[] cArr, int i10) {
        return InternalNamingConventions.removeVariablePrefixAndSuffix(Flags.isStatic(i10) ? 1 : 2, iJavaProject, cArr);
    }

    public static char[] removePrefixAndSuffixForLocalVariableName(IJavaProject iJavaProject, char[] cArr) {
        return InternalNamingConventions.removeVariablePrefixAndSuffix(5, iJavaProject, cArr);
    }

    private static char[] suggestAccessorName(IJavaProject iJavaProject, char[] cArr, int i10) {
        char[] baseName = InternalNamingConventions.getBaseName(getFieldVariableKind(i10), iJavaProject, cArr, false);
        if (baseName.length > 0 && ScannerHelper.isLowerCase(baseName[0]) && (baseName.length == 1 || !ScannerHelper.isUpperCase(baseName[1]))) {
            baseName[0] = ScannerHelper.toUpperCase(baseName[0]);
        }
        return baseName;
    }

    public static char[][] suggestArgumentNames(IJavaProject iJavaProject, char[] cArr, char[] cArr2, int i10, char[][] cArr3) {
        if (cArr2 != null && cArr2.length != 0) {
            char[] lastSegment = CharOperation.lastSegment(cArr2, '.');
            NamingRequestor namingRequestor = new NamingRequestor();
            InternalNamingConventions.suggestVariableNames(4, 2, lastSegment, iJavaProject, i10, null, cArr3, true, namingRequestor);
            return namingRequestor.getResults();
        }
        return CharOperation.NO_CHAR_CHAR;
    }

    public static char[][] suggestFieldNames(IJavaProject iJavaProject, char[] cArr, char[] cArr2, int i10, int i11, char[][] cArr3) {
        if (cArr2 != null && cArr2.length != 0) {
            char[] lastSegment = CharOperation.lastSegment(cArr2, '.');
            NamingRequestor namingRequestor = new NamingRequestor();
            InternalNamingConventions.suggestVariableNames(Flags.isStatic(i11) ? 1 : 2, 2, lastSegment, iJavaProject, i10, null, cArr3, true, namingRequestor);
            return namingRequestor.getResults();
        }
        return CharOperation.NO_CHAR_CHAR;
    }

    public static char[] suggestGetterName(IJavaProject iJavaProject, char[] cArr, int i10, boolean z10, char[][] cArr2) {
        if (z10) {
            char[] baseName = InternalNamingConventions.getBaseName(getFieldVariableKind(i10), iJavaProject, cArr, false);
            char[] cArr3 = GETTER_BOOL_NAME;
            int length = cArr3.length;
            if (CharOperation.prefixEquals(cArr3, baseName) && baseName.length > length && ScannerHelper.isUpperCase(baseName[length])) {
                return suggestNewName(baseName, cArr2);
            }
            return suggestNewName(CharOperation.concat(cArr3, suggestAccessorName(iJavaProject, cArr, i10)), cArr2);
        }
        return suggestNewName(CharOperation.concat(GETTER_NAME, suggestAccessorName(iJavaProject, cArr, i10)), cArr2);
    }

    public static char[][] suggestLocalVariableNames(IJavaProject iJavaProject, char[] cArr, char[] cArr2, int i10, char[][] cArr3) {
        if (cArr2 != null && cArr2.length != 0) {
            char[] lastSegment = CharOperation.lastSegment(cArr2, '.');
            NamingRequestor namingRequestor = new NamingRequestor();
            InternalNamingConventions.suggestVariableNames(5, 2, lastSegment, iJavaProject, i10, null, cArr3, true, namingRequestor);
            return namingRequestor.getResults();
        }
        return CharOperation.NO_CHAR_CHAR;
    }

    private static char[] suggestNewName(char[] cArr, char[][] cArr2) {
        if (cArr2 == null) {
            return cArr;
        }
        int i10 = 2;
        char[] cArr3 = cArr;
        while (true) {
            for (char[] cArr4 : cArr2) {
                if (CharOperation.equals(cArr3, cArr4, false)) {
                    break;
                }
            }
            return cArr3;
            cArr3 = CharOperation.concat(cArr, String.valueOf(i10).toCharArray());
            i10++;
        }
    }

    public static char[] suggestSetterName(IJavaProject iJavaProject, char[] cArr, int i10, boolean z10, char[][] cArr2) {
        if (z10) {
            char[] baseName = InternalNamingConventions.getBaseName(getFieldVariableKind(i10), iJavaProject, cArr, false);
            char[] cArr3 = GETTER_BOOL_NAME;
            int length = cArr3.length;
            if (CharOperation.prefixEquals(cArr3, baseName) && baseName.length > length && ScannerHelper.isUpperCase(baseName[length])) {
                return suggestNewName(CharOperation.concat(SETTER_NAME, suggestAccessorName(iJavaProject, CharOperation.subarray(baseName, length, baseName.length), i10)), cArr2);
            }
            return suggestNewName(CharOperation.concat(SETTER_NAME, suggestAccessorName(iJavaProject, cArr, i10)), cArr2);
        }
        return suggestNewName(CharOperation.concat(SETTER_NAME, suggestAccessorName(iJavaProject, cArr, i10)), cArr2);
    }

    public static String[] suggestVariableNames(int i10, int i11, String str, IJavaProject iJavaProject, int i12, String[] strArr, boolean z10) {
        NamingRequestor namingRequestor = new NamingRequestor();
        InternalNamingConventions.suggestVariableNames(i10, i11, str.toCharArray(), iJavaProject, i12, null, convertStringToChars(strArr), z10, namingRequestor);
        return convertCharsToString(namingRequestor.getResults());
    }

    public static String removePrefixAndSuffixForArgumentName(IJavaProject iJavaProject, String str) {
        return String.valueOf(removePrefixAndSuffixForArgumentName(iJavaProject, str.toCharArray()));
    }

    public static String removePrefixAndSuffixForLocalVariableName(IJavaProject iJavaProject, String str) {
        return String.valueOf(removePrefixAndSuffixForLocalVariableName(iJavaProject, str.toCharArray()));
    }

    public static String removePrefixAndSuffixForFieldName(IJavaProject iJavaProject, String str, int i10) {
        return String.valueOf(removePrefixAndSuffixForFieldName(iJavaProject, str.toCharArray(), i10));
    }

    public static String[] suggestArgumentNames(IJavaProject iJavaProject, String str, String str2, int i10, String[] strArr) {
        return convertCharsToString(suggestArgumentNames(iJavaProject, str.toCharArray(), str2.toCharArray(), i10, convertStringToChars(strArr)));
    }

    public static String[] suggestLocalVariableNames(IJavaProject iJavaProject, String str, String str2, int i10, String[] strArr) {
        return convertCharsToString(suggestLocalVariableNames(iJavaProject, str.toCharArray(), str2.toCharArray(), i10, convertStringToChars(strArr)));
    }

    public static String[] suggestFieldNames(IJavaProject iJavaProject, String str, String str2, int i10, int i11, String[] strArr) {
        return convertCharsToString(suggestFieldNames(iJavaProject, str.toCharArray(), str2.toCharArray(), i10, i11, convertStringToChars(strArr)));
    }

    public static String suggestGetterName(IJavaProject iJavaProject, String str, int i10, boolean z10, String[] strArr) {
        return String.valueOf(suggestGetterName(iJavaProject, str.toCharArray(), i10, z10, convertStringToChars(strArr)));
    }

    public static String suggestSetterName(IJavaProject iJavaProject, String str, int i10, boolean z10, String[] strArr) {
        return String.valueOf(suggestSetterName(iJavaProject, str.toCharArray(), i10, z10, convertStringToChars(strArr)));
    }
}
