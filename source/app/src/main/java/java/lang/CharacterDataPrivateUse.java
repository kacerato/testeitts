package java.lang;

public final class CharacterDataPrivateUse extends CharacterData {
    static final CharacterData instance = new CharacterDataPrivateUse();

    @Override
    int getProperties(int ch2) {
        return 0;
    }

    @Override
    public int getType(int ch2) {
        if ((ch2 & 65534) == 65534) {
            return 0;
        }
        return 18;
    }

    @Override
    public boolean isJavaIdentifierStart(int ch2) {
        return false;
    }

    @Override
    public boolean isJavaIdentifierPart(int ch2) {
        return false;
    }

    @Override
    public boolean isUnicodeIdentifierStart(int ch2) {
        return false;
    }

    @Override
    public boolean isUnicodeIdentifierPart(int ch2) {
        return false;
    }

    @Override
    public boolean isIdentifierIgnorable(int ch2) {
        return false;
    }

    @Override
    public boolean isEmoji(int ch2) {
        return false;
    }

    @Override
    public boolean isEmojiPresentation(int ch2) {
        return false;
    }

    @Override
    public boolean isEmojiModifier(int ch2) {
        return false;
    }

    @Override
    public boolean isEmojiModifierBase(int ch2) {
        return false;
    }

    @Override
    public boolean isEmojiComponent(int ch2) {
        return false;
    }

    @Override
    public boolean isExtendedPictographic(int ch2) {
        return false;
    }

    @Override
    public int toLowerCase(int ch2) {
        return ch2;
    }

    @Override
    public int toUpperCase(int ch2) {
        return ch2;
    }

    @Override
    public int toTitleCase(int ch2) {
        return ch2;
    }

    @Override
    public int digit(int ch2, int radix) {
        return -1;
    }

    @Override
    public int getNumericValue(int ch2) {
        return -1;
    }

    @Override
    public boolean isDigit(int ch2) {
        return false;
    }

    @Override
    public boolean isLowerCase(int ch2) {
        return false;
    }

    @Override
    public boolean isUpperCase(int ch2) {
        return false;
    }

    @Override
    public boolean isWhitespace(int ch2) {
        return false;
    }

    @Override
    public byte getDirectionality(int ch2) {
        if ((ch2 & 65534) == 65534) {
            return (byte) -1;
        }
        return (byte) 0;
    }

    @Override
    public boolean isMirrored(int ch2) {
        return false;
    }

    private CharacterDataPrivateUse() {
    }
}
