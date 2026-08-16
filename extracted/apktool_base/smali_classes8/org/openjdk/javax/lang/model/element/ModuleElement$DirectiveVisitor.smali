.class public interface abstract Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveVisitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/javax/lang/model/element/ModuleElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DirectiveVisitor"
.end annotation

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
.method public visit(Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;",
            ")TR;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, p0, v0}, Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;->accept(Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;",
            "TP;)TR;"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p0, p2}, Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;->accept(Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract visitExports(Lorg/openjdk/javax/lang/model/element/ModuleElement$ExportsDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement$ExportsDirective;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitOpens(Lorg/openjdk/javax/lang/model/element/ModuleElement$OpensDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement$OpensDirective;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitProvides(Lorg/openjdk/javax/lang/model/element/ModuleElement$ProvidesDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement$ProvidesDirective;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitRequires(Lorg/openjdk/javax/lang/model/element/ModuleElement$RequiresDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement$RequiresDirective;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public visitUnknown(Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;",
            "TP;)TR;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/javax/lang/model/element/UnknownDirectiveException;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/javax/lang/model/element/UnknownDirectiveException;-><init>(Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;Ljava/lang/Object;)V

    throw v0
.end method

.method public abstract visitUses(Lorg/openjdk/javax/lang/model/element/ModuleElement$UsesDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement$UsesDirective;",
            "TP;)TR;"
        }
    .end annotation
.end method
