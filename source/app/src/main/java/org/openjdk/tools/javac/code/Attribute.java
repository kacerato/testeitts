package org.openjdk.tools.javac.code;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.eclipse.jdt.internal.core.JavaElement;
import org.openjdk.javax.lang.model.element.AnnotationMirror;
import org.openjdk.javax.lang.model.element.AnnotationValue;
import org.openjdk.javax.lang.model.element.AnnotationValueVisitor;
import org.openjdk.javax.lang.model.type.DeclaredType;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Constants;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Pair;

public abstract class Attribute implements AnnotationValue {
    public Type type;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$tools$javac$code$TypeTag;

        static {
            int[] iArr = new int[TypeTag.values().length];
            $SwitchMap$com$sun$tools$javac$code$TypeTag = iArr;
            try {
                iArr[TypeTag.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.CHAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.SHORT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.INT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.LONG.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.DOUBLE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public static class Array extends Attribute {
        public final Attribute[] values;

        public Array(Type type, Attribute[] attributeArr) {
            super(type);
            this.values = attributeArr;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitArray(this);
        }

        @Override
        public TypeAnnotationPosition getPosition() {
            Attribute[] attributeArr = this.values;
            if (attributeArr.length != 0) {
                return attributeArr[0].getPosition();
            }
            return null;
        }

        @Override
        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(JavaElement.JEM_COMPILATIONUNIT);
            Attribute[] attributeArr = this.values;
            int length = attributeArr.length;
            boolean z10 = true;
            int i10 = 0;
            while (i10 < length) {
                Attribute attribute = attributeArr[i10];
                if (!z10) {
                    sb2.append(", ");
                }
                sb2.append((Object) attribute);
                i10++;
                z10 = false;
            }
            sb2.append(JavaElement.JEM_ANNOTATION);
            return sb2.toString();
        }

        @Override
        public <R, P> R accept(AnnotationValueVisitor<R, P> annotationValueVisitor, P p10) {
            return annotationValueVisitor.visitArray(getValue(), p10);
        }

        @Override
        public List<Attribute> getValue() {
            return List.from(this.values);
        }

        public Array(Type type, List<Attribute> list) {
            super(type);
            this.values = (Attribute[]) list.toArray(new Attribute[list.size()]);
        }
    }

    public static class Class extends Attribute {
        public final Type classType;

        public Class(Types types, Type type) {
            super(makeClassType(types, type));
            this.classType = type;
        }

        public static Type makeClassType(Types types, Type type) {
            return new Type.ClassType(types.syms.classType.getEnclosingType(), List.of(type.isPrimitive() ? types.boxedClass(type).type : types.erasure(type)), types.syms.classType.tsym);
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitClass(this);
        }

        @Override
        public String toString() {
            return ((Object) this.classType) + ".class";
        }

        @Override
        public <R, P> R accept(AnnotationValueVisitor<R, P> annotationValueVisitor, P p10) {
            return annotationValueVisitor.visitType(this.classType, p10);
        }

        @Override
        public Type getValue() {
            return this.classType;
        }
    }

    public static class Compound extends Attribute implements AnnotationMirror {
        public TypeAnnotationPosition position;
        private boolean synthesized;
        public final List<Pair<Symbol.MethodSymbol, Attribute>> values;

        public Compound(Type type, List<Pair<Symbol.MethodSymbol, Attribute>> list, TypeAnnotationPosition typeAnnotationPosition) {
            super(type);
            this.synthesized = false;
            this.values = list;
            this.position = typeAnnotationPosition;
        }

        private Pair<Symbol.MethodSymbol, Attribute> getElemPair(Name name) {
            Iterator<Pair<Symbol.MethodSymbol, Attribute>> it = this.values.iterator();
            while (it.hasNext()) {
                Pair<Symbol.MethodSymbol, Attribute> next = it.next();
                if (next.fst.name == name) {
                    return next;
                }
            }
            return null;
        }

        private Compound getFirstEmbeddedTC() {
            if (this.values.size() != 1) {
                return null;
            }
            Pair<Symbol.MethodSymbol, Attribute> pair = this.values.get(0);
            if (!pair.fst.getSimpleName().contentEquals("value")) {
                return null;
            }
            Attribute attribute = pair.snd;
            if (!(attribute instanceof Array)) {
                return null;
            }
            Attribute[] attributeArr = ((Array) attribute).values;
            if (attributeArr.length == 0) {
                return null;
            }
            Attribute attribute2 = attributeArr[0];
            if (attribute2 instanceof TypeCompound) {
                return (TypeCompound) attribute2;
            }
            return null;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitCompound(this);
        }

        @Override
        public DeclaredType getAnnotationType() {
            return (DeclaredType) this.type;
        }

        @Override
        public Map<Symbol.MethodSymbol, Attribute> getElementValues() {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Iterator<Pair<Symbol.MethodSymbol, Attribute>> it = this.values.iterator();
            while (it.hasNext()) {
                Pair<Symbol.MethodSymbol, Attribute> next = it.next();
                linkedHashMap.put(next.fst, next.snd);
            }
            return linkedHashMap;
        }

        @Override
        public TypeAnnotationPosition getPosition() {
            if (hasUnknownPosition() && this.values.size() != 0) {
                Pair<Symbol.MethodSymbol, Attribute> elemPair = getElemPair(this.values.head.fst.name.table.names.value);
                this.position = elemPair == null ? null : elemPair.snd.getPosition();
            }
            return this.position;
        }

        @Override
        public Compound getValue() {
            return this;
        }

        public boolean hasUnknownPosition() {
            return this.position.type == TargetType.UNKNOWN;
        }

        public boolean isContainerTypeCompound() {
            return isSynthesized() && this.values.size() == 1 && getFirstEmbeddedTC() != null;
        }

        @Override
        public boolean isSynthesized() {
            return this.synthesized;
        }

        public Attribute member(Name name) {
            Pair<Symbol.MethodSymbol, Attribute> elemPair = getElemPair(name);
            if (elemPair == null) {
                return null;
            }
            return elemPair.snd;
        }

        public void setSynthesized(boolean z10) {
            this.synthesized = z10;
        }

        @Override
        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("@");
            sb2.append((Object) this.type);
            int length = this.values.length();
            if (length > 0) {
                sb2.append('(');
                Iterator<Pair<Symbol.MethodSymbol, Attribute>> it = this.values.iterator();
                boolean z10 = true;
                while (it.hasNext()) {
                    Pair<Symbol.MethodSymbol, Attribute> next = it.next();
                    if (!z10) {
                        sb2.append(", ");
                    }
                    Name name = next.fst.name;
                    if (length > 1 || name != name.table.names.value) {
                        sb2.append((CharSequence) name);
                        sb2.append('=');
                    }
                    sb2.append((Object) next.snd);
                    z10 = false;
                }
                sb2.append(')');
            }
            return sb2.toString();
        }

        public boolean tryFixPosition() {
            Compound firstEmbeddedTC;
            TypeAnnotationPosition typeAnnotationPosition;
            if (!isContainerTypeCompound() || (firstEmbeddedTC = getFirstEmbeddedTC()) == null || (typeAnnotationPosition = firstEmbeddedTC.position) == null || typeAnnotationPosition.type == TargetType.UNKNOWN) {
                return false;
            }
            this.position = typeAnnotationPosition;
            return true;
        }

        @Override
        public <R, P> R accept(AnnotationValueVisitor<R, P> annotationValueVisitor, P p10) {
            return annotationValueVisitor.visitAnnotation(this, p10);
        }

        public Compound(Type type, List<Pair<Symbol.MethodSymbol, Attribute>> list) {
            this(type, list, null);
        }
    }

    public static class Constant extends Attribute {
        public final Object value;

        public Constant(Type type, Object obj) {
            super(type);
            this.value = obj;
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitConstant(this);
        }

        @Override
        public Object getValue() {
            return Constants.decode(this.value, this.type);
        }

        @Override
        public String toString() {
            return Constants.format(this.value, this.type);
        }

        @Override
        public <R, P> R accept(AnnotationValueVisitor<R, P> annotationValueVisitor, P p10) {
            Object obj = this.value;
            if (obj instanceof String) {
                return annotationValueVisitor.visitString((String) obj, p10);
            }
            if (obj instanceof Integer) {
                int intValue = ((Integer) obj).intValue();
                int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$TypeTag[this.type.getTag().ordinal()];
                if (i10 == 1) {
                    return annotationValueVisitor.visitBoolean(intValue != 0, p10);
                }
                if (i10 == 2) {
                    return annotationValueVisitor.visitChar((char) intValue, p10);
                }
                if (i10 == 3) {
                    return annotationValueVisitor.visitByte((byte) intValue, p10);
                }
                if (i10 == 4) {
                    return annotationValueVisitor.visitShort((short) intValue, p10);
                }
                if (i10 == 5) {
                    return annotationValueVisitor.visitInt(intValue, p10);
                }
            }
            int i11 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$TypeTag[this.type.getTag().ordinal()];
            if (i11 == 6) {
                return annotationValueVisitor.visitLong(((Long) this.value).longValue(), p10);
            }
            if (i11 == 7) {
                return annotationValueVisitor.visitFloat(((Float) this.value).floatValue(), p10);
            }
            if (i11 == 8) {
                return annotationValueVisitor.visitDouble(((Double) this.value).doubleValue(), p10);
            }
            throw new AssertionError((Object) ("Bad annotation element value: " + this.value));
        }
    }

    public static class Enum extends Attribute {
        public Symbol.VarSymbol value;

        public Enum(Type type, Symbol.VarSymbol varSymbol) {
            super(type);
            this.value = (Symbol.VarSymbol) Assert.checkNonNull(varSymbol);
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitEnum(this);
        }

        @Override
        public String toString() {
            return ((Object) this.value.enclClass()) + "." + ((Object) this.value);
        }

        @Override
        public <R, P> R accept(AnnotationValueVisitor<R, P> annotationValueVisitor, P p10) {
            return annotationValueVisitor.visitEnumConstant(this.value, p10);
        }

        @Override
        public Symbol.VarSymbol getValue() {
            return this.value;
        }
    }

    public static class Error extends Attribute {
        public Error(Type type) {
            super(type);
        }

        @Override
        public void accept(Visitor visitor) {
            visitor.visitError(this);
        }

        @Override
        public String toString() {
            return "<error>";
        }

        @Override
        public <R, P> R accept(AnnotationValueVisitor<R, P> annotationValueVisitor, P p10) {
            return annotationValueVisitor.visitString(toString(), p10);
        }

        @Override
        public String getValue() {
            return toString();
        }
    }

    public enum RetentionPolicy {
        SOURCE,
        CLASS,
        RUNTIME
    }

    public static class TypeCompound extends Compound {
        public TypeCompound(Compound compound, TypeAnnotationPosition typeAnnotationPosition) {
            super(compound.type, compound.values, typeAnnotationPosition);
        }

        public TypeCompound(Type type, List<Pair<Symbol.MethodSymbol, Attribute>> list, TypeAnnotationPosition typeAnnotationPosition) {
            super(type, list, typeAnnotationPosition);
        }
    }

    public static class UnresolvedClass extends Error {
        public Type classType;

        public UnresolvedClass(Type type, Type type2) {
            super(type);
            this.classType = type2;
        }
    }

    public interface Visitor {
        void visitArray(Array array);

        void visitClass(Class r12);

        void visitCompound(Compound compound);

        void visitConstant(Constant constant);

        void visitEnum(Enum r12);

        void visitError(Error error);
    }

    public Attribute(Type type) {
        this.type = type;
    }

    @Override
    public <R, P> R accept(AnnotationValueVisitor<R, P> annotationValueVisitor, P p10) {
        throw new UnsupportedOperationException();
    }

    public abstract void accept(Visitor visitor);

    public TypeAnnotationPosition getPosition() {
        return null;
    }

    @Override
    public Object getValue() {
        throw new UnsupportedOperationException();
    }

    public boolean isSynthesized() {
        return false;
    }
}
