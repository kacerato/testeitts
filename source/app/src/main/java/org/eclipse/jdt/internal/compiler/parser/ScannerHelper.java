package org.eclipse.jdt.internal.compiler.parser;

import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import kotlin.jvm.internal.C14021s;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import w2.C15883c;

public class ScannerHelper {
    public static final long[] Bits = {1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, TagBits.TypeVariablesAreConnected, TagBits.PauseHierarchyCheck, TagBits.HasNullTypeAnnotation, 2097152, TagBits.PassedBoundCheck, 8388608, 16777216, TagBits.HasUnresolvedSuperclass, TagBits.HasUnresolvedSuperinterfaces, TagBits.HasUnresolvedEnclosingType, TagBits.HasUnresolvedMemberTypes, TagBits.HasTypeVariable, TagBits.HasDirectWildcard, 2147483648L, 4294967296L, 8589934592L, 17179869184L, 34359738368L, 68719476736L, 137438953472L, 274877906944L, 549755813888L, 1099511627776L, 2199023255552L, 4398046511104L, 8796093022208L, 17592186044416L, 35184372088832L, 70368744177664L, 140737488355328L, 281474976710656L, 562949953421312L, 1125899906842624L, 2251799813685248L, 4503599627370496L, 9007199254740992L, 18014398509481984L, 36028797018963968L, 72057594037927936L, 144115188075855872L, 288230376151711744L, 576460752303423488L, 1152921504606846976L, 2305843009213693952L, 4611686018427387904L, Long.MIN_VALUE};
    public static final int C_DIGIT = 4;
    public static final int C_IDENT_PART = 8;
    public static final int C_IDENT_START = 64;
    public static final int C_JLS_SPACE = 256;
    public static final int C_LOWER_LETTER = 16;
    public static final int C_SEPARATOR = 2;
    public static final int C_SPACE = 1;
    public static final int C_SPECIAL = 128;
    public static final int C_UPPER_LETTER = 32;
    public static final int MAX_OBVIOUS = 128;
    public static final int[] OBVIOUS_IDENT_CHAR_NATURES;
    private static final int PART_INDEX = 1;
    private static final int START_INDEX = 0;
    private static long[][][] Tables;
    private static long[][][] Tables11;
    private static long[][][] Tables12;
    private static long[][][] Tables7;
    private static long[][][] Tables8;
    private static long[][][] Tables9;

    static {
        int[] iArr = new int[128];
        OBVIOUS_IDENT_CHAR_NATURES = iArr;
        iArr[0] = 8;
        iArr[1] = 8;
        iArr[2] = 8;
        iArr[3] = 8;
        iArr[4] = 8;
        iArr[5] = 8;
        iArr[6] = 8;
        iArr[7] = 8;
        iArr[8] = 8;
        iArr[14] = 8;
        iArr[15] = 8;
        iArr[16] = 8;
        iArr[17] = 8;
        iArr[18] = 8;
        iArr[19] = 8;
        iArr[20] = 8;
        iArr[21] = 8;
        iArr[22] = 8;
        iArr[23] = 8;
        iArr[24] = 8;
        iArr[25] = 8;
        iArr[26] = 8;
        iArr[27] = 8;
        iArr[127] = 8;
        for (int i10 = 48; i10 <= 57; i10++) {
            OBVIOUS_IDENT_CHAR_NATURES[i10] = 12;
        }
        for (int i11 = 97; i11 <= 122; i11++) {
            OBVIOUS_IDENT_CHAR_NATURES[i11] = 88;
        }
        for (int i12 = 65; i12 <= 90; i12++) {
            OBVIOUS_IDENT_CHAR_NATURES[i12] = 104;
        }
        int[] iArr2 = OBVIOUS_IDENT_CHAR_NATURES;
        iArr2[95] = 200;
        iArr2[36] = 200;
        iArr2[9] = 257;
        iArr2[10] = 257;
        iArr2[11] = 1;
        iArr2[12] = 257;
        iArr2[13] = 257;
        iArr2[28] = 1;
        iArr2[29] = 1;
        iArr2[30] = 1;
        iArr2[31] = 1;
        iArr2[32] = 257;
        iArr2[46] = 2;
        iArr2[58] = 2;
        iArr2[59] = 2;
        iArr2[44] = 2;
        iArr2[91] = 2;
        iArr2[93] = 2;
        iArr2[40] = 2;
        iArr2[41] = 2;
        iArr2[123] = 2;
        iArr2[125] = 2;
        iArr2[43] = 2;
        iArr2[45] = 2;
        iArr2[42] = 2;
        iArr2[47] = 2;
        iArr2[61] = 2;
        iArr2[38] = 2;
        iArr2[124] = 2;
        iArr2[63] = 2;
        iArr2[60] = 2;
        iArr2[62] = 2;
        iArr2[33] = 2;
        iArr2[37] = 2;
        iArr2[94] = 2;
        iArr2[126] = 2;
        iArr2[34] = 2;
        iArr2[39] = 2;
    }

