.class public interface abstract Lorg/openjdk/javax/lang/model/element/TypeParameterElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/lang/model/element/Element;


# virtual methods
.method public abstract getBounds()Ljava/util/List;
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

.method public abstract getEnclosingElement()Lorg/openjdk/javax/lang/model/element/Element;
.end method

.method public abstract getGenericElement()Lorg/openjdk/javax/lang/model/element/Element;
.end method
