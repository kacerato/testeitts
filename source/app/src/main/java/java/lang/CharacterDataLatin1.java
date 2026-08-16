package java.lang;

import jdk.internal.vm.annotation.IntrinsicCandidate;
import jdk.internal.vm.annotation.Stable;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import w2.C15883c;

public final class CharacterDataLatin1 extends CharacterData {

    @Stable
    private static final byte[] DIGITS = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, -1, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, Opcodes.OPC_fload_1, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, Opcodes.OPC_fload_1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

    @Stable
    static char[] sharpsMap = {'S', 'S'};
    static final CharacterDataLatin1 instance = new CharacterDataLatin1();

    @Stable
    static final int[] f92753A = {1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1476411407, 1342193679, 1476411407, 1610629135, 1342193679, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1342193679, 1342193679, 1342193679, 1476411407, 1610629132, 1744830488, 1744830488, 671088664, 671113242, 671088664, 1744830488, 1744830488, -402653163, -402653162, 1744830488, IProblem.OuterLocalMustBeFinal, 939524120, 536870932, 939524120, 939524120, 402667017, 402667017, 402667017, 402667017, 402667017, 402667017, 402667017, 402667017, 402667017, 402667017, 939524120, 1744830488, -402653159, 1744830489, -402653159, 1744830488, 1744830488, 8552417, 8552417, 8552417, 8552417, 8552417, 8552417, 8552417, 8552417, 8552417, 8552417, 8552417, 8552417, 8552417, 8552417, 8552417, 8552417, 8552417, 8552417, 8552417, 8552417, 8552417, 8552417, 8552417, 8552417, 8552417, 8552417, -402653163, 1744830488, -402653162, 1744830491, 1744850967, 1744830491, 8486882, 8486882, 8486882, 8486882, 8486882, 8486882, 8486882, 8486882, 8486882, 8486882, 8486882, 8486882, 8486882, 8486882, 8486882, 8486882, 8486882, 8486882, 8486882, 8486882, 8486882, 8486882, 8486882, 8486882, 8486882, 8486882, -402653163, 1744830489, -402653162, 1744830489, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1342181391, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 1207963663, 939524108, 1744830488, 671113242, 671113242, 671113242, 671113242, 1744830492, 1744830488, 1744830491, 1744830492, 28677, -402653155, 1744830489, 1207963664, 1744830492, 1744830491, 671088668, 671088665, 402654731, 402654731, 1744830491, 134049794, 1744830488, 1744830488, 1744830491, 402654475, 28677, -402653154, 1744832523, 1744832523, 1744832523, 1744830488, 8548353, 8548353, 8548353, 8548353, 8548353, 8548353, 8548353, 8548353, 8548353, 8548353, 8548353, 8548353, 8548353, 8548353, 8548353, 8548353, 8548353, 8548353, 8548353, 8548353, 8548353, 8548353, 8548353, 1744830489, 8548353, 8548353, 8548353, 8548353, 8548353, 8548353, 8548353, 134049794, 8482818, 8482818, 8482818, 8482818, 8482818, 8482818, 8482818, 8482818, 8482818, 8482818, 8482818, 8482818, 8482818, 8482818, 8482818, 8482818, 8482818, 8482818, 8482818, 8482818, 8482818, 8482818, 8482818, 1744830489, 8482818, 8482818, 8482818, 8482818, 8482818, 8482818, 8482818, 102592514};

