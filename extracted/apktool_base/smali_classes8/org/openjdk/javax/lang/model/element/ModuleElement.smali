.class public interface abstract Lorg/openjdk/javax/lang/model/element/ModuleElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/lang/model/element/Element;
.implements Lorg/openjdk/javax/lang/model/element/QualifiedNameable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/javax/lang/model/element/ModuleElement$UsesDirective;,
        Lorg/openjdk/javax/lang/model/element/ModuleElement$ProvidesDirective;,
        Lorg/openjdk/javax/lang/model/element/ModuleElement$OpensDirective;,
        Lorg/openjdk/javax/lang/model/element/ModuleElement$ExportsDirective;,
        Lorg/openjdk/javax/lang/model/element/ModuleElement$RequiresDirective;,
        Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveVisitor;,
        Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;,
        Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;
    }
.end annotation


# virtual methods
.method public abstract getDirectives()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;",
            ">;"
        }
    .end annotation
.end method

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

.method public abstract isOpen()Z
.end method

.method public abstract isUnnamed()Z
.end method
