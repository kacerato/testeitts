package java.lang;

abstract class CharacterData {
    abstract int getProperties(int i10);

    public abstract int getType(int i10);

    public abstract boolean isDigit(int i10);

    public abstract boolean isLowerCase(int i10);

    public abstract boolean isUpperCase(int i10);

    public abstract boolean isWhitespace(int i10);

    public abstract boolean isMirrored(int i10);

    public abstract boolean isJavaIdentifierStart(int i10);

    public abstract boolean isJavaIdentifierPart(int i10);

    public abstract boolean isUnicodeIdentifierStart(int i10);

    public abstract boolean isUnicodeIdentifierPart(int i10);

    public abstract boolean isIdentifierIgnorable(int i10);

    public abstract boolean isEmoji(int i10);

    public abstract boolean isEmojiPresentation(int i10);

    public abstract boolean isEmojiModifier(int i10);

    public abstract boolean isEmojiModifierBase(int i10);

    public abstract boolean isEmojiComponent(int i10);

    public abstract boolean isExtendedPictographic(int i10);

    public abstract int toLowerCase(int i10);

    public abstract int toUpperCase(int i10);

    public abstract int toTitleCase(int i10);

    public abstract int digit(int i10, int i11);

    public abstract int getNumericValue(int i10);

    public abstract byte getDirectionality(int i10);

    public int toUpperCaseEx(int ch2) {
        return toUpperCase(ch2);
    }

    public char[] toUpperCaseCharArray(int ch2) {
        return null;
    }

    public boolean isOtherAlphabetic(int ch2) {
        return false;
    }

    public boolean isIdeographic(int ch2) {
        return false;
    }

    public static final CharacterData of(int ch2) {
        if ((ch2 >>> 8) == 0) {
            return CharacterDataLatin1.instance;
        }
        switch (ch2 >>> 16) {
            case 0:
                return CharacterData00.instance;
            case 1:
                return CharacterData01.instance;
            case 2:
                return CharacterData02.instance;
            case 3:
                return CharacterData03.instance;
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            default:
                return CharacterDataUndefined.instance;
            case 14:
                return CharacterData0E.instance;
            case 15:
            case 16:
                return CharacterDataPrivateUse.instance;
        }
    }
}
