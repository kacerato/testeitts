.class public Lorg/openjdk/tools/javac/code/Scope$CompoundScope;
.super Lorg/openjdk/tools/javac/code/Scope;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Scope$ScopeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompoundScope"
.end annotation


# instance fields
.field private mark:I

.field subScopes:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/Scope;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->subScopes:Lorg/openjdk/tools/javac/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->mark:I

    return-void
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;Lorg/openjdk/tools/javac/code/Scope;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->lambda$null$0(Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;Lorg/openjdk/tools/javac/code/Scope;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/code/Scope$CompoundScope;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/util/Iterator;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->lambda$getSymbols$1(Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;Lorg/openjdk/tools/javac/code/Scope;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->lambda$null$2(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;Lorg/openjdk/tools/javac/code/Scope;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/openjdk/tools/javac/code/Scope$CompoundScope;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/util/Iterator;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->lambda$getSymbolsByName$3(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getSymbols$1(Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->subScopes:Lorg/openjdk/tools/javac/util/List;

    new-instance v1, Lorg/openjdk/tools/javac/code/f;

    invoke-direct {v1, p1, p2}, Lorg/openjdk/tools/javac/code/f;-><init>(Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)V

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/Iterators;->createCompoundIterator(Ljava/lang/Iterable;Ljava/util/function/Function;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$getSymbolsByName$3(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->subScopes:Lorg/openjdk/tools/javac/util/List;

    new-instance v1, Lorg/openjdk/tools/javac/code/h;

    invoke-direct {v1, p1, p2, p3}, Lorg/openjdk/tools/javac/code/h;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)V

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/Iterators;->createCompoundIterator(Ljava/lang/Iterable;Ljava/util/function/Function;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$null$0(Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;Lorg/openjdk/tools/javac/code/Scope;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p2, p0, p1}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols(Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$null$2(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;Lorg/openjdk/tools/javac/code/Scope;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p3, p0, p1, p2}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getMark()I
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->mark:I

    return v0
.end method

.method public getOrigin(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->subScopes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Scope;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/code/Scope;->includes(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/code/Scope;->getOrigin(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSymbols(Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Scope$LookupKind;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/code/g;

    invoke-direct {v0, p0, p1, p2}, Lorg/openjdk/tools/javac/code/g;-><init>(Lorg/openjdk/tools/javac/code/Scope$CompoundScope;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)V

    return-object v0
.end method

.method public getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Scope$LookupKind;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/code/i;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/openjdk/tools/javac/code/i;-><init>(Lorg/openjdk/tools/javac/code/Scope$CompoundScope;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)V

    return-object v0
.end method

.method public isStaticallyImported(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->subScopes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Scope;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/code/Scope;->includes(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/code/Scope;->isStaticallyImported(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public prependSubScope(Lorg/openjdk/tools/javac/code/Scope;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->subScopes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->subScopes:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Scope;->listeners:Lorg/openjdk/tools/javac/code/Scope$ScopeListenerList;

    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/code/Scope$ScopeListenerList;->add(Lorg/openjdk/tools/javac/code/Scope$ScopeListener;)V

    iget p1, p0, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->mark:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->mark:I

    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Scope;->listeners:Lorg/openjdk/tools/javac/code/Scope$ScopeListenerList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/code/Scope$ScopeListenerList;->symbolAdded(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope;)V

    :cond_0
    return-void
.end method

.method public symbolAdded(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope;)V
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->mark:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->mark:I

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope;->listeners:Lorg/openjdk/tools/javac/code/Scope$ScopeListenerList;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Scope$ScopeListenerList;->symbolAdded(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope;)V

    return-void
.end method

.method public symbolRemoved(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope;)V
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->mark:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->mark:I

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope;->listeners:Lorg/openjdk/tools/javac/code/Scope$ScopeListenerList;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Scope$ScopeListenerList;->symbolRemoved(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CompoundScope{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->subScopes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ""

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Scope;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    goto :goto_0

    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
