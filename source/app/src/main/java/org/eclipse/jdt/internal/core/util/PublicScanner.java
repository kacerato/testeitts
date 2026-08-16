package org.eclipse.jdt.internal.core.util;

import android.provider.CallLog;
import android.provider.Telephony;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import b3.s;
import java.lang.reflect.Array;
import org.apache.commons.lang3.CharUtils;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.IScanner;
import org.eclipse.jdt.core.compiler.ITerminalSymbols;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.parser.NLSTag;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.openjdk.tools.doclint.DocLint;
import ve.j;

public class PublicScanner implements IScanner, ITerminalSymbols {
    public static final String BINARY_LITERAL_NOT_BELOW_17 = "Binary_Literal_Not_Below_17";
    public static final int BracketKinds = 3;
    public static final int COMMENT_ARRAYS_SIZE = 30;
    public static final int CurlyBracket = 2;
    public static final String END_OF_SOURCE = "End_Of_Source";
    public static final int HIGH_SURROGATE_MAX_VALUE = 56319;
    public static final int HIGH_SURROGATE_MIN_VALUE = 55296;
    public static final String ILLEGAL_HEXA_LITERAL = "Illegal_Hexa_Literal";
    public static final String INVALID_BINARY = "Invalid_Binary_Literal";
    public static final String INVALID_CHARACTER_CONSTANT = "Invalid_Character_Constant";
    public static final String INVALID_CHAR_IN_STRING = "Invalid_Char_In_String";
    public static final String INVALID_DIGIT = "Invalid_Digit";
    public static final String INVALID_ESCAPE = "Invalid_Escape";
    public static final String INVALID_FLOAT = "Invalid_Float_Literal";
    public static final String INVALID_HEXA = "Invalid_Hexa_Literal";
    public static final String INVALID_HIGH_SURROGATE = "Invalid_High_Surrogate";
    public static final String INVALID_INPUT = "Invalid_Input";
    public static final String INVALID_LOW_SURROGATE = "Invalid_Low_Surrogate";
    public static final String INVALID_OCTAL = "Invalid_Octal_Literal";
    public static final String INVALID_UNDERSCORE = "Invalid_Underscore";
    public static final String INVALID_UNICODE_ESCAPE = "Invalid_Unicode_Escape";
    static final int InternalTableSize = 6;
    private static final int InternalTokenNameIdentifier = 5;
    public static final int LOW_SURROGATE_MAX_VALUE = 57343;
    public static final int LOW_SURROGATE_MIN_VALUE = 56320;
    public static final String NULL_SOURCE_STRING = "Null_Source_String";
    public static final int OptimizedLength = 7;
    public static final int RoundBracket = 0;
    public static final int SquareBracket = 1;
    public static final char TAG_POSTFIX = '$';
    public static final int TAG_POSTFIX_LENGTH = 1;
    public static final char[] TAG_PREFIX;
    public static final int TAG_PREFIX_LENGTH;
    static final int TableSize = 30;
    public static final String UNDERSCORES_IN_LITERALS_NOT_BELOW_17 = "Underscores_In_Literals_Not_Below_17";
    public static final String UNTERMINATED_COMMENT = "Unterminated_Comment";
    public static final String UNTERMINATED_STRING = "Unterminated_String";
    public final char[][][][] charArray_length;
    public boolean checkNonExternalizedStringLiterals;
    public int commentPtr;
    public int[] commentStarts;
    public int[] commentStops;
    public int[] commentTagStarts;
    public long complianceLevel;
    public boolean containsAssertKeyword;
    public char currentCharacter;
    public int currentPosition;
    public boolean diet;
    public int eofPosition;
    public int foundTaskCount;
    public char[][] foundTaskMessages;
    public int[][] foundTaskPositions;
    public char[][] foundTaskPriorities;
    public char[][] foundTaskTags;
    public int initialPosition;
    public boolean insideRecovery;
    public boolean isTaskCaseSensitive;
    protected int lastCommentLinePosition;
    protected int lastPosition;
    public int[] lineEnds;
    public int linePtr;
    int newEntry2;
    int newEntry3;
    int newEntry4;
    int newEntry5;
    int newEntry6;
    private NLSTag[] nlsTags;
    protected int nlsTagsPtr;
    public boolean recordLineSeparator;
    public boolean returnOnlyGreater;
    public boolean scanningFloatLiteral;
    public boolean skipComments;
    public char[] source;
    public long sourceLevel;
    public int startPosition;
    public char[][] taskPriorities;
    public char[][] taskTags;
    public boolean tokenizeComments;
    public boolean tokenizeWhiteSpace;
    public boolean unicodeAsBackSlash;
    public boolean useAssertAsAnIndentifier;
    public boolean useEnumAsAnIndentifier;
    public boolean wasAcr;
    public char[] withoutUnicodeBuffer;
    public int withoutUnicodePtr;
    private static final int[] EMPTY_LINE_ENDS = org.eclipse.jdt.internal.compiler.util.Util.EMPTY_INT_ARRAY;
    static final char[] charArray_a = {'a'};
    static final char[] charArray_b = {'b'};
    static final char[] charArray_c = {'c'};
    static final char[] charArray_d = {'d'};
    static final char[] charArray_e = {'e'};
    static final char[] charArray_f = {'f'};
    static final char[] charArray_g = {'g'};
    static final char[] charArray_h = {'h'};
    static final char[] charArray_i = {'i'};
    static final char[] charArray_j = {'j'};
    static final char[] charArray_k = {'k'};
    static final char[] charArray_l = {'l'};
    static final char[] charArray_m = {'m'};
    static final char[] charArray_n = {'n'};
    static final char[] charArray_o = {'o'};
    static final char[] charArray_p = {'p'};
    static final char[] charArray_q = {'q'};
    static final char[] charArray_r = {'r'};
    static final char[] charArray_s = {'s'};
    static final char[] charArray_t = {'t'};
    static final char[] charArray_u = {'u'};
    static final char[] charArray_v = {'v'};
    static final char[] charArray_w = {'w'};
    static final char[] charArray_x = {'x'};
    static final char[] charArray_y = {'y'};
    static final char[] charArray_z = {'z'};
    static final char[] initCharArray = new char[6];

    static {
        char[] charArray = "//$NON-NLS-".toCharArray();
        TAG_PREFIX = charArray;
        TAG_PREFIX_LENGTH = charArray.length;
    }

    public PublicScanner() {
        this(false, false, false, ClassFileConstants.JDK1_3, null, null, true);
    }

    private final void consumeDigits(int i10) throws InvalidInputException {
        consumeDigits(i10, false);
    }

    private final int consumeDigits0(int i10, int i11, int i12, boolean z10) throws InvalidInputException {
        int i13;
        if (getNextChar('_')) {
            if (z10) {
                return i12;
            }
            do {
            } while (getNextChar('_'));
            i13 = i11;
        } else {
            i13 = 0;
        }
        if (!getNextCharAsDigit(i10)) {
            return i13 == i11 ? i12 : i13;
        }
        do {
        } while (getNextCharAsDigit(i10));
        int consumeDigits0 = consumeDigits0(i10, i11, i12, false);
        return consumeDigits0 == 0 ? i13 : consumeDigits0;
    }

    private int extractInt(char[] cArr, int i10, int i11) {
        int i12;
        int i13 = 0;
        while (i10 < i11) {
            switch (cArr[i10]) {
                case '0':
                    i12 = 0;
                    break;
                case '1':
                    i12 = 1;
                    break;
                case '2':
                    i12 = 2;
                    break;
                case '3':
                    i12 = 3;
                    break;
                case '4':
                    i12 = 4;
                    break;
                case '5':
                    i12 = 5;
                    break;
                case '6':
                    i12 = 6;
                    break;
                case '7':
                    i12 = 7;
                    break;
                case '8':
                    i12 = 8;
                    break;
                case '9':
                    i12 = 9;
                    break;
                default:
                    throw new NumberFormatException();
            }
            int i14 = i13 * 10;
            if (i12 < 0) {
                throw new NumberFormatException();
            }
            i13 = i14 + i12;
            i10++;
        }
        return i13;
    }

    private int internalScanIdentifierOrKeyword(int i10, int i11, char[] cArr) {
        switch (cArr[i10]) {
            case 'a':
                if (i11 != 6) {
                    return (i11 == 8 && cArr[i10 + 1] == 'b' && cArr[i10 + 2] == 's' && cArr[i10 + 3] == 't' && cArr[i10 + 4] == 'r' && cArr[i10 + 5] == 'a' && cArr[i10 + 6] == 'c' && cArr[i10 + 7] == 't') ? 98 : 5;
                }
                if (cArr[i10 + 1] == 's' && cArr[i10 + 2] == 's' && cArr[i10 + 3] == 'e' && cArr[i10 + 4] == 'r' && cArr[i10 + 5] == 't') {
                    if (this.sourceLevel >= ClassFileConstants.JDK1_4) {
                        this.containsAssertKeyword = true;
                        return 118;
                    }
                    this.useAssertAsAnIndentifier = true;
                }
                return 5;
            case 'b':
                return i11 != 4 ? i11 != 5 ? (i11 == 7 && cArr[i10 + 1] == 'o' && cArr[i10 + 2] == 'o' && cArr[i10 + 3] == 'l' && cArr[i10 + 4] == 'e' && cArr[i10 + 5] == 'a' && cArr[i10 + 6] == 'n') ? 18 : 5 : (cArr[i10 + 1] == 'r' && cArr[i10 + 2] == 'e' && cArr[i10 + 3] == 'a' && cArr[i10 + 4] == 'k') ? 119 : 5 : (cArr[i10 + 1] == 'y' && cArr[i10 + 2] == 't' && cArr[i10 + 3] == 'e') ? 19 : 5;
            case 'c':
                if (i11 == 4) {
                    char c10 = cArr[i10 + 1];
                    return c10 == 'a' ? (cArr[i10 + 2] == 's' && cArr[i10 + 3] == 'e') ? 211 : 5 : (c10 == 'h' && cArr[i10 + 2] == 'a' && cArr[i10 + 3] == 'r') ? 20 : 5;
                }
                if (i11 != 5) {
                    return (i11 == 8 && cArr[i10 + 1] == 'o' && cArr[i10 + 2] == 'n' && cArr[i10 + 3] == 't' && cArr[i10 + 4] == 'i' && cArr[i10 + 5] == 'n' && cArr[i10 + 6] == 'u' && cArr[i10 + 7] == 'e') ? 120 : 5;
                }
                char c11 = cArr[i10 + 1];
                return c11 == 'a' ? (cArr[i10 + 2] == 't' && cArr[i10 + 3] == 'c' && cArr[i10 + 4] == 'h') ? 225 : 5 : c11 == 'l' ? (cArr[i10 + 2] == 'a' && cArr[i10 + 3] == 's' && cArr[i10 + 4] == 's') ? 165 : 5 : (c11 == 'o' && cArr[i10 + 2] == 'n' && cArr[i10 + 3] == 's' && cArr[i10 + 4] == 't') ? 403 : 5;
            case 'd':
                return i11 != 2 ? i11 != 6 ? (i11 == 7 && cArr[i10 + 1] == 'e' && cArr[i10 + 2] == 'f' && cArr[i10 + 3] == 'a' && cArr[i10 + 4] == 'u' && cArr[i10 + 5] == 'l' && cArr[i10 + 6] == 't') ? 212 : 5 : (cArr[i10 + 1] == 'o' && cArr[i10 + 2] == 'u' && cArr[i10 + 3] == 'b' && cArr[i10 + 4] == 'l' && cArr[i10 + 5] == 'e') ? 21 : 5 : cArr[i10 + 1] == 'o' ? 121 : 5;
            case 'e':
                if (i11 != 4) {
                    return (i11 == 7 && cArr[i10 + 1] == 'x' && cArr[i10 + 2] == 't' && cArr[i10 + 3] == 'e' && cArr[i10 + 4] == 'n' && cArr[i10 + 5] == 'd' && cArr[i10 + 6] == 's') ? 243 : 5;
                }
                char c12 = cArr[i10 + 1];
                if (c12 == 'l') {
                    return (cArr[i10 + 2] == 's' && cArr[i10 + 3] == 'e') ? 213 : 5;
                }
                if (c12 == 'n' && cArr[i10 + 2] == 'u' && cArr[i10 + 3] == 'm') {
                    if (this.sourceLevel >= ClassFileConstants.JDK1_5) {
                        return 400;
                    }
                    this.useEnumAsAnIndentifier = true;
                }
                return 5;
            case 'f':
                if (i11 == 3) {
                    return (cArr[i10 + 1] == 'o' && cArr[i10 + 2] == 'r') ? 122 : 5;
                }
                if (i11 != 5) {
                    return (i11 == 7 && cArr[i10 + 1] == 'i' && cArr[i10 + 2] == 'n' && cArr[i10 + 3] == 'a' && cArr[i10 + 4] == 'l' && cArr[i10 + 5] == 'l' && cArr[i10 + 6] == 'y') ? 226 : 5;
                }
                char c13 = cArr[i10 + 1];
                return c13 == 'i' ? (cArr[i10 + 2] == 'n' && cArr[i10 + 3] == 'a' && cArr[i10 + 4] == 'l') ? 99 : 5 : c13 == 'l' ? (cArr[i10 + 2] == 'o' && cArr[i10 + 3] == 'a' && cArr[i10 + 4] == 't') ? 22 : 5 : (c13 == 'a' && cArr[i10 + 2] == 'l' && cArr[i10 + 3] == 's' && cArr[i10 + 4] == 'e') ? 37 : 5;
            case 'g':
                return (i11 == 4 && cArr[i10 + 1] == 'o' && cArr[i10 + 2] == 't' && cArr[i10 + 3] == 'o') ? 404 : 5;
            case 'h':
            case 'j':
            case 'k':
            case 'm':
            case 'o':
            case 'q':
            case 'u':
            default:
                return 5;
            case 'i':
                if (i11 == 2) {
                    return cArr[i10 + 1] == 'f' ? 123 : 5;
                }
                if (i11 == 3) {
                    return (cArr[i10 + 1] == 'n' && cArr[i10 + 2] == 't') ? 23 : 5;
                }
                if (i11 == 6) {
                    return (cArr[i10 + 1] == 'm' && cArr[i10 + 2] == 'p' && cArr[i10 + 3] == 'o' && cArr[i10 + 4] == 'r' && cArr[i10 + 5] == 't') ? 191 : 5;
                }
                if (i11 == 9) {
                    return (cArr[i10 + 1] == 'n' && cArr[i10 + 2] == 't' && cArr[i10 + 3] == 'e' && cArr[i10 + 4] == 'r' && cArr[i10 + 5] == 'f' && cArr[i10 + 6] == 'a' && cArr[i10 + 7] == 'c' && cArr[i10 + 8] == 'e') ? 180 : 5;
                }
                if (i11 != 10) {
                    return 5;
                }
                char c14 = cArr[i10 + 1];
                return c14 == 'm' ? (cArr[i10 + 2] == 'p' && cArr[i10 + 3] == 'l' && cArr[i10 + 4] == 'e' && cArr[i10 + 5] == 'm' && cArr[i10 + 6] == 'e' && cArr[i10 + 7] == 'n' && cArr[i10 + 8] == 't' && cArr[i10 + 9] == 's') ? 268 : 5 : (c14 == 'n' && cArr[i10 + 2] == 's' && cArr[i10 + 3] == 't' && cArr[i10 + 4] == 'a' && cArr[i10 + 5] == 'n' && cArr[i10 + 6] == 'c' && cArr[i10 + 7] == 'e' && cArr[i10 + 8] == 'o' && cArr[i10 + 9] == 'f') ? 65 : 5;
            case 'l':
                return (i11 == 4 && cArr[i10 + 1] == 'o' && cArr[i10 + 2] == 'n' && cArr[i10 + 3] == 'g') ? 24 : 5;
            case 'n':
                return i11 != 3 ? i11 != 4 ? (i11 == 6 && cArr[i10 + 1] == 'a' && cArr[i10 + 2] == 't' && cArr[i10 + 3] == 'i' && cArr[i10 + 4] == 'v' && cArr[i10 + 5] == 'e') ? 100 : 5 : (cArr[i10 + 1] == 'u' && cArr[i10 + 2] == 'l' && cArr[i10 + 3] == 'l') ? 38 : 5 : (cArr[i10 + 1] == 'e' && cArr[i10 + 2] == 'w') ? 32 : 5;
            case 'p':
                if (i11 == 6) {
                    return (cArr[i10 + 1] == 'u' && cArr[i10 + 2] == 'b' && cArr[i10 + 3] == 'l' && cArr[i10 + 4] == 'i' && cArr[i10 + 5] == 'c') ? 103 : 5;
                }
                if (i11 != 7) {
                    return (i11 == 9 && cArr[i10 + 1] == 'r' && cArr[i10 + 2] == 'o' && cArr[i10 + 3] == 't' && cArr[i10 + 4] == 'e' && cArr[i10 + 5] == 'c' && cArr[i10 + 6] == 't' && cArr[i10 + 7] == 'e' && cArr[i10 + 8] == 'd') ? 102 : 5;
                }
                char c15 = cArr[i10 + 1];
                return c15 == 'a' ? (cArr[i10 + 2] == 'c' && cArr[i10 + 3] == 'k' && cArr[i10 + 4] == 'a' && cArr[i10 + 5] == 'g' && cArr[i10 + 6] == 'e') ? 214 : 5 : (c15 == 'r' && cArr[i10 + 2] == 'i' && cArr[i10 + 3] == 'v' && cArr[i10 + 4] == 'a' && cArr[i10 + 5] == 't' && cArr[i10 + 6] == 'e') ? 101 : 5;
            case 'r':
                return (i11 == 6 && cArr[i10 + 1] == 'e' && cArr[i10 + 2] == 't' && cArr[i10 + 3] == 'u' && cArr[i10 + 4] == 'r' && cArr[i10 + 5] == 'n') ? 124 : 5;
            case 's':
                if (i11 == 5) {
                    char c16 = cArr[i10 + 1];
                    return c16 == 'h' ? (cArr[i10 + 2] == 'o' && cArr[i10 + 3] == 'r' && cArr[i10 + 4] == 't') ? 25 : 5 : (c16 == 'u' && cArr[i10 + 2] == 'p' && cArr[i10 + 3] == 'e' && cArr[i10 + 4] == 'r') ? 33 : 5;
                }
                if (i11 != 6) {
                    return i11 != 8 ? (i11 == 12 && cArr[i10 + 1] == 'y' && cArr[i10 + 2] == 'n' && cArr[i10 + 3] == 'c' && cArr[i10 + 4] == 'h' && cArr[i10 + 5] == 'r' && cArr[i10 + 6] == 'o' && cArr[i10 + 7] == 'n' && cArr[i10 + 8] == 'i' && cArr[i10 + 9] == 'z' && cArr[i10 + 10] == 'e' && cArr[i10 + 11] == 'd') ? 85 : 5 : (cArr[i10 + 1] == 't' && cArr[i10 + 2] == 'r' && cArr[i10 + 3] == 'i' && cArr[i10 + 4] == 'c' && cArr[i10 + 5] == 't' && cArr[i10 + 6] == 'f' && cArr[i10 + 7] == 'p') ? 104 : 5;
                }
                char c17 = cArr[i10 + 1];
                return c17 == 't' ? (cArr[i10 + 2] == 'a' && cArr[i10 + 3] == 't' && cArr[i10 + 4] == 'i' && cArr[i10 + 5] == 'c') ? 94 : 5 : (c17 == 'w' && cArr[i10 + 2] == 'i' && cArr[i10 + 3] == 't' && cArr[i10 + 4] == 'c' && cArr[i10 + 5] == 'h') ? 125 : 5;
            case 't':
                if (i11 == 3) {
                    return (cArr[i10 + 1] == 'r' && cArr[i10 + 2] == 'y') ? 127 : 5;
                }
                if (i11 != 4) {
                    return i11 != 5 ? i11 != 6 ? (i11 == 9 && cArr[i10 + 1] == 'r' && cArr[i10 + 2] == 'a' && cArr[i10 + 3] == 'n' && cArr[i10 + 4] == 's' && cArr[i10 + 5] == 'i' && cArr[i10 + 6] == 'e' && cArr[i10 + 7] == 'n' && cArr[i10 + 8] == 't') ? 105 : 5 : (cArr[i10 + 1] == 'h' && cArr[i10 + 2] == 'r' && cArr[i10 + 3] == 'o' && cArr[i10 + 4] == 'w' && cArr[i10 + 5] == 's') ? 227 : 5 : (cArr[i10 + 1] == 'h' && cArr[i10 + 2] == 'r' && cArr[i10 + 3] == 'o' && cArr[i10 + 4] == 'w') ? 126 : 5;
                }
                char c18 = cArr[i10 + 1];
                return c18 == 'h' ? (cArr[i10 + 2] == 'i' && cArr[i10 + 3] == 's') ? 34 : 5 : (c18 == 'r' && cArr[i10 + 2] == 'u' && cArr[i10 + 3] == 'e') ? 39 : 5;
            case 'v':
                return i11 != 4 ? (i11 == 8 && cArr[i10 + 1] == 'o' && cArr[i10 + 2] == 'l' && cArr[i10 + 3] == 'a' && cArr[i10 + 4] == 't' && cArr[i10 + 5] == 'i' && cArr[i10 + 6] == 'l' && cArr[i10 + 7] == 'e') ? 106 : 5 : (cArr[i10 + 1] == 'o' && cArr[i10 + 2] == 'i' && cArr[i10 + 3] == 'd') ? 26 : 5;
            case 'w':
                return (i11 == 5 && cArr[i10 + 1] == 'h' && cArr[i10 + 2] == 'i' && cArr[i10 + 3] == 'l' && cArr[i10 + 4] == 'e') ? 117 : 5;
        }
    }

