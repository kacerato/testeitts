.class public interface abstract Lorg/openjdk/javax/lang/model/type/DeclaredType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/lang/model/type/ReferenceType;


# virtual methods
.method public abstract asElement()Lorg/openjdk/javax/lang/model/element/Element;
.end method

.method public abstract getEnclosingType()Lorg/openjdk/javax/lang/model/type/TypeMirror;
.end method

.method public abstract getTypeArguments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/javax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation
.end method
