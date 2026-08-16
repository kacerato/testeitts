.class Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;
.super Lorg/openjdk/tools/javac/code/Scope$WriteableScope;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScopeImpl"
.end annotation


# static fields
.field private static final INITIAL_SIZE:I = 0x10

.field private static final sentinel:Lorg/openjdk/tools/javac/code/Scope$Entry;


# instance fields
.field public elems:Lorg/openjdk/tools/javac/code/Scope$Entry;

.field hashMask:I

.field nelems:I

.field public next:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

.field removeCount:I

.field private shared:I

.field table:[Lorg/openjdk/tools/javac/code/Scope$Entry;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/code/Scope$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/openjdk/tools/javac/code/Scope$Entry;-><init>(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope$Entry;Lorg/openjdk/tools/javac/code/Scope$Entry;Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->sentinel:Lorg/openjdk/tools/javac/code/Scope$Entry;

    return-void
.end method

.method private constructor <init>(Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;Lorg/openjdk/tools/javac/code/Symbol;[Lorg/openjdk/tools/javac/code/Scope$Entry;)V
    .locals 1

    .line 2
    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->nelems:I

    .line 4
    iput v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->removeCount:I

    .line 5
    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->next:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    move v0, p1

    .line 6
    :cond_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    .line 7
    iput-object p3, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->table:[Lorg/openjdk/tools/javac/code/Scope$Entry;

    .line 8
    array-length p2, p3

    sub-int/2addr p2, p1

    iput p2, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->hashMask:I

    return-void
.end method

.method private constructor <init>(Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;Lorg/openjdk/tools/javac/code/Symbol;[Lorg/openjdk/tools/javac/code/Scope$Entry;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;-><init>(Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;Lorg/openjdk/tools/javac/code/Symbol;[Lorg/openjdk/tools/javac/code/Scope$Entry;)V

    .line 10
    iput p4, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->nelems:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;Lorg/openjdk/tools/javac/code/Symbol;[Lorg/openjdk/tools/javac/code/Scope$Entry;Lorg/openjdk/tools/javac/code/Scope$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;-><init>(Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;Lorg/openjdk/tools/javac/code/Symbol;[Lorg/openjdk/tools/javac/code/Scope$Entry;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 2

    const/16 v0, 0x10

    .line 11
    new-array v0, v0, [Lorg/openjdk/tools/javac/code/Scope$Entry;

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;-><init>(Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;Lorg/openjdk/tools/javac/code/Symbol;[Lorg/openjdk/tools/javac/code/Scope$Entry;)V

    return-void
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/util/Iterator;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->lambda$getSymbolsByName$2(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->lambda$remove$0(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;Lorg/openjdk/tools/javac/code/Scope$LookupKind;Lorg/openjdk/tools/javac/util/Filter;)Ljava/util/Iterator;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->lambda$getSymbols$1(Lorg/openjdk/tools/javac/code/Scope$LookupKind;Lorg/openjdk/tools/javac/util/Filter;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private dble()V
    .locals 7

    iget v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->shared:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->table:[Lorg/openjdk/tools/javac/code/Scope$Entry;

    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    new-array v4, v3, [Lorg/openjdk/tools/javac/code/Scope$Entry;

    move-object v5, p0

    :goto_1
    if-eqz v5, :cond_4

    iget-object v6, v5, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->table:[Lorg/openjdk/tools/javac/code/Scope$Entry;

    if-ne v6, v0, :cond_3

    if-eq v5, p0, :cond_2

    iget v6, v5, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->shared:I

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    move v6, v1

    goto :goto_3

    :cond_2
    :goto_2
    move v6, v2

    :goto_3
    invoke-static {v6}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iput-object v4, v5, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->table:[Lorg/openjdk/tools/javac/code/Scope$Entry;

    add-int/lit8 v6, v3, -0x1

    iput v6, v5, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->hashMask:I

    :cond_3
    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->next:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    goto :goto_1

    :cond_4
    array-length v2, v0

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_6

    aget-object v3, v0, v2

    if-eqz v3, :cond_5

    sget-object v4, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->sentinel:Lorg/openjdk/tools/javac/code/Scope$Entry;

    if-eq v3, v4, :cond_5

    iget-object v4, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->table:[Lorg/openjdk/tools/javac/code/Scope$Entry;

    iget-object v5, v3, Lorg/openjdk/tools/javac/code/Scope$Entry;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->getIndex(Lorg/openjdk/tools/javac/util/Name;)I

    move-result v5

    aput-object v3, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    iput v1, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->nelems:I

    return-void
.end method

.method private synthetic lambda$getSymbols$1(Lorg/openjdk/tools/javac/code/Scope$LookupKind;Lorg/openjdk/tools/javac/util/Filter;)Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$1;-><init>(Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;Lorg/openjdk/tools/javac/code/Scope$LookupKind;Lorg/openjdk/tools/javac/util/Filter;)V

    return-object v0
.end method

.method private synthetic lambda$getSymbolsByName$2(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl$2;-><init>(Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)V

    return-object v0
.end method

.method private static synthetic lambda$remove$0(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Z
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

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->getSymbols(Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    return p1
.end method

.method public dup(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->table:[Lorg/openjdk/tools/javac/code/Scope$Entry;

    iget v2, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->nelems:I

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;-><init>(Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;Lorg/openjdk/tools/javac/code/Symbol;[Lorg/openjdk/tools/javac/code/Scope$Entry;I)V

    iget p1, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->shared:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->shared:I

    return-object v0
.end method

.method public dupUnshared(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;
    .locals 7

    iget v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->shared:I

    if-lez v0, :cond_4

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->next:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->table:[Lorg/openjdk/tools/javac/code/Scope$Entry;

    array-length v2, v1

    new-array v2, v2, [Lorg/openjdk/tools/javac/code/Scope$Entry;

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    array-length v5, v1

    if-ge v3, v5, :cond_3

    aget-object v5, v1, v3

    :goto_2
    if-eqz v5, :cond_1

    sget-object v6, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->sentinel:Lorg/openjdk/tools/javac/code/Scope$Entry;

    if-eq v5, v6, :cond_1

    iget-object v6, v5, Lorg/openjdk/tools/javac/code/Scope$Entry;->scope:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Lorg/openjdk/tools/javac/code/Scope$Entry;->access$000(Lorg/openjdk/tools/javac/code/Scope$Entry;)Lorg/openjdk/tools/javac/code/Scope$Entry;

    move-result-object v5

    goto :goto_2

    :cond_1
    if-eqz v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    aput-object v5, v2, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    invoke-direct {v0, p0, p1, v2, v4}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;-><init>(Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;Lorg/openjdk/tools/javac/code/Symbol;[Lorg/openjdk/tools/javac/code/Scope$Entry;I)V

    return-object v0

    :cond_4
    new-instance v0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->table:[Lorg/openjdk/tools/javac/code/Scope$Entry;

    invoke-virtual {v1}, [Lorg/openjdk/tools/javac/code/Scope$Entry;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/openjdk/tools/javac/code/Scope$Entry;

    iget v2, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->nelems:I

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;-><init>(Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;Lorg/openjdk/tools/javac/code/Symbol;[Lorg/openjdk/tools/javac/code/Scope$Entry;I)V

    return-object v0
.end method

.method public enter(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 4

    iget v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->shared:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->nelems:I

    mul-int/lit8 v0, v0, 0x3

    iget v2, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->hashMask:I

    mul-int/lit8 v2, v2, 0x2

    if-lt v0, v2, :cond_1

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->dble()V

    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->getIndex(Lorg/openjdk/tools/javac/util/Name;)I

    move-result v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->table:[Lorg/openjdk/tools/javac/code/Scope$Entry;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    sget-object v2, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->sentinel:Lorg/openjdk/tools/javac/code/Scope$Entry;

    iget v3, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->nelems:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->nelems:I

    :cond_2
    new-instance v1, Lorg/openjdk/tools/javac/code/Scope$Entry;

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->elems:Lorg/openjdk/tools/javac/code/Scope$Entry;

    invoke-direct {v1, p1, v2, v3, p0}, Lorg/openjdk/tools/javac/code/Scope$Entry;-><init>(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope$Entry;Lorg/openjdk/tools/javac/code/Scope$Entry;Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->table:[Lorg/openjdk/tools/javac/code/Scope$Entry;

    aput-object v1, v2, v0

    iput-object v1, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->elems:Lorg/openjdk/tools/javac/code/Scope$Entry;

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope;->listeners:Lorg/openjdk/tools/javac/code/Scope$ScopeListenerList;

    invoke-virtual {v0, p1, p0}, Lorg/openjdk/tools/javac/code/Scope$ScopeListenerList;->symbolAdded(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope;)V

    return-void
.end method

.method public enterIfAbsent(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 4

    iget v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->shared:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->lookup(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Scope$Entry;

    move-result-object v0

    :goto_1
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Scope$Entry;->scope:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    if-ne v1, p0, :cond_1

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Scope$Entry;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    iget-object v3, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Scope$Entry;->next()Lorg/openjdk/tools/javac/code/Scope$Entry;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-eq v1, p0, :cond_2

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    :cond_2
    return-void
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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->lookup(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/code/Scope$Entry;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Scope$Entry;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    return-object p1
.end method

.method public getIndex(Lorg/openjdk/tools/javac/util/Name;)I
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->hashMask:I

    and-int v2, v0, v1

    shr-int/lit8 v3, v0, 0x10

    add-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x1

    sub-int/2addr v1, v0

    const/4 v0, -0x1

    :goto_0
    iget-object v3, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->table:[Lorg/openjdk/tools/javac/code/Scope$Entry;

    aget-object v3, v3, v2

    if-nez v3, :cond_1

    if-ltz v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v2

    :goto_1
    return v0

    :cond_1
    sget-object v4, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->sentinel:Lorg/openjdk/tools/javac/code/Scope$Entry;

    if-ne v3, v4, :cond_2

    if-gez v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_2
    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Scope$Entry;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    if-ne v3, p1, :cond_3

    return v2

    :cond_3
    :goto_2
    add-int/2addr v2, v1

    iget v3, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->hashMask:I

    and-int/2addr v2, v3

    goto :goto_0
.end method

.method public getOrigin(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope;
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->lookup(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Scope$Entry;

    move-result-object v0

    :goto_0
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Scope$Entry;->scope:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Scope$Entry;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v1, p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Scope$Entry;->next()Lorg/openjdk/tools/javac/code/Scope$Entry;

    move-result-object v0

    goto :goto_0

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

    new-instance v0, Lorg/openjdk/tools/javac/code/p;

    invoke-direct {v0, p0, p2, p1}, Lorg/openjdk/tools/javac/code/p;-><init>(Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;Lorg/openjdk/tools/javac/code/Scope$LookupKind;Lorg/openjdk/tools/javac/util/Filter;)V

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

    new-instance v0, Lorg/openjdk/tools/javac/code/q;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/openjdk/tools/javac/code/q;-><init>(Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)V

    return-object v0
.end method

.method public includes(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->lookup(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Scope$Entry;

    move-result-object v0

    :goto_0
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Scope$Entry;->scope:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    if-ne v1, p0, :cond_1

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Scope$Entry;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Scope$Entry;->next()Lorg/openjdk/tools/javac/code/Scope$Entry;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isStaticallyImported(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;
    .locals 5

    iget v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->shared:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->table:[Lorg/openjdk/tools/javac/code/Scope$Entry;

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->next:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->table:[Lorg/openjdk/tools/javac/code/Scope$Entry;

    if-eq v0, v4, :cond_1

    return-object v3

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->elems:Lorg/openjdk/tools/javac/code/Scope$Entry;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Scope$Entry;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->getIndex(Lorg/openjdk/tools/javac/util/Name;)I

    move-result v0

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->table:[Lorg/openjdk/tools/javac/code/Scope$Entry;

    aget-object v3, v3, v0

    iget-object v4, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->elems:Lorg/openjdk/tools/javac/code/Scope$Entry;

    if-ne v3, v4, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Scope$Entry;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v3, v4}, Lorg/openjdk/tools/javac/util/Assert;->check(ZLjava/lang/Object;)V

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->table:[Lorg/openjdk/tools/javac/code/Scope$Entry;

    iget-object v4, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->elems:Lorg/openjdk/tools/javac/code/Scope$Entry;

    invoke-static {v4}, Lorg/openjdk/tools/javac/code/Scope$Entry;->access$000(Lorg/openjdk/tools/javac/code/Scope$Entry;)Lorg/openjdk/tools/javac/code/Scope$Entry;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->elems:Lorg/openjdk/tools/javac/code/Scope$Entry;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Scope$Entry;->sibling:Lorg/openjdk/tools/javac/code/Scope$Entry;

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->elems:Lorg/openjdk/tools/javac/code/Scope$Entry;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->next:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    iget v0, v0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->shared:I

    if-lez v0, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->next:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    iget v1, v0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->shared:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->shared:I

    iget v1, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->nelems:I

    iput v1, v0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->nelems:I

    return-object v0
.end method

.method public lookup(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Scope$Entry;
    .locals 1

    .line 1
    invoke-static {}, Lorg/openjdk/tools/javac/code/Scope;->access$100()Lorg/openjdk/tools/javac/util/Filter;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->lookup(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/code/Scope$Entry;

    move-result-object p1

    return-object p1
.end method

.method public lookup(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/code/Scope$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Scope$Entry;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->table:[Lorg/openjdk/tools/javac/code/Scope$Entry;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->getIndex(Lorg/openjdk/tools/javac/util/Name;)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    .line 3
    sget-object v1, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->sentinel:Lorg/openjdk/tools/javac/code/Scope$Entry;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Scope$Entry;->scope:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Scope$Entry;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    if-ne v2, p1, :cond_1

    if-eqz p2, :cond_2

    invoke-interface {p2, v1}, Lorg/openjdk/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    :cond_1
    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Scope$Entry;->access$000(Lorg/openjdk/tools/javac/code/Scope$Entry;)Lorg/openjdk/tools/javac/code/Scope$Entry;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-object v0

    .line 6
    :cond_3
    :goto_1
    sget-object p1, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->sentinel:Lorg/openjdk/tools/javac/code/Scope$Entry;

    return-object p1
.end method

.method public remove(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 5

    iget v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->shared:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    new-instance v2, Lorg/openjdk/tools/javac/code/o;

    invoke-direct {v2, p1}, Lorg/openjdk/tools/javac/code/o;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->lookup(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/code/Scope$Entry;

    move-result-object v0

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Scope$Entry;->scope:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->getIndex(Lorg/openjdk/tools/javac/util/Name;)I

    move-result v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->table:[Lorg/openjdk/tools/javac/code/Scope$Entry;

    aget-object v4, v3, v2

    if-ne v4, v0, :cond_2

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Scope$Entry;->access$000(Lorg/openjdk/tools/javac/code/Scope$Entry;)Lorg/openjdk/tools/javac/code/Scope$Entry;

    move-result-object v4

    aput-object v4, v3, v2

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {v4}, Lorg/openjdk/tools/javac/code/Scope$Entry;->access$000(Lorg/openjdk/tools/javac/code/Scope$Entry;)Lorg/openjdk/tools/javac/code/Scope$Entry;

    move-result-object v2

    if-ne v2, v0, :cond_5

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Scope$Entry;->access$000(Lorg/openjdk/tools/javac/code/Scope$Entry;)Lorg/openjdk/tools/javac/code/Scope$Entry;

    move-result-object v2

    invoke-static {v4, v2}, Lorg/openjdk/tools/javac/code/Scope$Entry;->access$002(Lorg/openjdk/tools/javac/code/Scope$Entry;Lorg/openjdk/tools/javac/code/Scope$Entry;)Lorg/openjdk/tools/javac/code/Scope$Entry;

    :goto_2
    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->elems:Lorg/openjdk/tools/javac/code/Scope$Entry;

    if-ne v2, v0, :cond_3

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Scope$Entry;->sibling:Lorg/openjdk/tools/javac/code/Scope$Entry;

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->elems:Lorg/openjdk/tools/javac/code/Scope$Entry;

    goto :goto_4

    :cond_3
    :goto_3
    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Scope$Entry;->sibling:Lorg/openjdk/tools/javac/code/Scope$Entry;

    if-ne v3, v0, :cond_4

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Scope$Entry;->sibling:Lorg/openjdk/tools/javac/code/Scope$Entry;

    iput-object v0, v2, Lorg/openjdk/tools/javac/code/Scope$Entry;->sibling:Lorg/openjdk/tools/javac/code/Scope$Entry;

    :goto_4
    iget v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->removeCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->removeCount:I

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Scope;->listeners:Lorg/openjdk/tools/javac/code/Scope$ScopeListenerList;

    invoke-virtual {v0, p1, p0}, Lorg/openjdk/tools/javac/code/Scope$ScopeListenerList;->symbolRemoved(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope;)V

    return-void

    :cond_4
    move-object v2, v3

    goto :goto_3

    :cond_5
    invoke-static {v4}, Lorg/openjdk/tools/javac/code/Scope$Entry;->access$000(Lorg/openjdk/tools/javac/code/Scope$Entry;)Lorg/openjdk/tools/javac/code/Scope$Entry;

    move-result-object v4

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scope["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_3

    if-eq v1, p0, :cond_0

    const-string v2, " | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->elems:Lorg/openjdk/tools/javac/code/Scope$Entry;

    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, v1, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->elems:Lorg/openjdk/tools/javac/code/Scope$Entry;

    if-eq v2, v3, :cond_1

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Scope$Entry;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Scope$Entry;->sibling:Lorg/openjdk/tools/javac/code/Scope$Entry;

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;->next:Lorg/openjdk/tools/javac/code/Scope$ScopeImpl;

    goto :goto_0

    :cond_3
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
