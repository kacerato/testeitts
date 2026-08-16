package java.lang;

import java.text.BreakIterator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import sun.text.Normalizer;

public final class ConditionalSpecialCasing {
    static final int FINAL_CASED = 1;
    static final int AFTER_SOFT_DOTTED = 2;
    static final int MORE_ABOVE = 3;
    static final int AFTER_I = 4;
    static final int NOT_BEFORE_DOT = 5;
    static final int COMBINING_CLASS_ABOVE = 230;
    static Entry[] entry = {new Entry(931, new char[]{'\u03c2'}, new char[]{'\u03a3'}, null, 1), new Entry(304, new char[]{'i', '\u0307'}, new char[]{'\u0130'}, null, 0), new Entry(775, new char[]{'\u0307'}, new char[0], "lt", 2), new Entry(73, new char[]{'i', '\u0307'}, new char[]{'I'}, "lt", 3), new Entry(74, new char[]{'j', '\u0307'}, new char[]{'J'}, "lt", 3), new Entry(302, new char[]{'\u012f', '\u0307'}, new char[]{'\u012e'}, "lt", 3), new Entry(204, new char[]{'i', '\u0307', '\u0300'}, new char[]{'\u00cc'}, "lt", 0), new Entry(205, new char[]{'i', '\u0307', '\u0301'}, new char[]{'\u00cd'}, "lt", 0), new Entry(296, new char[]{'i', '\u0307', '\u0303'}, new char[]{'\u0128'}, "lt", 0), new Entry(304, new char[]{'i'}, new char[]{'\u0130'}, "tr", 0), new Entry(304, new char[]{'i'}, new char[]{'\u0130'}, "az", 0), new Entry(775, new char[0], new char[]{'\u0307'}, "tr", 4), new Entry(775, new char[0], new char[]{'\u0307'}, "az", 4), new Entry(73, new char[]{'\u0131'}, new char[]{'I'}, "tr", 5), new Entry(73, new char[]{'\u0131'}, new char[]{'I'}, "az", 5), new Entry(105, new char[]{'i'}, new char[]{'\u0130'}, "tr", 0), new Entry(105, new char[]{'i'}, new char[]{'\u0130'}, "az", 0)};
    private static final HashMap<Integer, HashSet<Entry>> entryTable = new HashMap<>();

    ConditionalSpecialCasing() {
    }

    static {
        for (Entry cur : entry) {
            Integer cp = Integer.valueOf(cur.getCodePoint());
            HashSet<Entry> set = entryTable.get(cp);
            if (set == null) {
                set = new HashSet<>();
                entryTable.put(cp, set);
            }
            set.add(cur);
        }
    }

    public static int toLowerCaseEx(String src, int index, Locale locale) {
        char[] result = lookUpTable(src, index, locale, true);
        if (result != null) {
            if (result.length == 1) {
                return result[0];
            }
            return -1;
        }
        return Character.toLowerCase(src.codePointAt(index));
    }

    public static int toUpperCaseEx(String src, int index, Locale locale) {
        char[] result = lookUpTable(src, index, locale, false);
        if (result != null) {
            if (result.length == 1) {
                return result[0];
            }
            return -1;
        }
        return Character.toUpperCaseEx(src.codePointAt(index));
    }

    public static char[] toLowerCaseCharArray(String src, int index, Locale locale) {
        return lookUpTable(src, index, locale, true);
    }

    public static char[] toUpperCaseCharArray(String src, int index, Locale locale) {
        char[] result = lookUpTable(src, index, locale, false);
        if (result != null) {
            return result;
        }
        return Character.toUpperCaseCharArray(src.codePointAt(index));
    }