    public static int digit(char c10, int i10) {
        if (c10 < '\u0080') {
            if (i10 == 8) {
                if (c10 < '0' || c10 > '7') {
                    return -1;
                }
                return c10 - '0';
            }
            if (i10 == 10) {
                if (c10 < '0' || c10 > '9') {
                    return -1;
                }
                return c10 - '0';
            }
            if (i10 == 16) {
                if (c10 >= '0' && c10 <= '9') {
                    return c10 - '0';
                }
                if (c10 >= 'A' && c10 <= 'F') {
                    return c10 - '7';
                }
                if (c10 < 'a' || c10 > 'f') {
                    return -1;
                }
                return c10 - 'W';
            }
        }
        return Character.digit(c10, i10);
    }

    public static int getHexadecimalValue(char c10) {
        switch (c10) {
            case '0':
                return 0;
            case '1':
                return 1;
            case '2':
                return 2;
            case '3':
                return 3;
            case '4':
                return 4;
            case '5':
                return 5;
            case '6':
                return 6;
            case '7':
                return 7;
            case '8':
                return 8;
            case '9':
                return 9;
            default:
                switch (c10) {
                    case 'A':
                        return 10;
                    case 'B':
                        return 11;
                    case 'C':
                        return 12;
                    case 'D':
                        return 13;
                    case 'E':
                        return 14;
                    case 'F':
                        return 15;
                    default:
                        switch (c10) {
                            case 'a':
                                return 10;
                            case 'b':
                                return 11;
                            case 'c':
                                return 12;
                            case 'd':
                                return 13;
                            case 'e':
                                return 14;
                            case 'f':
                                return 15;
                            default:
                                return -1;
                        }
                }
        }
    }

    public static int getNumericValue(char c10) {
        if (c10 < '\u0080') {
            int i10 = OBVIOUS_IDENT_CHAR_NATURES[c10];
            if (i10 == 4) {
                return c10 - '0';
            }
            if (i10 == 16) {
                return c10 - 'W';
            }
            if (i10 == 32) {
                return c10 - '7';
            }
        }
        return Character.getNumericValue(c10);
    }

    public static void initializeTable() {
        Tables = initializeTables("unicode");
    }

    public static void initializeTable17() {
        Tables7 = initializeTables("unicode6");
    }

    public static void initializeTable18() {
        Tables8 = initializeTables("unicode6_2");
    }

    public static void initializeTable19() {
        Tables9 = initializeTables("unicode8");
    }

    public static void initializeTableJava11() {
        Tables11 = initializeTables("unicode10");
    }

    public static void initializeTableJava12() {
        Tables12 = initializeTables("unicode11");
    }

