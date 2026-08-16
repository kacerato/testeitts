.class public abstract Lcom/android/tools/r8/internal/mg;
.super Lcom/android/tools/r8/internal/xX;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/xX;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/wX;Lcom/android/tools/r8/internal/Bo0;)Lcom/android/tools/r8/internal/wX;
    .locals 6

    .line 1
    invoke-interface {p3}, Lcom/android/tools/r8/internal/wX;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-interface {p3}, Lcom/android/tools/r8/internal/wX;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p3

    .line 3
    :cond_1
    invoke-interface {p3}, Lcom/android/tools/r8/internal/wX;->d()Lcom/android/tools/r8/internal/mg;

    move-result-object p3

    .line 4
    instance-of v0, p0, Lcom/android/tools/r8/internal/ng;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    instance-of v0, p3, Lcom/android/tools/r8/internal/ng;

    if-eqz v0, :cond_2

    .line 7
    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/internal/ng;

    .line 8
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xX;->b()Lcom/android/tools/r8/internal/ng;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/ng;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/ng;Lcom/android/tools/r8/internal/Bo0;)Lcom/android/tools/r8/internal/pg;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    instance-of v0, p0, Lcom/android/tools/r8/internal/sg;

    if-eqz v0, :cond_1a

    .line 10
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    instance-of v0, p3, Lcom/android/tools/r8/internal/sg;

    if-eqz v0, :cond_1a

    .line 12
    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/internal/sg;

    .line 13
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xX;->j()Lcom/android/tools/r8/internal/sg;

    move-result-object p3

    .line 14
    sget-boolean v1, Lcom/android/tools/r8/internal/sg;->c:Z

    if-nez v1, :cond_4

    .line 15
    iget-object v2, v0, Lcom/android/tools/r8/internal/sg;->b:Ljava/util/HashMap;

    .line 16
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_0
    if-nez v1, :cond_6

    .line 18
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/sg;->a(Lcom/android/tools/r8/internal/zt;)Lcom/android/tools/r8/internal/wX;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/tools/r8/internal/wX;->isUnknown()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    .line 19
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_1
    if-nez v1, :cond_8

    .line 20
    iget-object v2, p3, Lcom/android/tools/r8/internal/sg;->b:Ljava/util/HashMap;

    .line 21
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    .line 22
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_2
    if-nez v1, :cond_a

    .line 23
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/sg;->a(Lcom/android/tools/r8/internal/zt;)Lcom/android/tools/r8/internal/wX;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/internal/wX;->isUnknown()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_3

    .line 25
    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_a
    :goto_3
    iget-object p3, p3, Lcom/android/tools/r8/internal/sg;->b:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_b
    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zt;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/pg;

    .line 28
    sget-boolean v3, Lcom/android/tools/r8/internal/sg;->c:Z

    if-nez v3, :cond_d

    .line 29
    iget-object v4, v0, Lcom/android/tools/r8/internal/sg;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_5

    .line 30
    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_d
    :goto_5
    if-nez v3, :cond_f

    .line 31
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/sg;->a(Lcom/android/tools/r8/internal/zt;)Lcom/android/tools/r8/internal/wX;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/tools/r8/internal/wX;->isUnknown()Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_6

    .line 32
    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 33
    :cond_f
    :goto_6
    move-object v4, v1

    check-cast v4, Lcom/android/tools/r8/internal/xX;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    instance-of v5, v4, Lcom/android/tools/r8/internal/tv0;

    if-eqz v5, :cond_11

    .line 35
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zt;->l()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 36
    sget-object v1, Lcom/android/tools/r8/internal/tv0;->a:Lcom/android/tools/r8/internal/tv0;

    goto :goto_9

    .line 37
    :cond_10
    iget-object v4, v0, Lcom/android/tools/r8/internal/sg;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_11
    if-nez v3, :cond_13

    .line 38
    instance-of v4, v4, Lcom/android/tools/r8/internal/ng;

    if-eqz v4, :cond_12

    goto :goto_7

    .line 39
    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 40
    :cond_13
    :goto_7
    iget-object v4, v0, Lcom/android/tools/r8/internal/sg;->b:Ljava/util/HashMap;

    .line 41
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/pg;

    .line 42
    invoke-static {p1, p2, v4, v1, p4}, Lcom/android/tools/r8/internal/sg;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/pg;Lcom/android/tools/r8/internal/pg;Lcom/android/tools/r8/internal/Bo0;)Lcom/android/tools/r8/internal/pg;

    move-result-object v1

    .line 43
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zt;->l()Z

    move-result v4

    if-eqz v4, :cond_14

    move-object v4, v1

    check-cast v4, Lcom/android/tools/r8/internal/xX;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    instance-of v4, v4, Lcom/android/tools/r8/internal/tv0;

    if-eqz v4, :cond_14

    .line 45
    sget-object v1, Lcom/android/tools/r8/internal/tv0;->a:Lcom/android/tools/r8/internal/tv0;

    goto :goto_9

    .line 46
    :cond_14
    iget-object v4, v0, Lcom/android/tools/r8/internal/sg;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    move-object v1, v0

    .line 47
    :goto_9
    instance-of v2, v1, Lcom/android/tools/r8/internal/tv0;

    if-eqz v2, :cond_15

    return-object v1

    :cond_15
    if-nez v3, :cond_b

    if-ne v1, v0, :cond_16

    goto/16 :goto_4

    .line 48
    :cond_16
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 49
    :cond_17
    sget-boolean p1, Lcom/android/tools/r8/internal/sg;->c:Z

    if-nez p1, :cond_19

    .line 50
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/sg;->a(Lcom/android/tools/r8/internal/zt;)Lcom/android/tools/r8/internal/wX;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/wX;->isUnknown()Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_a

    .line 51
    :cond_18
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_19
    :goto_a
    return-object v0

    .line 52
    :cond_1a
    sget-boolean p1, Lcom/android/tools/r8/internal/mg;->a:Z

    if-eqz p1, :cond_1b

    .line 53
    sget-object p1, Lcom/android/tools/r8/internal/tv0;->a:Lcom/android/tools/r8/internal/tv0;

    return-object p1

    .line 54
    :cond_1b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F2;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/wX;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Bo0;->b:Lcom/android/tools/r8/internal/Ao0;

    .line 55
    invoke-interface {p3, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/wX;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/tools/r8/internal/mg;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/wX;Lcom/android/tools/r8/internal/Bo0;)Lcom/android/tools/r8/internal/wX;

    move-result-object p1

    return-object p1
.end method

.method public final d()Lcom/android/tools/r8/internal/mg;
    .locals 0

    return-object p0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
