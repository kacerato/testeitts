.class public interface abstract Lorg/openjdk/javax/lang/model/element/PackageElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/lang/model/element/Element;
.implements Lorg/openjdk/javax/lang/model/element/QualifiedNameable;


# virtual methods
.method public abstract getEnclosedElements()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEnclosingElement()Lorg/openjdk/javax/lang/model/element/Element;
.end method

.method public abstract getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;
.end method

.method public abstract getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;
.end method

.method public abstract isUnnamed()Z
.end method
