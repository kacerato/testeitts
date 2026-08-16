.class public final Lcom/android/tools/r8/internal/N00;
.super Lcom/android/tools/r8/internal/u50;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/u50;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/N00;->b:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/N00;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/rj;Lcom/android/tools/r8/internal/t50;)Lcom/android/tools/r8/internal/t50;
    .locals 0

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    instance-of p0, p1, Lcom/android/tools/r8/internal/uv0;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/t50;->c()Lcom/android/tools/r8/internal/t50;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Map;Lcom/android/tools/r8/internal/rj;Lcom/android/tools/r8/internal/t50;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 9
    sget-object v3, Lcom/android/tools/r8/internal/t7;->a:Lcom/android/tools/r8/internal/t7;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/t50;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    instance-of v4, v2, Lcom/android/tools/r8/internal/t7;

    if-eqz v4, :cond_0

    move-object v2, v3

    goto/16 :goto_1

    .line 11
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    instance-of v4, v3, Lcom/android/tools/r8/internal/t7;

    if-eqz v4, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    instance-of v4, v2, Lcom/android/tools/r8/internal/uv0;

    if-nez v4, :cond_3

    instance-of v4, v3, Lcom/android/tools/r8/internal/uv0;

    if-eqz v4, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/t50;->a()Lcom/android/tools/r8/internal/lJ;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/t50;->a()Lcom/android/tools/r8/internal/lJ;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    sget v4, Lcom/android/tools/r8/internal/QC;->c:I

    .line 16
    new-instance v4, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 17
    iget-object v5, v2, Lcom/android/tools/r8/internal/lJ;->a:Lcom/android/tools/r8/internal/QC;

    .line 18
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/WB;->a(Ljava/lang/Iterable;)V

    .line 19
    new-instance v5, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 20
    iget-object v6, v2, Lcom/android/tools/r8/internal/lJ;->b:Lcom/android/tools/r8/internal/QC;

    .line 21
    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/WB;->a(Ljava/lang/Iterable;)V

    .line 22
    new-instance v6, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 23
    iget-object v7, v2, Lcom/android/tools/r8/internal/lJ;->c:Lcom/android/tools/r8/internal/QC;

    .line 24
    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/WB;->a(Ljava/lang/Iterable;)V

    .line 25
    iget-boolean v7, v2, Lcom/android/tools/r8/internal/lJ;->d:Z

    .line 26
    iget-boolean v8, v2, Lcom/android/tools/r8/internal/lJ;->e:Z

    .line 27
    iget-boolean v2, v2, Lcom/android/tools/r8/internal/lJ;->f:Z

    .line 28
    iget-object v9, v3, Lcom/android/tools/r8/internal/lJ;->a:Lcom/android/tools/r8/internal/QC;

    .line 29
    invoke-virtual {v4, v9}, Lcom/android/tools/r8/internal/WB;->a(Ljava/lang/Iterable;)V

    .line 30
    iget-object v9, v3, Lcom/android/tools/r8/internal/lJ;->b:Lcom/android/tools/r8/internal/QC;

    .line 31
    invoke-virtual {v5, v9}, Lcom/android/tools/r8/internal/WB;->a(Ljava/lang/Iterable;)V

    .line 32
    iget-object v9, v3, Lcom/android/tools/r8/internal/lJ;->c:Lcom/android/tools/r8/internal/QC;

    .line 33
    invoke-virtual {v6, v9}, Lcom/android/tools/r8/internal/WB;->a(Ljava/lang/Iterable;)V

    .line 34
    iget-boolean v9, v3, Lcom/android/tools/r8/internal/lJ;->d:Z

    or-int v14, v7, v9

    .line 35
    iget-boolean v7, v3, Lcom/android/tools/r8/internal/lJ;->e:Z

    or-int v15, v8, v7

    .line 36
    iget-boolean v3, v3, Lcom/android/tools/r8/internal/lJ;->f:Z

    or-int v16, v2, v3

    .line 37
    new-instance v2, Lcom/android/tools/r8/internal/lJ;

    .line 38
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v11

    .line 39
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v12

    .line 40
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v13

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/android/tools/r8/internal/lJ;-><init>(Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;ZZZ)V

    goto :goto_1

    .line 41
    :cond_3
    :goto_0
    sget-object v2, Lcom/android/tools/r8/internal/uv0;->a:Lcom/android/tools/r8/internal/uv0;

    .line 42
    :goto_1
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/N00;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/N00;)Lcom/android/tools/r8/internal/u50;
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/tools/r8/internal/N00;->a:Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/cN0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/cN0;-><init>(Ljava/util/Map;)V

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/N00;->a:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 6
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/tools/r8/internal/u7;->a:Lcom/android/tools/r8/internal/u7;

    return-object p1

    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/N00;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/N00;-><init>(Ljava/util/Map;)V

    return-object p1
