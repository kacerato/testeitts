.class public Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;
.super Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/lang/model/element/PackageElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageSymbol"
.end annotation


# instance fields
.field public fullname:Lorg/openjdk/tools/javac/util/Name;

.field public members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

.field public modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

.field public package_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

.field public sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0, p2}, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    .line 5
    new-instance p1, Lorg/openjdk/tools/javac/code/Type$PackageType;

    invoke-direct {p1, p0}, Lorg/openjdk/tools/javac/code/Type$PackageType;-><init>(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 7

    .line 1
    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;-><init>(Lorg/openjdk/tools/javac/code/Kinds$Kind;JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    .line 3
    invoke-static {p1, p3}, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;->formFullName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    return-void
.end method

.method private mergeAttributes()V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->metadata:Lorg/openjdk/tools/javac/code/SymbolMetadata;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->package_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->metadata:Lorg/openjdk/tools/javac/code/SymbolMetadata;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/code/SymbolMetadata;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/code/SymbolMetadata;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->metadata:Lorg/openjdk/tools/javac/code/SymbolMetadata;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->package_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->metadata:Lorg/openjdk/tools/javac/code/SymbolMetadata;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/SymbolMetadata;->setAttributes(Lorg/openjdk/tools/javac/code/SymbolMetadata;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Lorg/openjdk/javax/lang/model/element/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/javax/lang/model/element/ElementVisitor<",
            "TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0, p2}, Lorg/openjdk/javax/lang/model/element/ElementVisitor;->visitPackage(Lorg/openjdk/javax/lang/model/element/PackageElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lorg/openjdk/tools/javac/code/Symbol$Visitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/tools/javac/code/Symbol$Visitor<",
            "TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p0, p2}, Lorg/openjdk/tools/javac/code/Symbol$Visitor;->visitPackageSymbol(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public exists()Z
    .locals 4

    iget-wide v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v2, 0x800000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public flags()J
    .locals 2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    iget-wide v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    return-wide v0
.end method

.method public bridge synthetic getEnclosingElement()Lorg/openjdk/javax/lang/model/element/Element;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->getEnclosingElement()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingElement()Lorg/openjdk/tools/javac/code/Symbol;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->isNoModule()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;
    .locals 1

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->PACKAGE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    return-object v0
.end method

.method public bridge synthetic getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->getQualifiedName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public getQualifiedName()Lorg/openjdk/tools/javac/util/Name;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    return-object v0
.end method

.method public getRawAttributes()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$Compound;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->package_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->complete()V

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->mergeAttributes()V

    :cond_0
    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Symbol;->getRawAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isUnnamed()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Name;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    return-object v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->metadata:Lorg/openjdk/tools/javac/code/SymbolMetadata;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
