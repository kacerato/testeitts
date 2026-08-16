package org.eclipse.jdt.core.formatter;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DefaultLineTracker;
import org.eclipse.jface.text.IRegion;
import org.eclipse.text.edits.ReplaceEdit;
import w2.C15883c;

public final class IndentManipulation {
    private IndentManipulation() {
    }

    private static int calculateSpaceEquivalents(int i10, int i11) {
        return i10 == 0 ? i11 : i11 + (i10 - (i11 % i10));
    }

    public static String changeIndent(String str, int i10, int i11, int i12, String str2, String str3) {
        if (i11 < 0 || i12 < 0 || str == null || i10 < 0 || str2 == null || str3 == null) {
            throw new IllegalArgumentException();
        }
        try {
            DefaultLineTracker defaultLineTracker = new DefaultLineTracker();
            defaultLineTracker.set(str);
            int numberOfLines = defaultLineTracker.getNumberOfLines();
            if (numberOfLines == 1) {
                return str;
            }
            StringBuffer stringBuffer = new StringBuffer();
            for (int i13 = 0; i13 < numberOfLines; i13++) {
                IRegion lineInformation = defaultLineTracker.getLineInformation(i13);
                int offset = lineInformation.getOffset();
                String substring = str.substring(offset, lineInformation.getLength() + offset);
                if (i13 == 0) {
                    stringBuffer.append(substring);
                } else {
                    stringBuffer.append(str3);
                    stringBuffer.append(str2);
                    if (i12 != 0) {
                        stringBuffer.append(trimIndent(substring, i10, i11, i12));
                    } else {
                        stringBuffer.append(substring);
                    }
                }
            }
            str = stringBuffer.toString();
            return str;
        } catch (BadLocationException unused) {
            return str;
        }
    }

    public static String extractIndentString(String str, int i10, int i11) {
        if (i10 < 0 || i11 < 0 || str == null) {
            throw new IllegalArgumentException();
        }
        int length = str.length();
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < length; i15++) {
            char charAt = str.charAt(i15);
            if (charAt != '\t') {
                if (!isIndentChar(charAt)) {
                    break;
                }
                i12++;
            } else {
                i12 = calculateSpaceEquivalents(i10, i12);
            }
            i13++;
            if (i12 >= i11) {
                i14 += i13;
                if (i11 == 0) {
                    i12 = 0;
                    i13 = 0;
                } else {
                    i12 %= i11;
                    i13 = 0;
                }
            }
        }
        return i14 == 0 ? Util.EMPTY_STRING : i14 == length ? str : str.substring(0, i14);
    }

    public static ReplaceEdit[] getChangeIndentEdits(String str, int i10, int i11, int i12, String str2) {
        DefaultLineTracker defaultLineTracker;
        int numberOfLines;
        int i13;
        if (i11 < 0 || i12 < 0 || str == null || i10 < 0 || str2 == null) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList();
        try {
            defaultLineTracker = new DefaultLineTracker();
            defaultLineTracker.set(str);
            numberOfLines = defaultLineTracker.getNumberOfLines();
        } catch (BadLocationException unused) {
        }
        if (numberOfLines == 1) {
            return (ReplaceEdit[]) arrayList.toArray(new ReplaceEdit[arrayList.size()]);
        }
        for (i13 = 1; i13 < numberOfLines; i13++) {
            IRegion lineInformation = defaultLineTracker.getLineInformation(i13);
            int offset = lineInformation.getOffset();
            String substring = str.substring(offset, lineInformation.getLength() + offset);
            int indexOfIndent = indexOfIndent(substring, i10, i11, i12);
            if (indexOfIndent >= 0) {
                arrayList.add(new ReplaceEdit(offset, indexOfIndent, str2));
            } else {
                arrayList.add(new ReplaceEdit(offset, measureIndentUnits(substring, i11, i12), ""));
            }
        }
        return (ReplaceEdit[]) arrayList.toArray(new ReplaceEdit[arrayList.size()]);
    }

    public static int getIndentWidth(Map map) {
        if (map == null) {
            throw new IllegalArgumentException();
        }
        int tabWidth = getTabWidth(map);
        return DefaultCodeFormatterConstants.MIXED.equals(map.get("org.eclipse.jdt.core.formatter.tabulation.char")) ? getIntValue(map, DefaultCodeFormatterConstants.FORMATTER_INDENTATION_SIZE, tabWidth) : tabWidth;
    }

    private static int getIntValue(Map map, String str, int i10) {
        try {
            return Integer.parseInt((String) map.get(str));
        } catch (NumberFormatException unused) {
            return i10;
        }
    }

    public static int getTabWidth(Map map) {
        if (map != null) {
            return getIntValue(map, "org.eclipse.jdt.core.formatter.tabulation.size", 4);
        }
        throw new IllegalArgumentException();
    }

    private static int indexOfIndent(CharSequence charSequence, int i10, int i11, int i12) {
        int i13 = i10 * i12;
        int length = charSequence.length();
        int i14 = -1;
        int i15 = 0;
        for (int i16 = 0; i16 < length && i15 < i13; i16++) {
            char charAt = charSequence.charAt(i16);
            if (charAt != '\t') {
                if (!isIndentChar(charAt)) {
                    break;
                }
                i15++;
            } else {
                i15 = calculateSpaceEquivalents(i11, i15);
            }
            i14 = i16;
        }
        if (i15 < i13) {
            return -1;
        }
        return i14 + 1;
    }

    public static boolean isIndentChar(char c10) {
        return ScannerHelper.isWhitespace(c10) && !isLineDelimiterChar(c10);
    }

    public static boolean isLineDelimiterChar(char c10) {
        return c10 == '\n' || c10 == '\r';
    }

    public static int measureIndentInSpaces(CharSequence charSequence, int i10) {
        if (i10 < 0 || charSequence == null) {
            throw new IllegalArgumentException();
        }
        int length = charSequence.length();
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            char charAt = charSequence.charAt(i12);
            if (charAt == '\t') {
                i11 = calculateSpaceEquivalents(i10, i11);
            } else {
                if (!isIndentChar(charAt)) {
                    return i11;
                }
                i11++;
            }
        }
        return i11;
    }

    public static int measureIndentUnits(CharSequence charSequence, int i10, int i11) {
        if (i11 < 0 || i10 < 0 || charSequence == null) {
            throw new IllegalArgumentException();
        }
        if (i11 == 0) {
            return 0;
        }
        return measureIndentInSpaces(charSequence, i10) / i11;
    }

    public static String trimIndent(String str, int i10, int i11, int i12) {
        String str2;
        if (i11 < 0 || i12 < 0 || str == null) {
            throw new IllegalArgumentException();
        }
        if (i10 <= 0 || i12 == 0) {
            return str;
        }
        int i13 = i10 * i12;
        int length = str.length();
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        while (true) {
            str2 = null;
            if (i15 >= length) {
                break;
            }
            char charAt = str.charAt(i15);
            if (charAt != '\t') {
                if (!isIndentChar(charAt)) {
                    i14 = i15;
                    break;
                }
                i16++;
            } else {
                i16 = calculateSpaceEquivalents(i11, i16);
            }
            if (i16 == i13) {
                i14 = i15 + 1;
                break;
            }
            if (i16 > i13) {
                i14 = i15 + 1;
                char[] cArr = new char[i16 - i13];
                Arrays.fill(cArr, C15883c.f126249O);
                str2 = new String(cArr);
                break;
            }
            i15++;
        }
        String substring = i14 == length ? Util.EMPTY_STRING : str.substring(i14);
        if (str2 == null) {
            return substring;
        }
        return str2 + substring;
    }
}
