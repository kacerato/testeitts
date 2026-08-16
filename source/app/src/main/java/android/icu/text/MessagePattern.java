package android.icu.text;

import android.icu.util.Freezable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/MessagePattern.class
 */
public final class MessagePattern implements Cloneable, Freezable<MessagePattern> {
    public static final int ARG_NAME_NOT_NUMBER = -1;
    public static final int ARG_NAME_NOT_VALID = -2;
    public static final double NO_NUMERIC_VALUE = -1.23456789E8d;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/MessagePattern$ApostropheMode.class
 */
    public enum ApostropheMode {
        DOUBLE_OPTIONAL,
        DOUBLE_REQUIRED
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/MessagePattern$Part.class
 */
    public static final class Part {

        /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/MessagePattern$Part$Type.class
 */
        public enum Type {
            ARG_DOUBLE,
            ARG_INT,
            ARG_LIMIT,
            ARG_NAME,
            ARG_NUMBER,
            ARG_SELECTOR,
            ARG_START,
            ARG_STYLE,
            ARG_TYPE,
            INSERT_CHAR,
            MSG_LIMIT,
            MSG_START,
            REPLACE_NUMBER,
            SKIP_SYNTAX;

            public boolean hasNumericValue() {
                throw new RuntimeException("Stub!");
            }
        }

        Part() {
            throw new RuntimeException("Stub!");
        }

        public Type getType() {
            throw new RuntimeException("Stub!");
        }

        public int getIndex() {
            throw new RuntimeException("Stub!");
        }

        public int getLength() {
            throw new RuntimeException("Stub!");
        }

        public int getLimit() {
            throw new RuntimeException("Stub!");
        }

        public int getValue() {
            throw new RuntimeException("Stub!");
        }

        public ArgType getArgType() {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }

        public boolean equals(Object other) {
            throw new RuntimeException("Stub!");
        }

        public int hashCode() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/MessagePattern$ArgType.class
 */
    public enum ArgType {
        CHOICE,
        NONE,
        PLURAL,
        SELECT,
        SELECTORDINAL,
        SIMPLE;

        public boolean hasPluralStyle() {
            throw new RuntimeException("Stub!");
        }
    }

    public MessagePattern() {
        throw new RuntimeException("Stub!");
    }

    public MessagePattern(ApostropheMode mode) {
        throw new RuntimeException("Stub!");
    }

    public MessagePattern(String pattern) {
        throw new RuntimeException("Stub!");
    }

    public MessagePattern parse(String pattern) {
        throw new RuntimeException("Stub!");
    }

    public MessagePattern parseChoiceStyle(String pattern) {
        throw new RuntimeException("Stub!");
    }

    public MessagePattern parsePluralStyle(String pattern) {
        throw new RuntimeException("Stub!");
    }

    public MessagePattern parseSelectStyle(String pattern) {
        throw new RuntimeException("Stub!");
    }

    public void clear() {
        throw new RuntimeException("Stub!");
    }

    public void clearPatternAndSetApostropheMode(ApostropheMode mode) {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object other) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public ApostropheMode getApostropheMode() {
        throw new RuntimeException("Stub!");
    }

    public String getPatternString() {
        throw new RuntimeException("Stub!");
    }

    public boolean hasNamedArguments() {
        throw new RuntimeException("Stub!");
    }

    public boolean hasNumberedArguments() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public static int validateArgumentName(String name) {
        throw new RuntimeException("Stub!");
    }

    public String autoQuoteApostropheDeep() {
        throw new RuntimeException("Stub!");
    }

    public int countParts() {
        throw new RuntimeException("Stub!");
    }

    public Part getPart(int i10) {
        throw new RuntimeException("Stub!");
    }

    public Part.Type getPartType(int i10) {
        throw new RuntimeException("Stub!");
    }

    public int getPatternIndex(int partIndex) {
        throw new RuntimeException("Stub!");
    }

    public String getSubstring(Part part) {
        throw new RuntimeException("Stub!");
    }

    public boolean partSubstringMatches(Part part, String s10) {
        throw new RuntimeException("Stub!");
    }

    public double getNumericValue(Part part) {
        throw new RuntimeException("Stub!");
    }

    public double getPluralOffset(int pluralStart) {
        throw new RuntimeException("Stub!");
    }

    public int getLimitPartIndex(int start) {
        throw new RuntimeException("Stub!");
    }

    public Object clone() {
        throw new RuntimeException("Stub!");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public MessagePattern cloneAsThawed2() {
        throw new RuntimeException("Stub!");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public MessagePattern freeze() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isFrozen() {
        throw new RuntimeException("Stub!");
    }
}
