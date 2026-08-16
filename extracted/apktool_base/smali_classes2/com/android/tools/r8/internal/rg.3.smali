.class public Lcom/android/tools/r8/internal/rg;
.super Lcom/android/tools/r8/internal/O50;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/O50;-><init>()V

    .line 2
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/O50;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/R50;)Lcom/android/tools/r8/internal/R50;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Vf;Lcom/android/tools/r8/internal/R50;Lcom/android/tools/r8/internal/R50;)Lcom/android/tools/r8/internal/R50;
    .locals 0

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    sget-boolean p0, Lcom/android/tools/r8/internal/R50;->f:Z

    if-nez p0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-ne p1, p2, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    sget-object p0, Lcom/android/tools/r8/internal/R50;->d:Lcom/android/tools/r8/internal/R50;

    if-ne p1, p0, :cond_3

    return-object p2

    :cond_3
    if-ne p2, p0, :cond_4

    :goto_1
    return-object p1

    :cond_4
    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Vf;)Lcom/android/tools/r8/internal/Vf;
    .locals 0

    .line 2
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Vf;Z)Lcom/android/tools/r8/internal/O50;
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/R50;

    if-eqz v0, :cond_0

    .line 9
    sget-object p2, Lcom/android/tools/r8/internal/R50;->d:Lcom/android/tools/r8/internal/R50;

    if-ne v0, p2, :cond_2

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 10
    sget-object p2, Lcom/android/tools/r8/internal/R50;->c:Lcom/android/tools/r8/internal/R50;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/android/tools/r8/internal/R50;->b:Lcom/android/tools/r8/internal/R50;

    .line 11
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    .line 12
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 13
    iget-object v1, p0, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->putAll(Ljava/util/Map;)V

    .line 14
    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance p1, Lcom/android/tools/r8/internal/rg;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/rg;-><init>(Ljava/util/Map;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/rg;)Lcom/android/tools/r8/internal/Vf;
    .locals 5

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Vf;

    .line 21
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/R50;

    .line 22
    sget-object v3, Lcom/android/tools/r8/internal/R50;->d:Lcom/android/tools/r8/internal/R50;

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 23
    :cond_1
    iget-object v3, p1, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/R50;

    if-eqz v3, :cond_0

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    sget-object v4, Lcom/android/tools/r8/internal/Q50;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v4, v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    goto :goto_0

    .line 26
    :cond_2
    sget-object v1, Lcom/android/tools/r8/internal/R50;->b:Lcom/android/tools/r8/internal/R50;

    if-ne v3, v1, :cond_0

    goto :goto_1

    .line 27
    :cond_3
    sget-object v1, Lcom/android/tools/r8/internal/R50;->c:Lcom/android/tools/r8/internal/R50;

    if-ne v3, v1, :cond_0

    :goto_1
    return-object v2

    .line 28
    :cond_4
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/D1;)Z
    .locals 1

    .line 3
    check-cast p2, Lcom/android/tools/r8/internal/O50;

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/O50;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/O50;->d()Lcom/android/tools/r8/internal/rg;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/rg;->b(Lcom/android/tools/r8/internal/rg;)Z

    move-result p1

    return p1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/O50;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/D1;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/rg;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/rg;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p1, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Vf;

    iget-object v3, p0, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Vf;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/R50;

    iget-object v4, p1, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/R50;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    if-ne v1, v3, :cond_5

    :goto_0
    move-object v3, v1

    goto :goto_1

    :cond_5
    sget-object v3, Lcom/android/tools/r8/internal/R50;->d:Lcom/android/tools/r8/internal/R50;

    :goto_1
    if-eq v1, v3, :cond_3

    return v2

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public final d()Lcom/android/tools/r8/internal/rg;
    .locals 0

    return-object p0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/internal/rg;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/rg;

    iget-object v0, p0, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()V
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/tools/r8/internal/rg;->c:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/HashMap;

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/tools/r8/internal/rg;->c:Z

    if-nez v1, :cond_3

    instance-of v1, v0, Ljava/util/IdentityHashMap;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_0
    new-instance v1, Lcom/android/tools/r8/internal/Yr1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Yr1;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/Zr1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Zr1;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/as1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/as1;-><init>()V

    new-instance v4, Lcom/android/tools/r8/internal/bs1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/bs1;-><init>()V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/Map;Ljava/util/function/IntFunction;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/android/tools/r8/internal/gt0;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    :cond_4
    :goto_1
    return-void
.end method

.method public g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/internal/Vf;",
            "Lcom/android/tools/r8/internal/R50;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method
