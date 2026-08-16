package org.openjdk.tools.javac.code;

import org.openjdk.javax.lang.model.type.TypeKind;
import org.openjdk.source.tree.Tree;

public enum TypeTag {
    BYTE(1, 125, true),
    CHAR(2, 122, true),
    SHORT(4, 124, true),
    LONG(16, 112, true),
    FLOAT(32, 96, true),
    INT(8, 120, true),
    DOUBLE(64, 64, true),
    BOOLEAN(0, 0, true),
    VOID,
    CLASS,
    ARRAY,
    METHOD,
    PACKAGE,
    MODULE,
    TYPEVAR,
    WILDCARD,
    FORALL,
    DEFERRED,
    BOT,
    NONE,
    ERROR,
    UNKNOWN,
    UNDETVAR,
    UNINITIALIZED_THIS,
    UNINITIALIZED_OBJECT;

    final boolean isPrimitive;
    final int numericClass;
    final int superClasses;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$tools$javac$code$TypeTag;

        static {
            int[] iArr = new int[TypeTag.values().length];
            $SwitchMap$com$sun$tools$javac$code$TypeTag = iArr;
            try {
                iArr[TypeTag.INT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.CHAR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.CLASS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.BOT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.BYTE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.SHORT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.VOID.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public static class NumericClasses {
        public static final int BYTE_CLASS = 1;
        static final int BYTE_SUPERCLASSES = 125;
        public static final int CHAR_CLASS = 2;
        static final int CHAR_SUPERCLASSES = 122;
        public static final int DOUBLE_CLASS = 64;
        public static final int FLOAT_CLASS = 32;
        static final int FLOAT_SUPERCLASSES = 96;
        public static final int INT_CLASS = 8;
        static final int INT_SUPERCLASSES = 120;
        public static final int LONG_CLASS = 16;
        static final int LONG_SUPERCLASSES = 112;
        public static final int SHORT_CLASS = 4;
        static final int SHORT_SUPERCLASSES = 124;
    }

    TypeTag() {
        this(0, 0, false);
    }

    public static int getTypeTagCount() {
        return UNDETVAR.ordinal() + 1;
    }

    public boolean checkRange(int i10) {
        int i11 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$TypeTag[ordinal()];
        if (i11 == 1) {
            return true;
        }
        if (i11 == 5) {
            return i10 >= 0 && i10 <= 1;
        }
        if (i11 == 6) {
            return i10 >= 0 && i10 <= 65535;
        }
        if (i11 == 9) {
            return -128 <= i10 && i10 <= 127;
        }
        if (i11 == 10) {
            return -32768 <= i10 && i10 <= 32767;
        }
        throw new AssertionError();
    }

    public Tree.Kind getKindLiteral() {
        switch (AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$TypeTag[ordinal()]) {
            case 1:
                return Tree.Kind.INT_LITERAL;
            case 2:
                return Tree.Kind.LONG_LITERAL;
            case 3:
                return Tree.Kind.FLOAT_LITERAL;
            case 4:
                return Tree.Kind.DOUBLE_LITERAL;
            case 5:
                return Tree.Kind.BOOLEAN_LITERAL;
            case 6:
                return Tree.Kind.CHAR_LITERAL;
            case 7:
                return Tree.Kind.STRING_LITERAL;
            case 8:
                return Tree.Kind.NULL_LITERAL;
            default:
                throw new AssertionError((Object) ("unknown literal kind " + ((Object) this)));
        }
    }

    public TypeKind getPrimitiveTypeKind() {
        switch (AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$TypeTag[ordinal()]) {
            case 1:
                return TypeKind.INT;
            case 2:
                return TypeKind.LONG;
            case 3:
                return TypeKind.FLOAT;
            case 4:
                return TypeKind.DOUBLE;
            case 5:
                return TypeKind.BOOLEAN;
            case 6:
                return TypeKind.CHAR;
            case 7:
            case 8:
            default:
                throw new AssertionError((Object) ("unknown primitive type " + ((Object) this)));
            case 9:
                return TypeKind.BYTE;
            case 10:
                return TypeKind.SHORT;
            case 11:
                return TypeKind.VOID;
        }
    }

    public boolean isStrictSubRangeOf(TypeTag typeTag) {
        return ((this.superClasses & typeTag.numericClass) == 0 || this == typeTag) ? false : true;
    }

    public boolean isSubRangeOf(TypeTag typeTag) {
        return (typeTag.numericClass & this.superClasses) != 0;
    }

    TypeTag(int i10, int i11, boolean z10) {
        this.superClasses = i11;
        this.numericClass = i10;
        this.isPrimitive = z10;
    }
}
