.class public interface abstract Lorg/openjdk/source/tree/Scope;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getEnclosingClass()Lorg/openjdk/javax/lang/model/element/TypeElement;
.end method

.method public abstract getEnclosingMethod()Lorg/openjdk/javax/lang/model/element/ExecutableElement;
.end method

.method public abstract getEnclosingScope()Lorg/openjdk/source/tree/Scope;
.end method

.method public abstract getLocalElements()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;"
        }
    .end annotation
.end method
