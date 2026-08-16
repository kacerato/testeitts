.class public interface abstract Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/javax/lang/model/element/ModuleElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Directive"
.end annotation


# virtual methods
.method public abstract accept(Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveVisitor<",
            "TR;TP;>;TP;)TR;"
        }
    .end annotation
.end method

.method public abstract getKind()Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;
.end method
