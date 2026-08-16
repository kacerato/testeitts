.class public abstract Lcom/android/tools/r8/shaking/i1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/shaking/e1;
    .locals 1

    .line 25
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public abstract a(Lcom/android/tools/r8/graph/r0;)Z
.end method

.method public final a(Lcom/android/tools/r8/shaking/i1;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p0, Lcom/android/tools/r8/shaking/c1;

    if-nez v1, :cond_d

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    instance-of v1, p1, Lcom/android/tools/r8/shaking/h1;

    if-eqz v1, :cond_1

    goto/16 :goto_6

    .line 4
    :cond_1
    instance-of v1, p0, Lcom/android/tools/r8/shaking/h1;

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 5
    instance-of v1, p1, Lcom/android/tools/r8/shaking/c1;

    if-eqz v1, :cond_2

    goto/16 :goto_5

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/i1;->a()Lcom/android/tools/r8/shaking/e1;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/i1;->a()Lcom/android/tools/r8/shaking/e1;

    move-result-object p1

    .line 7
    iget-object v3, v1, Lcom/android/tools/r8/shaking/e1;->a:Lcom/android/tools/r8/shaking/f1;

    .line 8
    iget-object v4, p1, Lcom/android/tools/r8/shaking/e1;->a:Lcom/android/tools/r8/shaking/f1;

    .line 9
    iget-object v5, v3, Lcom/android/tools/r8/shaking/f1;->b:Lcom/android/tools/r8/shaking/g1;

    .line 10
    invoke-virtual {v5}, Lcom/android/tools/r8/shaking/g1;->a()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    iget-object v5, v4, Lcom/android/tools/r8/shaking/f1;->a:Lcom/android/tools/r8/graph/M2;

    if-nez v5, :cond_4

    goto :goto_0

    .line 12
    :cond_4
    iget-object v6, v3, Lcom/android/tools/r8/shaking/f1;->a:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v5

    if-eqz v5, :cond_c

    :goto_0
    iget-object v3, v3, Lcom/android/tools/r8/shaking/f1;->b:Lcom/android/tools/r8/shaking/g1;

    iget-object v4, v4, Lcom/android/tools/r8/shaking/f1;->b:Lcom/android/tools/r8/shaking/g1;

    .line 13
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/shaking/g1;->a(Lcom/android/tools/r8/shaking/g1;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 14
    :goto_1
    iget-object v3, v1, Lcom/android/tools/r8/shaking/e1;->b:Ljava/util/IdentityHashMap;

    if-nez v3, :cond_5

    return v0

    .line 15
    :cond_5
    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/M2;

    .line 16
    iget-object v5, p1, Lcom/android/tools/r8/shaking/e1;->b:Ljava/util/IdentityHashMap;

    if-eqz v5, :cond_6

    .line 17
    invoke-virtual {v5, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/shaking/f1;

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_7

    .line 18
    iget-object v5, p1, Lcom/android/tools/r8/shaking/e1;->a:Lcom/android/tools/r8/shaking/f1;

    .line 19
    :cond_7
    iget-object v6, v1, Lcom/android/tools/r8/shaking/e1;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v6, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/shaking/f1;

    .line 20
    iget-object v6, v4, Lcom/android/tools/r8/shaking/f1;->b:Lcom/android/tools/r8/shaking/g1;

    .line 21
    invoke-virtual {v6}, Lcom/android/tools/r8/shaking/g1;->a()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_2

    .line 22
    :cond_8
    iget-object v6, v5, Lcom/android/tools/r8/shaking/f1;->a:Lcom/android/tools/r8/graph/M2;

    if-nez v6, :cond_9

    goto :goto_4

    .line 23
    :cond_9
    iget-object v7, v4, Lcom/android/tools/r8/shaking/f1;->a:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v7, v6}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v6

    if-eqz v6, :cond_a

    :goto_4
    iget-object v4, v4, Lcom/android/tools/r8/shaking/f1;->b:Lcom/android/tools/r8/shaking/g1;

    iget-object v5, v5, Lcom/android/tools/r8/shaking/f1;->b:Lcom/android/tools/r8/shaking/g1;

    .line 24
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/shaking/g1;->a(Lcom/android/tools/r8/shaking/g1;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_2

    :cond_a
    return v2

    :cond_b
    return v0

    :cond_c
    :goto_5
    return v2

    :cond_d
    :goto_6
    return v0
.end method

.method public final b()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/shaking/h1;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/tools/r8/shaking/c1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final c()Lcom/android/tools/r8/shaking/d1;
    .locals 3

    instance-of v0, p0, Lcom/android/tools/r8/shaking/h1;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/shaking/d1;

    sget-object v1, Lcom/android/tools/r8/shaking/f1;->d:Lcom/android/tools/r8/shaking/f1;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/d1;-><init>(Lcom/android/tools/r8/shaking/f1;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/android/tools/r8/shaking/c1;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/shaking/d1;

    sget-object v1, Lcom/android/tools/r8/shaking/f1;->c:Lcom/android/tools/r8/shaking/f1;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/d1;-><init>(Lcom/android/tools/r8/shaking/f1;)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/i1;->a()Lcom/android/tools/r8/shaking/e1;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/shaking/d1;

    sget-object v2, Lcom/android/tools/r8/shaking/f1;->c:Lcom/android/tools/r8/shaking/f1;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/shaking/d1;-><init>(Lcom/android/tools/r8/shaking/f1;)V

    iget-object v2, v0, Lcom/android/tools/r8/shaking/e1;->a:Lcom/android/tools/r8/shaking/f1;

    iput-object v2, v1, Lcom/android/tools/r8/shaking/d1;->a:Lcom/android/tools/r8/shaking/f1;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/e1;->b:Ljava/util/IdentityHashMap;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/util/IdentityHashMap;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/e1;->b:Ljava/util/IdentityHashMap;

    invoke-direct {v2, v0}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    iput-object v2, v1, Lcom/android/tools/r8/shaking/d1;->b:Ljava/util/IdentityHashMap;

    :cond_2
    return-object v1
.end method