    public static long[][][] initializeTables(String str) {
        Throwable th2;
        Throwable th3;
        Throwable th4;
        Throwable th5;
        Throwable th6;
        Throwable th7;
        long[][][] jArr = {new long[3], new long[4]};
        Throwable th8 = null;
        try {
            DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(ScannerHelper.class.getResourceAsStream(String.valueOf(str) + "/start0.rsc")));
            try {
                long[] jArr2 = new long[1024];
                for (int i10 = 0; i10 < 1024; i10++) {
                    jArr2[i10] = dataInputStream.readLong();
                }
                jArr[0][0] = jArr2;
                dataInputStream.close();
            } catch (Throwable th9) {
                th2 = th9;
                try {
                    dataInputStream.close();
                    throw th2;
                } catch (Throwable th10) {
                    th = th10;
                    if (th2 == null) {
                        throw th;
                    }
                    if (th2 != th) {
                        try {
                            th2.addSuppressed(th);
                        } catch (FileNotFoundException e10) {
                            e10.printStackTrace();
                        } catch (IOException e11) {
                            e11.printStackTrace();
                        }
                    }
                    throw th2;
                }
            }
            try {
                DataInputStream dataInputStream2 = new DataInputStream(new BufferedInputStream(ScannerHelper.class.getResourceAsStream(String.valueOf(str) + "/start1.rsc")));
                try {
                    long[] jArr3 = new long[1024];
                    for (int i11 = 0; i11 < 1024; i11++) {
                        jArr3[i11] = dataInputStream2.readLong();
                    }
                    jArr[0][1] = jArr3;
                    dataInputStream2.close();
                    try {
                        DataInputStream dataInputStream3 = new DataInputStream(new BufferedInputStream(ScannerHelper.class.getResourceAsStream(String.valueOf(str) + "/start2.rsc")));
                        try {
                            long[] jArr4 = new long[1024];
                            for (int i12 = 0; i12 < 1024; i12++) {
                                jArr4[i12] = dataInputStream3.readLong();
                            }
                            jArr[0][2] = jArr4;
                            dataInputStream3.close();
                            try {
                                DataInputStream dataInputStream4 = new DataInputStream(new BufferedInputStream(ScannerHelper.class.getResourceAsStream(String.valueOf(str) + "/part0.rsc")));
                                try {
                                    long[] jArr5 = new long[1024];
                                    for (int i13 = 0; i13 < 1024; i13++) {
                                        jArr5[i13] = dataInputStream4.readLong();
                                    }
                                    jArr[1][0] = jArr5;
                                    dataInputStream4.close();
                                    try {
                                        DataInputStream dataInputStream5 = new DataInputStream(new BufferedInputStream(ScannerHelper.class.getResourceAsStream(String.valueOf(str) + "/part1.rsc")));
                                        try {
                                            long[] jArr6 = new long[1024];
                                            for (int i14 = 0; i14 < 1024; i14++) {
                                                jArr6[i14] = dataInputStream5.readLong();
                                            }
                                            jArr[1][1] = jArr6;
                                            dataInputStream5.close();
                                            try {
                                                DataInputStream dataInputStream6 = new DataInputStream(new BufferedInputStream(ScannerHelper.class.getResourceAsStream(String.valueOf(str) + "/part2.rsc")));
                                                try {
                                                    long[] jArr7 = new long[1024];
                                                    for (int i15 = 0; i15 < 1024; i15++) {
                                                        jArr7[i15] = dataInputStream6.readLong();
                                                    }
                                                    jArr[1][2] = jArr7;
                                                    dataInputStream6.close();
                                                    try {
                                                        DataInputStream dataInputStream7 = new DataInputStream(new BufferedInputStream(ScannerHelper.class.getResourceAsStream(String.valueOf(str) + "/part14.rsc")));
                                                        try {
                                                            long[] jArr8 = new long[1024];
                                                            for (int i16 = 0; i16 < 1024; i16++) {
                                                                jArr8[i16] = dataInputStream7.readLong();
                                                            }
                                                            jArr[1][3] = jArr8;
                                                            dataInputStream7.close();
                                                            return jArr;
                                                        } catch (Throwable th11) {
                                                            dataInputStream7.close();
                                                            throw th11;
                                                        }
                                                    } catch (Throwable th12) {
                                                        if (0 == 0) {
                                                            throw th12;
                                                        }
                                                        if (null != th12) {
                                                            try {
                                                                th8.addSuppressed(th12);
                                                            } catch (FileNotFoundException e12) {
                                                                e12.printStackTrace();
                                                            } catch (IOException e13) {
                                                                e13.printStackTrace();
                                                            }
                                                        }
                                                        throw null;
                                                    }
                                                } catch (Throwable th13) {
                                                    try {
                                                        dataInputStream6.close();
                                                        throw th13;
                                                    } catch (Throwable th14) {
                                                        th7 = th13;
                                                        th = th14;
                                                        if (th7 == null) {
                                                            throw th;
                                                        }
                                                        if (th7 != th) {
                                                            try {
                                                                th7.addSuppressed(th);
                                                            } catch (FileNotFoundException e14) {
                                                                e14.printStackTrace();
                                                            } catch (IOException e15) {
                                                                e15.printStackTrace();
                                                            }
                                                        }
                                                        throw th7;
                                                    }
                                                }
                                            } catch (Throwable th15) {
                                                th = th15;
                                                th7 = null;
                                            }
                                        } catch (Throwable th16) {
                                            th6 = th16;
                                            try {
                                                dataInputStream5.close();
                                                throw th6;
                                            } catch (Throwable th17) {
                                                th = th17;
                                                if (th6 == null) {
                                                    throw th;
                                                }
                                                if (th6 != th) {
                                                    try {
                                                        th6.addSuppressed(th);
                                                    } catch (FileNotFoundException e16) {
                                                        e16.printStackTrace();
                                                    } catch (IOException e17) {
                                                        e17.printStackTrace();
                                                    }
                                                }
                                                throw th6;
                                            }
                                        }
                                    } catch (Throwable th18) {
                                        th = th18;
                                        th6 = null;
                                    }
                                } catch (Throwable th19) {
                                    th5 = th19;
                                    try {
                                        dataInputStream4.close();
                                        throw th5;
                                    } catch (Throwable th20) {
                                        th = th20;
                                        if (th5 == null) {
                                            throw th;
                                        }
                                        if (th5 != th) {
                                            try {
                                                th5.addSuppressed(th);
                                            } catch (FileNotFoundException e18) {
                                                e18.printStackTrace();
                                            } catch (IOException e19) {
                                                e19.printStackTrace();
                                            }
                                        }
                                        throw th5;
                                    }
                                }
                            } catch (Throwable th21) {
                                th = th21;
                                th5 = null;
                            }
                        } catch (Throwable th22) {
                            th4 = th22;
                            try {
                                dataInputStream3.close();
                                throw th4;
                            } catch (Throwable th23) {
                                th = th23;
                                if (th4 == null) {
                                    throw th;
                                }
                                if (th4 != th) {
                                    try {
                                        th4.addSuppressed(th);
                                    } catch (FileNotFoundException e20) {
                                        e20.printStackTrace();
                                    } catch (IOException e21) {
                                        e21.printStackTrace();
                                    }
                                }
                                throw th4;
                            }
                        }
                    } catch (Throwable th24) {
                        th = th24;
                        th4 = null;
                    }
                } catch (Throwable th25) {
                    th3 = th25;
                    try {
                        dataInputStream2.close();
                        throw th3;
                    } catch (Throwable th26) {
                        th = th26;
                        if (th3 == null) {
                            throw th;
                        }
                        if (th3 != th) {
                            try {
                                th3.addSuppressed(th);
                            } catch (FileNotFoundException e22) {
                                e22.printStackTrace();
                            } catch (IOException e23) {
                                e23.printStackTrace();
                            }
                        }
                        throw th3;
                    }
                }
            } catch (Throwable th27) {
                th = th27;
                th3 = null;
            }
        } catch (Throwable th28) {
            th = th28;
            th2 = null;
        }
    }

    private static final boolean isBitSet(long[] jArr, int i10) {
        return (jArr[i10 / 64] & Bits[i10 % 64]) != 0;
    }

    public static boolean isDigit(char c10) throws InvalidInputException {
        if (c10 < '\u0080') {
            return (OBVIOUS_IDENT_CHAR_NATURES[c10] & 4) != 0;
        }
        if (Character.isDigit(c10)) {
            throw new InvalidInputException("Invalid_Digit");
        }
        return false;
    }

    public static boolean isJavaIdentifierPart(char c10) {
        if (c10 < '\u0080') {
            return (OBVIOUS_IDENT_CHAR_NATURES[c10] & 8) != 0;
        }
        return Character.isJavaIdentifierPart(c10);
    }

    private static boolean isJavaIdentifierPart0(int i10, long[][][] jArr) {
        int i11 = (2031616 & i10) >> 16;
        if (i11 == 0) {
            return isBitSet(jArr[1][0], i10 & 65535);
        }
        if (i11 == 1) {
            return isBitSet(jArr[1][1], i10 & 65535);
        }
        if (i11 == 2) {
            return isBitSet(jArr[1][2], i10 & 65535);
        }
        if (i11 != 14) {
            return false;
        }
        return isBitSet(jArr[1][3], i10 & 65535);
    }

    public static boolean isJavaIdentifierStart(char c10) {
        if (c10 < '\u0080') {
            return (OBVIOUS_IDENT_CHAR_NATURES[c10] & 64) != 0;
        }
        return Character.isJavaIdentifierStart(c10);
    }

    private static boolean isJavaIdentifierStart0(int i10, long[][][] jArr) {
        int i11 = (2031616 & i10) >> 16;
        if (i11 == 0) {
            return isBitSet(jArr[0][0], i10 & 65535);
        }
        if (i11 == 1) {
            return isBitSet(jArr[0][1], i10 & 65535);
        }
        if (i11 != 2) {
            return false;
        }
        return isBitSet(jArr[0][2], i10 & 65535);
    }

    public static boolean isLetter(char c10) {
        return c10 < '\u0080' ? (OBVIOUS_IDENT_CHAR_NATURES[c10] & 48) != 0 : Character.isLetter(c10);
    }

    public static boolean isLetterOrDigit(char c10) {
        return c10 < '\u0080' ? (OBVIOUS_IDENT_CHAR_NATURES[c10] & 52) != 0 : Character.isLetterOrDigit(c10);
    }

    public static boolean isLowerCase(char c10) {
        return c10 < '\u0080' ? (OBVIOUS_IDENT_CHAR_NATURES[c10] & 16) != 0 : Character.isLowerCase(c10);
    }

    public static boolean isUpperCase(char c10) {
        return c10 < '\u0080' ? (OBVIOUS_IDENT_CHAR_NATURES[c10] & 32) != 0 : Character.isUpperCase(c10);
    }

    public static boolean isWhitespace(char c10) {
        return c10 < '\u0080' ? (OBVIOUS_IDENT_CHAR_NATURES[c10] & 1) != 0 : Character.isWhitespace(c10);
    }

    private static int toCodePoint(char c10, char c11) {
        return ((c10 - '\ud800') * 1024) + (c11 - C14021s.f95778f) + 65536;
    }

    public static char toLowerCase(char c10) {
        if (c10 < '\u0080') {
            int i10 = OBVIOUS_IDENT_CHAR_NATURES[c10];
            if ((i10 & 16) != 0) {
                return c10;
            }
            if ((i10 & 32) != 0) {
                return (char) (c10 + C15883c.f126249O);
            }
        }
        return Character.toLowerCase(c10);
    }

    public static char toUpperCase(char c10) {
        if (c10 < '\u0080') {
            int i10 = OBVIOUS_IDENT_CHAR_NATURES[c10];
            if ((i10 & 32) != 0) {
                return c10;
            }
            if ((i10 & 16) != 0) {
                return (char) (c10 - ' ');
            }
        }
        return Character.toUpperCase(c10);
    }

    public static boolean isJavaIdentifierPart(long j10, char c10) {
        if (c10 < '\u0080') {
            return (OBVIOUS_IDENT_CHAR_NATURES[c10] & 8) != 0;
        }
        return isJavaIdentifierPart(j10, (int) c10);
    }

    public static boolean isJavaIdentifierStart(long j10, char c10) {
        if (c10 < '\u0080') {
            return (OBVIOUS_IDENT_CHAR_NATURES[c10] & 64) != 0;
        }
        return isJavaIdentifierStart(j10, (int) c10);
    }

    public static boolean isJavaIdentifierPart(long j10, int i10) {
        if (j10 <= ClassFileConstants.JDK1_6) {
            if (Tables == null) {
                initializeTable();
            }
            return isJavaIdentifierPart0(i10, Tables);
        }
        if (j10 <= ClassFileConstants.JDK1_7) {
            if (Tables7 == null) {
                initializeTable17();
            }
            return isJavaIdentifierPart0(i10, Tables7);
        }
        if (j10 <= ClassFileConstants.JDK1_8) {
            if (Tables8 == null) {
                initializeTable18();
            }
            return isJavaIdentifierPart0(i10, Tables8);
        }
        if (j10 <= ClassFileConstants.JDK10) {
            if (Tables9 == null) {
                initializeTable19();
            }
            return isJavaIdentifierPart0(i10, Tables9);
        }
        if (j10 <= ClassFileConstants.JDK11) {
            if (Tables11 == null) {
                initializeTableJava11();
            }
            return isJavaIdentifierPart0(i10, Tables11);
        }
        if (Tables12 == null) {
            initializeTableJava12();
        }
        return isJavaIdentifierPart0(i10, Tables12);
    }

    public static boolean isJavaIdentifierStart(long j10, char c10, char c11) {
        return isJavaIdentifierStart(j10, toCodePoint(c10, c11));
    }

    public static boolean isJavaIdentifierStart(long j10, int i10) {
        if (j10 <= ClassFileConstants.JDK1_6) {
            if (Tables == null) {
                initializeTable();
            }
            return isJavaIdentifierStart0(i10, Tables);
        }
        if (j10 <= ClassFileConstants.JDK1_7) {
            if (Tables7 == null) {
                initializeTable17();
            }
            return isJavaIdentifierStart0(i10, Tables7);
        }
        if (j10 <= ClassFileConstants.JDK1_8) {
            if (Tables8 == null) {
                initializeTable18();
            }
            return isJavaIdentifierStart0(i10, Tables8);
        }
        if (j10 <= ClassFileConstants.JDK10) {
            if (Tables9 == null) {
                initializeTable19();
            }
            return isJavaIdentifierStart0(i10, Tables9);
        }
        if (j10 <= ClassFileConstants.JDK11) {
            if (Tables11 == null) {
                initializeTableJava11();
            }
            return isJavaIdentifierStart0(i10, Tables11);
        }
        if (Tables12 == null) {
            initializeTableJava12();
        }
        return isJavaIdentifierStart0(i10, Tables12);
    }

    public static boolean isJavaIdentifierPart(long j10, char c10, char c11) {
        return isJavaIdentifierPart(j10, toCodePoint(c10, c11));
    }
}