    @Stable
    static final char[] f92754B = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '\u0440', 0, 0, 0, 0, 0, 0, '\u0440', 0, 0, 0, 0, 0, '\u0460', '\u0460', '\u0460', '\u0460', '\u0460', '\u0460', '\u0460', '\u0460', '\u0460', '\u0460', 0, 0, 0, 0, 0, 0, 0, '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', 0, 0, 0, 0, C15883c.f126249O, 0, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '\u0840', '1', 0, 0, 0, '\u0840', 0, 0, 0, 0, 0, 0, '1', 0, C15883c.f126249O, 0, 0, '1', 0, 0, 0, 0, 0, '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', 0, '2', '2', '2', '2', '2', '2', '2', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 0, '1', '1', '1', '1', '1', '1', '1', '1'};

    @Override
    int getProperties(int ch2) {
        char offset = (char) ch2;
        int props = f92753A[offset];
        return props;
    }

    int getPropertiesEx(int ch2) {
        char offset = (char) ch2;
        return f92754B[offset];
    }

    @Override
    @IntrinsicCandidate
    public boolean isDigit(int ch2) {
        return 48 <= ch2 && ch2 <= 57;
    }

    @Override
    @IntrinsicCandidate
    public boolean isLowerCase(int ch2) {
        return (getPropertiesEx(ch2) & 1) != 0;
    }

    @Override
    @IntrinsicCandidate
    public boolean isUpperCase(int ch2) {
        return (getPropertiesEx(ch2) & 2) != 0;
    }

    @Override
    public boolean isOtherAlphabetic(int ch2) {
        int props = getPropertiesEx(ch2);
        return (props & 4) != 0;
    }

    @Override
    public boolean isIdeographic(int ch2) {
        int props = getPropertiesEx(ch2);
        return (props & 8) != 0;
    }

    @Override
    public int getType(int ch2) {
        int props = getProperties(ch2);
        return props & 31;
    }

    @Override
    public boolean isJavaIdentifierStart(int ch2) {
        int props = getProperties(ch2);
        return (props & 28672) >= 20480;
    }

    @Override
    public boolean isJavaIdentifierPart(int ch2) {
        int props = getProperties(ch2);
        return (props & 12288) != 0;
    }

    @Override
    public boolean isUnicodeIdentifierStart(int ch2) {
        return (getPropertiesEx(ch2) & 16) != 0;
    }

    @Override
    public boolean isUnicodeIdentifierPart(int ch2) {
        return (getPropertiesEx(ch2) & 32) != 0 || isIdentifierIgnorable(ch2);
    }

    @Override
    public boolean isIdentifierIgnorable(int ch2) {
        int props = getProperties(ch2);
        return (props & 28672) == 4096;
    }

    @Override
    public boolean isEmoji(int ch2) {
        return (getPropertiesEx(ch2) & 64) != 0;
    }

    @Override
    public boolean isEmojiPresentation(int ch2) {
        return (getPropertiesEx(ch2) & 128) != 0;
    }

    @Override
    public boolean isEmojiModifier(int ch2) {
        return (getPropertiesEx(ch2) & 256) != 0;
    }

    @Override
    public boolean isEmojiModifierBase(int ch2) {
        return (getPropertiesEx(ch2) & 512) != 0;
    }

    @Override
    public boolean isEmojiComponent(int ch2) {
        return (getPropertiesEx(ch2) & 1024) != 0;
    }

    @Override
    public boolean isExtendedPictographic(int ch2) {
        return (getPropertiesEx(ch2) & 2048) != 0;
    }

    @Override
    public int toLowerCase(int ch2) {
        if (ch2 < 65) {
            return ch2;
        }
        int lower = ch2 | 32;
        if (lower <= 122 || (lower >= 224 && lower <= 254 && lower != 247)) {
            return lower;
        }
        return ch2;
    }

    @Override
    public int toUpperCase(int ch2) {
        if (ch2 < 97) {
            return ch2;
        }
        int upper = ch2 & 223;
        if (upper <= 90 || (upper >= 192 && upper <= 222 && upper != 215)) {
            return upper;
        }
        if (ch2 == 255) {
            return 376;
        }
        if (ch2 == 181) {
            return 924;
        }
        return ch2;
    }

    public static boolean equalsIgnoreCase(byte b12, byte b22) {
        if (b12 == b22) {
            return true;
        }
        int upper = b12 & 223;
        if (upper < 65) {
            return false;
        }
        return (upper <= 90 || (upper >= 192 && upper <= 222 && upper != 215)) && upper == (b22 & 223);
    }

    @Override
    public int toTitleCase(int ch2) {
        return toUpperCase(ch2);
    }

    @Override
    public int digit(int ch2, int radix) {
        byte b10 = DIGITS[ch2];
        if (b10 < 0 || b10 >= radix || radix < 2 || radix > 36) {
            return -1;
        }
        return b10;
    }

    @Override
    public int getNumericValue(int ch2) {
        int retval;
        int val = getProperties(ch2);
        switch (val & 3072) {
            case 0:
            default:
                retval = -1;
                break;
            case 1024:
                retval = (ch2 + ((val & IJavaModelStatusConstants.EVALUATION_ERROR) >> 5)) & 31;
                break;
            case 2048:
                retval = -2;
                break;
            case 3072:
                retval = ((ch2 + ((val & IJavaModelStatusConstants.EVALUATION_ERROR) >> 5)) & 31) + 10;
                break;
        }
        return retval;
    }

    @Override
    @IntrinsicCandidate
    public boolean isWhitespace(int ch2) {
        int props = getProperties(ch2);
        return (props & 28672) == 16384;
    }

    @Override
    public byte getDirectionality(int ch2) {
        int val = getProperties(ch2);
        byte directionality = (byte) ((val & 2013265920) >> 27);
        if (directionality == 15) {
            directionality = -1;
        }
        return directionality;
    }

    @Override
    public boolean isMirrored(int ch2) {
        int props = getProperties(ch2);
        return (props & Integer.MIN_VALUE) != 0;
    }

    @Override
    public int toUpperCaseEx(int ch2) {
        int mapChar = ch2;
        int val = getProperties(ch2);
        if ((val & 65536) != 0) {
            if ((val & 133955584) != 133955584) {
                int offset = (val << 5) >> 23;
                mapChar = ch2 - offset;
            } else {
                switch (ch2) {
                    case 181:
                        mapChar = 924;
                        break;
                    default:
                        mapChar = -1;
                        break;
                }
            }
        }
        return mapChar;
    }

    @Override
    public char[] toUpperCaseCharArray(int ch2) {
        char[] upperMap = {(char) ch2};
        if (ch2 == 223) {
            upperMap = sharpsMap;
        }
        return upperMap;
    }

    private CharacterDataLatin1() {
    }
}
