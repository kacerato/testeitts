.class public Lorg/openjdk/tools/javac/code/Directive$OpensDirective;
.super Lorg/openjdk/tools/javac/code/Directive;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/lang/model/element/ModuleElement$OpensDirective;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Directive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpensDirective"
.end annotation


# instance fields
.field public final flags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Directive$OpensFlag;",
            ">;"
        }
    .end annotation
.end field

.field public final modules:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;"
        }
    .end annotation
.end field

.field public final packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/tools/javac/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-class v0, Lorg/openjdk/tools/javac/code/Directive$OpensFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/code/Directive$OpensDirective;-><init>(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/tools/javac/util/List;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/tools/javac/util/List;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Directive$OpensFlag;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Directive;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Directive$OpensDirective;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    .line 4
    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Directive$OpensDirective;->modules:Lorg/openjdk/tools/javac/util/List;

    .line 5
    iput-object p3, p0, Lorg/openjdk/tools/javac/code/Directive$OpensDirective;->flags:Ljava/util/Set;

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

    invoke-interface {p1, p0, p2}, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveVisitor;->visitOpens(Lorg/openjdk/javax/lang/model/element/ModuleElement$OpensDirective;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getKind()Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;
    .locals 1

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;->OPENS:Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

    return-object v0
.end method

.method public bridge synthetic getPackage()Lorg/openjdk/javax/lang/model/element/PackageElement;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Directive$OpensDirective;->getPackage()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Directive$OpensDirective;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    return-object v0
.end method

.method public getTargetModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Directive$OpensDirective;->modules:Lorg/openjdk/tools/javac/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Directive$OpensDirective;->modules:Lorg/openjdk/tools/javac/util/List;

    const-string v1, "]"

    const-string v2, "Opens["

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Directive$OpensDirective;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Directive$OpensDirective;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Directive$OpensDirective;->modules:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
