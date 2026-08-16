package java.lang.invoke;

import java.lang.classfile.CodeBuilder;
import java.lang.classfile.TypeKind;
import java.lang.classfile.constantpool.ConstantPoolBuilder;
import java.lang.classfile.constantpool.MethodRefEntry;
import java.lang.constant.ClassDesc;
import java.lang.constant.ConstantDescs;
import jdk.internal.constant.ConstantUtils;
import jdk.internal.constant.MethodTypeDescImpl;
import sun.invoke.util.Wrapper;

public class TypeConvertingMethodAdapter {
    TypeConvertingMethodAdapter() {
    }

    public static class BoxHolder {
        private static final ConstantPoolBuilder CP = ConstantPoolBuilder.of();
        private static final MethodRefEntry BOX_BOOLEAN = box(ConstantDescs.CD_boolean, ConstantDescs.CD_Boolean);
        private static final MethodRefEntry BOX_BYTE = box(ConstantDescs.CD_byte, ConstantDescs.CD_Byte);
        private static final MethodRefEntry BOX_SHORT = box(ConstantDescs.CD_short, ConstantDescs.CD_Short);
        private static final MethodRefEntry BOX_CHAR = box(ConstantDescs.CD_char, ConstantDescs.CD_Character);
        private static final MethodRefEntry BOX_INT = box(ConstantDescs.CD_int, ConstantDescs.CD_Integer);
        private static final MethodRefEntry BOX_LONG = box(ConstantDescs.CD_long, ConstantDescs.CD_Long);
        private static final MethodRefEntry BOX_FLOAT = box(ConstantDescs.CD_float, ConstantDescs.CD_Float);
        private static final MethodRefEntry BOX_DOUBLE = box(ConstantDescs.CD_double, ConstantDescs.CD_Double);
        private static final MethodRefEntry UNBOX_BOOLEAN = unbox(ConstantDescs.CD_Boolean, "booleanValue", ConstantDescs.CD_boolean);
        private static final MethodRefEntry UNBOX_BYTE = unbox(ConstantDescs.CD_Number, "byteValue", ConstantDescs.CD_byte);
        private static final MethodRefEntry UNBOX_SHORT = unbox(ConstantDescs.CD_Number, "shortValue", ConstantDescs.CD_short);
        private static final MethodRefEntry UNBOX_CHAR = unbox(ConstantDescs.CD_Character, "charValue", ConstantDescs.CD_char);
        private static final MethodRefEntry UNBOX_INT = unbox(ConstantDescs.CD_Number, "intValue", ConstantDescs.CD_int);
        private static final MethodRefEntry UNBOX_LONG = unbox(ConstantDescs.CD_Number, "longValue", ConstantDescs.CD_long);
        private static final MethodRefEntry UNBOX_FLOAT = unbox(ConstantDescs.CD_Number, "floatValue", ConstantDescs.CD_float);
        private static final MethodRefEntry UNBOX_DOUBLE = unbox(ConstantDescs.CD_Number, "doubleValue", ConstantDescs.CD_double);

        private BoxHolder() {
        }

        private static MethodRefEntry box(ClassDesc primitive, ClassDesc target) {
            return CP.methodRefEntry(target, "valueOf", MethodTypeDescImpl.ofValidated(target, new ClassDesc[]{primitive}));
        }

        private static MethodRefEntry unbox(ClassDesc owner, String methodName, ClassDesc primitiveTarget) {
            return CP.methodRefEntry(owner, methodName, MethodTypeDescImpl.ofValidated(primitiveTarget, new ClassDesc[0]));
        }
    }

    private static TypeKind primitiveTypeKindFromClass(Class<?> type) {
        if (type == Integer.class) {
            return TypeKind.INT;
        }
        if (type == Long.class) {
            return TypeKind.LONG;
        }
        if (type == Boolean.class) {
            return TypeKind.BOOLEAN;
        }
        if (type == Short.class) {
            return TypeKind.SHORT;
        }
        if (type == Byte.class) {
            return TypeKind.BYTE;
        }
        if (type == Character.class) {
            return TypeKind.CHAR;
        }
        if (type == Float.class) {
            return TypeKind.FLOAT;
        }
        if (type == Double.class) {
            return TypeKind.DOUBLE;
        }
        return null;
    }

    public static void boxIfTypePrimitive(CodeBuilder cob, TypeKind tk2) {
        box(cob, tk2);
    }

