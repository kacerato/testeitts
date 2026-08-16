.class public Lorg/openjdk/tools/javac/code/Scope$ErrorScope;
.super Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorScope"
.end annotation


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;Lorg/openjdk/tools/javac/code/Symbol;[Lorg/openjdk/tools/javac/code/Scope$Entry;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;-><init>(Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;Lorg/openjdk/tools/javac/code/Symbol;[Lorg/openjdk/tools/javac/code/Scope$Entry;Lorg/openjdk/tools/javac/code/Scope$1;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic anyMatch(Lorg/openjdk/tools/javac/util/Filter;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->anyMatch(Lorg/openjdk/tools/javac/util/Filter;)Z

    move-result p1

    return p1
.end method

.method public dup(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/code/Scope$ErrorScope;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->table:[Lorg/openjdk/tools/javac/code/Scope$Entry;

    invoke-direct {v0, p0, p1, v1}, Lorg/openjdk/tools/javac/code/Scope$ErrorScope;-><init>(Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;Lorg/openjdk/tools/javac/code/Symbol;[Lorg/openjdk/tools/javac/code/Scope$Entry;)V

    return-object v0
.end method

.method public dupUnshared(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/code/Scope$ErrorScope;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->table:[Lorg/openjdk/tools/javac/code/Scope$Entry;

    invoke-virtual {v1}, [Lorg/openjdk/tools/javac/code/Scope$Entry;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/openjdk/tools/javac/code/Scope$Entry;

    invoke-direct {v0, p0, p1, v1}, Lorg/openjdk/tools/javac/code/Scope$ErrorScope;-><init>(Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;Lorg/openjdk/tools/javac/code/Symbol;[Lorg/openjdk/tools/javac/code/Scope$Entry;)V

    return-object v0
.end method

.method public bridge synthetic enter(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method

.method public bridge synthetic enterIfAbsent(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->enterIfAbsent(Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method

.method public bridge synthetic findFirst(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->findFirst(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getOrigin(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope;
    .locals 0

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->getOrigin(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSymbols(Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->getSymbols(Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic includes(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->includes(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isStaticallyImported(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->isStaticallyImported(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Scope$Entry;
    .locals 2

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->lookup(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Scope$Entry;

    move-result-object p1

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Scope$Entry;->scope:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    if-nez v0, :cond_0

    new-instance p1, Lorg/openjdk/tools/javac/code/Scope$Entry;

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1, v1}, Lorg/openjdk/tools/javac/code/Scope$Entry;-><init>(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope$Entry;Lorg/openjdk/tools/javac/code/Scope$Entry;Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;)V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic remove(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->remove(Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
