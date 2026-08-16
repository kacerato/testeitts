package org.openjdk.tools.javac.code;

import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.type.DeclaredType;
import org.openjdk.javax.lang.model.type.ExecutableType;
import org.openjdk.javax.lang.model.type.IntersectionType;
import org.openjdk.javax.lang.model.type.NoType;
import org.openjdk.javax.lang.model.type.NullType;
import org.openjdk.javax.lang.model.type.PrimitiveType;
import org.openjdk.javax.lang.model.type.TypeKind;
import org.openjdk.javax.lang.model.type.TypeMirror;
import org.openjdk.javax.lang.model.type.TypeVariable;
import org.openjdk.javax.lang.model.type.TypeVisitor;
import org.openjdk.javax.lang.model.type.UnionType;
import org.openjdk.tools.doclint.DocLint;
import org.openjdk.tools.javac.code.Attribute;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Scope;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeMetadata;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.comp.Infer;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Filter;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Pair;

public abstract class Type extends AnnoConstruct implements TypeMirror {
    protected final TypeMetadata metadata;
    public Symbol.TypeSymbol tsym;
    public static final JCNoType noType = new JCNoType() {
        @Override
        public String toString() {
            return "none";
        }
    };
    public static final JCNoType recoveryType = new JCNoType() {
        @Override
        public String toString() {
            return "recovery";
        }
    };
    public static final JCNoType stuckType = new JCNoType() {
        @Override
        public String toString() {
            return "stuck";
        }
    };
    public static boolean moreInfo = false;
    private static final Types.TypeMapping<Void> stripMetadata = new StructuralTypeMapping<Void>() {
        @Override
        public Type visitTypeVar(TypeVar typeVar, Void r22) {
            return (Type) super.visitTypeVar((TypeVar) typeVar.typeNoMetadata(), (TypeVar) r22);
        }

        @Override
        public Type visitArrayType(ArrayType arrayType, Void r22) {
            return super.visitArrayType((ArrayType) arrayType.typeNoMetadata(), (ArrayType) r22);
        }

        @Override
        public Type visitClassType(ClassType classType, Void r22) {
            return super.visitClassType((ClassType) classType.typeNoMetadata(), (ClassType) r22);
        }

        @Override
        public Type visitWildcardType(WildcardType wildcardType, Void r22) {
            return super.visitWildcardType((WildcardType) wildcardType.typeNoMetadata(), (WildcardType) r22);
        }
    };

    public static class AnonymousClass5 {
        static final int[] $SwitchMap$com$sun$tools$javac$code$Type$UndetVar$InferenceBound;
        static final int[] $SwitchMap$com$sun$tools$javac$code$TypeTag;

