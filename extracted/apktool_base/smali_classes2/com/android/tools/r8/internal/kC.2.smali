.class public Lcom/android/tools/r8/internal/kC;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Comparator;

.field public b:[Ljava/util/Map$Entry;

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [Ljava/util/Map$Entry;

    iput-object p1, p0, Lcom/android/tools/r8/internal/kC;->b:[Ljava/util/Map$Entry;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/tools/r8/internal/kC;->c:I

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/kC;->d:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/kC;->c:I

    add-int/lit8 v0, v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/kC;->b:[Ljava/util/Map$Entry;

    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 3
    array-length v2, v1

    .line 4
    invoke-static {v2, v0}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v0

    .line 5
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kC;->b:[Ljava/util/Map$Entry;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/kC;->d:Z

    .line 7
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/qC;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/qC;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/android/tools/r8/internal/kC;->b:[Ljava/util/Map$Entry;

    iget p2, p0, Lcom/android/tools/r8/internal/kC;->c:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lcom/android/tools/r8/internal/kC;->c:I

    aput-object v0, p1, p2

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/android/tools/r8/internal/kC;
    .locals 0

    .line 10
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/kC;->a(Ljava/util/Set;)Lcom/android/tools/r8/internal/kC;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/Set;)Lcom/android/tools/r8/internal/kC;
    .locals 3

    .line 11
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 12
    iget v0, p0, Lcom/android/tools/r8/internal/kC;->c:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/kC;->b:[Ljava/util/Map$Entry;

    array-length v2, v0

    if-le v1, v2, :cond_0

    .line 14
    array-length v2, v0

    .line 15
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v1

    .line 16
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/android/tools/r8/internal/kC;->b:[Ljava/util/Map$Entry;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/kC;->d:Z

    .line 18
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/kC;->a(Ljava/util/Map$Entry;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public a()Lcom/android/tools/r8/internal/nC;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Map$Entry;)V
    .locals 1

    .line 9
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-void
.end method

.method public b()Lcom/android/tools/r8/internal/nC;
    .locals 7

    iget v0, p0, Lcom/android/tools/r8/internal/kC;->c:I

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    iget-object v3, p0, Lcom/android/tools/r8/internal/kC;->a:Ljava/util/Comparator;

    if-nez v3, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/kC;->b:[Ljava/util/Map$Entry;

    goto :goto_1

    :cond_0
    iget-boolean v3, p0, Lcom/android/tools/r8/internal/kC;->d:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/tools/r8/internal/kC;->b:[Ljava/util/Map$Entry;

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/util/Map$Entry;

    iput-object v3, p0, Lcom/android/tools/r8/internal/kC;->b:[Ljava/util/Map$Entry;

    :cond_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/kC;->b:[Ljava/util/Map$Entry;

    iget-object v4, p0, Lcom/android/tools/r8/internal/kC;->a:Ljava/util/Comparator;

    instance-of v5, v4, Lcom/android/tools/r8/internal/D40;

    if-eqz v5, :cond_2

    check-cast v4, Lcom/android/tools/r8/internal/D40;

    goto :goto_0

    :cond_2
    new-instance v5, Lcom/android/tools/r8/internal/mf;

    invoke-direct {v5, v4}, Lcom/android/tools/r8/internal/mf;-><init>(Ljava/util/Comparator;)V

    move-object v4, v5

    :goto_0
    sget-object v5, Lcom/android/tools/r8/internal/mV;->b:Lcom/android/tools/r8/internal/lV;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/tools/r8/internal/V7;

    invoke-direct {v6, v5, v4}, Lcom/android/tools/r8/internal/V7;-><init>(Lcom/android/tools/r8/internal/mV;Lcom/android/tools/r8/internal/D40;)V

    invoke-static {v3, v1, v0, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    move-object v1, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/tools/r8/internal/kC;->d:Z

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/bf0;->a(I[Ljava/util/Map$Entry;)Lcom/android/tools/r8/internal/nC;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/kC;->b:[Ljava/util/Map$Entry;

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/internal/Rm0;

    invoke-direct {v2, v1, v0}, Lcom/android/tools/r8/internal/Rm0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_4
    sget-object v0, Lcom/android/tools/r8/internal/bf0;->i:Lcom/android/tools/r8/internal/bf0;

    return-object v0
.end method