    public static boolean isIdentifier(int i10) {
        return i10 == 22;
    }

    public static boolean isKeyword(int i10) {
        if (i10 == 17 || i10 == 48 || i10 == 67 || i10 == 70 || i10 == 120 || i10 == 123 || i10 == 85 || i10 == 86) {
            return true;
        }
        switch (i10) {
            case 34:
            case 35:
            case 36:
                return true;
            default:
                switch (i10) {
                    case 38:
                    case 39:
                    case 40:
                        return true;
                    default:
                        switch (i10) {
                            case 50:
                            case 51:
                            case 52:
                            case 53:
                            case 54:
                            case 55:
                            case 56:
                            case 57:
                            case 58:
                            case 59:
                            case 60:
                                return true;
                            default:
                                switch (i10) {
                                    case 73:
                                    case 74:
                                    case 75:
                                    case 76:
                                    case 77:
                                    case 78:
                                    case 79:
                                    case 80:
                                    case 81:
                                    case 82:
                                    case 83:
                                        return true;
                                    default:
                                        switch (i10) {
                                            case 99:
                                            case 100:
                                            case 101:
                                            case 102:
                                            case 103:
                                            case 104:
                                            case 105:
                                            case 106:
                                            case 107:
                                            case 108:
                                            case 109:
                                            case 110:
                                            case 111:
                                            case 112:
                                                return true;
                                            default:
                                                return false;
                                        }
                                }
                        }
                }
        }
    }

    public static boolean isLiteral(int i10) {
        switch (i10) {
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
                return true;
            default:
                return false;
        }
    }

    private void parseTags() {
        char[] cArr;
        int i10;
        int i11;
        NLSTag nLSTag;
        int i12 = this.startPosition;
        int i13 = this.linePtr;
        int i14 = i13 >= 0 ? this.lineEnds[i13] + 1 : 0;
        while (ScannerHelper.isWhitespace(this.source[i14])) {
            i14++;
        }
        if (i12 == i14) {
            return;
        }
        int i15 = this.currentPosition;
        int i16 = this.withoutUnicodePtr;
        if (i16 != 0) {
            cArr = new char[i16];
            System.arraycopy(this.withoutUnicodeBuffer, 1, cArr, 0, i16);
            i10 = this.withoutUnicodePtr;
            i11 = i12;
            i12 = 1;
        } else {
            cArr = this.source;
            i10 = i15;
            i11 = 0;
        }
        int indexOf = CharOperation.indexOf(TAG_PREFIX, cArr, true, i12, i10);
        if (indexOf != -1) {
            if (this.nlsTags == null) {
                this.nlsTags = new NLSTag[10];
                this.nlsTagsPtr = 0;
            }
            while (indexOf != -1) {
                int i17 = TAG_PREFIX_LENGTH + indexOf;
                int indexOf2 = CharOperation.indexOf('$', cArr, i17, i10);
                if (indexOf2 != -1) {
                    int i18 = i13 + 1;
                    try {
                        nLSTag = new NLSTag(indexOf + i11, indexOf2 + i11, i18, extractInt(cArr, i17, indexOf2));
                    } catch (NumberFormatException unused) {
                        nLSTag = new NLSTag(indexOf + i11, indexOf2 + i11, i18, -1);
                    }
                    int i19 = this.nlsTagsPtr;
                    NLSTag[] nLSTagArr = this.nlsTags;
                    if (i19 == nLSTagArr.length) {
                        NLSTag[] nLSTagArr2 = new NLSTag[i19 + 10];
                        this.nlsTags = nLSTagArr2;
                        System.arraycopy(nLSTagArr, 0, nLSTagArr2, 0, i19);
                    }
                    NLSTag[] nLSTagArr3 = this.nlsTags;
                    int i20 = this.nlsTagsPtr;
                    this.nlsTagsPtr = i20 + 1;
                    nLSTagArr3[i20] = nLSTag;
                    i17 = indexOf2;
                }
                indexOf = CharOperation.indexOf(TAG_PREFIX, cArr, true, i17, i10);
            }
        }
    }

