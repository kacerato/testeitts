.class public Lcom/android/tools/r8/graph/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/graph/l$a;
    }
.end annotation


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/Hz;

.field public final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/l;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/l;->b:Lcom/android/tools/r8/internal/Hz;

    iput-object p2, p0, Lcom/android/tools/r8/graph/l;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/l$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;)",
            "Lcom/android/tools/r8/graph/l$a;"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/android/tools/r8/graph/l$a;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/l$a;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/FeatureSplit;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/M2;Ljava/util/Map;)V
    .locals 0

    .line 48
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    .line 49
    invoke-interface {p1, p2, p0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/FeatureSplit;Ljava/util/List;)V
    .locals 0

    .line 5
    invoke-interface {p0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/M2;Ljava/util/Map;)V
    .locals 0

    .line 4
    new-instance p1, Lcom/android/tools/r8/graph/De;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/graph/De;-><init>(Ljava/util/Set;)V

    invoke-interface {p2, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/l;
    .locals 13

    .line 17
    const-string v0, "Prune AppServices"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 18
    new-instance v0, Lcom/android/tools/r8/internal/kC;

    const/4 v1, 0x4

    .line 19
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 20
    iget-object v2, p0, Lcom/android/tools/r8/graph/l;->c:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 21
    iget-object v4, p1, Lcom/android/tools/r8/graph/O5;->e:Ljava/util/Set;

    .line 22
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 23
    :cond_1
    new-instance v4, Lcom/android/tools/r8/internal/kC;

    .line 24
    invoke-direct {v4, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 25
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 26
    sget v7, Lcom/android/tools/r8/internal/hC;->c:I

    .line 27
    new-array v7, v1, [Ljava/lang/Object;

    .line 28
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/graph/M2;

    .line 29
    iget-object v11, p1, Lcom/android/tools/r8/graph/O5;->e:Ljava/util/Set;

    .line 30
    invoke-interface {v11, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 31
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v11, v9, 0x1

    .line 32
    array-length v12, v7

    if-ge v12, v11, :cond_4

    .line 33
    array-length v12, v7

    invoke-static {v12, v11}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v12

    invoke-static {v7, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    .line 34
    :cond_4
    aput-object v10, v7, v9

    move v9, v11

    goto :goto_2

    .line 35
    :cond_5
    invoke-static {v9, v7}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v8

    .line 36
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 37
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/FeatureSplit;

    .line 38
    invoke-static {v9, v7}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v7

    .line 39
    invoke-virtual {v4, v6, v7}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    goto :goto_1

    .line 40
    :cond_6
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v4

    .line 41
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 42
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v3, v4}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    goto/16 :goto_0

    .line 43
    :cond_7
    new-instance p1, Lcom/android/tools/r8/graph/l;

    iget-object v1, p0, Lcom/android/tools/r8/graph/l;->a:Lcom/android/tools/r8/graph/y;

    .line 44
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v0

    .line 45
    invoke-direct {p1, v1, v0}, Lcom/android/tools/r8/graph/l;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/Map;)V

    .line 46
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/l;
    .locals 13

    .line 51
    new-instance v0, Lcom/android/tools/r8/internal/kC;

    const/4 v1, 0x4

    .line 52
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 53
    iget-object v2, p0, Lcom/android/tools/r8/graph/l;->c:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 54
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/M2;

    iget-object v5, p0, Lcom/android/tools/r8/graph/l;->b:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {p1, v5, v4}, Lcom/android/tools/r8/internal/Hz;->d(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 55
    new-instance v5, Lcom/android/tools/r8/internal/kC;

    .line 56
    invoke-direct {v5, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 57
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 58
    sget v7, Lcom/android/tools/r8/internal/hC;->c:I

    .line 59
    new-array v7, v1, [Ljava/lang/Object;

    .line 60
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/graph/M2;

    .line 61
    iget-object v11, p0, Lcom/android/tools/r8/graph/l;->b:Lcom/android/tools/r8/internal/Hz;

    .line 62
    invoke-virtual {p1, v11, v10}, Lcom/android/tools/r8/internal/Hz;->d(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    .line 63
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v11, v9, 0x1

    .line 64
    array-length v12, v7

    if-ge v12, v11, :cond_0

    .line 65
    array-length v12, v7

    invoke-static {v12, v11}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v12

    invoke-static {v7, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    .line 66
    :cond_0
    aput-object v10, v7, v9

    move v9, v11

    goto :goto_2

    .line 67
    :cond_1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/FeatureSplit;

    .line 68
    invoke-static {v9, v7}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v7

    .line 69
    invoke-virtual {v5, v6, v7}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v3

    .line 71
    invoke-virtual {v0, v4, v3}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    goto/16 :goto_0

    .line 72
    :cond_3
    new-instance p1, Lcom/android/tools/r8/graph/l;

    iget-object v1, p0, Lcom/android/tools/r8/graph/l;->a:Lcom/android/tools/r8/graph/y;

    .line 73
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v0

    .line 74
    invoke-direct {p1, v1, v0}, Lcom/android/tools/r8/graph/l;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/Map;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/l;
    .locals 1

    .line 16
    new-instance v0, Lcom/android/tools/r8/graph/Ee;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/Ee;-><init>(Lcom/android/tools/r8/graph/l;Lcom/android/tools/r8/internal/Hz;)V

    const-string p1, "Rewrite AppServices"

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/hC;
    .locals 2

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/graph/l;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/l;->b()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/l;->c:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_1

    .line 8
    sget p1, Lcom/android/tools/r8/internal/hC;->c:I

    .line 9
    sget-object p1, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    return-object p1

    .line 10
    :cond_1
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 11
    new-instance v0, Lcom/android/tools/r8/internal/eC;

    .line 12
    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 13
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/eC;

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/util/Set;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/l;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/l;->b()V

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/graph/l;->c:Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/graph/Ce;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/graph/Ce;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/FeatureSplit;Ljava/util/function/BiConsumer;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/graph/l;->c:Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/graph/Fe;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/graph/Fe;-><init>(Lcom/android/tools/r8/FeatureSplit;Ljava/util/function/BiConsumer;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final b()V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/graph/l;->c:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-boolean v2, Lcom/android/tools/r8/graph/l;->d:Z

    if-nez v2, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/graph/l;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/M2;

    iget-object v5, p0, Lcom/android/tools/r8/graph/l;->b:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v3, v5, v4}, Lcom/android/tools/r8/internal/Hz;->d(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    sget-boolean v4, Lcom/android/tools/r8/graph/l;->d:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/tools/r8/graph/l;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v4

    iget-object v5, p0, Lcom/android/tools/r8/graph/l;->b:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v4, v5, v3}, Lcom/android/tools/r8/internal/Hz;->d(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    if-ne v3, v4, :cond_5

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    return-void
.end method
