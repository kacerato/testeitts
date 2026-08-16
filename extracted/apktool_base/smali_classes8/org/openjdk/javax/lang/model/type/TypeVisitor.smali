.class public interface abstract Lorg/openjdk/javax/lang/model/type/TypeVisitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public visit(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/TypeMirror;",
            ")TR;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, p1, v0}, Lorg/openjdk/javax/lang/model/type/TypeVisitor;->visit(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract visit(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/TypeMirror;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitArray(Lorg/openjdk/javax/lang/model/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/ArrayType;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitDeclared(Lorg/openjdk/javax/lang/model/type/DeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/DeclaredType;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitError(Lorg/openjdk/javax/lang/model/type/ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/ErrorType;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitExecutable(Lorg/openjdk/javax/lang/model/type/ExecutableType;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/ExecutableType;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitIntersection(Lorg/openjdk/javax/lang/model/type/IntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/IntersectionType;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitNoType(Lorg/openjdk/javax/lang/model/type/NoType;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/NoType;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitNull(Lorg/openjdk/javax/lang/model/type/NullType;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/NullType;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitPrimitive(Lorg/openjdk/javax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/PrimitiveType;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitTypeVariable(Lorg/openjdk/javax/lang/model/type/TypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/TypeVariable;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitUnion(Lorg/openjdk/javax/lang/model/type/UnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/UnionType;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitUnknown(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/TypeMirror;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitWildcard(Lorg/openjdk/javax/lang/model/type/WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/WildcardType;",
            "TP;)TR;"
        }
    .end annotation
.end method
