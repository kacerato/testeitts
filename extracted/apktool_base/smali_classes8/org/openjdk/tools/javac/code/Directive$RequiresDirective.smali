.class public Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;
.super Lorg/openjdk/tools/javac/code/Directive;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/lang/model/element/ModuleElement$RequiresDirective;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Directive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequiresDirective"
.end annotation


# instance fields
.field public final flags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;",
            ">;"
        }
    .end annotation
.end field

.field public final module:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V
    .locals 1

    .line 1
    const-class v0, Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;-><init>(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Directive;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->module:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    .line 4
    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->flags:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public accept(Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
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

    invoke-interface {p1, p0, p2}, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveVisitor;->visitRequires(Lorg/openjdk/javax/lang/model/element/ModuleElement$RequiresDirective;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDependency()Lorg/openjdk/javax/lang/model/element/ModuleElement;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->getDependency()Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v0

    return-object v0
.end method

.method public getDependency()Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->module:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    return-object v0
.end method

.method public getKind()Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;
    .locals 1

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;->REQUIRES:Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

    return-object v0
.end method

.method public isStatic()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->flags:Ljava/util/Set;

    sget-object v1, Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;->STATIC_PHASE:Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTransitive()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->flags:Ljava/util/Set;

    sget-object v1, Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;->TRANSITIVE:Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requires["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->flags:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->module:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