.end method

.method public final a(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/u50;
    .locals 7

    .line 46
    iget-object v0, p0, Lcom/android/tools/r8/internal/N00;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 47
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/rj;

    .line 48
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/t50;

    .line 49
    invoke-interface {p1, v3, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/t50;

    if-eqz v4, :cond_0

    if-eq v4, v2, :cond_3

    if-nez v1, :cond_2

    .line 50
    new-instance v1, Lcom/android/tools/r8/internal/kC;

    const/4 v2, 0x4

    .line 51
    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 52
    iget-object v2, p0, Lcom/android/tools/r8/internal/N00;->a:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 53
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/rj;

    if-ne v6, v3, :cond_1

    goto :goto_2

    .line 54
    :cond_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/t50;

    invoke-virtual {v1, v6, v5}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    goto :goto_1

    .line 55
    :cond_2
    :goto_2
    invoke-virtual {v1, v3, v4}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v1, v3, v4}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_6

    .line 57
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kC;->a()Lcom/android/tools/r8/internal/nC;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p1, Lcom/android/tools/r8/internal/u7;->a:Lcom/android/tools/r8/internal/u7;

    return-object p1

    :cond_5
    new-instance v0, Lcom/android/tools/r8/internal/N00;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/N00;-><init>(Ljava/util/Map;)V

    return-object v0

    :cond_6
    return-object p0
.end method

.method public final a(Ljava/util/function/BiPredicate;)Z
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/N00;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/rj;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/t50;

    invoke-interface {p1, v2, v1}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final b()Lcom/android/tools/r8/internal/u50;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/N00;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/t50;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v3, Lcom/android/tools/r8/internal/t7;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    move v1, v5

    :cond_1
    instance-of v3, v3, Lcom/android/tools/r8/internal/uv0;

    if-nez v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    sget-object v0, Lcom/android/tools/r8/internal/u7;->a:Lcom/android/tools/r8/internal/u7;

    return-object v0

    :cond_3
    if-eqz v2, :cond_4

    sget-object v0, Lcom/android/tools/r8/internal/vv0;->a:Lcom/android/tools/r8/internal/vv0;

    return-object v0

    :cond_4
    new-instance v0, Lcom/android/tools/r8/internal/bN0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/bN0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/N00;->a(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/u50;

    move-result-object v0

    sget-boolean v1, Lcom/android/tools/r8/internal/N00;->b:Z

    if-nez v1, :cond_6

    instance-of v2, v0, Lcom/android/tools/r8/internal/u7;

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    :goto_1
    if-nez v1, :cond_8

    instance-of v1, v0, Lcom/android/tools/r8/internal/vv0;

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    :goto_2
    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/t50;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/rj;->a:Lcom/android/tools/r8/internal/rj;

    iget-object v1, p0, Lcom/android/tools/r8/internal/N00;->a:Ljava/lang/Object;

    sget-object v2, Lcom/android/tools/r8/internal/uv0;->a:Lcom/android/tools/r8/internal/uv0;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/t50;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/internal/N00;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/N00;

    iget-object v0, p0, Lcom/android/tools/r8/internal/N00;->a:Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/tools/r8/internal/N00;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/N00;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method
