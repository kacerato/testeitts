package java.lang.classfile;

import java.lang.constant.ClassDesc;
import java.lang.constant.ConstantDescs;
import java.lang.invoke.TypeDescriptor;
import jdk.internal.vm.annotation.Stable;

public enum TypeKind {
    BOOLEAN(1, 4),
    BYTE(1, 8),
    CHAR(1, 5),
    SHORT(1, 9),
    INT(1, 10),
    LONG(2, 11),
    FLOAT(1, 6),
    DOUBLE(2, 7),
    REFERENCE(1, -1),
    VOID(0, -1);


    @Stable
    private ClassDesc upperBound;
    private final int slots;
    private final int newarrayCode;

    TypeKind(int slots, int newarrayCode) {
        this.slots = slots;
        this.newarrayCode = newarrayCode;
    }

    public ClassDesc upperBound() {
        ClassDesc upper = this.upperBound;
        if (upper == null) {
            ClassDesc fetchUpperBound = fetchUpperBound();
            this.upperBound = fetchUpperBound;
            return fetchUpperBound;
        }
        return upper;
    }

    private ClassDesc fetchUpperBound() {
        switch (this) {
            case BOOLEAN:
                return ConstantDescs.CD_boolean;
            case BYTE:
                return ConstantDescs.CD_byte;
            case CHAR:
                return ConstantDescs.CD_char;
            case SHORT:
                return ConstantDescs.CD_short;
            case INT:
                return ConstantDescs.CD_int;
            case LONG:
                return ConstantDescs.CD_long;
            case FLOAT:
                return ConstantDescs.CD_float;
            case DOUBLE:
                return ConstantDescs.CD_double;
            case REFERENCE:
                return ConstantDescs.CD_Object;
            case VOID:
                return ConstantDescs.CD_void;
            default:
                throw new MatchException(null, null);
        }
    }

    public int newarrayCode() {
        return this.newarrayCode;
    }

    public int slotSize() {
        return this.slots;
    }

    public TypeKind asLoadable() {
        return ordinal() < 4 ? INT : this;
    }

    public static TypeKind fromNewarrayCode(int newarrayCode) {
        switch (newarrayCode) {
            case 4:
                return BOOLEAN;
            case 5:
                return CHAR;
            case 6:
                return FLOAT;
            case 7:
                return DOUBLE;
            case 8:
                return BYTE;
            case 9:
                return SHORT;
            case 10:
                return INT;
            case 11:
                return LONG;
            default:
                throw new IllegalArgumentException("Bad newarray code: " + newarrayCode);
        }
    }

    public static TypeKind fromDescriptor(CharSequence s10) {
        if (s10.isEmpty()) {
            throw new IllegalArgumentException("Empty descriptor");
        }
        switch (s10.charAt(0)) {
            case 'B':
                return BYTE;
            case 'C':
                return CHAR;
            case 'D':
                return DOUBLE;
            case 'E':
            case 'G':
            case 'H':
            case 'K':
            case 'M':
            case 'N':
            case 'O':
            case 'P':
            case 'Q':
            case 'R':
            case 'T':
            case 'U':
            case 'W':
            case 'X':
            case 'Y':
            default:
                throw new IllegalArgumentException("Bad type: " + ((Object) s10));
            case 'F':
                return FLOAT;
            case 'I':
                return INT;
            case 'J':
                return LONG;
            case 'L':
            case '[':
                return REFERENCE;
            case 'S':
                return SHORT;
            case 'V':
                return VOID;
            case 'Z':
                return BOOLEAN;
        }
    }

    public static TypeKind from(TypeDescriptor.OfField<?> descriptor) {
        if (descriptor.isPrimitive()) {
            return fromDescriptor(descriptor.descriptorString());
        }
        return REFERENCE;
    }
}