    static void widen(CodeBuilder cob, TypeKind ws, TypeKind wt) {
        TypeKind ws2 = ws.asLoadable();
        TypeKind wt2 = wt.asLoadable();
        if (ws2 != wt2) {
            cob.conversion(ws2, wt2);
        }
    }

    public static void box(CodeBuilder cob, TypeKind tk2) {
        switch (tk2) {
            case BOOLEAN:
                cob.invokestatic(BoxHolder.BOX_BOOLEAN);
                return;
            case BYTE:
                cob.invokestatic(BoxHolder.BOX_BYTE);
                return;
            case CHAR:
                cob.invokestatic(BoxHolder.BOX_CHAR);
                return;
            case DOUBLE:
                cob.invokestatic(BoxHolder.BOX_DOUBLE);
                return;
            case FLOAT:
                cob.invokestatic(BoxHolder.BOX_FLOAT);
                return;
            case INT:
                cob.invokestatic(BoxHolder.BOX_INT);
                return;
            case LONG:
                cob.invokestatic(BoxHolder.BOX_LONG);
                return;
            case SHORT:
                cob.invokestatic(BoxHolder.BOX_SHORT);
                return;
            default:
                return;
        }
    }

    public static void unbox(CodeBuilder cob, TypeKind to) {
        switch (to) {
            case BOOLEAN:
                cob.invokevirtual(BoxHolder.UNBOX_BOOLEAN);
                return;
            case BYTE:
                cob.invokevirtual(BoxHolder.UNBOX_BYTE);
                return;
            case CHAR:
                cob.invokevirtual(BoxHolder.UNBOX_CHAR);
                return;
            case DOUBLE:
                cob.invokevirtual(BoxHolder.UNBOX_DOUBLE);
                return;
            case FLOAT:
                cob.invokevirtual(BoxHolder.UNBOX_FLOAT);
                return;
            case INT:
                cob.invokevirtual(BoxHolder.UNBOX_INT);
                return;
            case LONG:
                cob.invokevirtual(BoxHolder.UNBOX_LONG);
                return;
            case SHORT:
                cob.invokevirtual(BoxHolder.UNBOX_SHORT);
                return;
            default:
                return;
        }
    }

    static void cast(CodeBuilder cob, ClassDesc dt) {
        if (!dt.equals(ConstantDescs.CD_Object)) {
            cob.checkcast(dt);
        }
    }

    public static void convertType(CodeBuilder cob, Class<?> arg, Class<?> target, Class<?> functional) {
        Class<?> src;
        if ((arg.equals(target) && arg.equals(functional)) || arg == Void.TYPE || target == Void.TYPE) {
            return;
        }
        if (arg.isPrimitive()) {
            if (target.isPrimitive()) {
                widen(cob, TypeKind.from(arg), TypeKind.from(target));
                return;
            }
            TypeKind wPrimTk = primitiveTypeKindFromClass(target);
            if (wPrimTk != null) {
                widen(cob, TypeKind.from(arg), wPrimTk);
                box(cob, wPrimTk);
                return;
            } else {
                box(cob, TypeKind.from(arg));
                cast(cob, classDesc(target));
                return;
            }
        }
        if (arg == functional || functional.isPrimitive()) {
            src = arg;
        } else {
            src = functional;
            cast(cob, classDesc(functional));
        }
        if (target.isPrimitive()) {
            TypeKind wps = primitiveTypeKindFromClass(src);
            if (wps != null) {
                if (src != Character.class && src != Boolean.class) {
                    unbox(cob, TypeKind.from(target));
                    return;
                } else {
                    unbox(cob, wps);
                    widen(cob, wps, TypeKind.from(target));
                    return;
                }
            }
            if (target == Character.TYPE) {
                cast(cob, ConstantDescs.CD_Character);
            } else if (target == Boolean.TYPE) {
                cast(cob, ConstantDescs.CD_Boolean);
            } else {
                cast(cob, ConstantDescs.CD_Number);
            }
            unbox(cob, TypeKind.from(target));
            return;
        }
        if (src != target) {
            cast(cob, classDesc(target));
        }
    }

    static ClassDesc classDesc(Class<?> cls) {
        return cls.isPrimitive() ? Wrapper.forPrimitiveType(cls).basicClassDescriptor() : cls == Object.class ? ConstantDescs.CD_Object : cls == String.class ? ConstantDescs.CD_String : ConstantUtils.referenceClassDesc(cls.descriptorString());
    }
}
