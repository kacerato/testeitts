.class public Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;
.super Lorg/openjdk/tools/javac/code/Directive;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/lang/model/element/ModuleElement$ProvidesDirective;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Directive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProvidesDirective"
.end annotation


# instance fields
.field public final impls:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation
.end field

.field public final service:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Directive;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;->service:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;->impls:Lorg/openjdk/tools/javac/util/List;

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

    invoke-interface {p1, p0, p2}, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveVisitor;->visitProvides(Lorg/openjdk/javax/lang/model/element/ModuleElement$ProvidesDirective;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;->service:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;->service:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;->impls:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;->impls:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public bridge synthetic getImplementations()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;->getImplementations()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getImplementations()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;->impls:Lorg/openjdk/tools/javac/util/List;

    return-object v0
.end method

.method public getKind()Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;
    .locals 1

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;->PROVIDES:Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

    return-object v0
.end method

.method public bridge synthetic getService()Lorg/openjdk/javax/lang/model/element/TypeElement;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;->getService()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    return-object v0
.end method

.method public getService()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;->service:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;->service:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;->impls:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provides["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;->service:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;->impls:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
