package com.android.dx.cf.code;

import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeBearer;
import com.android.dx.util.Hex;

public final class Merger {
    private Merger() {
    }

    public static boolean isPossiblyAssignableFrom(TypeBearer typeBearer, TypeBearer typeBearer2) {
        Type type = typeBearer.getType();
        Type type2 = typeBearer2.getType();
        if (type.equals(type2)) {
            return true;
        }
        int basicType = type.getBasicType();
        int basicType2 = type2.getBasicType();
        if (basicType == 10) {
            type = Type.OBJECT;
            basicType = 9;
        }
        if (basicType2 == 10) {
            type2 = Type.OBJECT;
            basicType2 = 9;
        }
        if (basicType != 9 || basicType2 != 9) {
            return type.isIntlike() && type2.isIntlike();
        }
        Type type3 = Type.KNOWN_NULL;
        if (type == type3) {
            return false;
        }
        if (type2 == type3 || type == Type.OBJECT) {
            return true;
        }
        if (!type.isArray()) {
            return !type2.isArray() || type == Type.SERIALIZABLE || type == Type.CLONEABLE;
        }
        if (!type2.isArray()) {
            return false;
        }
        do {
            type = type.getComponentType();
            type2 = type2.getComponentType();
            if (!type.isArray()) {
                break;
            }
        } while (type2.isArray());
        return isPossiblyAssignableFrom(type, type2);
    }

    public static OneLocalsArray mergeLocals(OneLocalsArray oneLocalsArray, OneLocalsArray oneLocalsArray2) {
        if (oneLocalsArray == oneLocalsArray2) {
            return oneLocalsArray;
        }
        int maxLocals = oneLocalsArray.getMaxLocals();
        if (oneLocalsArray2.getMaxLocals() != maxLocals) {
            throw new SimException("mismatched maxLocals values");
        }
        OneLocalsArray oneLocalsArray3 = null;
        for (int i10 = 0; i10 < maxLocals; i10++) {
            TypeBearer orNull = oneLocalsArray.getOrNull(i10);
            TypeBearer mergeType = mergeType(orNull, oneLocalsArray2.getOrNull(i10));
            if (mergeType != orNull) {
                if (oneLocalsArray3 == null) {
                    oneLocalsArray3 = oneLocalsArray.copy();
                }
                if (mergeType == null) {
                    oneLocalsArray3.invalidate(i10);
                } else {
                    oneLocalsArray3.set(i10, mergeType);
                }
            }
        }
        if (oneLocalsArray3 == null) {
            return oneLocalsArray;
        }
        oneLocalsArray3.setImmutable();
        return oneLocalsArray3;
    }

    public static ExecutionStack mergeStack(ExecutionStack executionStack, ExecutionStack executionStack2) {
        if (executionStack == executionStack2) {
            return executionStack;
        }
        int size = executionStack.size();
        if (executionStack2.size() != size) {
            throw new SimException("mismatched stack depths");
        }
        ExecutionStack executionStack3 = null;
        for (int i10 = 0; i10 < size; i10++) {
            TypeBearer peek = executionStack.peek(i10);
            TypeBearer peek2 = executionStack2.peek(i10);
            TypeBearer mergeType = mergeType(peek, peek2);
            if (mergeType != peek) {
                if (executionStack3 == null) {
                    executionStack3 = executionStack.copy();
                }
                if (mergeType == null) {
                    throw new SimException("incompatible: " + ((Object) peek) + ", " + ((Object) peek2));
                }
                try {
                    executionStack3.change(i10, mergeType);
                } catch (SimException e10) {
                    e10.addContext("...while merging stack[" + Hex.u2(i10) + "]");
                    throw e10;
                }
                e10.addContext("...while merging stack[" + Hex.u2(i10) + "]");
                throw e10;
            }
        }
        if (executionStack3 == null) {
            return executionStack;
        }
        executionStack3.setImmutable();
        return executionStack3;
    }

    public static TypeBearer mergeType(TypeBearer typeBearer, TypeBearer typeBearer2) {
        if (typeBearer == null || typeBearer.equals(typeBearer2)) {
            return typeBearer;
        }
        if (typeBearer2 == null) {
            return null;
        }
        Type type = typeBearer.getType();
        Type type2 = typeBearer2.getType();
        if (type == type2) {
            return type;
        }
        if (!type.isReference() || !type2.isReference()) {
            if (type.isIntlike() && type2.isIntlike()) {
                return Type.INT;
            }
            return null;
        }
        Type type3 = Type.KNOWN_NULL;
        if (type == type3) {
            return type2;
        }
        if (type2 == type3) {
            return type;
        }
        if (!type.isArray() || !type2.isArray()) {
            return Type.OBJECT;
        }
        TypeBearer mergeType = mergeType(type.getComponentType(), type2.getComponentType());
        return mergeType == null ? Type.OBJECT : ((Type) mergeType).getArrayType();
    }
}
