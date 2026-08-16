.class public Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;
.super Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/lang/model/element/ModuleElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModuleSymbol"
.end annotation


# instance fields
.field public classLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

.field public directives:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Directive;",
            ">;"
        }
    .end annotation
.end field

.field public enclosedPackages:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field public exports:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;",
            ">;"
        }
    .end annotation
.end field

.field public final flags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;",
            ">;"
        }
    .end annotation
.end field

.field public module_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

.field public opens:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Directive$OpensDirective;",
            ">;"
        }
    .end annotation
.end field

.field public patchLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

.field public patchOutputLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

.field public provides:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;",
            ">;"
        }
    .end annotation
.end field

.field public readModules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;"
        }
    .end annotation
.end field

.field public requires:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;",
            ">;"
        }
    .end annotation
.end field

.field public final resolutionFlags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;",
            ">;"
        }
    .end annotation
.end field

.field public sourceLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

.field public unnamedPackage:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

.field public uses:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Directive$UsesDirective;",
            ">;"
        }
    .end annotation
.end field

.field public usesProvidesCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

.field public version:Lorg/openjdk/tools/javac/util/Name;

.field public visiblePackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 7

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MDL:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;-><init>(Lorg/openjdk/tools/javac/code/Kinds$Kind;JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->enclosedPackages:Lorg/openjdk/tools/javac/util/List;

    sget-object p2, Lorg/openjdk/tools/javac/code/Symbol$Completer;->NULL_COMPLETER:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->usesProvidesCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    const-class p2, Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->flags:Ljava/util/Set;

    const-class p2, Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->resolutionFlags:Ljava/util/Set;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lorg/openjdk/tools/javac/code/Type$ModuleType;

    invoke-direct {p1, p0}, Lorg/openjdk/tools/javac/code/Type$ModuleType;-><init>(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->lambda$getEnclosedElements$0(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p0

    return p0
.end method

.method public static create(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)V

    new-instance p0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    const-wide/high16 v1, 0x8000000000000L

    invoke-direct {p0, v1, v2, p1, v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;->formFullName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {p0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->create(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iput-object p0, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->module_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    return-object v0
.end method

.method private static synthetic lambda$getEnclosedElements$0(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 1

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
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

    invoke-interface {p1, p0, p2}, Lorg/openjdk/javax/lang/model/element/ElementVisitor;->visitModule(Lorg/openjdk/javax/lang/model/element/ModuleElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public completeUsesProvides()V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->usesProvidesCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    sget-object v1, Lorg/openjdk/tools/javac/code/Symbol$Completer;->NULL_COMPLETER:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->usesProvidesCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    invoke-interface {v0, p0}, Lorg/openjdk/tools/javac/code/Symbol$Completer;->complete(Lorg/openjdk/tools/javac/code/Symbol;)V

    :cond_0
    return-void
.end method

.method public getDirectives()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->completeUsesProvides()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->directives:Lorg/openjdk/tools/javac/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEnclosedElements()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->getEnclosedElements()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosedElements()Lorg/openjdk/tools/javac/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->enclosedPackages:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol;

    .line 4
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v3

    new-instance v4, Lorg/openjdk/tools/javac/code/s;

    invoke-direct {v4}, Lorg/openjdk/tools/javac/code/s;-><init>()V

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/code/Scope;->anyMatch(Lorg/openjdk/tools/javac/util/Filter;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;
    .locals 1

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->MODULE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    return-object v0
.end method

.method public bridge synthetic getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Symbol;->getQualifiedName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->getSimpleName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public getSimpleName()Lorg/openjdk/tools/javac/util/Name;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol;->getQualifiedName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    const/16 v1, 0x2e

    .line 3
    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Name;->lastIndexOf(B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 4
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Name;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/util/Name;->subName(II)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public isDeprecated()Z
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol;->hasDeprecatedAnnotation()Z

    move-result v0

    return v0
.end method

.method public isNoModule()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOpen()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->flags:Ljava/util/Set;

    sget-object v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;->OPEN:Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUnnamed()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Name;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public outermostClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->directives:Lorg/openjdk/tools/javac/util/List;

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->exports:Lorg/openjdk/tools/javac/util/List;

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->provides:Lorg/openjdk/tools/javac/util/List;

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->uses:Lorg/openjdk/tools/javac/util/List;

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->visiblePackages:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    if-nez v0, :cond_0

    const-string v0, "<unknown>"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Name;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "<unnamed>"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