        static {
            int[] iArr = new int[UndetVar.InferenceBound.values().length];
            $SwitchMap$com$sun$tools$javac$code$Type$UndetVar$InferenceBound = iArr;
            try {
                iArr[UndetVar.InferenceBound.UPPER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Type$UndetVar$InferenceBound[UndetVar.InferenceBound.LOWER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Type$UndetVar$InferenceBound[UndetVar.InferenceBound.EQ.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[TypeTag.values().length];
            $SwitchMap$com$sun$tools$javac$code$TypeTag = iArr2;
            try {
                iArr2[TypeTag.CHAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.BYTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.SHORT.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.INT.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.LONG.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.FLOAT.ordinal()] = 6;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.DOUBLE.ordinal()] = 7;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.BOOLEAN.ordinal()] = 8;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public static class ArrayType extends Type implements org.openjdk.javax.lang.model.type.ArrayType {
        public Type elemtype;

        public ArrayType(Type type, Symbol.TypeSymbol typeSymbol) {
            this(type, typeSymbol, TypeMetadata.EMPTY);
        }

        @Override
        public <R, S> R accept(Visitor<R, S> visitor, S s10) {
            return visitor.visitArrayType(this, s10);
        }

        @Override
        public List<Type> allparams() {
            return this.elemtype.allparams();
        }

        @Override
        public void complete() {
            this.elemtype.complete();
        }

        @Override
        public boolean contains(Type type) {
            return type.equalsIgnoreMetadata(this) || this.elemtype.contains(type);
        }

        @Override
        public boolean equals(Object obj) {
            if (!(obj instanceof ArrayType)) {
                return false;
            }
            ArrayType arrayType = (ArrayType) obj;
            return this == arrayType || this.elemtype.equals(arrayType.elemtype);
        }

        @Override
        public java.util.List getAnnotationMirrors() {
            return super.getAnnotationMirrors();
        }

        @Override
        public TypeKind getKind() {
            return TypeKind.ARRAY;
        }

        @Override
        public TypeTag getTag() {
            return TypeTag.ARRAY;
        }

        @Override
        public int hashCode() {
            return (TypeTag.ARRAY.ordinal() << 5) + this.elemtype.hashCode();
        }

        @Override
        public boolean isErroneous() {
            return this.elemtype.isErroneous();
        }

        @Override
        public boolean isNullOrReference() {
            return true;
        }

        @Override
        public boolean isParameterized() {
            return this.elemtype.isParameterized();
        }

        @Override
        public boolean isRaw() {
            return this.elemtype.isRaw();
        }

        @Override
        public boolean isReference() {
            return true;
        }

        public boolean isVarargs() {
            return false;
        }

        public ArrayType makeVarargs() {
            return new ArrayType(this.elemtype, this.tsym, this.metadata) {
                @Override
                public Type cloneWithMetadata(TypeMetadata typeMetadata) {
                    return super.cloneWithMetadata(typeMetadata);
                }

                @Override
                public java.util.List getAnnotationMirrors() {
                    return super.getAnnotationMirrors();
                }

                @Override
                public TypeMirror getComponentType() {
                    return super.getComponentType();
                }

                @Override
                public boolean isVarargs() {
                    return true;
                }
            };
        }

        @Override
        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            Type type = this.elemtype;
            while (type.getKind() == TypeKind.ARRAY) {
                type = ((ArrayType) type).getComponentType();
            }
            sb2.append((Object) type);
            Type type2 = this;
            do {
                type2.appendAnnotationsString(sb2, true);
                sb2.append(okhttp3.v.f99450n);
                type2 = ((ArrayType) type2).getComponentType();
            } while (type2.getKind() == TypeKind.ARRAY);
            return sb2.toString();
        }

        public ArrayType(Type type, Symbol.TypeSymbol typeSymbol, TypeMetadata typeMetadata) {
            super(typeSymbol, typeMetadata);
            this.elemtype = type;
        }

        @Override
        public <R, P> R accept(TypeVisitor<R, P> typeVisitor, P p10) {
            return typeVisitor.visitArray(this, p10);
        }

        @Override
        public ArrayType cloneWithMetadata(TypeMetadata typeMetadata) {
            return new ArrayType(this.elemtype, this.tsym, typeMetadata) {
                @Override
                public Type baseType() {
                    return ArrayType.this.baseType();
                }

                @Override
                public Type cloneWithMetadata(TypeMetadata typeMetadata2) {
                    return super.cloneWithMetadata(typeMetadata2);
                }

                @Override
                public java.util.List getAnnotationMirrors() {
                    return super.getAnnotationMirrors();
                }

                @Override
                public TypeMirror getComponentType() {
                    return super.getComponentType();
                }
            };
        }

        @Override
        public Type getComponentType() {
            return this.elemtype;
        }

        public ArrayType(ArrayType arrayType) {
            this(arrayType.elemtype, arrayType.tsym, arrayType.getMetadata());
        }
    }

    public static class BottomType extends Type implements NullType {
        public BottomType() {
            super(null, TypeMetadata.EMPTY);
        }

        @Override
        public <R, P> R accept(TypeVisitor<R, P> typeVisitor, P p10) {
            return typeVisitor.visitNull(this, p10);
        }

        @Override
        public Type constType(Object obj) {
            return this;
        }

        @Override
        public java.util.List getAnnotationMirrors() {
            return super.getAnnotationMirrors();
        }

        @Override
        public TypeKind getKind() {
            return TypeKind.NULL;
        }

        @Override
        public TypeTag getTag() {
            return TypeTag.BOT;
        }

        @Override
        public boolean isCompound() {
            return false;
        }

        @Override
        public boolean isNullOrReference() {
            return true;
        }

        @Override
        public String stringValue() {
            return "null";
        }

        @Override
        public BottomType cloneWithMetadata(TypeMetadata typeMetadata) {
            throw new AssertionError((Object) "Cannot add metadata to a bottom type");
        }
    }

    public static class ClassType extends Type implements DeclaredType {
        public List<Type> all_interfaces_field;
        public List<Type> allparams_field;
        public List<Type> interfaces_field;
        private Type outer_field;
        int rank_field;
        public Type supertype_field;
        public List<Type> typarams_field;

        public ClassType(Type type, List<Type> list, Symbol.TypeSymbol typeSymbol) {
            this(type, list, typeSymbol, TypeMetadata.EMPTY);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private String className(Symbol symbol, boolean z10) {
            String localizedString;
            if (symbol.name.isEmpty() && (symbol.flags() & 16777216) != 0) {
                StringBuilder sb2 = new StringBuilder(this.supertype_field.toString());
                for (List list = this.interfaces_field; list.nonEmpty(); list = list.tail) {
                    sb2.append("&");
                    sb2.append(((Type) list.head).toString());
                }
                return sb2.toString();
            }
            if (!symbol.name.isEmpty()) {
                return z10 ? symbol.getQualifiedName().toString() : symbol.name.toString();
            }
            ClassType classType = (ClassType) this.tsym.type;
            if (classType == null) {
                localizedString = Log.getLocalizedString("anonymous.class", null);
            } else {
                List<Type> list2 = classType.interfaces_field;
                localizedString = (list2 == null || !list2.nonEmpty()) ? Log.getLocalizedString("anonymous.class", classType.supertype_field) : Log.getLocalizedString("anonymous.class", classType.interfaces_field.head);
            }
            if (!Type.moreInfo) {
                return localizedString;
            }
            return localizedString + String.valueOf(symbol.hashCode());
        }

        @Override
        public <R, S> R accept(Visitor<R, S> visitor, S s10) {
            return visitor.visitClassType(this, s10);
        }

        @Override
        public List<Type> allparams() {
            if (this.allparams_field == null) {
                this.allparams_field = getTypeArguments().prependList(getEnclosingType().allparams());
            }
            return this.allparams_field;
        }

        @Override
        public Element asElement() {
            return super.asElement();
        }

        @Override
        public void complete() {
            this.tsym.complete();
        }

        @Override
        public Type constType(final Object obj) {
            return new ClassType(getEnclosingType(), this.typarams_field, this.tsym, this.metadata) {
                @Override
                public Element asElement() {
                    return super.asElement();
                }

                @Override
                public Type baseType() {
                    return this.tsym.type;
                }

                @Override
                public Type cloneWithMetadata(TypeMetadata typeMetadata) {
                    return super.cloneWithMetadata(typeMetadata);
                }

                @Override
                public Object constValue() {
                    return obj;
                }

                @Override
                public java.util.List getAnnotationMirrors() {
                    return super.getAnnotationMirrors();
                }

                @Override
                public TypeMirror getEnclosingType() {
                    return super.getEnclosingType();
                }

                @Override
                public java.util.List getTypeArguments() {
                    return super.getTypeArguments();
                }
            };
        }

        @Override
        public boolean contains(Type type) {
            return type.equalsIgnoreMetadata(this) || (isParameterized() && (getEnclosingType().contains(type) || Type.contains(getTypeArguments(), type))) || (isCompound() && (this.supertype_field.contains(type) || Type.contains(this.interfaces_field, type)));
        }

        @Override
        public java.util.List getAnnotationMirrors() {
            return super.getAnnotationMirrors();
        }

        @Override
        public TypeKind getKind() {
            return TypeKind.DECLARED;
        }

        @Override
        public TypeTag getTag() {
            return TypeTag.CLASS;
        }

        public boolean hasErasedSupertypes() {
            return isRaw();
        }

        @Override
        public boolean isErroneous() {
            Type type;
            return getEnclosingType().isErroneous() || Type.isErroneous(getTypeArguments()) || (this != (type = this.tsym.type) && type.isErroneous());
        }

        @Override
        public boolean isNullOrReference() {
            return true;
        }

        @Override
        public boolean isParameterized() {
            return allparams().tail != null;
        }

        @Override
        public boolean isRaw() {
            Type type = this.tsym.type;
            return this != type && type.allparams().nonEmpty() && allparams().isEmpty();
        }

        @Override
        public boolean isReference() {
            return true;
        }

        public void setEnclosingType(Type type) {
            this.outer_field = type;
        }

        @Override
        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            if (getEnclosingType().hasTag(TypeTag.CLASS) && this.tsym.owner.kind == Kinds.Kind.TYP) {
                sb2.append(getEnclosingType().toString());
                sb2.append(".");
                appendAnnotationsString(sb2);
                sb2.append(className(this.tsym, false));
            } else {
                appendAnnotationsString(sb2);
                sb2.append(className(this.tsym, true));
            }
            if (getTypeArguments().nonEmpty()) {
                sb2.append('<');
                sb2.append(getTypeArguments().toString());
                sb2.append(">");
            }
            return sb2.toString();
        }

        public ClassType(Type type, List<Type> list, Symbol.TypeSymbol typeSymbol, TypeMetadata typeMetadata) {
            super(typeSymbol, typeMetadata);
            this.rank_field = -1;
            this.outer_field = type;
            this.typarams_field = list;
            this.allparams_field = null;
            this.supertype_field = null;
            this.interfaces_field = null;
        }

        @Override
        public <R, P> R accept(TypeVisitor<R, P> typeVisitor, P p10) {
            return typeVisitor.visitDeclared(this, p10);
        }

        @Override
        public ClassType cloneWithMetadata(TypeMetadata typeMetadata) {
            return new ClassType(this.outer_field, this.typarams_field, this.tsym, typeMetadata) {
                @Override
                public Element asElement() {
                    return super.asElement();
                }

                @Override
                public Type baseType() {
                    return ClassType.this.baseType();
                }

                @Override
                public Type cloneWithMetadata(TypeMetadata typeMetadata2) {
                    return super.cloneWithMetadata(typeMetadata2);
                }

                @Override
                public java.util.List getAnnotationMirrors() {
                    return super.getAnnotationMirrors();
                }

                @Override
                public TypeMirror getEnclosingType() {
                    return super.getEnclosingType();
                }

                @Override
                public java.util.List getTypeArguments() {
                    return super.getTypeArguments();
                }
            };
        }

        @Override
        public Type getEnclosingType() {
            return this.outer_field;
        }

        @Override
        public List<Type> getTypeArguments() {
            if (this.typarams_field == null) {
                complete();
                if (this.typarams_field == null) {
                    this.typarams_field = List.nil();
                }
            }
            return this.typarams_field;
        }
    }

    public static abstract class DelegatedType extends Type {
        public Type qtype;
        public TypeTag tag;

        public DelegatedType(TypeTag typeTag, Type type) {
            this(typeTag, type, TypeMetadata.EMPTY);
        }

        @Override
        public List<Type> allparams() {
            return this.qtype.allparams();
        }

        @Override
        public java.util.List getAnnotationMirrors() {
            return super.getAnnotationMirrors();
        }

        @Override
        public Type getEnclosingType() {
            return this.qtype.getEnclosingType();
        }

        @Override
        public List<Type> getParameterTypes() {
            return this.qtype.getParameterTypes();
        }

        @Override
        public Type getReceiverType() {
            return this.qtype.getReceiverType();
        }

        @Override
        public Type getReturnType() {
            return this.qtype.getReturnType();
        }

        @Override
        public TypeTag getTag() {
            return this.tag;
        }

        @Override
        public List<Type> getThrownTypes() {
            return this.qtype.getThrownTypes();
        }

        @Override
        public List<Type> getTypeArguments() {
            return this.qtype.getTypeArguments();
        }

        @Override
        public Type getUpperBound() {
            return this.qtype.getUpperBound();
        }

        @Override
        public boolean isErroneous() {
            return this.qtype.isErroneous();
        }

        @Override
        public String toString() {
            return this.qtype.toString();
        }

        public DelegatedType(TypeTag typeTag, Type type, TypeMetadata typeMetadata) {
            super(type.tsym, typeMetadata);
            this.tag = typeTag;
            this.qtype = type;
        }
    }

    public static class ErasedClassType extends ClassType {
        public ErasedClassType(Type type, Symbol.TypeSymbol typeSymbol, TypeMetadata typeMetadata) {
            super(type, List.nil(), typeSymbol, typeMetadata);
        }

        @Override
        public boolean hasErasedSupertypes() {
            return true;
        }
    }

    public static class ErrorType extends ClassType implements org.openjdk.javax.lang.model.type.ErrorType {
        private Type originalType;

        @Override
        public <R, S> R accept(Visitor<R, S> visitor, S s10) {
            return visitor.visitErrorType(this, s10);
        }

        @Override
        public List<Type> allparams() {
            return List.nil();
        }

        public Type asSub(Symbol symbol) {
            return this;
        }

        @Override
        public Type constType(Object obj) {
            return this;
        }

        @Override
        public Type getEnclosingType() {
            return this;
        }

        @Override
        public TypeKind getKind() {
            return TypeKind.ERROR;
        }

        @Override
        public Type getOriginalType() {
            return this.originalType;
        }

        @Override
        public Type getReturnType() {
            return this;
        }

        @Override
        public TypeTag getTag() {
            return TypeTag.ERROR;
        }

        @Override
        public boolean isCompound() {
            return false;
        }

        @Override
        public boolean isErroneous() {
            return true;
        }

        public boolean isGenType(Type type) {
            return true;
        }

        @Override
        public boolean isInterface() {
            return false;
        }

        @Override
        public boolean isNullOrReference() {
            return true;
        }

        @Override
        public boolean isPartial() {
            return true;
        }

        @Override
        public boolean isReference() {
            return true;
        }

        public ErrorType(Symbol.ClassSymbol classSymbol, Type type) {
            this(type, classSymbol);
            classSymbol.type = this;
            classSymbol.kind = Kinds.Kind.ERR;
            classSymbol.members_field = new Scope.ErrorScope(classSymbol);
        }

        @Override
        public <R, P> R accept(TypeVisitor<R, P> typeVisitor, P p10) {
            return typeVisitor.visitError(this, p10);
        }

        @Override
        public List<Type> getTypeArguments() {
            return List.nil();
        }

        @Override
        public ErrorType cloneWithMetadata(TypeMetadata typeMetadata) {
            return new ErrorType(this.originalType, this.tsym, typeMetadata) {
                @Override
                public Type baseType() {
                    return ErrorType.this.baseType();
                }

                @Override
                public ClassType cloneWithMetadata(TypeMetadata typeMetadata2) {
                    return super.cloneWithMetadata(typeMetadata2);
                }

                @Override
                public TypeMirror getEnclosingType() {
                    return super.getEnclosingType();
                }

                @Override
                public java.util.List getTypeArguments() {
                    return super.getTypeArguments();
                }

                @Override
                public Type cloneWithMetadata(TypeMetadata typeMetadata2) {
                    return super.cloneWithMetadata(typeMetadata2);
                }
            };
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public ErrorType(Type type, Symbol.TypeSymbol typeSymbol) {
            super(r0, List.nil(), null);
            JCNoType jCNoType = Type.noType;
            this.originalType = null;
            this.tsym = typeSymbol;
            this.originalType = type == null ? jCNoType : type;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private ErrorType(Type type, Symbol.TypeSymbol typeSymbol, TypeMetadata typeMetadata) {
            super(r0, List.nil(), null, typeMetadata);
            JCNoType jCNoType = Type.noType;
            this.originalType = null;
            this.tsym = typeSymbol;
            this.originalType = type == null ? jCNoType : type;
        }

        public ErrorType(Name name, Symbol.TypeSymbol typeSymbol, Type type) {
            this(new Symbol.ClassSymbol(1073741833L, name, null, typeSymbol), type);
        }
    }

    public static class ForAll extends DelegatedType implements ExecutableType {
        public List<Type> tvars;

        public ForAll(List<Type> list, Type type) {
            super(TypeTag.FORALL, (MethodType) type);
            this.tvars = list;
        }

        @Override
        public <R, S> R accept(Visitor<R, S> visitor, S s10) {
            return visitor.visitForAll(this, s10);
        }

        @Override
        public MethodType asMethodType() {
            return (MethodType) this.qtype;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void complete() {
            for (List list = this.tvars; list.nonEmpty(); list = list.tail) {
                ((TypeVar) list.head).bound.complete();
            }
            this.qtype.complete();
        }

        @Override
        public boolean contains(Type type) {
            return this.qtype.contains(type);
        }

        @Override
        public TypeKind getKind() {
            return TypeKind.EXECUTABLE;
        }

        @Override
        public java.util.List getParameterTypes() {
            return super.getParameterTypes();
        }

        @Override
        public TypeMirror getReceiverType() {
            return super.getReceiverType();
        }

        @Override
        public TypeMirror getReturnType() {
            return super.getReturnType();
        }

        @Override
        public java.util.List getThrownTypes() {
            return super.getThrownTypes();
        }

        @Override
        public List<Type> getTypeArguments() {
            return this.tvars;
        }

        @Override
        public boolean isErroneous() {
            return this.qtype.isErroneous();
        }

        @Override
        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            appendAnnotationsString(sb2);
            sb2.append('<');
            sb2.append((Object) this.tvars);
            sb2.append('>');
            sb2.append((Object) this.qtype);
            return sb2.toString();
        }

        @Override
        public <R, P> R accept(TypeVisitor<R, P> typeVisitor, P p10) {
            return typeVisitor.visitExecutable(this, p10);
        }

        @Override
        public ForAll cloneWithMetadata(TypeMetadata typeMetadata) {
            throw new AssertionError((Object) "Cannot add metadata to a forall type");
        }

        @Override
        public List<TypeVar> getTypeVariables() {
            return List.convert(TypeVar.class, getTypeArguments());
        }
    }

    public static class JCNoType extends Type implements NoType {
        public JCNoType() {
            super(null, TypeMetadata.EMPTY);
        }

        @Override
        public <R, P> R accept(TypeVisitor<R, P> typeVisitor, P p10) {
            return typeVisitor.visitNoType(this, p10);
        }

        @Override
        public java.util.List getAnnotationMirrors() {
            return super.getAnnotationMirrors();
        }

        @Override
        public TypeKind getKind() {
            return TypeKind.NONE;
        }

        @Override
        public TypeTag getTag() {
            return TypeTag.NONE;
        }

        @Override
        public boolean isCompound() {
            return false;
        }

        @Override
        public JCNoType cloneWithMetadata(TypeMetadata typeMetadata) {
            throw new AssertionError((Object) "Cannot add metadata to a JCNoType");
        }
    }

    public static class JCPrimitiveType extends Type implements PrimitiveType {
        TypeTag tag;

        @Override
        public <R, P> R accept(TypeVisitor<R, P> typeVisitor, P p10) {
            return typeVisitor.visitPrimitive(this, p10);
        }

        @Override
        public Type constType(final Object obj) {
            return new JCPrimitiveType(this.tag, this.tsym, this.metadata) {
                @Override
                public Type baseType() {
                    return this.tsym.type;
                }

                @Override
                public Type cloneWithMetadata(TypeMetadata typeMetadata) {
                    return super.cloneWithMetadata(typeMetadata);
                }

                @Override
                public Object constValue() {
                    return obj;
                }

                @Override
                public java.util.List getAnnotationMirrors() {
                    return super.getAnnotationMirrors();
                }
            };
        }

        @Override
        public java.util.List getAnnotationMirrors() {
            return super.getAnnotationMirrors();
        }

        @Override
        public TypeKind getKind() {
            switch (AnonymousClass5.$SwitchMap$com$sun$tools$javac$code$TypeTag[this.tag.ordinal()]) {
                case 1:
                    return TypeKind.CHAR;
                case 2:
                    return TypeKind.BYTE;
                case 3:
                    return TypeKind.SHORT;
                case 4:
                    return TypeKind.INT;
                case 5:
                    return TypeKind.LONG;
                case 6:
                    return TypeKind.FLOAT;
                case 7:
                    return TypeKind.DOUBLE;
                case 8:
                    return TypeKind.BOOLEAN;
                default:
                    throw new AssertionError();
            }
        }

        @Override
        public TypeTag getTag() {
            return this.tag;
        }

        @Override
        public boolean isFalse() {
            return this.tag == TypeTag.BOOLEAN && constValue() != null && ((Integer) constValue()).intValue() == 0;
        }

        @Override
        public boolean isIntegral() {
            int i10 = AnonymousClass5.$SwitchMap$com$sun$tools$javac$code$TypeTag[this.tag.ordinal()];
            return i10 == 1 || i10 == 2 || i10 == 3 || i10 == 4 || i10 == 5;
        }

        @Override
        public boolean isNumeric() {
            return this.tag != TypeTag.BOOLEAN;
        }

        @Override
        public boolean isPrimitive() {
            return true;
        }

        @Override
        public boolean isPrimitiveOrVoid() {
            return true;
        }

        @Override
        public boolean isTrue() {
            return (this.tag != TypeTag.BOOLEAN || constValue() == null || ((Integer) constValue()).intValue() == 0) ? false : true;
        }

        @Override
        public String stringValue() {
            Object checkNonNull = Assert.checkNonNull(constValue());
            TypeTag typeTag = this.tag;
            return typeTag == TypeTag.BOOLEAN ? ((Integer) checkNonNull).intValue() == 0 ? "false" : "true" : typeTag == TypeTag.CHAR ? String.valueOf((char) ((Integer) checkNonNull).intValue()) : checkNonNull.toString();
        }

        public JCPrimitiveType(TypeTag typeTag, Symbol.TypeSymbol typeSymbol) {
            this(typeTag, typeSymbol, TypeMetadata.EMPTY);
        }

        @Override
        public JCPrimitiveType cloneWithMetadata(TypeMetadata typeMetadata) {
            return new JCPrimitiveType(this.tag, this.tsym, typeMetadata) {
                @Override
                public Type baseType() {
                    return JCPrimitiveType.this.baseType();
                }

                @Override
                public Type cloneWithMetadata(TypeMetadata typeMetadata2) {
                    return super.cloneWithMetadata(typeMetadata2);
                }

                @Override
                public java.util.List getAnnotationMirrors() {
                    return super.getAnnotationMirrors();
                }
            };
        }

        private JCPrimitiveType(TypeTag typeTag, Symbol.TypeSymbol typeSymbol, TypeMetadata typeMetadata) {
            super(typeSymbol, typeMetadata);
            this.tag = typeTag;
            Assert.check(typeTag.isPrimitive);
        }
    }

    public static class JCVoidType extends Type implements NoType {
        public JCVoidType() {
            super(null, TypeMetadata.EMPTY);
        }

        @Override
        public <R, P> R accept(TypeVisitor<R, P> typeVisitor, P p10) {
            return typeVisitor.visitNoType(this, p10);
        }

        @Override
        public java.util.List getAnnotationMirrors() {
            return super.getAnnotationMirrors();
        }

        @Override
        public TypeKind getKind() {
            return TypeKind.VOID;
        }

        @Override
        public TypeTag getTag() {
            return TypeTag.VOID;
        }

        @Override
        public boolean isCompound() {
            return false;
        }

        @Override
        public boolean isPrimitiveOrVoid() {
            return true;
        }

        @Override
        public JCVoidType cloneWithMetadata(TypeMetadata typeMetadata) {
            throw new AssertionError((Object) "Cannot add metadata to a void type");
        }
    }

    public static class MethodType extends Type implements ExecutableType {
        public List<Type> argtypes;
        public Type recvtype;
        public Type restype;
        public List<Type> thrown;

        public MethodType(List<Type> list, Type type, List<Type> list2, Symbol.TypeSymbol typeSymbol) {
            super(typeSymbol, TypeMetadata.EMPTY);
            this.argtypes = list;
            this.restype = type;
            this.thrown = list2;
        }

        @Override
        public <R, S> R accept(Visitor<R, S> visitor, S s10) {
            return visitor.visitMethodType(this, s10);
        }

        @Override
        public Symbol.TypeSymbol asElement() {
            return null;
        }

        @Override
        public MethodType asMethodType() {
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void complete() {
            for (List list = this.argtypes; list.nonEmpty(); list = list.tail) {
                ((Type) list.head).complete();
            }
            this.restype.complete();
            this.recvtype.complete();
            for (List list2 = this.thrown; list2.nonEmpty(); list2 = list2.tail) {
                ((Type) list2.head).complete();
            }
        }

        @Override
        public boolean contains(Type type) {
            return type.equalsIgnoreMetadata(this) || Type.contains(this.argtypes, type) || this.restype.contains(type) || Type.contains(this.thrown, type);
        }

        @Override
        public java.util.List getAnnotationMirrors() {
            return super.getAnnotationMirrors();
        }

        @Override
        public TypeKind getKind() {
            return TypeKind.EXECUTABLE;
        }

        @Override
        public TypeTag getTag() {
            return TypeTag.METHOD;
        }

        @Override
        public boolean isErroneous() {
            Type type;
            return Type.isErroneous(this.argtypes) || ((type = this.restype) != null && type.isErroneous());
        }

        @Override
        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            appendAnnotationsString(sb2);
            sb2.append('(');
            sb2.append((Object) this.argtypes);
            sb2.append(')');
            sb2.append((Object) this.restype);
            return sb2.toString();
        }

        @Override
        public <R, P> R accept(TypeVisitor<R, P> typeVisitor, P p10) {
            return typeVisitor.visitExecutable(this, p10);
        }

        @Override
        public MethodType cloneWithMetadata(TypeMetadata typeMetadata) {
            throw new AssertionError((Object) "Cannot add metadata to a method type");
        }

        @Override
        public List<Type> getParameterTypes() {
            return this.argtypes;
        }

        @Override
        public Type getReceiverType() {
            return this.recvtype;
        }

        @Override
        public Type getReturnType() {
            return this.restype;
        }

        @Override
        public List<Type> getThrownTypes() {
            return this.thrown;
        }

        @Override
        public List<TypeVar> getTypeVariables() {
            return List.nil();
        }
    }

    public static class ModuleType extends Type implements NoType {
        public ModuleType(Symbol.ModuleSymbol moduleSymbol) {
            super(moduleSymbol, TypeMetadata.EMPTY);
        }

        @Override
        public <R, S> R accept(Visitor<R, S> visitor, S s10) {
            return visitor.visitModuleType(this, s10);
        }

        @Override
        public Type annotatedType(List list) {
            return annotatedType((List<Attribute.TypeCompound>) list);
        }

        @Override
        public java.util.List getAnnotationMirrors() {
            return super.getAnnotationMirrors();
        }

        @Override
        public TypeKind getKind() {
            return TypeKind.MODULE;
        }

        @Override
        public TypeTag getTag() {
            return TypeTag.MODULE;
        }

        @Override
        public String toString() {
            return this.tsym.getQualifiedName().toString();
        }

        @Override
        public <R, P> R accept(TypeVisitor<R, P> typeVisitor, P p10) {
            return typeVisitor.visitNoType(this, p10);
        }

        @Override
        public ModuleType annotatedType(List<Attribute.TypeCompound> list) {
            throw new AssertionError((Object) "Cannot annotate a module type");
        }

        @Override
        public ModuleType cloneWithMetadata(TypeMetadata typeMetadata) {
            throw new AssertionError((Object) "Cannot add metadata to a module type");
        }
    }

    public static class PackageType extends Type implements NoType {
        public PackageType(Symbol.PackageSymbol packageSymbol) {
            super(packageSymbol, TypeMetadata.EMPTY);
        }

        @Override
        public <R, S> R accept(Visitor<R, S> visitor, S s10) {
            return visitor.visitPackageType(this, s10);
        }

        @Override
        public java.util.List getAnnotationMirrors() {
            return super.getAnnotationMirrors();
        }

        @Override
        public TypeKind getKind() {
            return TypeKind.PACKAGE;
        }

        @Override
        public TypeTag getTag() {
            return TypeTag.PACKAGE;
        }

        @Override
        public String toString() {
            return this.tsym.getQualifiedName().toString();
        }

        @Override
        public <R, P> R accept(TypeVisitor<R, P> typeVisitor, P p10) {
            return typeVisitor.visitNoType(this, p10);
        }

        @Override
        public PackageType cloneWithMetadata(TypeMetadata typeMetadata) {
            throw new AssertionError((Object) "Cannot add metadata to a package type");
        }
    }

    public static abstract class StructuralTypeMapping<S> extends Types.TypeMapping<S> {
        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Object visitArrayType(ArrayType arrayType, Object obj) {
            return visitArrayType(arrayType, (ArrayType) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Object visitClassType(ClassType classType, Object obj) {
            return visitClassType(classType, (ClassType) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Object visitForAll(ForAll forAll, Object obj) {
            return visitForAll(forAll, (ForAll) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Object visitMethodType(MethodType methodType, Object obj) {
            return visitMethodType(methodType, (MethodType) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Object visitWildcardType(WildcardType wildcardType, Object obj) {
            return visitWildcardType(wildcardType, (WildcardType) obj);
        }

        @Override
        public Type visitArrayType(ArrayType arrayType, S s10) {
            Type type = arrayType.elemtype;
            Type visit = visit(type, (Type) s10);
            return visit == type ? arrayType : new ArrayType(visit, arrayType.tsym, arrayType.metadata) {
                @Override
                public boolean needsStripping() {
                    return true;
                }
            };
        }

        @Override
        public Type visitClassType(ClassType classType, S s10) {
            Type enclosingType = classType.getEnclosingType();
            Type visit = visit(enclosingType, (Type) s10);
            List<Type> typeArguments = classType.getTypeArguments();
            List<Type> visit2 = visit(typeArguments, (List<Type>) s10);
            return (visit == enclosingType && visit2 == typeArguments) ? classType : new ClassType(visit, visit2, classType.tsym, classType.metadata) {
                @Override
                public boolean needsStripping() {
                    return true;
                }
            };
        }

        @Override
        public Type visitForAll(ForAll forAll, S s10) {
            return visit(forAll.qtype, (Type) s10);
        }

        @Override
        public Type visitMethodType(MethodType methodType, S s10) {
            List<Type> list = methodType.argtypes;
            Type type = methodType.restype;
            List<Type> list2 = methodType.thrown;
            List<Type> visit = visit(list, (List<Type>) s10);
            Type visit2 = visit(type, (Type) s10);
            List<Type> visit3 = visit(list2, (List<Type>) s10);
            return (visit == list && visit2 == type && visit3 == list2) ? methodType : new MethodType(visit, visit2, visit3, methodType.tsym) {
                @Override
                public boolean needsStripping() {
                    return true;
                }
            };
        }

        @Override
        public Type visitWildcardType(WildcardType wildcardType, S s10) {
            Type type = wildcardType.type;
            if (type != null) {
                type = visit(type, (Type) s10);
            }
            Type type2 = type;
            return type2 == wildcardType.type ? wildcardType : new WildcardType(type2, wildcardType.kind, wildcardType.tsym, wildcardType.bound, wildcardType.metadata) {
                @Override
                public boolean needsStripping() {
                    return true;
                }
            };
        }
    }

    public static class TypeVar extends Type implements TypeVariable {
        public Type bound;
        public Type lower;
        int rank_field;

        public TypeVar(Name name, Symbol symbol, Type type) {
            super(null, TypeMetadata.EMPTY);
            this.bound = null;
            this.rank_field = -1;
            this.tsym = new Symbol.TypeVariableSymbol(0L, name, this, symbol);
            this.bound = null;
            this.lower = type;
        }

        @Override
        public <R, S> R accept(Visitor<R, S> visitor, S s10) {
            return visitor.visitTypeVar(this, s10);
        }

        @Override
        public Element asElement() {
            return super.asElement();
        }

        @Override
        public java.util.List getAnnotationMirrors() {
            return super.getAnnotationMirrors();
        }

        @Override
        public TypeKind getKind() {
            return TypeKind.TYPEVAR;
        }

        @Override
        public TypeTag getTag() {
            return TypeTag.TYPEVAR;
        }

        public boolean isCaptured() {
            return false;
        }

        @Override
        public boolean isNullOrReference() {
            return true;
        }

        @Override
        public boolean isReference() {
            return true;
        }

        @Override
        public <R, P> R accept(TypeVisitor<R, P> typeVisitor, P p10) {
            return typeVisitor.visitTypeVariable(this, p10);
        }

        @Override
        public TypeVar cloneWithMetadata(TypeMetadata typeMetadata) {
            return new TypeVar(this.tsym, this.bound, this.lower, typeMetadata) {
                @Override
                public Element asElement() {
                    return super.asElement();
                }

                @Override
                public Type baseType() {
                    return TypeVar.this.baseType();
                }

                @Override
                public Type cloneWithMetadata(TypeMetadata typeMetadata2) {
                    return super.cloneWithMetadata(typeMetadata2);
                }

                @Override
                public java.util.List getAnnotationMirrors() {
                    return super.getAnnotationMirrors();
                }

                @Override
                public TypeMirror getLowerBound() {
                    return super.getLowerBound();
                }

                @Override
                public TypeMirror getUpperBound() {
                    return super.getUpperBound();
                }
            };
        }

        @Override
        public Type getLowerBound() {
            return this.lower;
        }

        @Override
        public Type getUpperBound() {
            Type type;
            Type type2 = this.bound;
            if ((type2 == null || type2.hasTag(TypeTag.NONE)) && this != (type = this.tsym.type)) {
                this.bound = type.getUpperBound();
            }
            return this.bound;
        }

        public TypeVar(Symbol.TypeSymbol typeSymbol, Type type, Type type2) {
            this(typeSymbol, type, type2, TypeMetadata.EMPTY);
        }

        public TypeVar(Symbol.TypeSymbol typeSymbol, Type type, Type type2, TypeMetadata typeMetadata) {
            super(typeSymbol, typeMetadata);
            this.rank_field = -1;
            this.bound = type;
            this.lower = type2;
        }
    }

    public static class UndetVar extends DelegatedType {
        protected Map<InferenceBound, List<Type>> bounds;
        public int declaredCount;
        public ArrayDeque<Infer.IncorporationAction> incorporationActions;
        private Type inst;
        Kind kind;
        public UndetVarListener listener;
        Types.TypeMapping<Void> toTypeVarMap;

        public enum InferenceBound {
            LOWER {
                @Override
                public InferenceBound complement() {
                    return InferenceBound.UPPER;
                }
            },
            EQ {
                @Override
                public InferenceBound complement() {
                    return InferenceBound.EQ;
                }
            },
            UPPER {
                @Override
                public InferenceBound complement() {
                    return InferenceBound.LOWER;
                }
            };

            public abstract InferenceBound complement();

            public boolean lessThan(InferenceBound inferenceBound) {
                if (inferenceBound == this) {
                    return false;
                }
                int i10 = AnonymousClass5.$SwitchMap$com$sun$tools$javac$code$Type$UndetVar$InferenceBound[inferenceBound.ordinal()];
                if (i10 == 1) {
                    return true;
                }
                if (i10 == 2) {
                    return false;
                }
                if (i10 == 3) {
                    return this != UPPER;
                }
                Assert.error("Cannot get here!");
                return false;
            }
        }

        public enum Kind {
            NORMAL,
            CAPTURED,
            THROWS
        }

        public interface UndetVarListener {
            void varBoundChanged(UndetVar undetVar, InferenceBound inferenceBound, Type type, boolean z10);

            default void varInstantiated(UndetVar undetVar) {
                Assert.error();
            }
        }

        public UndetVar(TypeVar typeVar, UndetVarListener undetVarListener, Types types) {
            super(TypeTag.UNDETVAR, typeVar);
            this.incorporationActions = new ArrayDeque<>();
            this.inst = null;
            this.listener = null;
            this.toTypeVarMap = new StructuralTypeMapping<Void>() {
                @Override
                public Type visitUndetVar(UndetVar undetVar, Void r22) {
                    return undetVar.inst != null ? undetVar.inst : undetVar.qtype;
                }
            };
            this.kind = typeVar.isCaptured() ? Kind.CAPTURED : Kind.NORMAL;
            this.listener = undetVarListener;
            this.bounds = new EnumMap(InferenceBound.class);
            List<Type> bounds = types.getBounds(typeVar);
            this.declaredCount = bounds.length();
            this.bounds.put(InferenceBound.UPPER, List.nil());
            this.bounds.put(InferenceBound.LOWER, List.nil());
            this.bounds.put(InferenceBound.EQ, List.nil());
            Iterator<Type> it = bounds.reverse().iterator();
            while (it.hasNext()) {
                addBound(InferenceBound.UPPER, it.next(), types, true);
            }
            if (!typeVar.isCaptured() || typeVar.lower.hasTag(TypeTag.BOT)) {
                return;
            }
            addBound(InferenceBound.LOWER, typeVar.lower, types, true);
        }

        public void lambda$substBounds$0(ListBuffer listBuffer, UndetVar undetVar, InferenceBound inferenceBound, Type type, boolean z10) {
            Assert.check(undetVar == this);
            listBuffer.add(new Pair(inferenceBound, type));
        }

        private void notifyBoundChange(InferenceBound inferenceBound, Type type, boolean z10) {
            UndetVarListener undetVarListener = this.listener;
            if (undetVarListener != null) {
                undetVarListener.varBoundChanged(this, inferenceBound, type, z10);
            }
        }

        @Override
        public <R, S> R accept(Visitor<R, S> visitor, S s10) {
            return visitor.visitUndetVar(this, s10);
        }

        public final void addBound(InferenceBound inferenceBound, Type type, Types types) {
            if (types.mapCapturesToBounds) {
                int i10 = AnonymousClass5.$SwitchMap$com$sun$tools$javac$code$Type$UndetVar$InferenceBound[inferenceBound.ordinal()];
                if (i10 == 1) {
                    Type cvarLowerBound = types.cvarLowerBound(type);
                    if (!cvarLowerBound.hasTag(TypeTag.BOT)) {
                        type = cvarLowerBound;
                    }
                } else if (i10 == 2) {
                    type = types.cvarUpperBound(type);
                }
            }
            addBound(inferenceBound, type, types, false);
        }

        @Override
        public Type baseType() {
            Type type = this.inst;
            return type == null ? this : type.baseType();
        }

        public String debugString() {
            String str = "inference var = " + ((Object) this.qtype) + "\n";
            if (this.inst != null) {
                str = str + "inst = " + ((Object) this.inst) + '\n';
            }
            for (InferenceBound inferenceBound : InferenceBound.values()) {
                List<Type> list = this.bounds.get(inferenceBound);
                if (list.size() > 0) {
                    str = str + ((Object) inferenceBound) + " = " + ((Object) list) + '\n';
                }
            }
            return str;
        }

        public UndetVar dup(Types types) {
            UndetVar undetVar = new UndetVar((TypeVar) this.qtype, this.listener, types);
            dupTo(undetVar, types);
            return undetVar;
        }

        public void dupTo(UndetVar undetVar, Types types) {
            undetVar.listener = null;
            undetVar.bounds.clear();
            for (InferenceBound inferenceBound : InferenceBound.values()) {
                undetVar.bounds.put(inferenceBound, List.nil());
                Iterator<Type> it = getBounds(inferenceBound).iterator();
                while (it.hasNext()) {
                    undetVar.addBound(inferenceBound, it.next(), types, true);
                }
            }
            undetVar.inst = this.inst;
            undetVar.listener = this.listener;
            undetVar.incorporationActions = new ArrayDeque<>();
            Iterator<Infer.IncorporationAction> it2 = this.incorporationActions.iterator();
            while (it2.hasNext()) {
                undetVar.incorporationActions.add(it2.next().dup(undetVar));
            }
        }

        public List<Type> getBounds(InferenceBound... inferenceBoundArr) {
            ListBuffer listBuffer = new ListBuffer();
            for (InferenceBound inferenceBound : inferenceBoundArr) {
                listBuffer.appendList(this.bounds.get(inferenceBound));
            }
            return listBuffer.toList();
        }

        public List<Type> getDeclaredBounds() {
            ListBuffer listBuffer = new ListBuffer();
            Iterator<Type> it = getBounds(InferenceBound.UPPER).iterator();
            int i10 = 0;
            while (it.hasNext()) {
                Type next = it.next();
                int i11 = i10 + 1;
                if (i10 == this.declaredCount) {
                    break;
                }
                listBuffer.append(next);
                i10 = i11;
            }
            return listBuffer.toList();
        }

        public Type getInst() {
            return this.inst;
        }

        public final boolean isCaptured() {
            return this.kind == Kind.CAPTURED;
        }

        @Override
        public boolean isPartial() {
            return true;
        }

        public final boolean isThrows() {
            return this.kind == Kind.THROWS;
        }

        public void setBounds(InferenceBound inferenceBound, List<Type> list) {
            this.bounds.put(inferenceBound, list);
        }

        public void setInst(Type type) {
            this.inst = type;
            UndetVarListener undetVarListener = this.listener;
            if (undetVarListener != null) {
                undetVarListener.varInstantiated(this);
            }
        }

        public void setThrow() {
            if (this.kind == Kind.CAPTURED) {
                throw new IllegalStateException();
            }
            this.kind = Kind.THROWS;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void substBounds(List<Type> list, List<Type> list2, Types types) {
            final ListBuffer listBuffer = new ListBuffer();
            UndetVarListener undetVarListener = this.listener;
            try {
                this.listener = new UndetVarListener() {
                    @Override
                    public final void varBoundChanged(Type.UndetVar undetVar, Type.UndetVar.InferenceBound inferenceBound, Type type, boolean z10) {
                        Type.UndetVar.this.lambda$substBounds$0(listBuffer, undetVar, inferenceBound, type, z10);
                    }
                };
                for (Map.Entry<InferenceBound, List<Type>> entry : this.bounds.entrySet()) {
                    InferenceBound key = entry.getKey();
                    List<Type> value = entry.getValue();
                    ListBuffer listBuffer2 = new ListBuffer();
                    ListBuffer listBuffer3 = new ListBuffer();
                    Iterator<Type> it = value.iterator();
                    while (it.hasNext()) {
                        Type next = it.next();
                        if (next.containsAny(list)) {
                            listBuffer3.append(next);
                        } else {
                            listBuffer2.append(next);
                        }
                    }
                    this.bounds.put(key, listBuffer2.toList());
                    Iterator it2 = listBuffer3.iterator();
                    while (it2.hasNext()) {
                        addBound(key, types.subst((Type) it2.next(), list, list2), types, true);
                    }
                }
                this.listener = undetVarListener;
                Iterator it3 = listBuffer.iterator();
                while (it3.hasNext()) {
                    Pair pair = (Pair) it3.next();
                    notifyBoundChange((InferenceBound) pair.fst, (Type) pair.snd, true);
                }
            } catch (Throwable th2) {
                this.listener = undetVarListener;
                Iterator it4 = listBuffer.iterator();
                while (it4.hasNext()) {
                    Pair pair2 = (Pair) it4.next();
                    notifyBoundChange((InferenceBound) pair2.fst, (Type) pair2.snd, true);
                }
                throw th2;
            }
        }

        @Override
        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            appendAnnotationsString(sb2);
            Type type = this.inst;
            if (type == null) {
                sb2.append((Object) this.qtype);
                sb2.append('?');
            } else {
                sb2.append((Object) type);
            }
            return sb2.toString();
        }

        @Override
        public UndetVar cloneWithMetadata(TypeMetadata typeMetadata) {
            throw new AssertionError((Object) "Cannot add metadata to an UndetVar type");
        }

        private void addBound(InferenceBound inferenceBound, Type type, Types types, boolean z10) {
            if (this.kind == Kind.CAPTURED && !z10) {
                if (type.hasTag(TypeTag.UNDETVAR)) {
                    UndetVar undetVar = (UndetVar) type;
                    if (undetVar.isCaptured()) {
                        return;
                    }
                    undetVar.addBound(inferenceBound.complement(), this, types, false);
                    return;
                }
                return;
            }
            Type baseType = type.map(this.toTypeVarMap).baseType();
            List<Type> list = this.bounds.get(inferenceBound);
            if (type == this.qtype) {
                return;
            }
            Iterator<Type> it = list.iterator();
            while (it.hasNext()) {
                if (types.isSameType(it.next(), baseType, true)) {
                    return;
                }
            }
            this.bounds.put(inferenceBound, list.prepend(baseType));
            notifyBoundChange(inferenceBound, baseType, false);
        }
    }

    public static class UnknownType extends Type {
        public UnknownType() {
            super(null, TypeMetadata.EMPTY);
        }

        @Override
        public <R, P> R accept(TypeVisitor<R, P> typeVisitor, P p10) {
            return typeVisitor.visitUnknown(this, p10);
        }

        @Override
        public java.util.List getAnnotationMirrors() {
            return super.getAnnotationMirrors();
        }

        @Override
        public TypeTag getTag() {
            return TypeTag.UNKNOWN;
        }

        @Override
        public boolean isPartial() {
            return true;
        }

        @Override
        public UnknownType cloneWithMetadata(TypeMetadata typeMetadata) {
            throw new AssertionError((Object) "Cannot add metadata to an unknown type");
        }
    }

    public interface Visitor<R, S> {
        R visitArrayType(ArrayType arrayType, S s10);

        R visitCapturedType(CapturedType capturedType, S s10);

        R visitClassType(ClassType classType, S s10);

        R visitErrorType(ErrorType errorType, S s10);

        R visitForAll(ForAll forAll, S s10);

        R visitMethodType(MethodType methodType, S s10);

        R visitModuleType(ModuleType moduleType, S s10);

        R visitPackageType(PackageType packageType, S s10);

        R visitType(Type type, S s10);

        R visitTypeVar(TypeVar typeVar, S s10);

        R visitUndetVar(UndetVar undetVar, S s10);

        R visitWildcardType(WildcardType wildcardType, S s10);
    }

    public static class WildcardType extends Type implements org.openjdk.javax.lang.model.type.WildcardType {
        public TypeVar bound;
        boolean isPrintingBound;
        public BoundKind kind;
        public Type type;

        public WildcardType(Type type, BoundKind boundKind, Symbol.TypeSymbol typeSymbol) {
            this(type, boundKind, typeSymbol, null, TypeMetadata.EMPTY);
        }

        @Override
        public <R, S> R accept(Visitor<R, S> visitor, S s10) {
            return visitor.visitWildcardType(this, s10);
        }

        @Override
        public boolean contains(Type type) {
            return this.kind != BoundKind.UNBOUND && this.type.contains(type);
        }

        @Override
        public java.util.List getAnnotationMirrors() {
            return super.getAnnotationMirrors();
        }

        @Override
        public TypeKind getKind() {
            return TypeKind.WILDCARD;
        }

        @Override
        public TypeTag getTag() {
            return TypeTag.WILDCARD;
        }

        @Override
        public boolean isExtendsBound() {
            BoundKind boundKind = this.kind;
            return boundKind == BoundKind.EXTENDS || boundKind == BoundKind.UNBOUND;
        }

        @Override
        public boolean isNullOrReference() {
            return true;
        }

        @Override
        public boolean isReference() {
            return true;
        }

        @Override
        public boolean isSuperBound() {
            BoundKind boundKind = this.kind;
            return boundKind == BoundKind.SUPER || boundKind == BoundKind.UNBOUND;
        }

        @Override
        public boolean isUnbound() {
            return this.kind == BoundKind.UNBOUND;
        }

        @Override
        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            appendAnnotationsString(sb2);
            sb2.append(this.kind.toString());
            if (this.kind != BoundKind.UNBOUND) {
                sb2.append((Object) this.type);
            }
            if (Type.moreInfo && this.bound != null && !this.isPrintingBound) {
                try {
                    this.isPrintingBound = true;
                    sb2.append("{:");
                    sb2.append((Object) this.bound.bound);
                    sb2.append(":}");
                } finally {
                    this.isPrintingBound = false;
                }
            }
            return sb2.toString();
        }

        @Override
        public Type withTypeVar(Type type) {
            if (this.bound == type) {
                return this;
            }
            this.bound = (TypeVar) type;
            return this;
        }

        public WildcardType(Type type, BoundKind boundKind, Symbol.TypeSymbol typeSymbol, TypeMetadata typeMetadata) {
            this(type, boundKind, typeSymbol, null, typeMetadata);
        }

        @Override
        public <R, P> R accept(TypeVisitor<R, P> typeVisitor, P p10) {
            return typeVisitor.visitWildcard(this, p10);
        }

        @Override
        public WildcardType cloneWithMetadata(TypeMetadata typeMetadata) {
            return new WildcardType(this.type, this.kind, this.tsym, this.bound, typeMetadata) {
                @Override
                public Type baseType() {
                    return WildcardType.this.baseType();
                }

                @Override
                public Type cloneWithMetadata(TypeMetadata typeMetadata2) {
                    return super.cloneWithMetadata(typeMetadata2);
                }

                @Override
                public java.util.List getAnnotationMirrors() {
                    return super.getAnnotationMirrors();
                }

                @Override
                public TypeMirror getExtendsBound() {
                    return super.getExtendsBound();
                }

                @Override
                public TypeMirror getSuperBound() {
                    return super.getSuperBound();
                }
            };
        }

        @Override
        public Type getExtendsBound() {
            if (this.kind == BoundKind.EXTENDS) {
                return this.type;
            }
            return null;
        }

        @Override
        public Type getSuperBound() {
            if (this.kind == BoundKind.SUPER) {
                return this.type;
            }
            return null;
        }

        public WildcardType(Type type, BoundKind boundKind, Symbol.TypeSymbol typeSymbol, TypeVar typeVar) {
            this(type, boundKind, typeSymbol, typeVar, TypeMetadata.EMPTY);
        }

        public WildcardType(Type type, BoundKind boundKind, Symbol.TypeSymbol typeSymbol, TypeVar typeVar, TypeMetadata typeMetadata) {
            super(typeSymbol, typeMetadata);
            this.isPrintingBound = false;
            this.type = (Type) Assert.checkNonNull(type);
            this.kind = boundKind;
            this.bound = typeVar;
        }
    }

    public Type(Symbol.TypeSymbol typeSymbol, TypeMetadata typeMetadata) {
        Assert.checkNonNull(typeMetadata);
        this.tsym = typeSymbol;
        this.metadata = typeMetadata;
    }

    public static List<Type> baseTypes(List<Type> list) {
        if (!list.nonEmpty()) {
            return list;
        }
        Type baseType = list.head.baseType();
        List<Type> baseTypes = baseTypes(list.tail);
        return (baseType == list.head && baseTypes == list.tail) ? list : baseTypes.prepend(baseType);
    }

    public static List<Type> filter(List<Type> list, Filter<Type> filter) {
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Type> it = list.iterator();
        while (it.hasNext()) {
            Type next = it.next();
            if (filter.accepts(next)) {
                listBuffer.append(next);
            }
        }
        return listBuffer.toList();
    }

    public static List<Type> getModelTypes(List<Type> list) {
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Type> it = list.iterator();
        while (it.hasNext()) {
            listBuffer.append(it.next().getModelType());
        }
        return listBuffer.toList();
    }

    public <R, S> R accept(Visitor<R, S> visitor, S s10) {
        return visitor.visitType(this, s10);
    }

    public List<Type> allparams() {
        return List.nil();
    }

    public Type annotatedType(List<Attribute.TypeCompound> list) {
        return cloneWithMetadata(this.metadata.combine(new TypeMetadata.Annotations(list)));
    }

    public void appendAnnotationsString(StringBuilder sb2, boolean z10) {
        if (isAnnotated()) {
            if (z10) {
                sb2.append(" ");
            }
            sb2.append((Object) getAnnotationMirrors());
            sb2.append(" ");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String argtypes(boolean z10) {
        List parameterTypes = getParameterTypes();
        if (!z10) {
            return parameterTypes.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        while (parameterTypes.tail.nonEmpty()) {
            sb2.append(parameterTypes.head);
            parameterTypes = parameterTypes.tail;
            sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
        }
        if (((Type) parameterTypes.head).hasTag(TypeTag.ARRAY)) {
            sb2.append((Object) ((ArrayType) parameterTypes.head).elemtype);
            if (((Type) parameterTypes.head).getAnnotationMirrors().nonEmpty()) {
                sb2.append((Object) ((Type) parameterTypes.head).getAnnotationMirrors());
            }
            sb2.append("...");
        } else {
            sb2.append(parameterTypes.head);
        }
        return sb2.toString();
    }

    public Symbol.TypeSymbol asElement() {
        return this.tsym;
    }

    public MethodType asMethodType() {
        throw new AssertionError();
    }

    public Type baseType() {
        return this;
    }

    public abstract Type cloneWithMetadata(TypeMetadata typeMetadata);

    public void complete() {
    }

    public Type constType(Object obj) {
        throw new AssertionError();
    }

    public Object constValue() {
        return null;
    }

    public boolean contains(Type type) {
        return type.equalsIgnoreMetadata(this);
    }

    public boolean containsAny(List<Type> list) {
        Iterator<Type> it = list.iterator();
        while (it.hasNext()) {
            if (contains(it.next())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean equals(Object obj) {
        return this == obj;
    }

    public boolean equalsIgnoreMetadata(Type type) {
        return typeNoMetadata().equals(type.typeNoMetadata());
    }

    @Override
    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        return null;
    }

    @Override
    public <A extends Annotation> A[] getAnnotationsByType(Class<A> cls) {
        return (A[]) ((Annotation[]) Array.newInstance((Class<?>) cls, 0));
    }

    public Type getEnclosingType() {
        return null;
    }

    @Override
    public TypeKind getKind() {
        return TypeKind.OTHER;
    }

    public Type getLowerBound() {
        return null;
    }

    public TypeMetadata getMetadata() {
        return this.metadata;
    }

    public TypeMetadata.Entry getMetadataOfKind(TypeMetadata.Entry.Kind kind) {
        TypeMetadata typeMetadata = this.metadata;
        if (typeMetadata != null) {
            return typeMetadata.get(kind);
        }
        return null;
    }

    public Type getModelType() {
        return this;
    }

    public Type getOriginalType() {
        return this;
    }

    public List<Type> getParameterTypes() {
        return List.nil();
    }

    public Type getReceiverType() {
        return null;
    }

    public Type getReturnType() {
        return null;
    }

    public abstract TypeTag getTag();

    public List<Type> getThrownTypes() {
        return List.nil();
    }

    public List<Type> getTypeArguments() {
        return List.nil();
    }

    public Type getUpperBound() {
        return null;
    }

    public boolean hasTag(TypeTag typeTag) {
        return typeTag == getTag();
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    public boolean isAnnotated() {
        TypeMetadata.Annotations annotations = (TypeMetadata.Annotations) getMetadataOfKind(TypeMetadata.Entry.Kind.ANNOTATIONS);
        return (annotations == null || annotations.getAnnotations().isEmpty()) ? false : true;
    }

    public boolean isCompound() {
        return false;
    }

    public boolean isErroneous() {
        return false;
    }

    public boolean isExtendsBound() {
        return false;
    }

    public boolean isFalse() {
        return false;
    }

    public boolean isFinal() {
        return (this.tsym.flags() & 16) != 0;
    }

    public boolean isIntegral() {
        return false;
    }

    public boolean isInterface() {
        return (this.tsym.flags() & 512) != 0;
    }

    public boolean isIntersection() {
        return false;
    }

    public boolean isNullOrReference() {
        return false;
    }

    public boolean isNumeric() {
        return false;
    }

    public boolean isParameterized() {
        return false;
    }

    public boolean isPartial() {
        return false;
    }

    public boolean isPrimitive() {
        return false;
    }

    public boolean isPrimitiveOrVoid() {
        return false;
    }

    public boolean isRaw() {
        return false;
    }

    public boolean isReference() {
        return false;
    }

    public boolean isSuperBound() {
        return false;
    }

    public boolean isTrue() {
        return false;
    }

    public boolean isUnbound() {
        return false;
    }

    public boolean isUnion() {
        return false;
    }

    public <Z> Type map(Types.TypeMapping<Z> typeMapping, Z z10) {
        return typeMapping.visit(this, (Type) z10);
    }

    public boolean needsStripping() {
        return false;
    }

    public String stringValue() {
        return Assert.checkNonNull(constValue()).toString();
    }

    public Type stripMetadata() {
        return (Type) accept(stripMetadata, (Types.TypeMapping<Void>) null);
    }

    public Type stripMetadataIfNeeded() {
        return needsStripping() ? (Type) accept(stripMetadata, (Types.TypeMapping<Void>) null) : this;
    }

    @Override
    public String toString() {
        Name name;
        StringBuilder sb2 = new StringBuilder();
        appendAnnotationsString(sb2);
        Symbol.TypeSymbol typeSymbol = this.tsym;
        if (typeSymbol != null && (name = typeSymbol.name) != null) {
            sb2.append((CharSequence) name);
        } else {
            sb2.append("<none>");
        }
        if (moreInfo && hasTag(TypeTag.TYPEVAR)) {
            sb2.append(hashCode());
        }
        return sb2.toString();
    }

    public Type typeNoMetadata() {
        return this.metadata == TypeMetadata.EMPTY ? this : baseType();
    }

    public Type withTypeVar(Type type) {
        return this;
    }

    public static class CapturedType extends TypeVar {
        public WildcardType wildcard;

        public CapturedType(Name name, Symbol symbol, Type type, Type type2, WildcardType wildcardType) {
            super(name, symbol, type2);
            this.lower = (Type) Assert.checkNonNull(type2);
            this.bound = type;
            this.wildcard = wildcardType;
        }

        @Override
        public <R, S> R accept(Visitor<R, S> visitor, S s10) {
            return visitor.visitCapturedType(this, s10);
        }

        @Override
        public boolean isCaptured() {
            return true;
        }

        @Override
        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            appendAnnotationsString(sb2);
            sb2.append("capture#");
            sb2.append((hashCode() & 4294967295L) % 997);
            sb2.append(" of ");
            sb2.append((Object) this.wildcard);
            return sb2.toString();
        }

        @Override
        public CapturedType cloneWithMetadata(TypeMetadata typeMetadata) {
            Symbol.TypeSymbol typeSymbol = this.tsym;
            Type type = this.bound;
            return new CapturedType(typeSymbol, type, type, this.lower, this.wildcard, typeMetadata) {
                @Override
                public Type baseType() {
                    return CapturedType.this.baseType();
                }

                @Override
                public TypeVar cloneWithMetadata(TypeMetadata typeMetadata2) {
                    return super.cloneWithMetadata(typeMetadata2);
                }

                @Override
                public Type cloneWithMetadata(TypeMetadata typeMetadata2) {
                    return super.cloneWithMetadata(typeMetadata2);
                }
            };
        }

        public CapturedType(Symbol.TypeSymbol typeSymbol, Type type, Type type2, Type type3, WildcardType wildcardType, TypeMetadata typeMetadata) {
            super(typeSymbol, type, type3, typeMetadata);
            this.wildcard = wildcardType;
        }
    }

    public static class IntersectionClassType extends ClassType implements IntersectionType {
        public boolean allInterfaces;

        public IntersectionClassType(List<Type> list, Symbol.ClassSymbol classSymbol, boolean z10) {
            super(Type.noType, List.nil(), classSymbol);
            this.allInterfaces = z10;
            Assert.check((classSymbol.flags() & 16777216) != 0);
            Type type = list.head;
            this.supertype_field = type;
            this.interfaces_field = list.tail;
            Assert.check((type.tsym.isCompleted() && this.supertype_field.isInterface()) ? false : true, this.supertype_field);
        }

        @Override
        public <R, P> R accept(TypeVisitor<R, P> typeVisitor, P p10) {
            return typeVisitor.visitIntersection(this, p10);
        }

        @Override
        public java.util.List<? extends TypeMirror> getBounds() {
            return Collections.unmodifiableList(getExplicitComponents());
        }

        public List<Type> getComponents() {
            return this.interfaces_field.prepend(this.supertype_field);
        }

        public List<Type> getExplicitComponents() {
            return this.allInterfaces ? this.interfaces_field : getComponents();
        }

        @Override
        public TypeKind getKind() {
            return TypeKind.INTERSECTION;
        }

        @Override
        public boolean isCompound() {
            return true;
        }

        @Override
        public boolean isIntersection() {
            return true;
        }

        @Override
        public IntersectionClassType cloneWithMetadata(TypeMetadata typeMetadata) {
            throw new AssertionError((Object) "Cannot add metadata to an intersection type");
        }
    }

    public static class UnionClassType extends ClassType implements UnionType {
        final List<? extends Type> alternatives_field;

        public UnionClassType(ClassType classType, List<? extends Type> list) {
            super(classType.outer_field, classType.typarams_field, classType.tsym);
            this.allparams_field = classType.allparams_field;
            this.supertype_field = classType.supertype_field;
            this.interfaces_field = classType.interfaces_field;
            this.all_interfaces_field = classType.interfaces_field;
            this.alternatives_field = list;
        }

        @Override
        public <R, P> R accept(TypeVisitor<R, P> typeVisitor, P p10) {
            return typeVisitor.visitUnion(this, p10);
        }

        public Iterable<? extends Type> getAlternativeTypes() {
            return this.alternatives_field;
        }

        @Override
        public java.util.List<? extends TypeMirror> getAlternatives() {
            return Collections.unmodifiableList(this.alternatives_field);
        }

        @Override
        public TypeKind getKind() {
            return TypeKind.UNION;
        }

        public Type getLub() {
            return this.tsym.type;
        }

        @Override
        public boolean isCompound() {
            return getLub().isCompound();
        }

        @Override
        public boolean isUnion() {
            return true;
        }

        @Override
        public UnionClassType cloneWithMetadata(TypeMetadata typeMetadata) {
            throw new AssertionError((Object) "Cannot add metadata to a union type");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r1 = r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean contains(List<Type> list, Type type) {
        for (List<Type> list2 = list; list2.tail != null; list2 = list2.tail) {
            if (list2.head.contains(type)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r1 = r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean isErroneous(List<Type> list) {
        for (List<Type> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            if (list2.head.isErroneous()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public <R, P> R accept(TypeVisitor<R, P> typeVisitor, P p10) {
        throw new AssertionError();
    }

    @Override
    public List<Attribute.TypeCompound> getAnnotationMirrors() {
        TypeMetadata.Annotations annotations = (TypeMetadata.Annotations) getMetadataOfKind(TypeMetadata.Entry.Kind.ANNOTATIONS);
        return annotations == null ? List.nil() : annotations.getAnnotations();
    }

    public <Z> Type map(Types.TypeMapping<Z> typeMapping) {
        return typeMapping.visit(this, (Type) null);
    }

    public static boolean containsAny(List<Type> list, List<Type> list2) {
        Iterator<Type> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().containsAny(list2)) {
                return true;
            }
        }
        return false;
    }

    public void appendAnnotationsString(StringBuilder sb2) {
        appendAnnotationsString(sb2, false);
    }

    public static String toString(List<Type> list) {
        if (list.isEmpty()) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(list.head.toString());
        List<Type> list2 = list;
        while (true) {
            List<Type> list3 = list2.tail;
            if (list3.nonEmpty()) {
                sb2.append(DocLint.SEPARATOR);
                sb2.append(list3.head.toString());
                list2 = list3;
            } else {
                return sb2.toString();
            }
        }
    }
}