    private static char[] lookUpTable(String src, int index, Locale locale, boolean bLowerCasing) {
        HashSet<Entry> set = entryTable.get(Integer.valueOf(src.codePointAt(index)));
        char[] ret = null;
        if (set != null) {
            Iterator<Entry> iter = set.iterator();
            String currentLang = locale.getLanguage();
            while (iter.hasNext()) {
                Entry entry2 = iter.next();
                String conditionLang = entry2.getLanguage();
                if (conditionLang == null || conditionLang.equals(currentLang)) {
                    if (isConditionMet(src, index, locale, entry2.getCondition())) {
                        ret = bLowerCasing ? entry2.getLowerCase() : entry2.getUpperCase();
                        if (conditionLang != null) {
                            break;
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        return ret;
    }

    private static boolean isConditionMet(String src, int index, Locale locale, int condition) {
        switch (condition) {
            case 1:
                return isFinalCased(src, index, locale);
            case 2:
                return isAfterSoftDotted(src, index);
            case 3:
                return isMoreAbove(src, index);
            case 4:
                return isAfterI(src, index);
            case 5:
                return !isBeforeDot(src, index);
            default:
                return true;
        }
    }

    private static boolean isFinalCased(String src, int index, Locale locale) {
        BreakIterator wordBoundary = BreakIterator.getWordInstance(locale);
        wordBoundary.setText(src);
        int i10 = index;
        while (true) {
            int i11 = i10;
            if (i11 >= 0 && !wordBoundary.isBoundary(i11)) {
                int ch2 = src.codePointBefore(i11);
                if (!isCased(ch2)) {
                    i10 = i11 - Character.charCount(ch2);
                } else {
                    int len = src.length();
                    int i12 = index;
                    int charCount = Character.charCount(src.codePointAt(index));
                    while (true) {
                        int i13 = i12 + charCount;
                        if (i13 < len && !wordBoundary.isBoundary(i13)) {
                            int ch3 = src.codePointAt(i13);
                            if (!isCased(ch3)) {
                                i12 = i13;
                                charCount = Character.charCount(ch3);
                            } else {
                                return false;
                            }
                        } else {
                            return true;
                        }
                    }
                }
            } else {
                return false;
            }
        }
    }

    private static boolean isAfterI(String src, int index) {
        int i10 = index;
        while (true) {
            int i11 = i10;
            if (i11 > 0) {
                int ch2 = src.codePointBefore(i11);
                if (ch2 == 73) {
                    return true;
                }
                int cc2 = Normalizer.getCombiningClass(ch2);
                if (cc2 != 0 && cc2 != 230) {
                    i10 = i11 - Character.charCount(ch2);
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }
    }

    private static boolean isAfterSoftDotted(String src, int index) {
        int i10 = index;
        while (true) {
            int i11 = i10;
            if (i11 > 0) {
                int ch2 = src.codePointBefore(i11);
                if (isSoftDotted(ch2)) {
                    return true;
                }
                int cc2 = Normalizer.getCombiningClass(ch2);
                if (cc2 != 0 && cc2 != 230) {
                    i10 = i11 - Character.charCount(ch2);
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }
    }

    private static boolean isMoreAbove(String src, int index) {
        int len = src.length();
        int i10 = index;
        int charCount = Character.charCount(src.codePointAt(index));
        while (true) {
            int i11 = i10 + charCount;
            if (i11 < len) {
                int ch2 = src.codePointAt(i11);
                int cc2 = Normalizer.getCombiningClass(ch2);
                if (cc2 == 230) {
                    return true;
                }
                if (cc2 != 0) {
                    i10 = i11;
                    charCount = Character.charCount(ch2);
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }
    }

    private static boolean isBeforeDot(String src, int index) {
        int len = src.length();
        int i10 = index;
        int charCount = Character.charCount(src.codePointAt(index));
        while (true) {
            int i11 = i10 + charCount;
            if (i11 < len) {
                int ch2 = src.codePointAt(i11);
                if (ch2 == 775) {
                    return true;
                }
                int cc2 = Normalizer.getCombiningClass(ch2);
                if (cc2 != 0 && cc2 != 230) {
                    i10 = i11;
                    charCount = Character.charCount(ch2);
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }
    }

    private static boolean isCased(int ch2) {
        int type = Character.getType(ch2);
        if (type == 2 || type == 1 || type == 3) {
            return true;
        }
        if (ch2 >= 688 && ch2 <= 696) {
            return true;
        }
        if (ch2 >= 704 && ch2 <= 705) {
            return true;
        }
        if ((ch2 >= 736 && ch2 <= 740) || ch2 == 837 || ch2 == 890) {
            return true;
        }
        if (ch2 >= 7468 && ch2 <= 7521) {
            return true;
        }
        if (ch2 >= 8544 && ch2 <= 8575) {
            return true;
        }
        if (ch2 >= 9398 && ch2 <= 9449) {
            return true;
        }
        return false;
    }

    private static boolean isSoftDotted(int ch2) {
        switch (ch2) {
            case 105:
            case 106:
            case 303:
            case 616:
            case 1110:
            case 1112:
            case 7522:
            case 7725:
            case 7883:
            case 8305:
                return true;
            default:
                return false;
        }
    }

    public static class Entry {

        int f92755ch;
        char[] lower;
        char[] upper;
        String lang;
        int condition;

        Entry(int ch2, char[] lower, char[] upper, String lang, int condition) {
            this.f92755ch = ch2;
            this.lower = lower;
            this.upper = upper;
            this.lang = lang;
            this.condition = condition;
        }

        int getCodePoint() {
            return this.f92755ch;
        }

        char[] getLowerCase() {
            return this.lower;
        }

        char[] getUpperCase() {
            return this.upper;
        }

        String getLanguage() {
            return this.lang;
        }

        int getCondition() {
            return this.condition;
        }
    }
}
