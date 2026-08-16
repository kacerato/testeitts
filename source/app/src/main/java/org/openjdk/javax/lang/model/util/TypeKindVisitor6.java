package org.openjdk.javax.lang.model.util;

import org.openjdk.javax.annotation.processing.SupportedSourceVersion;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.lang.model.type.NoType;
import org.openjdk.javax.lang.model.type.PrimitiveType;
import org.openjdk.javax.lang.model.type.TypeKind;

@SupportedSourceVersion(SourceVersion.RELEASE_6)
public class TypeKindVisitor6<R, P> extends SimpleTypeVisitor6<R, P> {

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$javax$lang$model$type$TypeKind;

        static {
            int[] iArr = new int[TypeKind.values().length];
            $SwitchMap$javax$lang$model$type$TypeKind = iArr;
            try {
                iArr[TypeKind.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.BYTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.SHORT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.INT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.LONG.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.CHAR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.DOUBLE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.VOID.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.PACKAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.NONE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    @Deprecated
    public TypeKindVisitor6() {
        super(null);
    }

    @Override
    public R visitNoType(NoType noType, P p10) {
        TypeKind kind = noType.getKind();
        switch (AnonymousClass1.$SwitchMap$javax$lang$model$type$TypeKind[kind.ordinal()]) {
            case 9:
                return visitNoTypeAsVoid(noType, p10);
            case 10:
                return visitNoTypeAsPackage(noType, p10);
            case 11:
                return visitNoTypeAsNone(noType, p10);
            default:
                throw new AssertionError((Object) ("Bad kind " + ((Object) kind) + " for NoType" + ((Object) noType)));
        }
    }

    public R visitNoTypeAsNone(NoType noType, P p10) {
        return defaultAction(noType, p10);
    }

    public R visitNoTypeAsPackage(NoType noType, P p10) {
        return defaultAction(noType, p10);
    }

    public R visitNoTypeAsVoid(NoType noType, P p10) {
        return defaultAction(noType, p10);
    }

    @Override
    public R visitPrimitive(PrimitiveType primitiveType, P p10) {
        TypeKind kind = primitiveType.getKind();
        switch (AnonymousClass1.$SwitchMap$javax$lang$model$type$TypeKind[kind.ordinal()]) {
            case 1:
                return visitPrimitiveAsBoolean(primitiveType, p10);
            case 2:
                return visitPrimitiveAsByte(primitiveType, p10);
            case 3:
                return visitPrimitiveAsShort(primitiveType, p10);
            case 4:
                return visitPrimitiveAsInt(primitiveType, p10);
            case 5:
                return visitPrimitiveAsLong(primitiveType, p10);
            case 6:
                return visitPrimitiveAsChar(primitiveType, p10);
            case 7:
                return visitPrimitiveAsFloat(primitiveType, p10);
            case 8:
                return visitPrimitiveAsDouble(primitiveType, p10);
            default:
                throw new AssertionError((Object) ("Bad kind " + ((Object) kind) + " for PrimitiveType" + ((Object) primitiveType)));
        }
    }

    public R visitPrimitiveAsBoolean(PrimitiveType primitiveType, P p10) {
        return defaultAction(primitiveType, p10);
    }

    public R visitPrimitiveAsByte(PrimitiveType primitiveType, P p10) {
        return defaultAction(primitiveType, p10);
    }

    public R visitPrimitiveAsChar(PrimitiveType primitiveType, P p10) {
        return defaultAction(primitiveType, p10);
    }

    public R visitPrimitiveAsDouble(PrimitiveType primitiveType, P p10) {
        return defaultAction(primitiveType, p10);
    }

    public R visitPrimitiveAsFloat(PrimitiveType primitiveType, P p10) {
        return defaultAction(primitiveType, p10);
    }

    public R visitPrimitiveAsInt(PrimitiveType primitiveType, P p10) {
        return defaultAction(primitiveType, p10);
    }

    public R visitPrimitiveAsLong(PrimitiveType primitiveType, P p10) {
        return defaultAction(primitiveType, p10);
    }

    public R visitPrimitiveAsShort(PrimitiveType primitiveType, P p10) {
        return defaultAction(primitiveType, p10);
    }

    @Deprecated
    public TypeKindVisitor6(R r10) {
        super(r10);
    }
}