    public final boolean atEnd() {
        return this.eofPosition <= this.currentPosition;
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0069, code lost:
    
        if (r3 != null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x006b, code lost:
    
        r13.foundTaskTags = new char[5];
        r13.foundTaskMessages = new char[5];
        r13.foundTaskPriorities = new char[5];
        r13.foundTaskPositions = new int[5];
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00b2, code lost:
    
        r3 = r13.taskPriorities;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00b4, code lost:
    
        if (r3 == null) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00b7, code lost:
    
        if (r5 >= r3.length) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00b9, code lost:
    
        r3 = r3[r5];
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00bd, code lost:
    
        r5 = r13.foundTaskTags;
        r9 = r13.foundTaskCount;
        r5[r9] = r6;
        r13.foundTaskPriorities[r9] = r3;
        r13.foundTaskPositions[r9] = new int[]{r14, r8 - 1};
        r13.foundTaskMessages[r9] = org.eclipse.jdt.core.compiler.CharOperation.NO_CHAR;
        r13.foundTaskCount = r9 + 1;
        r14 = r14 + (r7 - 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00bc, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x007d, code lost:
    
        r9 = r13.foundTaskCount;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0080, code lost:
    
        if (r9 != r3.length) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0082, code lost:
    
        r10 = new char[r9 * 2];
        r13.foundTaskTags = r10;
        java.lang.System.arraycopy(r3, 0, r10, 0, r9);
        r3 = r13.foundTaskMessages;
        r9 = r13.foundTaskCount;
        r10 = new char[r9 * 2];
        r13.foundTaskMessages = r10;
        java.lang.System.arraycopy(r3, 0, r10, 0, r9);
        r3 = r13.foundTaskPriorities;
        r9 = r13.foundTaskCount;
        r10 = new char[r9 * 2];
        r13.foundTaskPriorities = r10;
        java.lang.System.arraycopy(r3, 0, r10, 0, r9);
        r3 = r13.foundTaskPositions;
        r9 = r13.foundTaskCount;
        r10 = new int[r9 * 2];
        r13.foundTaskPositions = r10;
        java.lang.System.arraycopy(r3, 0, r10, 0, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x017a, code lost:
    
        if (r6 == (-1)) goto L108;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void checkTaskTag(int i10, int i11) throws InvalidInputException {
        int i12;
        int i13;
        int i14;
        char c10;
        char c11;
        char[] cArr = this.source;
        int i15 = this.foundTaskCount;
        if (i15 <= 0 || this.foundTaskPositions[i15 - 1][0] < i10) {
            char c12 = cArr[i10 + 1];
            int i16 = i10 + 2;
            while (i16 < i11 && i16 < this.eofPosition) {
                if (c12 != '@') {
                    int i17 = 0;
                    while (true) {
                        char[][] cArr2 = this.taskTags;
                        if (i17 < cArr2.length) {
                            char[] cArr3 = cArr2[i17];
                            int length = cArr3.length;
                            if (length != 0 && (!ScannerHelper.isJavaIdentifierStart(this.complianceLevel, cArr3[0]) || !ScannerHelper.isJavaIdentifierPart(this.complianceLevel, c12))) {
                                while (true) {
                                    if (i14 >= length) {
                                        int i18 = i16 + length;
                                        if (i18 >= i11 || !ScannerHelper.isJavaIdentifierPart(this.complianceLevel, cArr[i18 - 1]) || !ScannerHelper.isJavaIdentifierPart(this.complianceLevel, cArr[i18])) {
                                            break;
                                        }
                                    } else {
                                        int i19 = i16 + i14;
                                        i14 = (i19 < this.eofPosition && i19 < i11 && ((c10 = cArr[i19]) == (c11 = cArr3[i14]) || (!this.isTaskCaseSensitive && ScannerHelper.toLowerCase(c10) == ScannerHelper.toLowerCase(c11)))) ? i14 + 1 : 0;
                                    }
                                }
                            }
                            i17++;
                        }
                    }
                }
                c12 = cArr[i16];
                i16++;
            }
            int i20 = i15;
            boolean z10 = false;
            while (true) {
                i12 = this.foundTaskCount;
                if (i20 >= i12) {
                    break;
                }
                int[][] iArr = this.foundTaskPositions;
                int length2 = iArr[i20][0] + this.foundTaskTags[i20].length;
                int i21 = i20 + 1;
                int i22 = i21 < i12 ? iArr[i21][0] - 1 : i11 - 1;
                if (i22 < length2) {
                    i22 = length2;
                }
                for (int i23 = length2; i23 < i22; i23++) {
                    char c13 = cArr[i23];
                    if (c13 == '\n' || c13 == '\r') {
                        i13 = i23 - 1;
                        break;
                    }
                }
                i13 = -1;
                if (i13 == -1) {
                    int i24 = i22;
                    while (true) {
                        if (i24 <= length2) {
                            break;
                        }
                        if (cArr[i24] == '*') {
                            i13 = i24 - 1;
                            break;
                        }
                        i24--;
                    }
                }
                i22 = i13;
                if (length2 == i22) {
                    z10 = true;
                } else {
                    while (CharOperation.isWhitespace(cArr[i22]) && length2 <= i22) {
                        i22--;
                    }
                    this.foundTaskPositions[i20][1] = i22;
                    int i25 = (i22 - length2) + 1;
                    char[] cArr4 = new char[i25];
                    System.arraycopy(cArr, length2, cArr4, 0, i25);
                    this.foundTaskMessages[i20] = cArr4;
                }
                i20 = i21;
            }
            if (z10) {
                while (i15 < i12) {
                    if (this.foundTaskMessages[i15].length == 0) {
                        int i26 = i15 + 1;
                        while (true) {
                            if (i26 >= i12) {
                                break;
                            }
                            char[][] cArr5 = this.foundTaskMessages;
                            char[] cArr6 = cArr5[i26];
                            if (cArr6.length != 0) {
                                cArr5[i15] = cArr6;
                                int[][] iArr2 = this.foundTaskPositions;
                                iArr2[i15][1] = iArr2[i26][1];
                                break;
                            }
                            i26++;
                        }
                    }
                    i15++;
                }
            }
        }
    }

    public char[] getCurrentIdentifierSource() {
        int i10 = this.withoutUnicodePtr;
        if (i10 != 0) {
            char[] cArr = new char[i10];
            System.arraycopy(this.withoutUnicodeBuffer, 1, cArr, 0, i10);
            return cArr;
        }
        int i11 = this.currentPosition;
        int i12 = this.startPosition;
        int i13 = i11 - i12;
        if (i13 == this.eofPosition) {
            return this.source;
        }
        switch (i13) {
            case 1:
                return optimizedCurrentTokenSource1();
            case 2:
                return optimizedCurrentTokenSource2();
            case 3:
                return optimizedCurrentTokenSource3();
            case 4:
                return optimizedCurrentTokenSource4();
            case 5:
                return optimizedCurrentTokenSource5();
            case 6:
                return optimizedCurrentTokenSource6();
            default:
                char[] cArr2 = new char[i13];
                System.arraycopy(this.source, i12, cArr2, 0, i13);
                return cArr2;
        }
    }

    public final String getCurrentStringLiteral() {
        int i10 = this.withoutUnicodePtr;
        if (i10 != 0) {
            return new String(this.withoutUnicodeBuffer, 2, i10 - 2);
        }
        char[] cArr = this.source;
        int i11 = this.startPosition;
        return new String(cArr, i11 + 1, (this.currentPosition - i11) - 2);
    }

    @Override
    public int getCurrentTokenEndPosition() {
        return this.currentPosition - 1;
    }

    @Override
    public char[] getCurrentTokenSource() {
        int i10 = this.withoutUnicodePtr;
        if (i10 != 0) {
            char[] cArr = new char[i10];
            System.arraycopy(this.withoutUnicodeBuffer, 1, cArr, 0, i10);
            return cArr;
        }
        char[] cArr2 = this.source;
        int i11 = this.startPosition;
        int i12 = this.currentPosition - i11;
        char[] cArr3 = new char[i12];
        System.arraycopy(cArr2, i11, cArr3, 0, i12);
        return cArr3;
    }

    public char[] getCurrentTokenSourceString() {
        int i10 = this.withoutUnicodePtr;
        if (i10 != 0) {
            char[] cArr = new char[i10 - 2];
            System.arraycopy(this.withoutUnicodeBuffer, 2, cArr, 0, i10 - 2);
            return cArr;
        }
        char[] cArr2 = this.source;
        int i11 = this.startPosition;
        int i12 = (this.currentPosition - i11) - 2;
        char[] cArr3 = new char[i12];
        System.arraycopy(cArr2, i11 + 1, cArr3, 0, i12);
        return cArr3;
    }

    @Override
    public int getCurrentTokenStartPosition() {
        return this.startPosition;
    }

    public final String getCurrentTokenString() {
        int i10 = this.withoutUnicodePtr;
        if (i10 != 0) {
            return new String(this.withoutUnicodeBuffer, 1, i10);
        }
        char[] cArr = this.source;
        int i11 = this.startPosition;
        return new String(cArr, i11, this.currentPosition - i11);
    }

    @Override
    public final int getLineEnd(int i10) {
        int[] iArr = this.lineEnds;
        if (iArr == null || this.linePtr == -1 || i10 > iArr.length + 1 || i10 <= 0) {
            return -1;
        }
        return i10 == iArr.length + 1 ? this.eofPosition : iArr[i10 - 1];
    }

    @Override
    public final int[] getLineEnds() {
        int i10 = this.linePtr;
        if (i10 == -1) {
            return EMPTY_LINE_ENDS;
        }
        int[] iArr = new int[i10 + 1];
        System.arraycopy(this.lineEnds, 0, iArr, 0, i10 + 1);
        return iArr;
    }

    @Override
    public final int getLineNumber(int i10) {
        return org.eclipse.jdt.internal.compiler.util.Util.getLineNumber(i10, this.lineEnds, 0, this.linePtr);
    }

    @Override
    public final int getLineStart(int i10) {
        int[] iArr = this.lineEnds;
        if (iArr == null || this.linePtr == -1 || i10 > iArr.length + 1 || i10 <= 0) {
            return -1;
        }
        return i10 == 1 ? this.initialPosition : iArr[i10 - 2] + 1;
    }

    public NLSTag[] getNLSTags() {
        int i10 = this.nlsTagsPtr;
        if (i10 == 0) {
            return null;
        }
        NLSTag[] nLSTagArr = new NLSTag[i10];
        System.arraycopy(this.nlsTags, 0, nLSTagArr, 0, i10);
        this.nlsTagsPtr = 0;
        return nLSTagArr;
    }

    public final int getNextChar() {
        try {
            char[] cArr = this.source;
            int i10 = this.currentPosition;
            int i11 = i10 + 1;
            this.currentPosition = i11;
            char c10 = cArr[i10];
            this.currentCharacter = c10;
            if (c10 == '\\' && cArr[i11] == 'u') {
                getNextUnicodeChar();
            } else {
                this.unicodeAsBackSlash = false;
                if (this.withoutUnicodePtr != 0) {
                    unicodeStore();
                }
            }
            return this.currentCharacter;
        } catch (IndexOutOfBoundsException | InvalidInputException unused) {
            return -1;
        }
    }

    public final boolean getNextCharAsDigit() throws InvalidInputException {
        int i10 = this.currentPosition;
        if (i10 >= this.eofPosition) {
            return false;
        }
        try {
            char[] cArr = this.source;
            int i11 = i10 + 1;
            this.currentPosition = i11;
            char c10 = cArr[i10];
            this.currentCharacter = c10;
            if (c10 == '\\' && cArr[i11] == 'u') {
                getNextUnicodeChar();
                if (ScannerHelper.isDigit(this.currentCharacter)) {
                    return true;
                }
                this.currentPosition = i10;
                this.withoutUnicodePtr--;
                return false;
            }
            if (!ScannerHelper.isDigit(c10)) {
                this.currentPosition = i10;
                return false;
            }
            if (this.withoutUnicodePtr != 0) {
                unicodeStore();
            }
            return true;
        } catch (IndexOutOfBoundsException unused) {
            this.currentPosition = i10;
            return false;
        } catch (InvalidInputException unused2) {
            this.currentPosition = i10;
            return false;
        }
    }

    public boolean getNextCharAsJavaIdentifierPart() {
        boolean z10;
        boolean isJavaIdentifierPart;
        int i10 = this.currentPosition;
        if (i10 >= this.eofPosition) {
            return false;
        }
        int i11 = this.withoutUnicodePtr;
        try {
            char[] cArr = this.source;
            int i12 = i10 + 1;
            this.currentPosition = i12;
            char c10 = cArr[i10];
            this.currentCharacter = c10;
            if (c10 == '\\' && cArr[i12] == 'u') {
                getNextUnicodeChar();
                z10 = true;
            } else {
                z10 = false;
            }
            char c11 = this.currentCharacter;
            if (c11 >= '\ud800' && c11 <= '\udbff') {
                if (this.complianceLevel < ClassFileConstants.JDK1_5) {
                    this.currentPosition = i10;
                    this.withoutUnicodePtr = i11;
                    return false;
                }
                char nextChar = (char) getNextChar();
                if (nextChar >= '\udc00' && nextChar <= '\udfff') {
                    isJavaIdentifierPart = ScannerHelper.isJavaIdentifierPart(this.complianceLevel, c11, nextChar);
                }
                this.currentPosition = i10;
                this.withoutUnicodePtr = i11;
                return false;
            }
            if (c11 >= '\udc00' && c11 <= '\udfff') {
                this.currentPosition = i10;
                this.withoutUnicodePtr = i11;
                return false;
            }
            isJavaIdentifierPart = ScannerHelper.isJavaIdentifierPart(this.complianceLevel, c11);
            if (z10) {
                if (isJavaIdentifierPart) {
                    return true;
                }
                this.currentPosition = i10;
                this.withoutUnicodePtr = i11;
                return false;
            }
            if (!isJavaIdentifierPart) {
                this.currentPosition = i10;
                return false;
            }
            if (this.withoutUnicodePtr != 0) {
                unicodeStore();
            }
            return true;
        } catch (IndexOutOfBoundsException unused) {
            this.currentPosition = i10;
            this.withoutUnicodePtr = i11;
            return false;
        } catch (InvalidInputException unused2) {
            this.currentPosition = i10;
            this.withoutUnicodePtr = i11;
            return false;
        }
    }

    public boolean getNextCharAsJavaIdentifierPartWithBoundCheck() {
        boolean z10;
        boolean isJavaIdentifierPart;
        int i10 = this.currentPosition;
        int i11 = this.eofPosition;
        if (i10 >= i11) {
            return false;
        }
        int i12 = this.withoutUnicodePtr;
        try {
            char[] cArr = this.source;
            int i13 = i10 + 1;
            this.currentPosition = i13;
            char c10 = cArr[i10];
            this.currentCharacter = c10;
            if (i13 < i11 && c10 == '\\' && cArr[i13] == 'u') {
                getNextUnicodeChar();
                z10 = true;
            } else {
                z10 = false;
            }
            char c11 = this.currentCharacter;
            if (c11 >= '\ud800' && c11 <= '\udbff') {
                if (this.complianceLevel < ClassFileConstants.JDK1_5) {
                    this.currentPosition = i10;
                    this.withoutUnicodePtr = i12;
                    return false;
                }
                char nextCharWithBoundChecks = (char) getNextCharWithBoundChecks();
                if (nextCharWithBoundChecks >= '\udc00' && nextCharWithBoundChecks <= '\udfff') {
                    isJavaIdentifierPart = ScannerHelper.isJavaIdentifierPart(this.complianceLevel, c11, nextCharWithBoundChecks);
                }
                this.currentPosition = i10;
                this.withoutUnicodePtr = i12;
                return false;
            }
            if (c11 >= '\udc00' && c11 <= '\udfff') {
                this.currentPosition = i10;
                this.withoutUnicodePtr = i12;
                return false;
            }
            isJavaIdentifierPart = ScannerHelper.isJavaIdentifierPart(this.complianceLevel, c11);
            if (z10) {
                if (isJavaIdentifierPart) {
                    return true;
                }
                this.currentPosition = i10;
                this.withoutUnicodePtr = i12;
                return false;
            }
            if (!isJavaIdentifierPart) {
                this.currentPosition = i10;
                return false;
            }
            if (this.withoutUnicodePtr != 0) {
                unicodeStore();
            }
            return true;
        } catch (InvalidInputException unused) {
            this.currentPosition = i10;
            this.withoutUnicodePtr = i12;
            return false;
        }
    }

    public final int getNextCharWithBoundChecks() {
        int i10 = this.currentPosition;
        int i11 = this.eofPosition;
        if (i10 >= i11) {
            return -1;
        }
        char[] cArr = this.source;
        int i12 = i10 + 1;
        this.currentPosition = i12;
        char c10 = cArr[i10];
        this.currentCharacter = c10;
        if (i12 >= i11) {
            this.unicodeAsBackSlash = false;
            if (this.withoutUnicodePtr != 0) {
                unicodeStore();
            }
            return this.currentCharacter;
        }
        if (c10 == '\\' && cArr[i12] == 'u') {
            try {
                getNextUnicodeChar();
            } catch (InvalidInputException unused) {
                return -1;
            }
        } else {
            this.unicodeAsBackSlash = false;
            if (this.withoutUnicodePtr != 0) {
                unicodeStore();
            }
        }
        return this.currentCharacter;
    }

    /* JADX WARN: Code restructure failed: missing block: B:248:0x0411, code lost:
    
        if (getNextChar('=') == false) goto L362;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x0413, code lost:
    
        return 171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:250:0x0416, code lost:
    
        return 10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:534:0x0655, code lost:
    
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:536:0x0658, code lost:
    
        if (r0 >= 50) goto L684;
     */
    /* JADX WARN: Code restructure failed: missing block: B:537:0x065a, code lost:
    
        r3 = r16.currentPosition;
     */
    /* JADX WARN: Code restructure failed: missing block: B:538:0x065e, code lost:
    
        if (r3 >= r16.eofPosition) goto L687;
     */
    /* JADX WARN: Code restructure failed: missing block: B:539:0x0660, code lost:
    
        r4 = r16.source;
        r9 = r3 + 1;
        r16.currentPosition = r9;
        r10 = r4[r3];
        r16.currentCharacter = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:540:0x066a, code lost:
    
        if (r10 != '\\') goto L559;
     */
    /* JADX WARN: Code restructure failed: missing block: B:542:0x0670, code lost:
    
        if (r4[r9] != 'u') goto L560;
     */
    /* JADX WARN: Code restructure failed: missing block: B:543:0x0672, code lost:
    
        getNextUnicodeChar();
     */
    /* JADX WARN: Code restructure failed: missing block: B:545:0x067c, code lost:
    
        if (r16.currentCharacter == '\"') goto L686;
     */
    /* JADX WARN: Code restructure failed: missing block: B:546:0x067e, code lost:
    
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:549:0x0688, code lost:
    
        throw new org.eclipse.jdt.core.compiler.InvalidInputException("Invalid_Char_In_String");
     */
    /* JADX WARN: Code restructure failed: missing block: B:550:0x0678, code lost:
    
        if (r10 == '\n') goto L685;
     */
    /* JADX WARN: Code restructure failed: missing block: B:552:0x0689, code lost:
    
        r16.currentPosition = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:557:0x068c, code lost:
    
        r16.currentPosition = r5;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:57:0x00e2. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:503:0x05d0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:504:0x05d3 A[Catch: InvalidInputException -> 0x05c1, IndexOutOfBoundsException -> 0x06d2, TryCatch #8 {IndexOutOfBoundsException -> 0x06d2, InvalidInputException -> 0x05c1, blocks: (B:495:0x05a6, B:497:0x05b6, B:499:0x05bc, B:501:0x05cc, B:504:0x05d3, B:510:0x05e1, B:512:0x05e5, B:514:0x05f9, B:516:0x05ff, B:517:0x0625, B:519:0x062c, B:520:0x0609, B:522:0x060d, B:523:0x0613, B:524:0x062f, B:526:0x063f, B:528:0x0645, B:529:0x064a, B:532:0x064e, B:537:0x065a, B:539:0x0660, B:541:0x066c, B:543:0x0672, B:544:0x067a, B:546:0x067e, B:548:0x0681, B:549:0x0688, B:552:0x0689, B:557:0x068c, B:553:0x0693, B:554:0x069a, B:559:0x068f, B:560:0x069b, B:561:0x06a2, B:562:0x05c4, B:564:0x05c8), top: B:494:0x05a6, outer: #6 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:522:0x0645 -> B:493:0x05bf). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:525:0x05cb -> B:494:0x05cc). Please report as a decompilation issue!!! */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int getNextToken() throws InvalidInputException {
        int i10;
        int i11;
        boolean z10;
        int i12;
        int i13;
        int i14;
        int i15;
        boolean z11;
        boolean z12;
        char c10;
        boolean isJavaIdentifierStart;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        char c11;
        int i16 = 0;
        this.wasAcr = false;
        int i17 = 95;
        int i18 = 158;
        if (this.diet) {
            jumpOverMethodBody();
            this.diet = false;
            return this.currentPosition > this.eofPosition ? 158 : 95;
        }
        int i19 = 0;
        while (true) {
            int i20 = 1;
            try {
                this.withoutUnicodePtr = 0;
                i10 = this.currentPosition;
                i11 = 0;
                z10 = false;
            } catch (IndexOutOfBoundsException unused) {
            }
            while (true) {
                try {
                    i12 = this.withoutUnicodePtr;
                    i13 = this.currentPosition;
                    this.startPosition = i13;
                    try {
                        char[] cArr = this.source;
                        int i21 = i13 + 1;
                        this.currentPosition = i21;
                        char c12 = cArr[i13];
                        this.currentCharacter = c12;
                        i11 = (c12 == '\\' && cArr[i21] == 'u') ? i20 : 0;
                    } catch (IndexOutOfBoundsException unused2) {
                        if (this.tokenizeWhiteSpace) {
                            int i22 = this.currentPosition;
                            if (i10 != i22 - 1) {
                                this.currentPosition = i22 - i20;
                                this.startPosition = i10;
                                return 1000;
                            }
                        }
                        if (this.currentPosition > this.eofPosition) {
                            return i18;
                        }
                    }
                    i14 = this.currentPosition;
                } catch (IndexOutOfBoundsException unused3) {
                    i19 = i10;
                }
                if (i14 > this.eofPosition) {
                    if (!this.tokenizeWhiteSpace || i10 == i14 - 1) {
                        return i18;
                    }
                    this.currentPosition = i14 - i20;
                    this.startPosition = i10;
                    return 1000;
                }
                if (i11 != 0) {
                    z11 = jumpOverUnicodeWhiteSpace();
                    i15 = this.currentPosition - i13;
                } else {
                    i15 = i14 - i13;
                    char c13 = this.currentCharacter;
                    if ((c13 == '\r' || c13 == '\n') && this.recordLineSeparator) {
                        pushLineSeparator();
                    }
                    char c14 = this.currentCharacter;
                    z11 = c14 == '\t' || c14 == '\n' || c14 == '\f' || c14 == '\r' || c14 == ' ';
                }
                if (z11) {
                    z10 = true;
                }
                if (!z11) {
                    if (z10) {
                        if (this.tokenizeWhiteSpace) {
                            this.currentPosition -= i15;
                            this.startPosition = i10;
                            if (i11 != 0) {
                                this.withoutUnicodePtr = i12;
                            }
                            return 1000;
                        }
                        if (i11 != 0) {
                            this.withoutUnicodePtr = 0;
                            unicodeStore();
                        } else {
                            this.withoutUnicodePtr = 0;
                        }
                    }
                    char c15 = this.currentCharacter;
                    if (c15 == 26) {
                        if (atEnd()) {
                            return 158;
                        }
                        throw new InvalidInputException("Ctrl-Z");
                    }
                    if (c15 == '[') {
                        return 15;
                    }
                    if (c15 == '!') {
                        return getNextChar('=') ? 36 : 71;
                    }
                    if (c15 == '\"') {
                        try {
                            this.unicodeAsBackSlash = false;
                            char[] cArr2 = this.source;
                            int i23 = this.currentPosition;
                            int i24 = i23 + 1;
                            this.currentPosition = i24;
                            char c16 = cArr2[i23];
                            this.currentCharacter = c16;
                            if (c16 == '\\' && cArr2[i24] == 'u') {
                                getNextUnicodeChar();
                                z12 = true;
                                c10 = this.currentCharacter;
                                if (c10 == '\"') {
                                }
                            } else {
                                if (this.withoutUnicodePtr != 0) {
                                    unicodeStore();
                                }
                                z12 = false;
                                c10 = this.currentCharacter;
                                if (c10 == '\"') {
                                    int i25 = this.currentPosition;
                                    if (i25 >= this.eofPosition) {
                                        throw new InvalidInputException("Unterminated_String");
                                    }
                                    if (c10 != '\n' && c10 != '\r') {
                                        if (c10 == '\\') {
                                            if (this.unicodeAsBackSlash) {
                                                this.withoutUnicodePtr--;
                                                this.unicodeAsBackSlash = false;
                                                char[] cArr3 = this.source;
                                                int i26 = i25 + 1;
                                                this.currentPosition = i26;
                                                char c17 = cArr3[i25];
                                                this.currentCharacter = c17;
                                                if (c17 == '\\' && cArr3[i26] == 'u') {
                                                    getNextUnicodeChar();
                                                    this.withoutUnicodePtr--;
                                                }
                                            } else {
                                                if (this.withoutUnicodePtr == 0) {
                                                    unicodeInitializeBuffer(i25 - this.startPosition);
                                                }
                                                this.withoutUnicodePtr--;
                                                char[] cArr4 = this.source;
                                                int i27 = this.currentPosition;
                                                this.currentPosition = i27 + 1;
                                                this.currentCharacter = cArr4[i27];
                                            }
                                            scanEscapeCharacter();
                                            if (this.withoutUnicodePtr != 0) {
                                                unicodeStore();
                                            }
                                        }
                                        this.unicodeAsBackSlash = false;
                                        char[] cArr5 = this.source;
                                        int i28 = this.currentPosition;
                                        int i29 = i28 + 1;
                                        this.currentPosition = i29;
                                        char c18 = cArr5[i28];
                                        this.currentCharacter = c18;
                                        if (c18 == '\\' && cArr5[i29] == 'u') {
                                            getNextUnicodeChar();
                                            z12 = true;
                                            c10 = this.currentCharacter;
                                            if (c10 == '\"') {
                                            }
                                        } else {
                                            if (this.withoutUnicodePtr != 0) {
                                                unicodeStore();
                                            }
                                            z12 = false;
                                            c10 = this.currentCharacter;
                                            if (c10 == '\"') {
                                                return 45;
                                            }
                                        }
                                    }
                                    this.currentPosition = i25 - 1;
                                    throw new InvalidInputException("Invalid_Char_In_String");
                                }
                            }
                        } catch (IndexOutOfBoundsException unused4) {
                            this.currentPosition--;
                            throw new InvalidInputException("Unterminated_String");
                        } catch (InvalidInputException e10) {
                            if (e10.getMessage().equals("Invalid_Escape")) {
                                while (true) {
                                    if (i16 < 50) {
                                        int i30 = this.currentPosition;
                                        if (i30 + i16 != this.eofPosition) {
                                            char[] cArr6 = this.source;
                                            if (cArr6[i30 + i16] != '\n') {
                                                if (cArr6[i30 + i16] != '\"') {
                                                    i16++;
                                                } else {
                                                    this.currentPosition = i30 + i16 + 1;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            throw e10;
                        }
                    } else {
                        if (c15 == ']') {
                            return 166;
                        }
                        if (c15 == '^') {
                            return getNextChar('=') ? 174 : 63;
                        }
                        switch (c15) {
                            case '%':
                                return getNextChar('=') ? 175 : 9;
                            case '&':
                                int nextChar = getNextChar('&', '=');
                                if (nextChar == 0) {
                                    return 79;
                                }
                                return nextChar > 0 ? 172 : 62;
                            case '\'':
                                int nextChar2 = getNextChar('\n', CharUtils.CR);
                                if (nextChar2 == 0) {
                                    throw new InvalidInputException("Invalid_Character_Constant");
                                }
                                if (nextChar2 > 0) {
                                    while (true) {
                                        if (i16 < 3) {
                                            int i31 = this.currentPosition;
                                            if (i31 + i16 != this.eofPosition) {
                                                char[] cArr7 = this.source;
                                                if (cArr7[i31 + i16] != '\n') {
                                                    if (cArr7[i31 + i16] != '\'') {
                                                        i16++;
                                                    } else {
                                                        this.currentPosition = i31 + i16 + 1;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    throw new InvalidInputException("Invalid_Character_Constant");
                                }
                                if (getNextChar(JavaElement.JEM_MODULAR_CLASSFILE)) {
                                    while (true) {
                                        if (i16 < 3) {
                                            int i32 = this.currentPosition;
                                            if (i32 + i16 != this.eofPosition) {
                                                char[] cArr8 = this.source;
                                                if (cArr8[i32 + i16] != '\n') {
                                                    if (cArr8[i32 + i16] != '\'') {
                                                        i16++;
                                                    } else {
                                                        this.currentPosition = i32 + i16 + 1;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    throw new InvalidInputException("Invalid_Character_Constant");
                                }
                                if (getNextChar(JavaElement.JEM_ESCAPE)) {
                                    if (this.unicodeAsBackSlash) {
                                        this.unicodeAsBackSlash = false;
                                        char[] cArr9 = this.source;
                                        int i33 = this.currentPosition;
                                        int i34 = i33 + 1;
                                        this.currentPosition = i34;
                                        char c19 = cArr9[i33];
                                        this.currentCharacter = c19;
                                        if (c19 == '\\' && cArr9[i34] == 'u') {
                                            getNextUnicodeChar();
                                        } else if (this.withoutUnicodePtr != 0) {
                                            unicodeStore();
                                        }
                                    } else {
                                        char[] cArr10 = this.source;
                                        int i35 = this.currentPosition;
                                        this.currentPosition = i35 + 1;
                                        this.currentCharacter = cArr10[i35];
                                    }
                                    scanEscapeCharacter();
                                } else {
                                    this.unicodeAsBackSlash = false;
                                    try {
                                        char[] cArr11 = this.source;
                                        int i36 = this.currentPosition;
                                        int i37 = i36 + 1;
                                        this.currentPosition = i37;
                                        char c20 = cArr11[i36];
                                        this.currentCharacter = c20;
                                        if (c20 == '\\') {
                                            if (cArr11[i37] == 'u') {
                                                getNextUnicodeChar();
                                            }
                                        }
                                        if (this.withoutUnicodePtr != 0) {
                                            unicodeStore();
                                        }
                                    } catch (IndexOutOfBoundsException unused5) {
                                        this.currentPosition--;
                                        throw new InvalidInputException("Invalid_Character_Constant");
                                    }
                                }
                                if (getNextChar(JavaElement.JEM_MODULAR_CLASSFILE)) {
                                    return 44;
                                }
                                while (true) {
                                    if (i16 < 20) {
                                        int i38 = this.currentPosition;
                                        if (i38 + i16 != this.eofPosition) {
                                            char[] cArr12 = this.source;
                                            if (cArr12[i38 + i16] != '\n') {
                                                if (cArr12[i38 + i16] != '\'') {
                                                    i16++;
                                                } else {
                                                    this.currentPosition = i38 + i16 + 1;
                                                }
                                            }
                                        }
                                    }
                                }
                                throw new InvalidInputException("Invalid_Character_Constant");
                            case '(':
                                return 7;
                            case ')':
                                return 86;
                            case '*':
                                return getNextChar('=') ? 170 : 8;
                            case '+':
                                int nextChar3 = getNextChar('+', '=');
                                if (nextChar3 == 0) {
                                    return 1;
                                }
                                return nextChar3 > 0 ? 168 : 3;
                            case ',':
                                return 90;
                            case '-':
                                int nextChar4 = getNextChar('-', '=');
                                if (nextChar4 == 0) {
                                    return 2;
                                }
                                if (nextChar4 > 0) {
                                    return 169;
                                }
                                return getNextChar('>') ? 405 : 4;
                            case '.':
                                if (getNextCharAsDigit()) {
                                    return scanNumber(true);
                                }
                                int i39 = this.currentPosition;
                                if (!getNextChar('.')) {
                                    this.currentPosition = i39;
                                    return 6;
                                }
                                if (getNextChar('.')) {
                                    return 402;
                                }
                                this.currentPosition = i39;
                                return 6;
                            case '/':
                                if (!this.skipComments) {
                                    int nextChar5 = getNextChar('/', '*');
                                    if (nextChar5 != 0) {
                                        if (nextChar5 <= 0) {
                                            break;
                                        } else {
                                            try {
                                                this.unicodeAsBackSlash = false;
                                                char[] cArr13 = this.source;
                                                int i40 = this.currentPosition;
                                                int i41 = i40 + 1;
                                                this.currentPosition = i41;
                                                char c21 = cArr13[i40];
                                                this.currentCharacter = c21;
                                                if (c21 == '\\' && cArr13[i41] == 'u') {
                                                    getNextUnicodeChar();
                                                    z13 = true;
                                                } else {
                                                    if (this.withoutUnicodePtr != 0) {
                                                        unicodeStore();
                                                    }
                                                    z13 = false;
                                                }
                                                char c22 = this.currentCharacter;
                                                if (c22 == '*') {
                                                    z14 = true;
                                                    z15 = true;
                                                } else {
                                                    z14 = false;
                                                    z15 = false;
                                                }
                                                if ((c22 == '\r' || c22 == '\n') && this.recordLineSeparator) {
                                                    if (z13) {
                                                        pushUnicodeLineSeparator();
                                                    } else {
                                                        pushLineSeparator();
                                                    }
                                                }
                                                int i42 = this.currentPosition;
                                                char[] cArr14 = this.source;
                                                int i43 = i42 + 1;
                                                this.currentPosition = i43;
                                                char c23 = cArr14[i42];
                                                this.currentCharacter = c23;
                                                if (c23 == '\\' && cArr14[i43] == 'u') {
                                                    getNextUnicodeChar();
                                                    z16 = true;
                                                } else {
                                                    z16 = false;
                                                }
                                                char c24 = this.currentCharacter;
                                                if (c24 == '\\') {
                                                    char[] cArr15 = this.source;
                                                    int i44 = this.currentPosition;
                                                    if (cArr15[i44] == '\\') {
                                                        this.currentPosition = i44 + 1;
                                                    }
                                                }
                                                if (c24 == '/') {
                                                    z14 = false;
                                                }
                                                int i45 = 0;
                                                while (true) {
                                                    char c25 = this.currentCharacter;
                                                    if (c25 == '/' && z15) {
                                                        int i46 = z14 ? 1003 : 1002;
                                                        recordComment(i46);
                                                        this.commentTagStarts[this.commentPtr] = i45;
                                                        if (this.taskTags != null) {
                                                            checkTaskTag(this.startPosition, this.currentPosition);
                                                        }
                                                        if (this.tokenizeComments) {
                                                            return i46;
                                                        }
                                                    } else {
                                                        if (this.currentPosition >= this.eofPosition) {
                                                            throw new InvalidInputException("Unterminated_Comment");
                                                        }
                                                        if ((c25 == '\r' || c25 == '\n') && this.recordLineSeparator) {
                                                            if (z16) {
                                                                pushUnicodeLineSeparator();
                                                            } else {
                                                                pushLineSeparator();
                                                            }
                                                        }
                                                        char c26 = this.currentCharacter;
                                                        if (c26 != '*') {
                                                            if (c26 == '@' && i45 == 0 && isFirstTag()) {
                                                                z15 = false;
                                                                i45 = i42;
                                                            }
                                                            i42 = i45;
                                                            z15 = false;
                                                            i45 = i42;
                                                        } else {
                                                            z15 = true;
                                                        }
                                                        i42 = this.currentPosition;
                                                        char[] cArr16 = this.source;
                                                        int i47 = i42 + 1;
                                                        this.currentPosition = i47;
                                                        char c27 = cArr16[i42];
                                                        this.currentCharacter = c27;
                                                        if (c27 == '\\' && cArr16[i47] == 'u') {
                                                            getNextUnicodeChar();
                                                            z16 = true;
                                                        } else {
                                                            z16 = false;
                                                        }
                                                        if (this.currentCharacter == '\\') {
                                                            char[] cArr17 = this.source;
                                                            int i48 = this.currentPosition;
                                                            if (cArr17[i48] == '\\') {
                                                                this.currentPosition = i48 + 1;
                                                            }
                                                        }
                                                    }
                                                }
                                                i19 = i10;
                                                i17 = 95;
                                                i18 = 158;
                                            } catch (IndexOutOfBoundsException unused6) {
                                                this.currentPosition--;
                                                throw new InvalidInputException("Unterminated_Comment");
                                            }
                                        }
                                    } else {
                                        int i49 = this.currentPosition;
                                        this.lastCommentLinePosition = i49;
                                        try {
                                            char[] cArr18 = this.source;
                                            int i50 = i49 + 1;
                                            this.currentPosition = i50;
                                            char c28 = cArr18[i49];
                                            this.currentCharacter = c28;
                                            if (c28 == '\\' && cArr18[i50] == 'u') {
                                                getNextUnicodeChar();
                                            }
                                            if (this.currentCharacter == '\\') {
                                                char[] cArr19 = this.source;
                                                int i51 = this.currentPosition;
                                                if (cArr19[i51] == '\\') {
                                                    this.currentPosition = i51 + 1;
                                                }
                                            }
                                            boolean z17 = false;
                                            while (true) {
                                                c11 = this.currentCharacter;
                                                if (c11 != '\r' && c11 != '\n') {
                                                    int i52 = this.currentPosition;
                                                    if (i52 >= this.eofPosition) {
                                                        this.lastCommentLinePosition = i52;
                                                        this.currentPosition = i52 + 1;
                                                        throw new IndexOutOfBoundsException();
                                                        break;
                                                    } else {
                                                        this.lastCommentLinePosition = i52;
                                                        char[] cArr20 = this.source;
                                                        int i53 = i52 + 1;
                                                        this.currentPosition = i53;
                                                        char c29 = cArr20[i52];
                                                        this.currentCharacter = c29;
                                                        if (c29 == '\\' && cArr20[i53] == 'u') {
                                                            getNextUnicodeChar();
                                                            z17 = true;
                                                        } else {
                                                            z17 = false;
                                                        }
                                                        if (this.currentCharacter == '\\') {
                                                            char[] cArr21 = this.source;
                                                            int i54 = this.currentPosition;
                                                            if (cArr21[i54] == '\\') {
                                                                this.currentPosition = i54 + 1;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            if (c11 == '\r') {
                                                int i55 = this.eofPosition;
                                                int i56 = this.currentPosition;
                                                if (i55 > i56) {
                                                    char[] cArr22 = this.source;
                                                    char c30 = cArr22[i56];
                                                    if (c30 == '\n') {
                                                        this.currentPosition = i56 + 1;
                                                        this.currentCharacter = '\n';
                                                    } else if (c30 == '\\' && cArr22[i56 + 1] == 'u') {
                                                        getNextUnicodeChar();
                                                        z17 = true;
                                                    }
                                                }
                                            }
                                            recordComment(1001);
                                            if (this.taskTags != null) {
                                                checkTaskTag(this.startPosition, this.currentPosition);
                                            }
                                            char c31 = this.currentCharacter;
                                            if (c31 == '\r' || c31 == '\n') {
                                                if (this.checkNonExternalizedStringLiterals && this.lastPosition < this.currentPosition) {
                                                    parseTags();
                                                }
                                                if (this.recordLineSeparator) {
                                                    if (z17) {
                                                        pushUnicodeLineSeparator();
                                                    } else {
                                                        pushLineSeparator();
                                                    }
                                                }
                                            }
                                        } catch (IndexOutOfBoundsException unused7) {
                                            this.currentPosition--;
                                            recordComment(1001);
                                            if (this.taskTags != null) {
                                                checkTaskTag(this.startPosition, this.currentPosition);
                                            }
                                            if (this.checkNonExternalizedStringLiterals && this.lastPosition < this.currentPosition) {
                                                parseTags();
                                            }
                                            if (this.tokenizeComments) {
                                                return 1001;
                                            }
                                            this.currentPosition++;
                                        }
                                        if (this.tokenizeComments) {
                                            return 1001;
                                        }
                                        i19 = i10;
                                        i17 = 95;
                                        i18 = 158;
                                    }
                                } else {
                                    break;
                                }
                                break;
                            default:
                                switch (c15) {
                                    case ':':
                                        return getNextChar(':') ? 406 : 154;
                                    case ';':
                                        return 64;
                                    case '<':
                                        int nextChar6 = getNextChar('=', '<');
                                        if (nextChar6 == 0) {
                                            return 66;
                                        }
                                        if (nextChar6 > 0) {
                                            return getNextChar('=') ? 176 : 14;
                                        }
                                        return 69;
                                    case '=':
                                        return getNextChar('=') ? 35 : 167;
                                    case '>':
                                        if (this.returnOnlyGreater) {
                                            return 68;
                                        }
                                        int nextChar7 = getNextChar('=', '>');
                                        if (nextChar7 == 0) {
                                            return 67;
                                        }
                                        if (nextChar7 <= 0) {
                                            return 68;
                                        }
                                        int nextChar8 = getNextChar('=', '>');
                                        if (nextChar8 == 0) {
                                            return 177;
                                        }
                                        if (nextChar8 > 0) {
                                            return getNextChar('=') ? 178 : 12;
                                        }
                                        return 11;
                                    case '?':
                                        return 81;
                                    case '@':
                                        return 401;
                                    default:
                                        switch (c15) {
                                            case '{':
                                                return 110;
                                            case '|':
                                                int nextChar9 = getNextChar('|', '=');
                                                if (nextChar9 == 0) {
                                                    return 80;
                                                }
                                                return nextChar9 > 0 ? 173 : 70;
                                            case '}':
                                                return i17;
                                            case '~':
                                                return 72;
                                            default:
                                                if (c15 < '\u0080') {
                                                    int i57 = ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[c15];
                                                    if ((i57 & 64) != 0) {
                                                        return scanIdentifierOrKeyword();
                                                    }
                                                    if ((i57 & 4) != 0) {
                                                        return scanNumber(false);
                                                    }
                                                    return 309;
                                                }
                                                if (c15 < '\ud800' || c15 > '\udbff') {
                                                    if (c15 >= '\udc00' && c15 <= '\udfff') {
                                                        if (this.complianceLevel < ClassFileConstants.JDK1_5) {
                                                            throw new InvalidInputException("Invalid_Unicode_Escape");
                                                        }
                                                        throw new InvalidInputException("Invalid_High_Surrogate");
                                                    }
                                                    isJavaIdentifierStart = ScannerHelper.isJavaIdentifierStart(this.complianceLevel, c15);
                                                } else {
                                                    if (this.complianceLevel < ClassFileConstants.JDK1_5) {
                                                        throw new InvalidInputException("Invalid_Unicode_Escape");
                                                    }
                                                    char nextChar10 = (char) getNextChar();
                                                    if (nextChar10 < '\udc00' || nextChar10 > '\udfff') {
                                                        throw new InvalidInputException("Invalid_Low_Surrogate");
                                                    }
                                                    isJavaIdentifierStart = ScannerHelper.isJavaIdentifierStart(this.complianceLevel, c15, nextChar10);
                                                }
                                                if (isJavaIdentifierStart) {
                                                    return scanIdentifierOrKeyword();
                                                }
                                                if (ScannerHelper.isDigit(this.currentCharacter)) {
                                                    return scanNumber(false);
                                                }
                                                return 309;
                                        }
                                }
                        }
                    }
                    i19 = i10;
                    if (!this.tokenizeWhiteSpace) {
                        return 158;
                    }
                    int i58 = this.currentPosition;
                    if (i19 == i58 - 1) {
                        return 158;
                    }
                    this.currentPosition = i58 - 1;
                    this.startPosition = i19;
                    return 1000;
                }
                i18 = 158;
                i20 = 1;
            }
        }
    }

    public void getNextUnicodeChar() throws InvalidInputException {
        int i10 = this.currentPosition;
        int i11 = i10 + 1;
        this.currentPosition = i11;
        if (i11 >= this.eofPosition) {
            this.currentPosition = i10;
            throw new InvalidInputException("Invalid_Unicode_Escape");
        }
        int i12 = 6;
        while (true) {
            char[] cArr = this.source;
            int i13 = this.currentPosition;
            char c10 = cArr[i13];
            if (c10 != 'u') {
                int i14 = i13 + 4;
                int i15 = this.eofPosition;
                if (i14 > i15) {
                    this.currentPosition = i13 + (i15 - i13);
                    throw new InvalidInputException("Invalid_Unicode_Escape");
                }
                this.currentPosition = i13 + 1;
                int hexadecimalValue = ScannerHelper.getHexadecimalValue(c10);
                if (hexadecimalValue <= 15 && hexadecimalValue >= 0) {
                    char[] cArr2 = this.source;
                    int i16 = this.currentPosition;
                    this.currentPosition = i16 + 1;
                    int hexadecimalValue2 = ScannerHelper.getHexadecimalValue(cArr2[i16]);
                    if (hexadecimalValue2 <= 15 && hexadecimalValue2 >= 0) {
                        char[] cArr3 = this.source;
                        int i17 = this.currentPosition;
                        this.currentPosition = i17 + 1;
                        int hexadecimalValue3 = ScannerHelper.getHexadecimalValue(cArr3[i17]);
                        if (hexadecimalValue3 <= 15 && hexadecimalValue3 >= 0) {
                            char[] cArr4 = this.source;
                            int i18 = this.currentPosition;
                            this.currentPosition = i18 + 1;
                            int hexadecimalValue4 = ScannerHelper.getHexadecimalValue(cArr4[i18]);
                            if (hexadecimalValue4 <= 15 && hexadecimalValue4 >= 0) {
                                this.currentCharacter = (char) ((((((hexadecimalValue * 16) + hexadecimalValue2) * 16) + hexadecimalValue3) * 16) + hexadecimalValue4);
                                if (this.withoutUnicodePtr == 0) {
                                    unicodeInitializeBuffer((this.currentPosition - i12) - this.startPosition);
                                }
                                unicodeStore();
                                this.unicodeAsBackSlash = this.currentCharacter == '\\';
                                return;
                            }
                        }
                    }
                }
                throw new InvalidInputException("Invalid_Unicode_Escape");
            }
            int i19 = i13 + 1;
            this.currentPosition = i19;
            if (i19 >= this.eofPosition) {
                this.currentPosition = i13;
                throw new InvalidInputException("Invalid_Unicode_Escape");
            }
            i12++;
        }
    }

    @Override
    public final char[] getRawTokenSource() {
        int i10 = this.currentPosition;
        int i11 = this.startPosition;
        int i12 = i10 - i11;
        char[] cArr = new char[i12];
        System.arraycopy(this.source, i11, cArr, 0, i12);
        return cArr;
    }

    public final char[] getRawTokenSourceEnd() {
        int i10 = this.eofPosition;
        int i11 = this.currentPosition;
        int i12 = (i10 - i11) - 1;
        char[] cArr = new char[i12];
        System.arraycopy(this.source, i11, cArr, 0, i12);
        return cArr;
    }

    @Override
    public char[] getSource() {
        return this.source;
    }

    public boolean isFirstTag() {
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:109:0x0124, code lost:
    
        r16.lastCommentLinePosition = r5;
        r16.currentPosition = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x012f, code lost:
    
        throw new java.lang.IndexOutOfBoundsException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0130, code lost:
    
        if (r6 != '\r') goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0132, code lost:
    
        r6 = r16.eofPosition;
        r11 = r16.currentPosition;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0136, code lost:
    
        if (r6 <= r11) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0138, code lost:
    
        r6 = r16.source;
        r12 = r6[r11];
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x013c, code lost:
    
        if (r12 != '\n') goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x013e, code lost:
    
        r16.currentPosition = r11 + 1;
        r16.currentCharacter = '\n';
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0145, code lost:
    
        if (r12 != '\\') goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x014b, code lost:
    
        if (r6[r11 + 1] != 'u') goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x014d, code lost:
    
        getNextUnicodeChar();
        r5 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0151, code lost:
    
        recordComment(1001);
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0156, code lost:
    
        if (r16.recordLineSeparator == false) goto L250;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0158, code lost:
    
        r6 = r16.currentCharacter;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x015a, code lost:
    
        if (r6 == '\r') goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x015c, code lost:
    
        if (r6 != '\n') goto L250;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0160, code lost:
    
        if (r16.checkNonExternalizedStringLiterals == false) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0166, code lost:
    
        if (r16.lastPosition >= r16.currentPosition) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0168, code lost:
    
        parseTags();
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x016d, code lost:
    
        if (r16.recordLineSeparator == false) goto L250;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x016f, code lost:
    
        if (r5 == 0) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0171, code lost:
    
        pushUnicodeLineSeparator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0176, code lost:
    
        pushLineSeparator();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void jumpOverMethodBody() {
        boolean isWhitespace;
        int i10;
        int i11;
        boolean isJavaIdentifierStart;
        this.wasAcr = false;
        int i12 = 1;
        int i13 = 1;
        while (true) {
            try {
                this.withoutUnicodePtr = 0;
                do {
                    int i14 = this.currentPosition;
                    this.startPosition = i14;
                    char[] cArr = this.source;
                    int i15 = i14 + 1;
                    this.currentPosition = i15;
                    char c10 = cArr[i14];
                    this.currentCharacter = c10;
                    if (c10 == '\\' && cArr[i15] == 'u') {
                        isWhitespace = jumpOverUnicodeWhiteSpace();
                    } else {
                        if (this.recordLineSeparator && (c10 == '\r' || c10 == '\n')) {
                            pushLineSeparator();
                        }
                        isWhitespace = CharOperation.isWhitespace(this.currentCharacter);
                    }
                } while (isWhitespace);
                char c11 = this.currentCharacter;
                if (c11 == '\"') {
                    try {
                        this.unicodeAsBackSlash = false;
                        char[] cArr2 = this.source;
                        int i16 = this.currentPosition;
                        int i17 = i16 + 1;
                        this.currentPosition = i17;
                        char c12 = cArr2[i16];
                        this.currentCharacter = c12;
                        if (c12 == '\\' && cArr2[i17] == 'u') {
                            getNextUnicodeChar();
                        } else if (this.withoutUnicodePtr != 0) {
                            unicodeStore();
                        }
                    } catch (InvalidInputException unused) {
                    }
                    while (true) {
                        char c13 = this.currentCharacter;
                        if (c13 == '\"') {
                            break;
                        }
                        int i18 = this.currentPosition;
                        if (i18 >= this.eofPosition) {
                            return;
                        }
                        if (c13 == '\r') {
                            if (this.source[i18] == '\n') {
                                this.currentPosition = i18 + 1;
                            }
                        } else {
                            if (c13 == '\n') {
                                break;
                            }
                            if (c13 == '\\') {
                                try {
                                    if (this.unicodeAsBackSlash) {
                                        this.unicodeAsBackSlash = false;
                                        char[] cArr3 = this.source;
                                        int i19 = i18 + 1;
                                        this.currentPosition = i19;
                                        char c14 = cArr3[i18];
                                        this.currentCharacter = c14;
                                        if (c14 == '\\' && cArr3[i19] == 'u') {
                                            getNextUnicodeChar();
                                        } else if (this.withoutUnicodePtr != 0) {
                                            unicodeStore();
                                        }
                                    } else {
                                        char[] cArr4 = this.source;
                                        this.currentPosition = i18 + 1;
                                        this.currentCharacter = cArr4[i18];
                                    }
                                    scanEscapeCharacter();
                                } catch (InvalidInputException unused2) {
                                }
                            }
                            this.unicodeAsBackSlash = false;
                            char[] cArr5 = this.source;
                            int i20 = this.currentPosition;
                            int i21 = i20 + 1;
                            this.currentPosition = i21;
                            char c15 = cArr5[i20];
                            this.currentCharacter = c15;
                            if (c15 == '\\' && cArr5[i21] == 'u') {
                                getNextUnicodeChar();
                            } else if (this.withoutUnicodePtr != 0) {
                                unicodeStore();
                            }
                        }
                    }
                } else if (c11 == '\'') {
                    if (getNextChar(JavaElement.JEM_ESCAPE)) {
                        try {
                            if (this.unicodeAsBackSlash) {
                                this.unicodeAsBackSlash = false;
                                char[] cArr6 = this.source;
                                int i22 = this.currentPosition;
                                int i23 = i22 + 1;
                                this.currentPosition = i23;
                                char c16 = cArr6[i22];
                                this.currentCharacter = c16;
                                if (c16 == '\\' && cArr6[i23] == 'u') {
                                    getNextUnicodeChar();
                                } else if (this.withoutUnicodePtr != 0) {
                                    unicodeStore();
                                }
                            } else {
                                char[] cArr7 = this.source;
                                int i24 = this.currentPosition;
                                this.currentPosition = i24 + 1;
                                this.currentCharacter = cArr7[i24];
                            }
                            scanEscapeCharacter();
                        } catch (InvalidInputException unused3) {
                        }
                    } else {
                        this.unicodeAsBackSlash = false;
                        char[] cArr8 = this.source;
                        int i25 = this.currentPosition;
                        int i26 = i25 + 1;
                        this.currentPosition = i26;
                        char c17 = cArr8[i25];
                        this.currentCharacter = c17;
                        if (c17 == '\\' && cArr8[i26] == 'u') {
                            getNextUnicodeChar();
                        } else if (this.withoutUnicodePtr != 0) {
                            unicodeStore();
                        }
                    }
                    getNextChar(JavaElement.JEM_MODULAR_CLASSFILE);
                } else if (c11 == '/') {
                    int nextChar = getNextChar('/', '*');
                    if (nextChar == 0) {
                        try {
                            int i27 = this.currentPosition;
                            this.lastCommentLinePosition = i27;
                            char[] cArr9 = this.source;
                            int i28 = i27 + 1;
                            this.currentPosition = i28;
                            char c18 = cArr9[i27];
                            this.currentCharacter = c18;
                            if (c18 == '\\' && cArr9[i28] == 'u') {
                                getNextUnicodeChar();
                            }
                            if (this.currentCharacter == '\\') {
                                char[] cArr10 = this.source;
                                int i29 = this.currentPosition;
                                if (cArr10[i29] == '\\') {
                                    this.currentPosition = i29 + 1;
                                }
                            }
                            int i30 = 0;
                            while (true) {
                                char c19 = this.currentCharacter;
                                if (c19 != '\r' && c19 != '\n') {
                                    int i31 = this.currentPosition;
                                    if (i31 >= this.eofPosition) {
                                        break;
                                    }
                                    this.lastCommentLinePosition = i31;
                                    char[] cArr11 = this.source;
                                    int i32 = i31 + 1;
                                    this.currentPosition = i32;
                                    char c20 = cArr11[i31];
                                    this.currentCharacter = c20;
                                    if (c20 == '\\' && cArr11[i32] == 'u') {
                                        getNextUnicodeChar();
                                        i30 = i12;
                                    } else {
                                        i30 = 0;
                                    }
                                    if (this.currentCharacter == '\\') {
                                        char[] cArr12 = this.source;
                                        int i33 = this.currentPosition;
                                        if (cArr12[i33] == '\\') {
                                            this.currentPosition = i33 + 1;
                                        }
                                    }
                                } else {
                                    break;
                                }
                            }
                        } catch (IndexOutOfBoundsException unused4) {
                            this.currentPosition -= i12;
                            recordComment(1001);
                            if (this.checkNonExternalizedStringLiterals && this.lastPosition < this.currentPosition) {
                                parseTags();
                            }
                            if (!this.tokenizeComments) {
                                this.currentPosition += i12;
                            }
                        }
                    } else if (nextChar > 0) {
                        try {
                            this.unicodeAsBackSlash = false;
                            char[] cArr13 = this.source;
                            int i34 = this.currentPosition;
                            int i35 = i34 + 1;
                            this.currentPosition = i35;
                            char c21 = cArr13[i34];
                            this.currentCharacter = c21;
                            if (c21 == '\\' && cArr13[i35] == 'u') {
                                getNextUnicodeChar();
                                i10 = i12;
                            } else {
                                if (this.withoutUnicodePtr != 0) {
                                    unicodeStore();
                                }
                                i10 = 0;
                            }
                            char c22 = this.currentCharacter;
                            int i36 = c22 == '*' ? i12 : 0;
                            int i37 = i36;
                            if ((c22 == '\r' || c22 == '\n') && this.recordLineSeparator) {
                                if (i10 != 0) {
                                    pushUnicodeLineSeparator();
                                } else {
                                    pushLineSeparator();
                                }
                            }
                            int i38 = this.currentPosition;
                            char[] cArr14 = this.source;
                            int i39 = i38 + 1;
                            this.currentPosition = i39;
                            char c23 = cArr14[i38];
                            this.currentCharacter = c23;
                            if (c23 == '\\' && cArr14[i39] == 'u') {
                                getNextUnicodeChar();
                                i11 = i12;
                            } else {
                                i11 = 0;
                            }
                            char c24 = this.currentCharacter;
                            if (c24 == '\\') {
                                char[] cArr15 = this.source;
                                int i40 = this.currentPosition;
                                if (cArr15[i40] == '\\') {
                                    this.currentPosition = i40 + 1;
                                }
                            }
                            if (c24 == '/') {
                                i36 = 0;
                            }
                            int i41 = 0;
                            while (true) {
                                char c25 = this.currentCharacter;
                                if (c25 == '/' && i37 != 0) {
                                    recordComment(i36 != 0 ? 1003 : 1002);
                                    this.commentTagStarts[this.commentPtr] = i41;
                                } else {
                                    if (this.currentPosition >= this.eofPosition) {
                                        return;
                                    }
                                    if ((c25 == '\r' || c25 == '\n') && this.recordLineSeparator) {
                                        if (i11 != 0) {
                                            pushUnicodeLineSeparator();
                                        } else {
                                            pushLineSeparator();
                                        }
                                    }
                                    char c26 = this.currentCharacter;
                                    if (c26 != '*') {
                                        if (c26 == '@' && i41 == 0 && isFirstTag()) {
                                            i37 = 0;
                                            i41 = i38;
                                        }
                                        i38 = i41;
                                        i37 = 0;
                                        i41 = i38;
                                    } else {
                                        i37 = 1;
                                    }
                                    i38 = this.currentPosition;
                                    char[] cArr16 = this.source;
                                    int i42 = i38 + 1;
                                    this.currentPosition = i42;
                                    char c27 = cArr16[i38];
                                    this.currentCharacter = c27;
                                    if (c27 == '\\' && cArr16[i42] == 'u') {
                                        getNextUnicodeChar();
                                        i11 = 1;
                                    } else {
                                        i11 = 0;
                                    }
                                    if (this.currentCharacter == '\\') {
                                        char[] cArr17 = this.source;
                                        int i43 = this.currentPosition;
                                        if (cArr17[i43] == '\\') {
                                            this.currentPosition = i43 + 1;
                                        }
                                    }
                                }
                            }
                        } catch (IndexOutOfBoundsException unused5) {
                            return;
                        }
                    }
                } else if (c11 == '{') {
                    i13++;
                } else if (c11 == '}') {
                    i13--;
                    if (i13 == 0) {
                        return;
                    }
                } else if (c11 < '\u0080') {
                    try {
                        int i44 = ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[c11];
                        if ((i44 & 64) != 0) {
                            scanIdentifierOrKeyword();
                        } else if ((i44 & 4) != 0) {
                            scanNumber(false);
                        }
                    } catch (InvalidInputException unused6) {
                    }
                } else {
                    if (c11 >= '\ud800' && c11 <= '\udbff') {
                        if (this.complianceLevel < ClassFileConstants.JDK1_5) {
                            throw new InvalidInputException("Invalid_Unicode_Escape");
                            break;
                        }
                        char nextChar2 = (char) getNextChar();
                        if (nextChar2 >= '\udc00' && nextChar2 <= '\udfff') {
                            isJavaIdentifierStart = ScannerHelper.isJavaIdentifierStart(this.complianceLevel, c11, nextChar2);
                        }
                    } else if (c11 < '\udc00' || c11 > '\udfff') {
                        isJavaIdentifierStart = ScannerHelper.isJavaIdentifierStart(this.complianceLevel, c11);
                    }
                    if (isJavaIdentifierStart) {
                        scanIdentifierOrKeyword();
                    }
                }
                i12 = 1;
            } catch (IndexOutOfBoundsException | InvalidInputException unused7) {
                return;
            }
        }
    }

    public final boolean jumpOverUnicodeWhiteSpace() throws InvalidInputException {
        this.wasAcr = false;
        getNextUnicodeChar();
        return CharOperation.isWhitespace(this.currentCharacter);
    }

    public final char[] optimizedCurrentTokenSource1() {
        char c10 = this.source[this.startPosition];
        switch (c10) {
            case 'a':
                return charArray_a;
            case 'b':
                return charArray_b;
            case 'c':
                return charArray_c;
            case 'd':
                return charArray_d;
            case 'e':
                return charArray_e;
            case 'f':
                return charArray_f;
            case 'g':
                return charArray_g;
            case 'h':
                return charArray_h;
            case 'i':
                return charArray_i;
            case 'j':
                return charArray_j;
            case 'k':
                return charArray_k;
            case 'l':
                return charArray_l;
            case 'm':
                return charArray_m;
            case 'n':
                return charArray_n;
            case 'o':
                return charArray_o;
            case 'p':
                return charArray_p;
            case 'q':
                return charArray_q;
            case 'r':
                return charArray_r;
            case 's':
                return charArray_s;
            case 't':
                return charArray_t;
            case 'u':
                return charArray_u;
            case 'v':
                return charArray_v;
            case 'w':
                return charArray_w;
            case 'x':
                return charArray_x;
            case 'y':
                return charArray_y;
            case 'z':
                return charArray_z;
            default:
                return new char[]{c10};
        }
    }

    public final char[] optimizedCurrentTokenSource2() {
        char[] cArr = this.source;
        int i10 = this.startPosition;
        char c10 = cArr[i10];
        char c11 = cArr[i10 + 1];
        char[][] cArr2 = this.charArray_length[0][((c10 << 6) + c11) % 30];
        int i11 = this.newEntry2;
        while (true) {
            i11++;
            if (i11 >= 6) {
                int i12 = this.newEntry2;
                int i13 = -1;
                while (true) {
                    i13++;
                    if (i13 > i12) {
                        int i14 = i12 + 1;
                        if (i14 >= 6) {
                            i14 = 0;
                        }
                        char[] cArr3 = new char[2];
                        System.arraycopy(cArr, i10, cArr3, 0, 2);
                        this.newEntry2 = i14;
                        cArr2[i14] = cArr3;
                        return cArr3;
                    }
                    char[] cArr4 = cArr2[i13];
                    if (c10 == cArr4[0] && c11 == cArr4[1]) {
                        return cArr4;
                    }
                }
            } else {
                char[] cArr5 = cArr2[i11];
                if (c10 == cArr5[0] && c11 == cArr5[1]) {
                    return cArr5;
                }
            }
        }
    }

    public final char[] optimizedCurrentTokenSource3() {
        char[] cArr = this.source;
        int i10 = this.startPosition;
        char c10 = cArr[i10 + 1];
        char c11 = cArr[i10];
        char c12 = cArr[i10 + 2];
        char[][] cArr2 = this.charArray_length[1][((c11 << 6) + c12) % 30];
        int i11 = this.newEntry3;
        while (true) {
            i11++;
            if (i11 >= 6) {
                int i12 = this.newEntry3;
                int i13 = -1;
                while (true) {
                    i13++;
                    if (i13 > i12) {
                        int i14 = i12 + 1;
                        if (i14 >= 6) {
                            i14 = 0;
                        }
                        char[] cArr3 = new char[3];
                        System.arraycopy(cArr, i10, cArr3, 0, 3);
                        this.newEntry3 = i14;
                        cArr2[i14] = cArr3;
                        return cArr3;
                    }
                    char[] cArr4 = cArr2[i13];
                    if (c11 == cArr4[0] && c10 == cArr4[1] && c12 == cArr4[2]) {
                        return cArr4;
                    }
                }
            } else {
                char[] cArr5 = cArr2[i11];
                if (c11 == cArr5[0] && c10 == cArr5[1] && c12 == cArr5[2]) {
                    return cArr5;
                }
            }
        }
    }

    public final char[] optimizedCurrentTokenSource4() {
        char[] cArr = this.source;
        int i10 = this.startPosition;
        char c10 = cArr[i10 + 1];
        char c11 = cArr[i10 + 3];
        char c12 = cArr[i10];
        char c13 = cArr[i10 + 2];
        char[][] cArr2 = this.charArray_length[2][((c12 << 6) + c13) % 30];
        int i11 = this.newEntry4;
        while (true) {
            i11++;
            int i12 = 6;
            if (i11 >= 6) {
                int i13 = this.newEntry4;
                int i14 = -1;
                while (true) {
                    i14++;
                    if (i14 > i13) {
                        int i15 = i13 + 1;
                        if (i15 >= i12) {
                            i15 = 0;
                        }
                        char[] cArr3 = new char[4];
                        System.arraycopy(cArr, i10, cArr3, 0, 4);
                        this.newEntry4 = i15;
                        cArr2[i15] = cArr3;
                        return cArr3;
                    }
                    char[] cArr4 = cArr2[i14];
                    if (c12 == cArr4[0] && c10 == cArr4[1] && c13 == cArr4[2] && c11 == cArr4[3]) {
                        return cArr4;
                    }
                    i12 = 6;
                }
            } else {
                char[] cArr5 = cArr2[i11];
                if (c12 == cArr5[0] && c10 == cArr5[1] && c13 == cArr5[2] && c11 == cArr5[3]) {
                    return cArr5;
                }
            }
        }
    }

    public final char[] optimizedCurrentTokenSource5() {
        char c10;
        char[] cArr = this.source;
        int i10 = this.startPosition;
        char c11 = cArr[i10 + 1];
        char c12 = cArr[i10 + 3];
        char c13 = cArr[i10];
        char c14 = cArr[i10 + 2];
        char c15 = cArr[i10 + 4];
        char c16 = 3;
        char[][] cArr2 = this.charArray_length[3][(((c13 << '\f') + (c14 << 6)) + c15) % 30];
        int i11 = this.newEntry5;
        while (true) {
            i11++;
            int i12 = 6;
            if (i11 >= 6) {
                int i13 = this.newEntry5;
                int i14 = -1;
                while (true) {
                    int i15 = i14 + 1;
                    if (i15 > i13) {
                        int i16 = i13 + 1;
                        if (i16 >= i12) {
                            i16 = 0;
                        }
                        char[] cArr3 = new char[5];
                        System.arraycopy(cArr, i10, cArr3, 0, 5);
                        this.newEntry5 = i16;
                        cArr2[i16] = cArr3;
                        return cArr3;
                    }
                    char[] cArr4 = cArr2[i15];
                    if (c13 == cArr4[0] && c11 == cArr4[1] && c14 == cArr4[2] && c12 == cArr4[c16] && c15 == cArr4[4]) {
                        return cArr4;
                    }
                    i14 = i15;
                    c16 = 3;
                    i12 = 6;
                }
            } else {
                char[] cArr5 = cArr2[i11];
                if (c13 == cArr5[0] && c11 == cArr5[1] && c14 == cArr5[2]) {
                    c10 = 3;
                    if (c12 == cArr5[3] && c15 == cArr5[4]) {
                        return cArr5;
                    }
                } else {
                    c10 = 3;
                }
                c16 = c10;
            }
        }
    }

    public final char[] optimizedCurrentTokenSource6() {
        char c10;
        char[] cArr = this.source;
        int i10 = this.startPosition;
        char c11 = cArr[i10 + 1];
        char c12 = cArr[i10 + 3];
        char c13 = cArr[i10 + 5];
        char c14 = cArr[i10];
        char c15 = cArr[i10 + 2];
        char c16 = cArr[i10 + 4];
        char[][] cArr2 = this.charArray_length[4][(((c14 << '\f') + (c15 << 6)) + c16) % 30];
        int i11 = this.newEntry6;
        while (true) {
            i11++;
            char c17 = 3;
            int i12 = 6;
            if (i11 >= 6) {
                int i13 = this.newEntry6;
                int i14 = -1;
                while (true) {
                    int i15 = i14 + 1;
                    if (i15 > i13) {
                        int i16 = i13 + 1;
                        if (i16 >= i12) {
                            i16 = 0;
                        }
                        char[] cArr3 = new char[i12];
                        System.arraycopy(cArr, i10, cArr3, 0, i12);
                        this.newEntry6 = i16;
                        cArr2[i16] = cArr3;
                        return cArr3;
                    }
                    char[] cArr4 = cArr2[i15];
                    if (c14 == cArr4[0] && c11 == cArr4[1] && c15 == cArr4[2] && c12 == cArr4[c17] && c16 == cArr4[4] && c13 == cArr4[5]) {
                        return cArr4;
                    }
                    i14 = i15;
                    c17 = 3;
                    i12 = 6;
                }
            } else {
                char[] cArr5 = cArr2[i11];
                if (c14 == cArr5[0] && c11 == cArr5[1] && c15 == cArr5[2] && c12 == cArr5[3]) {
                    c10 = 4;
                    if (c16 == cArr5[4] && c13 == cArr5[5]) {
                        return cArr5;
                    }
                } else {
                    c10 = 4;
                }
            }
        }
    }

    public final void pushLineSeparator() {
        char c10 = this.currentCharacter;
        if (c10 == '\r') {
            int i10 = this.currentPosition - 1;
            int i11 = this.linePtr;
            if (i11 < 0 || this.lineEnds[i11] < i10) {
                int[] iArr = this.lineEnds;
                int length = iArr.length;
                int i12 = i11 + 1;
                this.linePtr = i12;
                if (i12 >= length) {
                    int[] iArr2 = new int[length + 250];
                    this.lineEnds = iArr2;
                    System.arraycopy(iArr, 0, iArr2, 0, length);
                }
                int[] iArr3 = this.lineEnds;
                int i13 = this.linePtr;
                iArr3[i13] = i10;
                try {
                    char[] cArr = this.source;
                    int i14 = this.currentPosition;
                    if (cArr[i14] == '\n') {
                        iArr3[i13] = i14;
                        this.currentPosition = i14 + 1;
                        this.wasAcr = false;
                    } else {
                        this.wasAcr = true;
                    }
                    return;
                } catch (IndexOutOfBoundsException unused) {
                    this.wasAcr = true;
                    return;
                }
            }
            return;
        }
        if (c10 == '\n') {
            if (this.wasAcr) {
                int[] iArr4 = this.lineEnds;
                int i15 = this.linePtr;
                int i16 = iArr4[i15];
                int i17 = this.currentPosition;
                if (i16 == i17 - 2) {
                    iArr4[i15] = i17 - 1;
                    this.wasAcr = false;
                }
            }
            int i18 = this.currentPosition - 1;
            int i19 = this.linePtr;
            if (i19 < 0 || this.lineEnds[i19] < i18) {
                int[] iArr5 = this.lineEnds;
                int length2 = iArr5.length;
                int i20 = i19 + 1;
                this.linePtr = i20;
                if (i20 >= length2) {
                    int[] iArr6 = new int[length2 + 250];
                    this.lineEnds = iArr6;
                    System.arraycopy(iArr5, 0, iArr6, 0, length2);
                }
                this.lineEnds[this.linePtr] = i18;
                this.wasAcr = false;
            }
        }
    }

    public final void pushUnicodeLineSeparator() {
        char c10 = this.currentCharacter;
        if (c10 != '\r') {
            if (c10 == '\n') {
                this.wasAcr = false;
            }
        } else if (this.source[this.currentPosition] == '\n') {
            this.wasAcr = false;
        } else {
            this.wasAcr = true;
        }
    }

    public void recordComment(int i10) {
        int i11 = this.startPosition;
        int i12 = this.currentPosition;
        if (i10 == 1001) {
            i11 = -i11;
            i12 = -this.lastCommentLinePosition;
        } else if (i10 == 1002) {
            i12 = -i12;
        }
        int[] iArr = this.commentStops;
        int length = iArr.length;
        int i13 = this.commentPtr + 1;
        this.commentPtr = i13;
        if (i13 >= length) {
            int i14 = length + 300;
            int[] iArr2 = new int[i14];
            this.commentStops = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, length);
            int[] iArr3 = this.commentStarts;
            int[] iArr4 = new int[i14];
            this.commentStarts = iArr4;
            System.arraycopy(iArr3, 0, iArr4, 0, length);
            int[] iArr5 = this.commentTagStarts;
            int[] iArr6 = new int[i14];
            this.commentTagStarts = iArr6;
            System.arraycopy(iArr5, 0, iArr6, 0, length);
        }
        int[] iArr7 = this.commentStops;
        int i15 = this.commentPtr;
        iArr7[i15] = i12;
        this.commentStarts[i15] = i11;
    }

    @Override
    public void resetTo(int i10, int i11) {
        this.diet = false;
        this.currentPosition = i10;
        this.startPosition = i10;
        this.initialPosition = i10;
        char[] cArr = this.source;
        if (cArr == null || cArr.length >= i11) {
            if (i11 < Integer.MAX_VALUE) {
                i11++;
            }
            this.eofPosition = i11;
        } else {
            this.eofPosition = cArr.length;
        }
        this.commentPtr = -1;
        this.foundTaskCount = 0;
    }

    public final void scanEscapeCharacter() throws InvalidInputException {
        char c10 = this.currentCharacter;
        if (c10 == '\"') {
            this.currentCharacter = '\"';
            return;
        }
        if (c10 == '\'') {
            this.currentCharacter = JavaElement.JEM_MODULAR_CLASSFILE;
            return;
        }
        if (c10 == '\\') {
            this.currentCharacter = JavaElement.JEM_ESCAPE;
            return;
        }
        if (c10 == 'b') {
            this.currentCharacter = '\b';
            return;
        }
        if (c10 == 'f') {
            this.currentCharacter = '\f';
            return;
        }
        if (c10 == 'n') {
            this.currentCharacter = '\n';
            return;
        }
        if (c10 == 'r') {
            this.currentCharacter = CharUtils.CR;
            return;
        }
        if (c10 == 't') {
            this.currentCharacter = '\t';
            return;
        }
        int hexadecimalValue = ScannerHelper.getHexadecimalValue(c10);
        if (hexadecimalValue < 0 || hexadecimalValue > 7) {
            throw new InvalidInputException("Invalid_Escape");
        }
        boolean z10 = hexadecimalValue > 3;
        char[] cArr = this.source;
        int i10 = this.currentPosition;
        this.currentPosition = i10 + 1;
        char c11 = cArr[i10];
        this.currentCharacter = c11;
        if (ScannerHelper.isDigit(c11)) {
            int hexadecimalValue2 = ScannerHelper.getHexadecimalValue(this.currentCharacter);
            if (hexadecimalValue2 < 0 || hexadecimalValue2 > 7) {
                this.currentPosition--;
            } else {
                hexadecimalValue = (hexadecimalValue * 8) + hexadecimalValue2;
                char[] cArr2 = this.source;
                int i11 = this.currentPosition;
                this.currentPosition = i11 + 1;
                char c12 = cArr2[i11];
                this.currentCharacter = c12;
                if (!ScannerHelper.isDigit(c12)) {
                    this.currentPosition--;
                } else if (z10) {
                    this.currentPosition--;
                } else {
                    int hexadecimalValue3 = ScannerHelper.getHexadecimalValue(this.currentCharacter);
                    if (hexadecimalValue3 < 0 || hexadecimalValue3 > 7) {
                        this.currentPosition--;
                    } else {
                        hexadecimalValue = (hexadecimalValue * 8) + hexadecimalValue3;
                    }
                }
            }
        } else {
            this.currentPosition--;
        }
        if (hexadecimalValue > 255) {
            throw new InvalidInputException("Invalid_Escape");
        }
        this.currentCharacter = (char) hexadecimalValue;
    }

    public int scanIdentifier() throws InvalidInputException {
        int i10;
        boolean z10;
        int i11;
        boolean z11;
        boolean isJavaIdentifierStart;
        this.withoutUnicodePtr = 0;
        int i12 = this.currentPosition;
        boolean z12 = false;
        do {
            i10 = this.withoutUnicodePtr;
            int i13 = this.currentPosition;
            this.startPosition = i13;
            int i14 = this.eofPosition;
            if (i13 >= i14) {
                if (!this.tokenizeWhiteSpace || i12 == i13 - 1) {
                    return 158;
                }
                this.currentPosition = i13 - 1;
                this.startPosition = i12;
                return 1000;
            }
            char[] cArr = this.source;
            int i15 = i13 + 1;
            this.currentPosition = i15;
            char c10 = cArr[i13];
            this.currentCharacter = c10;
            z10 = i15 < i14 && c10 == '\\' && cArr[i15] == 'u';
            if (z10) {
                z11 = jumpOverUnicodeWhiteSpace();
                i11 = this.currentPosition - i13;
            } else {
                i11 = i15 - i13;
                z11 = c10 == '\t' || c10 == '\n' || c10 == '\f' || c10 == '\r' || c10 == ' ';
            }
            if (z11) {
                z12 = true;
            }
        } while (z11);
        if (z12) {
            if (this.tokenizeWhiteSpace) {
                this.currentPosition -= i11;
                this.startPosition = i12;
                if (z10) {
                    this.withoutUnicodePtr = i10;
                }
                return 1000;
            }
            if (z10) {
                this.withoutUnicodePtr = 0;
                unicodeStore();
            } else {
                this.withoutUnicodePtr = 0;
            }
        }
        char c11 = this.currentCharacter;
        if (c11 < '\u0080') {
            if ((ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[c11] & 64) != 0) {
                return scanIdentifierOrKeywordWithBoundCheck();
            }
            return 309;
        }
        if (c11 < '\ud800' || c11 > '\udbff') {
            if (c11 >= '\udc00' && c11 <= '\udfff') {
                if (this.complianceLevel < ClassFileConstants.JDK1_5) {
                    throw new InvalidInputException("Invalid_Unicode_Escape");
                }
                throw new InvalidInputException("Invalid_High_Surrogate");
            }
            isJavaIdentifierStart = ScannerHelper.isJavaIdentifierStart(this.complianceLevel, c11);
        } else {
            if (this.complianceLevel < ClassFileConstants.JDK1_5) {
                throw new InvalidInputException("Invalid_Unicode_Escape");
            }
            char nextCharWithBoundChecks = (char) getNextCharWithBoundChecks();
            if (nextCharWithBoundChecks < '\udc00' || nextCharWithBoundChecks > '\udfff') {
                throw new InvalidInputException("Invalid_Low_Surrogate");
            }
            isJavaIdentifierStart = ScannerHelper.isJavaIdentifierStart(this.complianceLevel, c11, nextCharWithBoundChecks);
        }
        if (isJavaIdentifierStart) {
            return scanIdentifierOrKeywordWithBoundCheck();
        }
        return 309;
    }

    public int scanIdentifierOrKeyword() {
        int i10;
        char[] cArr;
        this.useAssertAsAnIndentifier = false;
        this.useEnumAsAnIndentifier = false;
        char[] cArr2 = this.source;
        int i11 = this.eofPosition;
        while (true) {
            int i12 = this.currentPosition;
            i10 = 1;
            if (i12 >= i11) {
                break;
            }
            char c10 = cArr2[i12];
            if (c10 < '\u0080') {
                int i13 = ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[c10];
                if ((i13 & 60) != 0) {
                    if (this.withoutUnicodePtr != 0) {
                        this.currentCharacter = c10;
                        unicodeStore();
                    }
                    this.currentPosition++;
                } else {
                    if ((i13 & 258) != 0) {
                        this.currentCharacter = c10;
                    }
                    do {
                    } while (getNextCharAsJavaIdentifierPart());
                }
            } else {
                do {
                } while (getNextCharAsJavaIdentifierPart());
            }
        }
        int i14 = this.withoutUnicodePtr;
        if (i14 == 0) {
            int i15 = this.currentPosition;
            int i16 = this.startPosition;
            i14 = i15 - i16;
            if (i14 == 1) {
                return 5;
            }
            cArr = this.source;
            i10 = i16;
        } else {
            if (i14 == 1) {
                return 5;
            }
            cArr = this.withoutUnicodeBuffer;
        }
        return internalScanIdentifierOrKeyword(i10, i14, cArr);
    }

    public int scanIdentifierOrKeywordWithBoundCheck() {
        int i10;
        char[] cArr;
        this.useAssertAsAnIndentifier = false;
        this.useEnumAsAnIndentifier = false;
        char[] cArr2 = this.source;
        int i11 = this.eofPosition;
        while (true) {
            int i12 = this.currentPosition;
            i10 = 1;
            if (i12 >= i11) {
                break;
            }
            char c10 = cArr2[i12];
            if (c10 < '\u0080') {
                int i13 = ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[c10];
                if ((i13 & 60) != 0) {
                    if (this.withoutUnicodePtr != 0) {
                        this.currentCharacter = c10;
                        unicodeStore();
                    }
                    this.currentPosition++;
                } else {
                    if ((i13 & 258) != 0) {
                        this.currentCharacter = c10;
                    }
                    do {
                    } while (getNextCharAsJavaIdentifierPartWithBoundCheck());
                }
            } else {
                do {
                } while (getNextCharAsJavaIdentifierPartWithBoundCheck());
            }
        }
        int i14 = this.withoutUnicodePtr;
        if (i14 == 0) {
            int i15 = this.currentPosition;
            int i16 = this.startPosition;
            i14 = i15 - i16;
            if (i14 == 1) {
                return 5;
            }
            cArr = this.source;
            i10 = i16;
        } else {
            if (i14 == 1) {
                return 5;
            }
            cArr = this.withoutUnicodeBuffer;
        }
        return internalScanIdentifierOrKeyword(i10, i14, cArr);
    }

    public int scanNumber(boolean z10) throws InvalidInputException {
        boolean z11;
        boolean z12 = false;
        boolean z13 = true;
        if (!z10 && this.currentCharacter == '0') {
            if (getNextChar('x', 'X') >= 0) {
                int i10 = this.currentPosition;
                consumeDigits(16, true);
                int i11 = this.currentPosition;
                if (getNextChar('l', 'L') >= 0) {
                    if (i11 != i10) {
                        return 41;
                    }
                    throw new InvalidInputException("Invalid_Hexa_Literal");
                }
                if (!getNextChar('.')) {
                    if (getNextChar('p', 'P') < 0) {
                        if (i11 != i10) {
                            return 40;
                        }
                        throw new InvalidInputException("Invalid_Hexa_Literal");
                    }
                    this.unicodeAsBackSlash = false;
                    char[] cArr = this.source;
                    int i12 = this.currentPosition;
                    int i13 = i12 + 1;
                    this.currentPosition = i13;
                    char c10 = cArr[i12];
                    this.currentCharacter = c10;
                    if (c10 == '\\' && cArr[i13] == 'u') {
                        getNextUnicodeChar();
                    } else if (this.withoutUnicodePtr != 0) {
                        unicodeStore();
                    }
                    char c11 = this.currentCharacter;
                    if (c11 == '-' || c11 == '+') {
                        this.unicodeAsBackSlash = false;
                        char[] cArr2 = this.source;
                        int i14 = this.currentPosition;
                        int i15 = i14 + 1;
                        this.currentPosition = i15;
                        char c12 = cArr2[i14];
                        this.currentCharacter = c12;
                        if (c12 == '\\' && cArr2[i15] == 'u') {
                            getNextUnicodeChar();
                        } else if (this.withoutUnicodePtr != 0) {
                            unicodeStore();
                        }
                    }
                    if (!ScannerHelper.isDigit(this.currentCharacter)) {
                        if (this.sourceLevel < ClassFileConstants.JDK1_5) {
                            throw new InvalidInputException("Illegal_Hexa_Literal");
                        }
                        if (this.currentCharacter != '_') {
                            throw new InvalidInputException("Invalid_Float_Literal");
                        }
                        consumeDigits(10);
                        throw new InvalidInputException("Invalid_Underscore");
                    }
                    consumeDigits(10);
                    if (getNextChar('f', 'F') >= 0) {
                        if (this.sourceLevel >= ClassFileConstants.JDK1_5) {
                            return 42;
                        }
                        throw new InvalidInputException("Illegal_Hexa_Literal");
                    }
                    if (getNextChar('d', 'D') >= 0) {
                        if (this.sourceLevel >= ClassFileConstants.JDK1_5) {
                            return 43;
                        }
                        throw new InvalidInputException("Illegal_Hexa_Literal");
                    }
                    if (getNextChar('l', 'L') >= 0) {
                        if (this.sourceLevel < ClassFileConstants.JDK1_5) {
                            throw new InvalidInputException("Illegal_Hexa_Literal");
                        }
                        throw new InvalidInputException("Invalid_Hexa_Literal");
                    }
                    if (this.sourceLevel >= ClassFileConstants.JDK1_5) {
                        return 43;
                    }
                    throw new InvalidInputException("Illegal_Hexa_Literal");
                }
                boolean z14 = i11 == i10;
                int i16 = this.currentPosition;
                consumeDigits(16, true);
                int i17 = this.currentPosition;
                if (z14 && i17 == i16) {
                    if (this.sourceLevel < ClassFileConstants.JDK1_5) {
                        throw new InvalidInputException("Illegal_Hexa_Literal");
                    }
                    throw new InvalidInputException("Invalid_Hexa_Literal");
                }
                if (getNextChar('p', 'P') < 0) {
                    if (this.sourceLevel < ClassFileConstants.JDK1_5) {
                        throw new InvalidInputException("Illegal_Hexa_Literal");
                    }
                    throw new InvalidInputException("Invalid_Hexa_Literal");
                }
                this.unicodeAsBackSlash = false;
                char[] cArr3 = this.source;
                int i18 = this.currentPosition;
                int i19 = i18 + 1;
                this.currentPosition = i19;
                char c13 = cArr3[i18];
                this.currentCharacter = c13;
                if (c13 == '\\' && cArr3[i19] == 'u') {
                    getNextUnicodeChar();
                } else if (this.withoutUnicodePtr != 0) {
                    unicodeStore();
                }
                char c14 = this.currentCharacter;
                if (c14 == '-' || c14 == '+') {
                    this.unicodeAsBackSlash = false;
                    char[] cArr4 = this.source;
                    int i20 = this.currentPosition;
                    int i21 = i20 + 1;
                    this.currentPosition = i21;
                    char c15 = cArr4[i20];
                    this.currentCharacter = c15;
                    if (c15 == '\\' && cArr4[i21] == 'u') {
                        getNextUnicodeChar();
                    } else if (this.withoutUnicodePtr != 0) {
                        unicodeStore();
                    }
                }
                if (!ScannerHelper.isDigit(this.currentCharacter)) {
                    if (this.sourceLevel < ClassFileConstants.JDK1_5) {
                        throw new InvalidInputException("Illegal_Hexa_Literal");
                    }
                    if (this.currentCharacter != '_') {
                        throw new InvalidInputException("Invalid_Hexa_Literal");
                    }
                    consumeDigits(10);
                    throw new InvalidInputException("Invalid_Underscore");
                }
                consumeDigits(10);
                if (getNextChar('f', 'F') >= 0) {
                    if (this.sourceLevel >= ClassFileConstants.JDK1_5) {
                        return 42;
                    }
                    throw new InvalidInputException("Illegal_Hexa_Literal");
                }
                if (getNextChar('d', 'D') >= 0) {
                    if (this.sourceLevel >= ClassFileConstants.JDK1_5) {
                        return 43;
                    }
                    throw new InvalidInputException("Illegal_Hexa_Literal");
                }
                if (getNextChar('l', 'L') >= 0) {
                    if (this.sourceLevel < ClassFileConstants.JDK1_5) {
                        throw new InvalidInputException("Illegal_Hexa_Literal");
                    }
                    throw new InvalidInputException("Invalid_Hexa_Literal");
                }
                if (this.sourceLevel >= ClassFileConstants.JDK1_5) {
                    return 43;
                }
                throw new InvalidInputException("Illegal_Hexa_Literal");
            }
            if (getNextChar('b', 'B') >= 0) {
                int i22 = this.currentPosition;
                consumeDigits(2, true);
                if (this.currentPosition == i22) {
                    if (this.sourceLevel < ClassFileConstants.JDK1_7) {
                        throw new InvalidInputException("Binary_Literal_Not_Below_17");
                    }
                    throw new InvalidInputException("Invalid_Binary_Literal");
                }
                if (getNextChar('l', 'L') >= 0) {
                    if (this.sourceLevel >= ClassFileConstants.JDK1_7) {
                        return 41;
                    }
                    throw new InvalidInputException("Binary_Literal_Not_Below_17");
                }
                if (this.sourceLevel >= ClassFileConstants.JDK1_7) {
                    return 40;
                }
                throw new InvalidInputException("Binary_Literal_Not_Below_17");
            }
            if (getNextCharAsDigit()) {
                consumeDigits(10);
                if (getNextChar('l', 'L') >= 0) {
                    return 41;
                }
                if (getNextChar('f', 'F') >= 0) {
                    return 42;
                }
                if (getNextChar('d', 'D') >= 0) {
                    return 43;
                }
                if (getNextChar('.')) {
                    consumeDigits(10);
                    z13 = false;
                }
                if (getNextChar('e', IIndexConstants.ENUM_SUFFIX) >= 0) {
                    this.unicodeAsBackSlash = false;
                    char[] cArr5 = this.source;
                    int i23 = this.currentPosition;
                    int i24 = i23 + 1;
                    this.currentPosition = i24;
                    char c16 = cArr5[i23];
                    this.currentCharacter = c16;
                    if (c16 == '\\' && cArr5[i24] == 'u') {
                        getNextUnicodeChar();
                    } else if (this.withoutUnicodePtr != 0) {
                        unicodeStore();
                    }
                    char c17 = this.currentCharacter;
                    if (c17 == '-' || c17 == '+') {
                        this.unicodeAsBackSlash = false;
                        char[] cArr6 = this.source;
                        int i25 = this.currentPosition;
                        int i26 = i25 + 1;
                        this.currentPosition = i26;
                        char c18 = cArr6[i25];
                        this.currentCharacter = c18;
                        if (c18 == '\\' && cArr6[i26] == 'u') {
                            getNextUnicodeChar();
                        } else if (this.withoutUnicodePtr != 0) {
                            unicodeStore();
                        }
                    }
                    if (!ScannerHelper.isDigit(this.currentCharacter)) {
                        if (this.currentCharacter != '_') {
                            throw new InvalidInputException("Invalid_Float_Literal");
                        }
                        consumeDigits(10);
                        throw new InvalidInputException("Invalid_Underscore");
                    }
                    consumeDigits(10);
                } else {
                    z12 = z13;
                }
                if (getNextChar('f', 'F') >= 0) {
                    return 42;
                }
                return (getNextChar('d', 'D') >= 0 || !z12) ? 43 : 40;
            }
        }
        consumeDigits(10);
        if (!z10 && getNextChar('l', 'L') >= 0) {
            return 41;
        }
        if (z10 || !getNextChar('.')) {
            z11 = z10;
        } else {
            consumeDigits(10, true);
            z11 = true;
        }
        if (getNextChar('e', IIndexConstants.ENUM_SUFFIX) >= 0) {
            this.unicodeAsBackSlash = false;
            char[] cArr7 = this.source;
            int i27 = this.currentPosition;
            int i28 = i27 + 1;
            this.currentPosition = i28;
            char c19 = cArr7[i27];
            this.currentCharacter = c19;
            if (c19 == '\\' && cArr7[i28] == 'u') {
                getNextUnicodeChar();
            } else if (this.withoutUnicodePtr != 0) {
                unicodeStore();
            }
            char c20 = this.currentCharacter;
            if (c20 == '-' || c20 == '+') {
                this.unicodeAsBackSlash = false;
                char[] cArr8 = this.source;
                int i29 = this.currentPosition;
                int i30 = i29 + 1;
                this.currentPosition = i30;
                char c21 = cArr8[i29];
                this.currentCharacter = c21;
                if (c21 == '\\' && cArr8[i30] == 'u') {
                    getNextUnicodeChar();
                } else if (this.withoutUnicodePtr != 0) {
                    unicodeStore();
                }
            }
            if (!ScannerHelper.isDigit(this.currentCharacter)) {
                if (this.currentCharacter != '_') {
                    throw new InvalidInputException("Invalid_Float_Literal");
                }
                consumeDigits(10);
                throw new InvalidInputException("Invalid_Underscore");
            }
            consumeDigits(10);
        } else {
            z13 = z11;
        }
        if (getNextChar('d', 'D') >= 0) {
            return 43;
        }
        if (getNextChar('f', 'F') >= 0) {
            return 42;
        }
        return z13 ? 43 : 40;
    }

    @Override
    public final void setSource(char[] cArr) {
        int length;
        if (cArr == null) {
            this.source = CharOperation.NO_CHAR;
            length = 0;
        } else {
            this.source = cArr;
            length = cArr.length;
        }
        this.startPosition = -1;
        this.eofPosition = length;
        this.currentPosition = 0;
        this.initialPosition = 0;
        this.containsAssertKeyword = false;
        this.linePtr = -1;
    }

    public String toString() {
        int i10 = this.startPosition;
        int i11 = this.eofPosition;
        if (i10 == i11) {
            return "EOF\n\n" + new String(this.source);
        }
        int i12 = this.currentPosition;
        if (i12 > i11) {
            return "behind the EOF\n\n" + new String(this.source);
        }
        if (i12 <= 0) {
            return "NOT started!\n\n" + new String(this.source);
        }
        StringBuffer stringBuffer = new StringBuffer();
        int i13 = this.startPosition;
        if (i13 < 1000) {
            stringBuffer.append(this.source, 0, i13);
        } else {
            stringBuffer.append("<source beginning>\n...\n");
            int lineStart = getLineStart(org.eclipse.jdt.internal.compiler.util.Util.getLineNumber(this.startPosition - 1000, this.lineEnds, 0, this.linePtr));
            stringBuffer.append(this.source, lineStart, this.startPosition - lineStart);
        }
        stringBuffer.append("\n===============================\nStarts here -->");
        int i14 = this.currentPosition - 1;
        int i15 = this.startPosition;
        int i16 = (i14 - i15) + 1;
        if (i16 > -1) {
            stringBuffer.append(this.source, i15, i16);
        }
        stringBuffer.append("<-- Ends here\n===============================\n");
        stringBuffer.append(this.source, this.currentPosition, (this.eofPosition - (r2 - 1)) - 1);
        return stringBuffer.toString();
    }

    public String toStringAction(int i10) {
        if (i10 == 14) {
            return "<<";
        }
        if (i10 == 15) {
            return "[";
        }
        if (i10 == 85) {
            return "synchronized";
        }
        if (i10 == 86) {
            return ")";
        }
        if (i10 == 94) {
            return "static";
        }
        if (i10 == 95) {
            return VectorFormat.DEFAULT_SUFFIX;
        }
        if (i10 == 105) {
            return "transient";
        }
        if (i10 == 106) {
            return "volatile";
        }
        switch (i10) {
            case 1:
                return "++";
            case 2:
                return "--";
            case 3:
                return "+";
            case 4:
                return "-";
            case 5:
                return "Identifier(" + new String(getCurrentTokenSource()) + ")";
            case 6:
                return ".";
            case 7:
                return "(";
            case 8:
                return "*";
            case 9:
                return j.f121589a;
            case 10:
                return "/";
            case 11:
                return ">>";
            case 12:
                return ">>>";
            default:
                switch (i10) {
                    case 18:
                        return TypedValues.Custom.S_BOOLEAN;
                    case 19:
                        return "byte";
                    case 20:
                        return "char";
                    case 21:
                        return "double";
                    case 22:
                        return TypedValues.Custom.S_FLOAT;
                    case 23:
                        return "int";
                    case 24:
                        return "long";
                    case 25:
                        return "short";
                    case 26:
                        return "void";
                    default:
                        switch (i10) {
                            case 32:
                                return CallLog.Calls.NEW;
                            case 33:
                                return "super";
                            case 34:
                                return "this";
                            case 35:
                                return "==";
                            case 36:
                                return "!=";
                            case 37:
                                return "false";
                            case 38:
                                return "null";
                            case 39:
                                return "true";
                            case 40:
                                return "Integer(" + new String(getCurrentTokenSource()) + ")";
                            case 41:
                                return "Long(" + new String(getCurrentTokenSource()) + ")";
                            case 42:
                                return "Float(" + new String(getCurrentTokenSource()) + ")";
                            case 43:
                                return "Double(" + new String(getCurrentTokenSource()) + ")";
                            case 44:
                                return "Char(" + new String(getCurrentTokenSource()) + ")";
                            case 45:
                                return "String(" + new String(getCurrentTokenSource()) + ")";
                            case 90:
                                return DocLint.SEPARATOR;
                            case 110:
                                return "{";
                            case 117:
                                return "while";
                            case 119:
                                return "break";
                            case 120:
                                return "continue";
                            case 121:
                                return "do";
                            case 122:
                                return "for";
                            case 123:
                                return "if";
                            case 124:
                                return "return";
                            case 125:
                                return "switch";
                            case 126:
                                return "throw";
                            case 127:
                                return "try";
                            case 154:
                                return s.f32937c;
                            case 158:
                                return "EOF";
                            case 165:
                                return "class";
                            case 166:
                                return "]";
                            case 167:
                                return "=";
                            case 168:
                                return "+=";
                            case 169:
                                return "-=";
                            case 170:
                                return "*=";
                            case 171:
                                return "/=";
                            case 172:
                                return "&=";
                            case 173:
                                return "|=";
                            case 174:
                                return "^=";
                            case 175:
                                return "%=";
                            case 176:
                                return "<<=";
                            case 177:
                                return ">>=";
                            case 178:
                                return ">>>=";
                            case 180:
                                return "interface";
                            case 191:
                                return "import";
                            case 211:
                                return "case";
                            case 212:
                                return "default";
                            case 213:
                                return "else";
                            case 214:
                                return Telephony.Sms.Intents.EXTRA_PACKAGE_NAME;
                            case 225:
                                return "catch";
                            case 226:
                                return "finally";
                            case 227:
                                return "throws";
                            case 243:
                                return "extends";
                            case 268:
                                return "implements";
                            case 405:
                                return "->";
                            case 406:
                                return "::";
                            case 1000:
                                return "white_space(" + new String(getCurrentTokenSource()) + ")";
                            default:
                                switch (i10) {
                                    case 62:
                                        return "&";
                                    case 63:
                                        return "^";
                                    case 64:
                                        return ";";
                                    case 65:
                                        return "instanceof";
                                    case 66:
                                        return "<=";
                                    case 67:
                                        return ">=";
                                    case 68:
                                        return ">";
                                    case 69:
                                        return "<";
                                    case 70:
                                        return "|";
                                    case 71:
                                        return "!";
                                    case 72:
                                        return "~";
                                    default:
                                        switch (i10) {
                                            case 79:
                                                return "&&";
                                            case 80:
                                                return "||";
                                            case 81:
                                                return "?";
                                            default:
                                                switch (i10) {
                                                    case 98:
                                                        return "abstract";
                                                    case 99:
                                                        return "final";
                                                    case 100:
                                                        return "native";
                                                    case 101:
                                                        return "private";
                                                    case 102:
                                                        return "protected";
                                                    case 103:
                                                        return "public";
                                                    default:
                                                        return "not-a-token";
                                                }
                                        }
                                }
                        }
                }
        }
    }

    public void unicodeInitializeBuffer(int i10) {
        this.withoutUnicodePtr = i10;
        if (this.withoutUnicodeBuffer == null) {
            this.withoutUnicodeBuffer = new char[i10 + 11];
        }
        char[] cArr = this.withoutUnicodeBuffer;
        int length = cArr.length;
        if (i10 + 1 >= length) {
            char[] cArr2 = new char[i10 + 11];
            this.withoutUnicodeBuffer = cArr2;
            System.arraycopy(cArr, 0, cArr2, 0, length);
        }
        System.arraycopy(this.source, this.startPosition, this.withoutUnicodeBuffer, 1, i10);
    }

    public void unicodeStore() {
        int i10 = this.withoutUnicodePtr + 1;
        this.withoutUnicodePtr = i10;
        if (this.withoutUnicodeBuffer == null) {
            this.withoutUnicodeBuffer = new char[10];
        }
        char[] cArr = this.withoutUnicodeBuffer;
        int length = cArr.length;
        if (i10 == length) {
            char[] cArr2 = new char[length * 2];
            this.withoutUnicodeBuffer = cArr2;
            System.arraycopy(cArr, 0, cArr2, 0, length);
        }
        this.withoutUnicodeBuffer[i10] = this.currentCharacter;
    }

    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v5 */
    public PublicScanner(boolean z10, boolean z11, boolean z12, long j10, long j11, char[][] cArr, char[][] cArr2, boolean z13) {
        char[][] cArr3;
        int i10;
        char[][] cArr4 = cArr2;
        ?? r32 = 0;
        this.useAssertAsAnIndentifier = false;
        this.containsAssertKeyword = false;
        this.useEnumAsAnIndentifier = false;
        this.recordLineSeparator = false;
        this.skipComments = false;
        this.tokenizeComments = false;
        this.tokenizeWhiteSpace = false;
        this.unicodeAsBackSlash = false;
        this.scanningFloatLiteral = false;
        int i11 = 30;
        this.commentStops = new int[30];
        this.commentStarts = new int[30];
        this.commentTagStarts = new int[30];
        this.commentPtr = -1;
        this.lastCommentLinePosition = -1;
        this.foundTaskTags = null;
        this.foundTaskPriorities = null;
        this.foundTaskCount = 0;
        this.taskTags = null;
        this.taskPriorities = null;
        int i12 = 1;
        this.isTaskCaseSensitive = true;
        this.diet = false;
        this.lineEnds = new int[250];
        this.linePtr = -1;
        this.wasAcr = false;
        this.charArray_length = (char[][][][]) Array.newInstance((Class<?>) char[].class, 7, 30, 6);
        this.nlsTags = null;
        this.returnOnlyGreater = false;
        int i13 = 0;
        while (i13 < 6) {
            for (int i14 = r32; i14 < i11; i14++) {
                int i15 = 0;
                while (i15 < 6) {
                    this.charArray_length[i13][i14][i15] = initCharArray;
                    i15++;
                    i12 = 1;
                }
                i11 = 30;
            }
            i13++;
            r32 = 0;
        }
        this.newEntry2 = r32;
        this.newEntry3 = r32;
        this.newEntry4 = r32;
        this.newEntry5 = r32;
        this.newEntry6 = r32;
        this.insideRecovery = r32;
        this.eofPosition = Integer.MAX_VALUE;
        this.tokenizeComments = z10;
        this.tokenizeWhiteSpace = z11;
        this.sourceLevel = j10;
        this.complianceLevel = j11;
        this.checkNonExternalizedStringLiterals = z12;
        if (cArr != null) {
            int length = cArr.length;
            if (cArr4 != null) {
                int length2 = cArr4.length;
                if (length2 == length) {
                    cArr3 = cArr;
                    i10 = length;
                } else if (length2 > length) {
                    char[][] cArr5 = new char[length];
                    System.arraycopy(cArr4, r32, cArr5, r32, length);
                    i10 = length;
                    cArr4 = cArr5;
                    cArr3 = cArr;
                } else {
                    char[][] cArr6 = new char[length2];
                    System.arraycopy(cArr, r32, cArr6, r32, length2);
                    i10 = length2;
                    cArr3 = cArr6;
                }
                int[] iArr = new int[i10];
                for (int i16 = r32; i16 < i10; i16++) {
                    iArr[i16] = i16;
                }
                org.eclipse.jdt.internal.compiler.util.Util.reverseQuickSort(cArr3, r32, i10 - 1, iArr);
                char[][] cArr7 = new char[i10];
                for (int i17 = r32; i17 < i10; i17++) {
                    cArr7[i17] = cArr4[iArr[i17]];
                }
                this.taskPriorities = cArr7;
            } else {
                org.eclipse.jdt.internal.compiler.util.Util.reverseQuickSort(cArr, r32, length - i12);
                cArr3 = cArr;
            }
            this.taskTags = cArr3;
            this.isTaskCaseSensitive = z13;
        }
    }

    private final void consumeDigits(int i10, boolean z10) throws InvalidInputException {
        int consumeDigits0 = consumeDigits0(i10, 1, 2, z10);
        if (consumeDigits0 == 1) {
            if (this.sourceLevel < ClassFileConstants.JDK1_7) {
                throw new InvalidInputException("Underscores_In_Literals_Not_Below_17");
            }
        } else {
            if (consumeDigits0 != 2) {
                return;
            }
            if (this.sourceLevel < ClassFileConstants.JDK1_7) {
                throw new InvalidInputException("Underscores_In_Literals_Not_Below_17");
            }
            throw new InvalidInputException("Invalid_Underscore");
        }
    }

    public void unicodeStore(char c10) {
        int i10 = this.withoutUnicodePtr + 1;
        this.withoutUnicodePtr = i10;
        if (this.withoutUnicodeBuffer == null) {
            this.withoutUnicodeBuffer = new char[10];
        }
        char[] cArr = this.withoutUnicodeBuffer;
        int length = cArr.length;
        if (i10 == length) {
            char[] cArr2 = new char[length * 2];
            this.withoutUnicodeBuffer = cArr2;
            System.arraycopy(cArr, 0, cArr2, 0, length);
        }
        this.withoutUnicodeBuffer[i10] = c10;
    }

    public final boolean getNextChar(char c10) {
        int i10 = this.currentPosition;
        if (i10 >= this.eofPosition) {
            this.unicodeAsBackSlash = false;
            return false;
        }
        try {
            char[] cArr = this.source;
            int i11 = i10 + 1;
            this.currentPosition = i11;
            char c11 = cArr[i10];
            this.currentCharacter = c11;
            if (c11 == '\\' && cArr[i11] == 'u') {
                getNextUnicodeChar();
                if (this.currentCharacter == c10) {
                    return true;
                }
                this.currentPosition = i10;
                this.withoutUnicodePtr--;
                return false;
            }
            if (c11 != c10) {
                this.currentPosition = i10;
                return false;
            }
            this.unicodeAsBackSlash = false;
            if (this.withoutUnicodePtr != 0) {
                unicodeStore();
            }
            return true;
        } catch (IndexOutOfBoundsException unused) {
            this.unicodeAsBackSlash = false;
            this.currentPosition = i10;
            return false;
        } catch (InvalidInputException unused2) {
            this.unicodeAsBackSlash = false;
            this.currentPosition = i10;
            return false;
        }
    }

    public final void setSource(char[] cArr, CompilationResult compilationResult) {
        if (cArr == null) {
            setSource(compilationResult.compilationUnit.getContents());
        } else {
            setSource(cArr);
        }
        int[] iArr = compilationResult.lineSeparatorPositions;
        if (iArr != null) {
            this.lineEnds = iArr;
            this.linePtr = iArr.length - 1;
        }
    }

    public final boolean getNextCharAsDigit(int i10) {
        int i11 = this.currentPosition;
        if (i11 >= this.eofPosition) {
            return false;
        }
        try {
            char[] cArr = this.source;
            int i12 = i11 + 1;
            this.currentPosition = i12;
            char c10 = cArr[i11];
            this.currentCharacter = c10;
            if (c10 == '\\' && cArr[i12] == 'u') {
                getNextUnicodeChar();
                if (ScannerHelper.digit(this.currentCharacter, i10) != -1) {
                    return true;
                }
                this.currentPosition = i11;
                this.withoutUnicodePtr--;
                return false;
            }
            if (ScannerHelper.digit(c10, i10) == -1) {
                this.currentPosition = i11;
                return false;
            }
            if (this.withoutUnicodePtr != 0) {
                unicodeStore();
            }
            return true;
        } catch (IndexOutOfBoundsException unused) {
            this.currentPosition = i11;
            return false;
        } catch (InvalidInputException unused2) {
            this.currentPosition = i11;
            return false;
        }
    }

    public final void setSource(CompilationResult compilationResult) {
        setSource(null, compilationResult);
    }

    public final int getNextChar(char c10, char c11) {
        int i10 = this.currentPosition;
        if (i10 >= this.eofPosition) {
            return -1;
        }
        try {
            char[] cArr = this.source;
            int i11 = i10 + 1;
            this.currentPosition = i11;
            char c12 = cArr[i10];
            this.currentCharacter = c12;
            int i12 = 0;
            if (c12 == '\\' && cArr[i11] == 'u') {
                getNextUnicodeChar();
                char c13 = this.currentCharacter;
                if (c13 == c10) {
                    return 0;
                }
                if (c13 == c11) {
                    return 1;
                }
                this.currentPosition = i10;
                this.withoutUnicodePtr--;
                return -1;
            }
            if (c12 != c10) {
                if (c12 != c11) {
                    this.currentPosition = i10;
                    return -1;
                }
                i12 = 1;
            }
            if (this.withoutUnicodePtr != 0) {
                unicodeStore();
            }
            return i12;
        } catch (IndexOutOfBoundsException unused) {
            this.currentPosition = i10;
            return -1;
        } catch (InvalidInputException unused2) {
            this.currentPosition = i10;
            return -1;
        }
    }

    public PublicScanner(boolean z10, boolean z11, boolean z12, long j10, char[][] cArr, char[][] cArr2, boolean z13) {
        this(z10, z11, z12, j10, j10, cArr, cArr2, z13);
    }
}
