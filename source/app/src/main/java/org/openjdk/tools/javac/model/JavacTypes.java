package org.openjdk.tools.javac.model;

import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.element.ElementKind;
import org.openjdk.javax.lang.model.element.Modifier;
import org.openjdk.javax.lang.model.element.TypeElement;
import org.openjdk.javax.lang.model.type.ArrayType;
import org.openjdk.javax.lang.model.type.DeclaredType;
import org.openjdk.javax.lang.model.type.ExecutableType;
import org.openjdk.javax.lang.model.type.NoType;
import org.openjdk.javax.lang.model.type.NullType;
import org.openjdk.javax.lang.model.type.PrimitiveType;
import org.openjdk.javax.lang.model.type.ReferenceType;
import org.openjdk.javax.lang.model.type.TypeKind;
import org.openjdk.javax.lang.model.type.TypeMirror;
import org.openjdk.javax.lang.model.type.WildcardType;
import org.openjdk.javax.lang.model.util.Types;
import org.openjdk.tools.javac.code.BoundKind;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.ListBuffer;

public class JavacTypes implements Types {
    private static final Set<TypeKind> EXEC_OR_PKG_OR_MOD = EnumSet.of(TypeKind.EXECUTABLE, TypeKind.PACKAGE, TypeKind.MODULE);
    private final Symtab syms;
    private final org.openjdk.tools.javac.code.Types types;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$javax$lang$model$type$TypeKind;

        static {
            int[] iArr = new int[TypeKind.values().length];
            $SwitchMap$javax$lang$model$type$TypeKind = iArr;
            try {
                iArr[TypeKind.DECLARED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.INTERSECTION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.TYPEVAR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.BYTE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.SHORT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.INT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.LONG.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.CHAR.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.FLOAT.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.DOUBLE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.VOID.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.NONE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.EXECUTABLE.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.WILDCARD.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.PACKAGE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.MODULE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.ARRAY.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
        }
    }

    public JavacTypes(Context context) {
        context.put((Class<Class>) JavacTypes.class, (Class) this);
        this.syms = Symtab.instance(context);
        this.types = org.openjdk.tools.javac.code.Types.instance(context);
    }

    private static <T> T cast(Class<T> cls, Object obj) {
        if (cls.isInstance(obj)) {
            return cls.cast(obj);
        }
        throw new IllegalArgumentException(obj.toString());
    }

    private DeclaredType getDeclaredType0(Type type, Symbol.ClassSymbol classSymbol, TypeMirror... typeMirrorArr) {
        if (typeMirrorArr.length != classSymbol.type.getTypeArguments().length()) {
            throw new IllegalArgumentException("Incorrect number of type arguments");
        }
        ListBuffer listBuffer = new ListBuffer();
        for (TypeMirror typeMirror : typeMirrorArr) {
            if (!(typeMirror instanceof ReferenceType) && !(typeMirror instanceof WildcardType)) {
                throw new IllegalArgumentException(typeMirror.toString());
            }
            listBuffer.append((Type) typeMirror);
        }
        return new Type.ClassType(type, listBuffer.toList(), classSymbol);
    }

    public static JavacTypes instance(Context context) {
        JavacTypes javacTypes = (JavacTypes) context.get(JavacTypes.class);
        return javacTypes == null ? new JavacTypes(context) : javacTypes;
    }

    private void validateTypeNotIn(TypeMirror typeMirror, Set<TypeKind> set) {
        if (set.contains(typeMirror.getKind())) {
            throw new IllegalArgumentException(typeMirror.toString());
        }
    }

    @Override
    public Element asElement(TypeMirror typeMirror) {
        int i10 = AnonymousClass1.$SwitchMap$javax$lang$model$type$TypeKind[typeMirror.getKind().ordinal()];
        if (i10 == 1 || i10 == 2 || i10 == 3 || i10 == 4) {
            return ((Type) cast(Type.class, typeMirror)).asElement();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public TypeMirror asMemberOf(DeclaredType declaredType, Element element) {
        Type type = (Type) declaredType;
        Symbol symbol = (Symbol) element;
        if (this.types.asSuper(type, symbol.getEnclosingElement()) != null) {
            return this.types.memberType(type, symbol);
        }
        throw new IllegalArgumentException(((Object) symbol) + "@" + ((Object) type));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public TypeElement boxedClass(PrimitiveType primitiveType) {
        return this.types.boxedClass((Type) primitiveType);
    }

    @Override
    public TypeMirror capture(TypeMirror typeMirror) {
        validateTypeNotIn(typeMirror, EXEC_OR_PKG_OR_MOD);
        return this.types.capture((Type) typeMirror).stripMetadataIfNeeded();
    }

    @Override
    public boolean contains(TypeMirror typeMirror, TypeMirror typeMirror2) {
        Set<TypeKind> set = EXEC_OR_PKG_OR_MOD;
        validateTypeNotIn(typeMirror, set);
        validateTypeNotIn(typeMirror2, set);
        return this.types.containsType((Type) typeMirror, (Type) typeMirror2);
    }

    @Override
    public List<Type> directSupertypes(TypeMirror typeMirror) {
        validateTypeNotIn(typeMirror, EXEC_OR_PKG_OR_MOD);
        return (List) this.types.directSupertypes((Type) typeMirror).stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((Type) obj).stripMetadataIfNeeded();
            }
        }).collect(Collectors.toList());
    }

    @Override
    public TypeMirror erasure(TypeMirror typeMirror) {
        TypeKind kind = typeMirror.getKind();
        if (kind == TypeKind.PACKAGE || kind == TypeKind.MODULE) {
            throw new IllegalArgumentException(typeMirror.toString());
        }
        return this.types.erasure((Type) typeMirror).stripMetadataIfNeeded();
    }

    @Override
    public ArrayType getArrayType(TypeMirror typeMirror) {
        switch (AnonymousClass1.$SwitchMap$javax$lang$model$type$TypeKind[typeMirror.getKind().ordinal()]) {
            case 13:
            case 15:
            case 16:
            case 17:
            case 18:
                throw new IllegalArgumentException(typeMirror.toString());
            case 14:
            default:
                return new Type.ArrayType((Type) typeMirror, this.syms.arrayClass);
        }
    }

    @Override
    public DeclaredType getDeclaredType(TypeElement typeElement, TypeMirror... typeMirrorArr) {
        Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) typeElement;
        if (typeMirrorArr.length == 0) {
            return (DeclaredType) classSymbol.erasure(this.types);
        }
        if (!classSymbol.type.getEnclosingType().isParameterized()) {
            return getDeclaredType0(classSymbol.type.getEnclosingType(), classSymbol, typeMirrorArr);
        }
        throw new IllegalArgumentException(classSymbol.toString());
    }

