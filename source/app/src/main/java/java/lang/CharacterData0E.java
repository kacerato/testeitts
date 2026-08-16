package java.lang;

import jdk.internal.vm.annotation.Stable;
import org.eclipse.jdt.core.IJavaModelStatusConstants;

public final class CharacterData0E extends CharacterData {
    static final CharacterData instance;

    @Stable
    static final char[] f92749X;

    @Stable
    static final char[] f92750Y;

    @Stable
    static final int[] f92751A;
    static final String A_DATA = "\u7800\ufffd\ufffd\u4800\u1010\u7800\ufffd\ufffd\u7800\ufffd\ufffd\u4800\u1010\u4800\u1010\u4000\u3006\u4000\u3006";

    @Stable
    static final char[] f92752B;
    static final boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !CharacterData0E.class.desiredAssertionStatus();
        instance = new CharacterData0E();
        f92749X = "\ufffd\ufffd\u0010\u0010\u0010    0000000@                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ".toCharArray();
        f92750Y = "\ufffd\ufffd\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0004\u0004\u0004\u0004\u0004\u0004\u0004\u0004\u0004\u0004\u0004\u0004\u0004\u0004\u0004\u0004\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0006\u0006\u0006\u0006\u0006\u0006\u0006\u0006\u0006\u0006\u0006\u0006\u0006\u0006\u0006\u0006\u0006\u0006\u0006\u0006\u0006\u0006\u0006\u0006\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002".toCharArray();
        f92751A = new int[8];
        f92752B = "\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\u0400\u0400  ".toCharArray();
        char[] data = A_DATA.toCharArray();
        if (!$assertionsDisabled && data.length != 16) {
            throw new AssertionError();
        }
        int i10 = 0;
        int j10 = 0;
        while (i10 < 16) {
            int i11 = i10;
            int i12 = i10 + 1;
            int entry = data[i11] << 16;
            int i13 = j10;
            j10++;
            i10 = i12 + 1;
            f92751A[i13] = entry | data[i12];
        }
    }

    @Override
    int getProperties(int ch2) {
        char offset = (char) ch2;
        int props = f92751A[f92750Y[f92749X[offset >> 5] | ((offset >> 1) & 15)] | (offset & 1)];
        return props;
    }

    int getPropertiesEx(int ch2) {
        char offset = (char) ch2;
        return f92752B[f92750Y[f92749X[offset >> 5] | ((offset >> 1) & 15)] | (offset & 1)];
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
        int mapChar = ch2;
        int val = getProperties(ch2);
        if ((val & 131072) != 0) {
            int offset = (val << 5) >> 23;
            mapChar = ch2 + offset;
        }
        return mapChar;
    }

    @Override
    public int toUpperCase(int ch2) {
        int mapChar = ch2;
        int val = getProperties(ch2);
        if ((val & 65536) != 0) {
            int offset = (val << 5) >> 23;
            mapChar = ch2 - offset;
        }
        return mapChar;
    }

    @Override
    public int toTitleCase(int ch2) {
        int mapChar = ch2;
        int val = getProperties(ch2);
        if ((val & 32768) != 0) {
            if ((val & 65536) == 0) {
                mapChar = ch2 + 1;
            } else if ((val & 131072) == 0) {
                mapChar = ch2 - 1;
            }
        } else if ((val & 65536) != 0) {
            mapChar = toUpperCase(ch2);
        }
        return mapChar;
    }

    @Override
    public int digit(int ch2, int radix) {
        int value = -1;
        if (radix >= 2 && radix <= 36) {
            int val = getProperties(ch2);
            int kind = val & 31;
            if (kind == 9) {
                value = (ch2 + ((val & IJavaModelStatusConstants.EVALUATION_ERROR) >> 5)) & 31;
            } else if ((val & 3072) == 3072) {
                value = ((ch2 + ((val & IJavaModelStatusConstants.EVALUATION_ERROR) >> 5)) & 31) + 10;
            }
        }
        if (value < radix) {
            return value;
        }
        return -1;
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
    public boolean isDigit(int ch2) {
        int props = getProperties(ch2);
        return (props & 31) == 9;
    }

    @Override
    public boolean isLowerCase(int ch2) {
        return (getPropertiesEx(ch2) & 1) != 0;
    }

    @Override
    public boolean isUpperCase(int ch2) {
        return (getPropertiesEx(ch2) & 2) != 0;
    }

    @Override
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

    private CharacterData0E() {
    }
}
