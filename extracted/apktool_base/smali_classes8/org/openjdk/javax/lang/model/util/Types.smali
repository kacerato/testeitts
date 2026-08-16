.class public interface abstract Lorg/openjdk/javax/lang/model/util/Types;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract asElement(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/element/Element;
.end method

.method public abstract asMemberOf(Lorg/openjdk/javax/lang/model/type/DeclaredType;Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/javax/lang/model/type/TypeMirror;
.end method

.method public abstract boxedClass(Lorg/openjdk/javax/lang/model/type/PrimitiveType;)Lorg/openjdk/javax/lang/model/element/TypeElement;
.end method

.method public abstract capture(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/TypeMirror;
.end method

.method public abstract contains(Lorg/openjdk/javax/lang/model/type/TypeMirror;Lorg/openjdk/javax/lang/model/type/TypeMirror;)Z
.end method

.method public abstract directSupertypes(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/TypeMirror;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/javax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation
.end method

.method public abstract erasure(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/TypeMirror;
.end method

.method public abstract getArrayType(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/ArrayType;
.end method

.method public varargs abstract getDeclaredType(Lorg/openjdk/javax/lang/model/element/TypeElement;[Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/DeclaredType;
.end method

.method public varargs abstract getDeclaredType(Lorg/openjdk/javax/lang/model/type/DeclaredType;Lorg/openjdk/javax/lang/model/element/TypeElement;[Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/DeclaredType;
.end method

.method public abstract getNoType(Lorg/openjdk/javax/lang/model/type/TypeKind;)Lorg/openjdk/javax/lang/model/type/NoType;
.end method

.method public abstract getNullType()Lorg/openjdk/javax/lang/model/type/NullType;
.end method

.method public abstract getPrimitiveType(Lorg/openjdk/javax/lang/model/type/TypeKind;)Lorg/openjdk/javax/lang/model/type/PrimitiveType;
.end method

.method public abstract getWildcardType(Lorg/openjdk/javax/lang/model/type/TypeMirror;Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/WildcardType;
.end method

.method public abstract isAssignable(Lorg/openjdk/javax/lang/model/type/TypeMirror;Lorg/openjdk/javax/lang/model/type/TypeMirror;)Z
.end method

.method public abstract isSameType(Lorg/openjdk/javax/lang/model/type/TypeMirror;Lorg/openjdk/javax/lang/model/type/TypeMirror;)Z
.end method

.method public abstract isSubsignature(Lorg/openjdk/javax/lang/model/type/ExecutableType;Lorg/openjdk/javax/lang/model/type/ExecutableType;)Z
.end method

.method public abstract isSubtype(Lorg/openjdk/javax/lang/model/type/TypeMirror;Lorg/openjdk/javax/lang/model/type/TypeMirror;)Z
.end method

.method public abstract unboxedType(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/PrimitiveType;
.end method