    @Override
    public NoType getNoType(TypeKind typeKind) {
        int i10 = AnonymousClass1.$SwitchMap$javax$lang$model$type$TypeKind[typeKind.ordinal()];
        if (i10 == 13) {
            return this.syms.voidType;
        }
        if (i10 == 14) {
            return Type.noType;
        }
        throw new IllegalArgumentException(typeKind.toString());
    }

    @Override
    public NullType getNullType() {
        return (NullType) this.syms.botType;
    }

    public Set<Symbol.MethodSymbol> getOverriddenMethods(Element element) {
        if (element.getKind() != ElementKind.METHOD || element.getModifiers().contains(Modifier.STATIC) || element.getModifiers().contains(Modifier.PRIVATE)) {
            return Collections.emptySet();
        }
        if (!(element instanceof Symbol.MethodSymbol)) {
            throw new IllegalArgumentException();
        }
        Symbol.MethodSymbol methodSymbol = (Symbol.MethodSymbol) element;
        Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) methodSymbol.owner;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<Type> it = this.types.closure(classSymbol.type).iterator();
        while (it.hasNext()) {
            Type next = it.next();
            if (next != classSymbol.type) {
                for (Symbol symbol : ((Symbol.ClassSymbol) next.tsym).members().getSymbolsByName(methodSymbol.name)) {
                    if (symbol.kind == Kinds.Kind.MTH && methodSymbol.overrides(symbol, classSymbol, this.types, true)) {
                        linkedHashSet.add((Symbol.MethodSymbol) symbol);
                    }
                }
            }
        }
        return linkedHashSet;
    }

    @Override
    public PrimitiveType getPrimitiveType(TypeKind typeKind) {
        switch (AnonymousClass1.$SwitchMap$javax$lang$model$type$TypeKind[typeKind.ordinal()]) {
            case 5:
                return this.syms.booleanType;
            case 6:
                return this.syms.byteType;
            case 7:
                return this.syms.shortType;
            case 8:
                return this.syms.intType;
            case 9:
                return this.syms.longType;
            case 10:
                return this.syms.charType;
            case 11:
                return this.syms.floatType;
            case 12:
                return this.syms.doubleType;
            default:
                throw new IllegalArgumentException("Not a primitive type: " + ((Object) typeKind));
        }
    }

    @Override
    public WildcardType getWildcardType(TypeMirror typeMirror, TypeMirror typeMirror2) {
        BoundKind boundKind;
        Type type;
        if (typeMirror == null && typeMirror2 == null) {
            boundKind = BoundKind.UNBOUND;
            type = this.syms.objectType;
        } else if (typeMirror2 == null) {
            type = (Type) typeMirror;
            boundKind = BoundKind.EXTENDS;
        } else {
            if (typeMirror != null) {
                throw new IllegalArgumentException("Extends and super bounds cannot both be provided");
            }
            boundKind = BoundKind.SUPER;
            type = (Type) typeMirror2;
        }
        int i10 = AnonymousClass1.$SwitchMap$javax$lang$model$type$TypeKind[type.getKind().ordinal()];
        if (i10 == 1 || i10 == 19 || i10 == 3 || i10 == 4) {
            return new Type.WildcardType(type, boundKind, this.syms.boundClass);
        }
        throw new IllegalArgumentException(type.toString());
    }

    @Override
    public boolean isAssignable(TypeMirror typeMirror, TypeMirror typeMirror2) {
        Set<TypeKind> set = EXEC_OR_PKG_OR_MOD;
        validateTypeNotIn(typeMirror, set);
        validateTypeNotIn(typeMirror2, set);
        return this.types.isAssignable((Type) typeMirror, (Type) typeMirror2);
    }

    @Override
    public boolean isSameType(TypeMirror typeMirror, TypeMirror typeMirror2) {
        TypeKind kind = typeMirror.getKind();
        TypeKind typeKind = TypeKind.WILDCARD;
        if (kind == typeKind || typeMirror2.getKind() == typeKind) {
            return false;
        }
        return this.types.isSameType((Type) typeMirror, (Type) typeMirror2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean isSubsignature(ExecutableType executableType, ExecutableType executableType2) {
        return this.types.isSubSignature((Type) executableType, (Type) executableType2);
    }

    @Override
    public boolean isSubtype(TypeMirror typeMirror, TypeMirror typeMirror2) {
        Set<TypeKind> set = EXEC_OR_PKG_OR_MOD;
        validateTypeNotIn(typeMirror, set);
        validateTypeNotIn(typeMirror2, set);
        return this.types.isSubtype((Type) typeMirror, (Type) typeMirror2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public PrimitiveType unboxedType(TypeMirror typeMirror) {
        if (typeMirror.getKind() != TypeKind.DECLARED) {
            throw new IllegalArgumentException(typeMirror.toString());
        }
        Type unboxedType = this.types.unboxedType((Type) typeMirror);
        if (unboxedType.isPrimitive()) {
            return (PrimitiveType) unboxedType;
        }
        throw new IllegalArgumentException(typeMirror.toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public DeclaredType getDeclaredType(DeclaredType declaredType, TypeElement typeElement, TypeMirror... typeMirrorArr) {
        if (declaredType == 0) {
            return getDeclaredType(typeElement, typeMirrorArr);
        }
        Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) typeElement;
        Type type = (Type) declaredType;
        if (type.tsym == classSymbol.owner.enclClass()) {
            if (!type.isParameterized()) {
                return getDeclaredType(typeElement, typeMirrorArr);
            }
            return getDeclaredType0(type, classSymbol, typeMirrorArr);
        }
        throw new IllegalArgumentException(declaredType.toString());
    }
}
