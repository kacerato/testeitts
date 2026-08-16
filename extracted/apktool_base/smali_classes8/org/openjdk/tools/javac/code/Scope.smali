.class public abstract Lorg/openjdk/tools/javac/code/Scope;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/code/Scope$ErrorScope;,
        Lorg/openjdk/tools/javac/code/Scope$CompoundScope;,
        Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;,
        Lorg/openjdk/tools/javac/code/Scope$ImportFilter;,
        Lorg/openjdk/tools/javac/code/Scope$StarImportScope;,
        Lorg/openjdk/tools/javac/code/Scope$NamedImportScope;,
        Lorg/openjdk/tools/javac/code/Scope$ImportScope;,
        Lorg/openjdk/tools/javac/code/Scope$Entry;,
        Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;,
        Lorg/openjdk/tools/javac/code/Scope$WriteableScope;,
        Lorg/openjdk/tools/javac/code/Scope$LookupKind;,
        Lorg/openjdk/tools/javac/code/Scope$ScopeListenerList;,
        Lorg/openjdk/tools/javac/code/Scope$ScopeListener;
    }
.end annotation


# static fields
.field private static final noFilter:Lorg/openjdk/tools/javac/util/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field listeners:Lorg/openjdk/tools/javac/code/Scope$ScopeListenerList;

.field public final owner:Lorg/openjdk/tools/javac/code/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/openjdk/tools/javac/code/Scope$ScopeListenerList;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/code/Scope$ScopeListenerList;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Scope;->listeners:Lorg/openjdk/tools/javac/code/Scope$ScopeListenerList;

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/code/Scope;->lambda$includes$0(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100()Lorg/openjdk/tools/javac/util/Filter;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Scope;->noFilter:Lorg/openjdk/tools/javac/util/Filter;

    return-object v0
.end method

.method private static synthetic lambda$includes$0(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public anyMatch(Lorg/openjdk/tools/javac/util/Filter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->NON_RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols(Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    return p1
.end method

.method public final findFirst(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 1

    .line 1
    sget-object v0, Lorg/openjdk/tools/javac/code/Scope;->noFilter:Lorg/openjdk/tools/javac/util/Filter;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/code/Scope;->findFirst(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public findFirst(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public abstract getOrigin(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope;
.end method

.method public final getSymbols()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/openjdk/tools/javac/code/Scope;->noFilter:Lorg/openjdk/tools/javac/util/Filter;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols(Lorg/openjdk/tools/javac/util/Filter;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public final getSymbols(Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Scope$LookupKind;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    .line 3
    sget-object v0, Lorg/openjdk/tools/javac/code/Scope;->noFilter:Lorg/openjdk/tools/javac/util/Filter;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols(Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public final getSymbols(Lorg/openjdk/tools/javac/util/Filter;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;)",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols(Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public abstract getSymbols(Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;
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
.end method

.method public final getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public final getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Scope$LookupKind;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    .line 3
    sget-object v0, Lorg/openjdk/tools/javac/code/Scope;->noFilter:Lorg/openjdk/tools/javac/util/Filter;

    invoke-virtual {p0, p1, v0, p2}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public final getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;)",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public abstract getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;
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
.end method

.method public includes(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 1

    .line 1
    sget-object v0, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/code/Scope;->includes(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Z

    move-result p1

    return p1
.end method

.method public includes(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Z
    .locals 2

    .line 2
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    new-instance v1, Lorg/openjdk/tools/javac/code/e;

    invoke-direct {v1, p1}, Lorg/openjdk/tools/javac/code/e;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {p0, v0, v1, p2}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->NON_RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols(Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract isStaticallyImported(Lorg/openjdk/tools/javac/code/Symbol;)Z
.end method
