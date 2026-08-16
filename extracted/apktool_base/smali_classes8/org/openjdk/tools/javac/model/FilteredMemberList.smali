.class public Lorg/openjdk/tools/javac/model/FilteredMemberList;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lorg/openjdk/tools/javac/code/Symbol;",
        ">;"
    }
.end annotation


# instance fields
.field private final scope:Lorg/openjdk/tools/javac/code/Scope;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Scope;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/model/FilteredMemberList;->scope:Lorg/openjdk/tools/javac/code/Scope;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/model/FilteredMemberList;->lambda$iterator$0(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$iterator$0(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/model/FilteredMemberList;->unwanted(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static unwanted(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 4

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x1000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/model/FilteredMemberList;->get(I)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/model/FilteredMemberList;->scope:Lorg/openjdk/tools/javac/code/Scope;

    sget-object v1, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->NON_RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols(Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol;

    .line 3
    invoke-static {v1}, Lorg/openjdk/tools/javac/model/FilteredMemberList;->unwanted(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v2, p1, -0x1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    move p1, v2

    goto :goto_0

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/FilteredMemberList;->scope:Lorg/openjdk/tools/javac/code/Scope;

    new-instance v1, Lorg/openjdk/tools/javac/model/a;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/model/a;-><init>()V

    sget-object v2, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->NON_RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols(Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/FilteredMemberList;->scope:Lorg/openjdk/tools/javac/code/Scope;

    sget-object v1, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->NON_RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols(Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v2}, Lorg/openjdk/tools/javac/model/FilteredMemberList;->unwanted(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
