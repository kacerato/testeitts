package com.github.javaparser.resolution.types;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.github.javaparser.utils.TypeUtils;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.function.Predicate;
import org.eclipse.jdt.internal.core.JavaElement;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'SHORT' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class ResolvedPrimitiveType implements ResolvedType {
    private static final ResolvedPrimitiveType[] $VALUES;
    public static final ResolvedPrimitiveType BOOLEAN;
    public static final ResolvedPrimitiveType BYTE;
    public static final ResolvedPrimitiveType CHAR;
    public static final ResolvedPrimitiveType DOUBLE;
    public static final ResolvedPrimitiveType FLOAT;
    public static final ResolvedPrimitiveType INT;
    public static final ResolvedPrimitiveType LONG;
    public static final ResolvedPrimitiveType SHORT;
    private Class boxTypeClass;
    private String name;
    private List<ResolvedPrimitiveType> promotionTypes;

    static {
        ResolvedPrimitiveType resolvedPrimitiveType = new ResolvedPrimitiveType("BYTE", 0, "byte", Byte.class, Collections.emptyList());
        BYTE = resolvedPrimitiveType;
        ResolvedPrimitiveType resolvedPrimitiveType2 = new ResolvedPrimitiveType("SHORT", 1, "short", Short.class, Collections.singletonList(resolvedPrimitiveType));
        SHORT = resolvedPrimitiveType2;
        ResolvedPrimitiveType resolvedPrimitiveType3 = new ResolvedPrimitiveType("CHAR", 2, "char", Character.class, Collections.emptyList());
        CHAR = resolvedPrimitiveType3;
        ResolvedPrimitiveType resolvedPrimitiveType4 = new ResolvedPrimitiveType("INT", 3, "int", Integer.class, Arrays.asList(resolvedPrimitiveType, resolvedPrimitiveType2, resolvedPrimitiveType3));
        INT = resolvedPrimitiveType4;
        ResolvedPrimitiveType resolvedPrimitiveType5 = new ResolvedPrimitiveType("LONG", 4, "long", Long.class, Arrays.asList(resolvedPrimitiveType, resolvedPrimitiveType2, resolvedPrimitiveType4, resolvedPrimitiveType3));
        LONG = resolvedPrimitiveType5;
        ResolvedPrimitiveType resolvedPrimitiveType6 = new ResolvedPrimitiveType("BOOLEAN", 5, TypedValues.Custom.S_BOOLEAN, Boolean.class, Collections.emptyList());
        BOOLEAN = resolvedPrimitiveType6;
        ResolvedPrimitiveType resolvedPrimitiveType7 = new ResolvedPrimitiveType("FLOAT", 6, TypedValues.Custom.S_FLOAT, Float.class, Arrays.asList(resolvedPrimitiveType5, resolvedPrimitiveType4, resolvedPrimitiveType2, resolvedPrimitiveType, resolvedPrimitiveType3));
        FLOAT = resolvedPrimitiveType7;
        ResolvedPrimitiveType resolvedPrimitiveType8 = new ResolvedPrimitiveType("DOUBLE", 7, "double", Double.class, Arrays.asList(resolvedPrimitiveType7, resolvedPrimitiveType5, resolvedPrimitiveType4, resolvedPrimitiveType2, resolvedPrimitiveType, resolvedPrimitiveType3));
        DOUBLE = resolvedPrimitiveType8;
        $VALUES = new ResolvedPrimitiveType[]{resolvedPrimitiveType, resolvedPrimitiveType2, resolvedPrimitiveType3, resolvedPrimitiveType4, resolvedPrimitiveType5, resolvedPrimitiveType6, resolvedPrimitiveType7, resolvedPrimitiveType8};
    }

    private ResolvedPrimitiveType(String $enum$name, int $enum$ordinal, String name, Class boxTypeClass, List promotionTypes) {
        this.name = name;
        this.boxTypeClass = boxTypeClass;
        this.promotionTypes = promotionTypes;
    }

    public static Optional<ResolvedType> byBoxTypeQName(String qName) {
        for (ResolvedPrimitiveType resolvedPrimitiveType : values()) {
            if (resolvedPrimitiveType.getBoxTypeQName().equals(qName)) {
                return Optional.of(resolvedPrimitiveType);
            }
        }
        return Optional.empty();
    }

    public static ResolvedType byName(String name) {
        String lowerCase = name.toLowerCase();
        for (ResolvedPrimitiveType resolvedPrimitiveType : values()) {
            if (resolvedPrimitiveType.describe().equals(lowerCase)) {
                return resolvedPrimitiveType;
            }
        }
        throw new IllegalArgumentException("Name " + lowerCase);
    }

    public static ResolvedPrimitiveType[] getNumericPrimitiveTypes() {
        return new ResolvedPrimitiveType[]{BYTE, SHORT, INT, LONG, FLOAT, DOUBLE, CHAR};
    }

    public static boolean isBoxType(ResolvedType type) {
        if (!type.isReferenceType()) {
            return false;
        }
        String qualifiedName = type.asReferenceType().getQualifiedName();
        for (ResolvedPrimitiveType resolvedPrimitiveType : values()) {
            if (resolvedPrimitiveType.getBoxTypeQName().equals(qualifiedName)) {
                return true;
            }
        }
        return false;
    }

    public boolean lambda$in$0(ResolvedPrimitiveType type) {
        return this == type;
    }

    public static ResolvedType unp(ResolvedType type) {
        boolean z10 = type.isReferenceType() && type.asReferenceType().isUnboxable();
        if (z10) {
            ResolvedPrimitiveType resolvedPrimitiveType = type.asReferenceType().toUnboxedType().get();
            ResolvedPrimitiveType resolvedPrimitiveType2 = BYTE;
            ResolvedPrimitiveType resolvedPrimitiveType3 = SHORT;
            ResolvedPrimitiveType resolvedPrimitiveType4 = CHAR;
            ResolvedPrimitiveType resolvedPrimitiveType5 = INT;
            if (resolvedPrimitiveType.in(resolvedPrimitiveType2, resolvedPrimitiveType3, resolvedPrimitiveType4, resolvedPrimitiveType5)) {
                return resolvedPrimitiveType5;
            }
        }
        return (z10 && type.asReferenceType().toUnboxedType().get().in(LONG, FLOAT, DOUBLE)) ? type.asReferenceType().toUnboxedType().get() : (type.isPrimitive() && type.asPrimitive().in(BYTE, CHAR, SHORT)) ? INT : type;
    }

    public static ResolvedPrimitiveType valueOf(String name) {
        return (ResolvedPrimitiveType) Enum.valueOf(ResolvedPrimitiveType.class, name);
    }

    public static ResolvedPrimitiveType[] values() {
        return (ResolvedPrimitiveType[]) $VALUES.clone();
    }

    @Override
    public ResolvedPrimitiveType asPrimitive() {
        return this;
    }

    public ResolvedPrimitiveType bnp(ResolvedPrimitiveType other) {
        ResolvedPrimitiveType resolvedPrimitiveType = DOUBLE;
        return (this == resolvedPrimitiveType || other == resolvedPrimitiveType || this == (resolvedPrimitiveType = FLOAT) || other == resolvedPrimitiveType || this == (resolvedPrimitiveType = LONG) || other == resolvedPrimitiveType) ? resolvedPrimitiveType : INT;
    }

    @Override
    public String describe() {
        return this.name;
    }

    public Class getBoxTypeClass() {
        return this.boxTypeClass;
    }

    public String getBoxTypeQName() {
        return this.boxTypeClass.getCanonicalName();
    }

    public boolean in(ResolvedPrimitiveType... types) {
        return Arrays.stream(types).anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$in$0;
                lambda$in$0 = ResolvedPrimitiveType.this.lambda$in$0((ResolvedPrimitiveType) obj);
                return lambda$in$0;
            }
        });
    }

    @Override
    public boolean isArray() {
        return false;
    }

    @Override
    public boolean isAssignableBy(ResolvedType other) {
        if (other.isPrimitive()) {
            return this == other || this.promotionTypes.contains(other);
        }
        if (!other.isReferenceType()) {
            return other.isConstraint() && isAssignableBy(other.asConstraintType().getBound());
        }
        if (other.asReferenceType().getQualifiedName().equals(getBoxTypeQName())) {
            return true;
        }
        Iterator<ResolvedPrimitiveType> it = this.promotionTypes.iterator();
        while (it.hasNext()) {
            if (other.asReferenceType().getQualifiedName().equals(it.next().getBoxTypeQName())) {
                return true;
            }
        }
        return false;
    }

    public boolean isBoolean() {
        return this == BOOLEAN;
    }

    public boolean isNumeric() {
        return Arrays.asList(getNumericPrimitiveTypes()).contains(this);
    }

    @Override
    public boolean isPrimitive() {
        return true;
    }

    @Override
    public boolean isReferenceType() {
        return false;
    }

    @Override
    public boolean isTypeVariable() {
        return false;
    }

    @Override
    public String toDescriptor() {
        return TypeUtils.getPrimitiveTypeDescriptor(this.boxTypeClass);
    }

    @Override
    public String toString() {
        return "PrimitiveTypeUsage{name='" + this.name + JavaElement.JEM_MODULAR_CLASSFILE + JavaElement.JEM_ANNOTATION;
    }
}
