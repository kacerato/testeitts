.class public Lcom/android/tools/r8/internal/de;
.super Lcom/android/tools/r8/internal/ae0;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/internal/wI;

.field public final f:Lcom/android/tools/r8/graph/y;

.field public final g:Lcom/android/tools/r8/internal/q10;

.field public final h:Lcom/android/tools/r8/graph/M2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/internal/wI;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/q10;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/ae0;-><init>(Lcom/android/tools/r8/internal/p10;)V

    sget-boolean p2, Lcom/android/tools/r8/internal/de;->i:Z

    if-nez p2, :cond_2

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p3, Lcom/android/tools/r8/internal/wI;->a:Lcom/android/tools/r8/internal/u1;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    if-nez p2, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/internal/de;->h:Lcom/android/tools/r8/graph/M2;

    iput-object p4, p0, Lcom/android/tools/r8/internal/de;->f:Lcom/android/tools/r8/graph/y;

    iput-object p3, p0, Lcom/android/tools/r8/internal/de;->e:Lcom/android/tools/r8/internal/wI;

    iput-object p5, p0, Lcom/android/tools/r8/internal/de;->g:Lcom/android/tools/r8/internal/q10;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 3

    if-ne p1, p2, :cond_0

    return-object p1

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-eq p1, v0, :cond_7

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 176
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :cond_2
    if-ne p1, p2, :cond_3

    return-object p1

    .line 177
    :cond_3
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 179
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz p1, :cond_4

    if-ne p1, v0, :cond_2

    .line 180
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v2, 0x14

    if-le p1, v2, :cond_5

    .line 181
    invoke-static {v1}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 182
    :cond_5
    invoke-interface {v1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-object p2

    .line 183
    :cond_6
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 184
    iget-object p2, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz p2, :cond_7

    if-ne p2, v0, :cond_5

    :cond_7
    :goto_0
    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;
    .locals 1

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/V81;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/V81;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;)V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/q10;->a(Lcom/android/tools/r8/internal/p10;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/ae0;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/de;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/q10;)Lcom/android/tools/r8/internal/de;
    .locals 7

    .line 7
    new-instance v6, Lcom/android/tools/r8/internal/de;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/de;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/internal/wI;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/q10;)V

    return-object v6
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/wI;)Lcom/android/tools/r8/internal/de;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/M2;",
            "Lcom/android/tools/r8/internal/p10;",
            "Lcom/android/tools/r8/graph/y<",
            "+",
            "Lcom/android/tools/r8/graph/j;",
            ">;",
            "Lcom/android/tools/r8/internal/wI;",
            ")",
            "Lcom/android/tools/r8/internal/de;"
        }
    .end annotation

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/de;->i:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    if-eqz p3, :cond_4

    goto :goto_2

    .line 4
    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 5
    :cond_5
    :goto_2
    new-instance v0, Lcom/android/tools/r8/internal/W81;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/tools/r8/internal/W81;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/internal/wI;Lcom/android/tools/r8/graph/y;)V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/q10;->a(Lcom/android/tools/r8/internal/p10;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/ae0;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/de;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/internal/q10;)Lcom/android/tools/r8/internal/de;
    .locals 7

    .line 9
    new-instance v6, Lcom/android/tools/r8/internal/de;

    .line 10
    sget-object v3, Lcom/android/tools/r8/internal/wI;->b:Lcom/android/tools/r8/internal/wI;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/de;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/internal/wI;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/q10;)V

    return-object v6
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/internal/wI;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/q10;)Lcom/android/tools/r8/internal/de;
    .locals 7

    .line 6
    new-instance v6, Lcom/android/tools/r8/internal/de;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/de;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/internal/wI;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/q10;)V

    return-object v6
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/wI;Lcom/android/tools/r8/internal/wI;)Lcom/android/tools/r8/internal/wI;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "+",
            "Lcom/android/tools/r8/graph/j;",
            ">;",
            "Lcom/android/tools/r8/internal/wI;",
            "Lcom/android/tools/r8/internal/wI;",
            ")",
            "Lcom/android/tools/r8/internal/wI;"
        }
    .end annotation

    .line 14
    iget-object v0, p1, Lcom/android/tools/r8/internal/wI;->a:Lcom/android/tools/r8/internal/u1;

    .line 15
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 16
    iget-object v0, p2, Lcom/android/tools/r8/internal/wI;->a:Lcom/android/tools/r8/internal/u1;

    .line 17
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_c

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->v:Lcom/android/tools/r8/internal/WQ;

    monitor-enter v0

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->v:Lcom/android/tools/r8/internal/WQ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    sget-object v2, Lcom/android/tools/r8/internal/bf0;->i:Lcom/android/tools/r8/internal/bf0;

    invoke-virtual {v1, p1, v2}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/tools/r8/internal/wI;

    if-eqz v1, :cond_1

    .line 22
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto/16 :goto_b

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->v:Lcom/android/tools/r8/internal/WQ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-virtual {v1, p2, v2}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/tools/r8/internal/wI;

    if-eqz v1, :cond_2

    .line 26
    monitor-exit v0

    return-object v1

    .line 27
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 29
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 30
    new-instance v2, Lcom/android/tools/r8/internal/K81;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/K81;-><init>(Ljava/util/Queue;)V

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/wI;->a(Ljava/util/function/BiConsumer;)V

    .line 31
    new-instance v2, Lcom/android/tools/r8/internal/O81;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/O81;-><init>(Ljava/util/Queue;)V

    invoke-virtual {p2, v2}, Lcom/android/tools/r8/internal/wI;->a(Ljava/util/function/BiConsumer;)V

    .line 32
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_11

    .line 33
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/ce;

    .line 34
    iget-object v4, v2, Lcom/android/tools/r8/internal/ce;->a:Lcom/android/tools/r8/graph/M2;

    .line 35
    iget-object v2, v2, Lcom/android/tools/r8/internal/ce;->b:Lcom/android/tools/r8/internal/be;

    .line 36
    new-instance v5, Lcom/android/tools/r8/internal/P81;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/P81;-><init>()V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/be;

    .line 37
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    sget-boolean v6, Lcom/android/tools/r8/internal/be;->g:Z

    if-nez v6, :cond_5

    .line 39
    iget-object v7, v2, Lcom/android/tools/r8/internal/be;->a:Lcom/android/tools/r8/internal/t40;

    .line 40
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, v2, Lcom/android/tools/r8/internal/be;->b:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    .line 41
    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_0
    if-nez v6, :cond_7

    .line 42
    iget-object v7, v2, Lcom/android/tools/r8/internal/be;->a:Lcom/android/tools/r8/internal/t40;

    .line 43
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v2, Lcom/android/tools/r8/internal/be;->b:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_1

    .line 44
    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 45
    :cond_7
    :goto_1
    iget-object v7, v2, Lcom/android/tools/r8/internal/be;->a:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 46
    iget-object v7, v5, Lcom/android/tools/r8/internal/be;->a:Lcom/android/tools/r8/internal/t40;

    .line 47
    iget-object v8, v2, Lcom/android/tools/r8/internal/be;->a:Lcom/android/tools/r8/internal/t40;

    if-nez v6, :cond_9

    .line 48
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_2

    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 49
    :cond_9
    :goto_2
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_3

    :cond_a
    sget-object v6, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    goto :goto_4

    :cond_b
    :goto_3
    sget-object v6, Lcom/android/tools/r8/internal/t40;->a:Lcom/android/tools/r8/internal/t40;

    .line 50
    :goto_4
    iput-object v6, v5, Lcom/android/tools/r8/internal/be;->a:Lcom/android/tools/r8/internal/t40;

    .line 51
    iget-object v6, v5, Lcom/android/tools/r8/internal/be;->b:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/f7;->a()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v5, v5, Lcom/android/tools/r8/internal/be;->a:Lcom/android/tools/r8/internal/t40;

    if-eq v5, v7, :cond_3

    goto :goto_8

    .line 52
    :cond_c
    iget-object v7, v5, Lcom/android/tools/r8/internal/be;->b:Lcom/android/tools/r8/internal/t40;

    .line 53
    iget-object v8, v2, Lcom/android/tools/r8/internal/be;->b:Lcom/android/tools/r8/internal/t40;

    if-nez v6, :cond_e

    .line 54
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_5

    :cond_d
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 55
    :cond_e
    :goto_5
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v6

    if-eqz v6, :cond_f

    goto :goto_6

    :cond_f
    sget-object v6, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    goto :goto_7

    :cond_10
    :goto_6
    sget-object v6, Lcom/android/tools/r8/internal/t40;->a:Lcom/android/tools/r8/internal/t40;

    .line 56
    :goto_7
    iput-object v6, v5, Lcom/android/tools/r8/internal/be;->b:Lcom/android/tools/r8/internal/t40;

    .line 57
    iget-object v6, v5, Lcom/android/tools/r8/internal/be;->a:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/f7;->a()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v5, v5, Lcom/android/tools/r8/internal/be;->b:Lcom/android/tools/r8/internal/t40;

    if-eq v5, v7, :cond_3

    .line 58
    :goto_8
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 59
    iget-object v4, v4, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v4, v4, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v5, v4

    :goto_9
    if-ge v3, v5, :cond_3

    aget-object v6, v4, v3

    .line 60
    new-instance v7, Lcom/android/tools/r8/internal/ce;

    invoke-direct {v7, v6, v2}, Lcom/android/tools/r8/internal/ce;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/be;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 61
    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    new-instance v2, Lcom/android/tools/r8/internal/Q81;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Q81;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 63
    invoke-static {}, Lcom/android/tools/r8/internal/wI;->a()Lcom/android/tools/r8/internal/wI$a;

    move-result-object v0

    .line 64
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_14

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/o50;

    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v3

    :cond_12
    if-ge v7, v6, :cond_13

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/tools/r8/internal/o50;

    .line 66
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v9, v8, v10}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v8

    if-eqz v8, :cond_12

    goto :goto_a

    .line 67
    :cond_13
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v0, v6, v5}, Lcom/android/tools/r8/internal/wI$a;->a(Lcom/android/tools/r8/graph/M2;Z)Lcom/android/tools/r8/internal/wI$a;

    goto :goto_a

    .line 68
    :cond_14
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/wI$a;->a()Lcom/android/tools/r8/internal/wI;

    move-result-object v0

    .line 69
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/wI;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 70
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->v:Lcom/android/tools/r8/internal/WQ;

    monitor-enter v1

    .line 71
    :try_start_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->v:Lcom/android/tools/r8/internal/WQ;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/WQ;->a(Lcom/android/tools/r8/internal/wI;Lcom/android/tools/r8/internal/wI;Lcom/android/tools/r8/internal/wI;)V

    .line 72
    monitor-exit v1

    return-object v0

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_15
    return-object v0

    .line 73
    :goto_b
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 74
    :cond_16
    :goto_c
    sget-object p0, Lcom/android/tools/r8/internal/wI;->b:Lcom/android/tools/r8/internal/wI;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/o50;)Ljava/lang/String;
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maybe("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/be;)V
    .locals 2

    .line 167
    iget-object v0, p2, Lcom/android/tools/r8/internal/be;->a:Lcom/android/tools/r8/internal/t40;

    .line 168
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/android/tools/r8/internal/be;->b:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 169
    new-instance v0, Lcom/android/tools/r8/internal/o50;

    .line 170
    sget-boolean v1, Lcom/android/tools/r8/internal/be;->g:Z

    if-nez v1, :cond_1

    .line 171
    iget-object v1, p2, Lcom/android/tools/r8/internal/be;->a:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/android/tools/r8/internal/be;->b:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 173
    :cond_1
    :goto_0
    iget-object v1, p2, Lcom/android/tools/r8/internal/be;->a:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p2, p2, Lcom/android/tools/r8/internal/be;->b:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 174
    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public static a(Ljava/util/Queue;Lcom/android/tools/r8/graph/M2;Ljava/lang/Boolean;)V
    .locals 1

    .line 185
    new-instance v0, Lcom/android/tools/r8/internal/ce;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 186
    sget-object p2, Lcom/android/tools/r8/internal/be;->c:Lcom/android/tools/r8/internal/be;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/android/tools/r8/internal/be;->d:Lcom/android/tools/r8/internal/be;

    .line 187
    :goto_0
    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/ce;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/be;)V

    invoke-interface {p0, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/wI$a;Lcom/android/tools/r8/graph/M2;Ljava/lang/Boolean;)V
    .locals 1

    .line 119
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/M2;

    .line 120
    sget-boolean v0, Lcom/android/tools/r8/internal/de;->i:Z

    if-nez v0, :cond_1

    if-eq p2, p0, :cond_1

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Rewritten implies program types thus known."

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 121
    :cond_1
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p0, p2}, Lcom/android/tools/r8/internal/wI$a;->a(Lcom/android/tools/r8/graph/M2;Z)Lcom/android/tools/r8/internal/wI$a;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Ljava/lang/Boolean;)Z
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/j;->h(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    return p0
.end method

.method public static b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/be;
    .locals 1

    .line 6
    new-instance p0, Lcom/android/tools/r8/internal/be;

    sget-object v0, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    invoke-direct {p0, v0, v0}, Lcom/android/tools/r8/internal/be;-><init>(Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/t40;)V

    return-object p0
.end method

.method public static b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/de;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/M2;",
            "Lcom/android/tools/r8/internal/p10;",
            "Lcom/android/tools/r8/graph/y<",
            "+",
            "Lcom/android/tools/r8/graph/j;",
            ">;)",
            "Lcom/android/tools/r8/internal/de;"
        }
    .end annotation

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/de;->i:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 5
    :cond_3
    :goto_1
    new-instance v0, Lcom/android/tools/r8/internal/L81;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/internal/L81;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/q10;->a(Lcom/android/tools/r8/internal/p10;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/ae0;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/de;

    return-object p0
.end method

.method public static b(Ljava/util/Queue;Lcom/android/tools/r8/graph/M2;Ljava/lang/Boolean;)V
    .locals 1

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/ce;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 8
    sget-object p2, Lcom/android/tools/r8/internal/be;->e:Lcom/android/tools/r8/internal/be;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/android/tools/r8/internal/be;->f:Lcom/android/tools/r8/internal/be;

    .line 9
    :goto_0
    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/ce;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/be;)V

    invoke-interface {p0, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final D()Lcom/android/tools/r8/internal/pu0;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/tools/r8/internal/p10;->c:Lcom/android/tools/r8/internal/p10;

    if-ne v0, v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/tools/r8/internal/p10;->d:Lcom/android/tools/r8/internal/p10;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/de;->c(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object v0

    return-object v0
.end method

.method public E()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/de;->h:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public F()Lcom/android/tools/r8/internal/wI;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/de;->e:Lcom/android/tools/r8/internal/wI;

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/tools/r8/internal/de;->i:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/de;->f:Lcom/android/tools/r8/graph/y;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/de;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/de;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/de;->h:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/de;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/wI;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/tools/r8/internal/de;->h:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/de;->F()Lcom/android/tools/r8/internal/wI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/wI;->c()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/de;->h:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/internal/ae0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/ae0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/ae0;",
            "Lcom/android/tools/r8/graph/y<",
            "*>;)",
            "Lcom/android/tools/r8/internal/ae0;"
        }
    .end annotation

    .line 122
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object p1

    .line 124
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 125
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 127
    invoke-static {}, Lcom/android/tools/r8/internal/wI;->a()Lcom/android/tools/r8/internal/wI$a;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->f6:Lcom/android/tools/r8/graph/M2;

    .line 128
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/wI$a;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/wI$a;

    move-result-object v1

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->d6:Lcom/android/tools/r8/graph/M2;

    .line 129
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/wI$a;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/wI$a;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/wI$a;->a()Lcom/android/tools/r8/internal/wI;

    move-result-object v0

    .line 131
    iget-object p1, p1, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    .line 132
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/tools/r8/internal/de;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/wI;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    return-object p1

    .line 133
    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 134
    iget-object p1, p1, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    .line 135
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/tools/r8/internal/de;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    return-object p1

    .line 136
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 137
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p1

    .line 138
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 139
    sget-boolean p2, Lcom/android/tools/r8/internal/de;->i:Z

    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/de;->f:Lcom/android/tools/r8/graph/y;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    if-nez p2, :cond_5

    .line 140
    iget-object p2, p0, Lcom/android/tools/r8/internal/de;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 141
    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/de;->f:Lcom/android/tools/r8/graph/y;

    .line 142
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/android/tools/r8/internal/de;->a(Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 143
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/de;->F()Lcom/android/tools/r8/internal/wI;

    move-result-object v0

    .line 144
    iget-object p1, p1, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    .line 145
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/tools/r8/internal/de;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/wI;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    return-object p1

    .line 146
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 147
    iget-object p1, p1, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    .line 148
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/tools/r8/internal/de;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    return-object p1

    .line 149
    :cond_7
    sget-boolean p2, Lcom/android/tools/r8/internal/de;->i:Z

    if-nez p2, :cond_9

    .line 150
    instance-of p2, p1, Lcom/android/tools/r8/internal/Zd0;

    if-eqz p2, :cond_8

    goto :goto_2

    .line 151
    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 152
    :cond_9
    :goto_2
    iget-object p1, p1, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/de;->d(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/ae0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/de;->c(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/wI;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;
    .locals 2

    .line 154
    sget-boolean v0, Lcom/android/tools/r8/internal/de;->i:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/de;->f:Lcom/android/tools/r8/graph/y;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/android/tools/r8/internal/de;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 156
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/de;->F()Lcom/android/tools/r8/internal/wI;

    move-result-object v0

    .line 157
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/wI;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 158
    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/de;->f:Lcom/android/tools/r8/graph/y;

    invoke-static {v1, v0, p2}, Lcom/android/tools/r8/internal/de;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/wI;Lcom/android/tools/r8/internal/wI;)Lcom/android/tools/r8/internal/wI;

    move-result-object v0

    .line 159
    :goto_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/de;->f:Lcom/android/tools/r8/graph/y;

    .line 160
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iget-object v1, p0, Lcom/android/tools/r8/internal/de;->f:Lcom/android/tools/r8/graph/y;

    .line 161
    invoke-virtual {p2, v1, p1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/wI;

    move-result-object p2

    .line 162
    iget-object v1, p0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    .line 163
    invoke-virtual {v1, p3}, Lcom/android/tools/r8/internal/p10;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/p10;

    move-result-object p3

    .line 164
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/wI;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 165
    iget-object p2, p0, Lcom/android/tools/r8/internal/de;->f:Lcom/android/tools/r8/graph/y;

    invoke-static {p1, p3, p2}, Lcom/android/tools/r8/internal/de;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    return-object p1

    .line 166
    :cond_5
    iget-object p2, p0, Lcom/android/tools/r8/internal/de;->f:Lcom/android/tools/r8/graph/y;

    invoke-static {p1, p3, p2, v0}, Lcom/android/tools/r8/internal/de;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/wI;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/internal/q10;)Lcom/android/tools/r8/internal/de;
    .locals 7

    .line 12
    sget-boolean v0, Lcom/android/tools/r8/internal/de;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_1
    :goto_0
    new-instance v6, Lcom/android/tools/r8/internal/de;

    iget-object v1, p0, Lcom/android/tools/r8/internal/de;->h:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/de;->e:Lcom/android/tools/r8/internal/wI;

    iget-object v4, p0, Lcom/android/tools/r8/internal/de;->f:Lcom/android/tools/r8/graph/y;

    move-object v0, v6

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/de;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/internal/wI;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/q10;)V

    return-object v6
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Ljava/util/function/Function;Ljava/util/Set;)Lcom/android/tools/r8/internal/pu0;
    .locals 11

    .line 86
    sget-boolean p1, Lcom/android/tools/r8/internal/de;->i:Z

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/de;->f:Lcom/android/tools/r8/graph/y;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    .line 87
    iget-object v0, p0, Lcom/android/tools/r8/internal/de;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 88
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/de;->h:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 89
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 90
    sget-boolean p1, Lcom/android/tools/r8/internal/D70;->b:Z

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 91
    :cond_5
    :goto_2
    iget-object p1, v0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/L2;->f:[B

    const/4 p2, 0x0

    aget-byte p1, p1, p2

    int-to-char p1, p1

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/D70;->a(CZ)Lcom/android/tools/r8/internal/D70;

    move-result-object p1

    return-object p1

    .line 92
    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/internal/de;->e:Lcom/android/tools/r8/internal/wI;

    if-eqz v1, :cond_f

    .line 93
    iget-object v1, v1, Lcom/android/tools/r8/internal/wI;->a:Lcom/android/tools/r8/internal/u1;

    .line 94
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_5

    .line 95
    :cond_7
    new-instance v1, Lcom/android/tools/r8/internal/U6;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/U6;-><init>()V

    .line 96
    new-instance v8, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/C7;-><init>()V

    .line 97
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/de;->F()Lcom/android/tools/r8/internal/wI;

    move-result-object v9

    new-instance v10, Lcom/android/tools/r8/internal/R81;

    move-object v2, v10

    move-object v3, p0

    move-object v4, p3

    move-object v5, p2

    move-object v6, v1

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/internal/R81;-><init>(Lcom/android/tools/r8/internal/de;Ljava/util/Set;Ljava/util/function/Function;Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/internal/C7;)V

    .line 98
    invoke-virtual {v9, v10}, Lcom/android/tools/r8/internal/wI;->a(Ljava/util/function/BiConsumer;)V

    .line 99
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/U6;->a()Z

    move-result p3

    if-eqz p3, :cond_d

    .line 100
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result p3

    if-eqz p3, :cond_c

    if-nez p1, :cond_9

    .line 101
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/E0;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_3
    if-nez p1, :cond_b

    .line 102
    iget-object p1, p0, Lcom/android/tools/r8/internal/de;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne v0, p1, :cond_a

    goto :goto_4

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 103
    :cond_b
    :goto_4
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/E0;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object p2, p0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    iget-object p3, p0, Lcom/android/tools/r8/internal/de;->f:Lcom/android/tools/r8/graph/y;

    invoke-static {p1, p2, p3}, Lcom/android/tools/r8/internal/de;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    return-object p1

    .line 104
    :cond_c
    invoke-static {}, Lcom/android/tools/r8/internal/wI;->a()Lcom/android/tools/r8/internal/wI$a;

    move-result-object p1

    .line 105
    iget-object p3, p0, Lcom/android/tools/r8/internal/de;->e:Lcom/android/tools/r8/internal/wI;

    new-instance v1, Lcom/android/tools/r8/internal/S81;

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/internal/S81;-><init>(Ljava/util/function/Function;Lcom/android/tools/r8/internal/wI$a;)V

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/wI;->a(Ljava/util/function/BiConsumer;)V

    .line 106
    iget-object p2, p0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    iget-object p3, p0, Lcom/android/tools/r8/internal/de;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/wI$a;->a()Lcom/android/tools/r8/internal/wI;

    move-result-object p1

    invoke-static {v0, p2, p3, p1}, Lcom/android/tools/r8/internal/de;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/wI;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    return-object p1

    .line 107
    :cond_d
    iget-object p1, p0, Lcom/android/tools/r8/internal/de;->h:Lcom/android/tools/r8/graph/M2;

    if-ne v0, p1, :cond_e

    goto :goto_6

    :cond_e
    iget-object p1, p0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    iget-object p2, p0, Lcom/android/tools/r8/internal/de;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/de;->F()Lcom/android/tools/r8/internal/wI;

    move-result-object p3

    invoke-static {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/de;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/wI;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    return-object p1

    .line 108
    :cond_f
    :goto_5
    iget-object p1, p0, Lcom/android/tools/r8/internal/de;->h:Lcom/android/tools/r8/graph/M2;

    if-ne v0, p1, :cond_10

    :goto_6
    return-object p0

    :cond_10
    iget-object p1, p0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    iget-object p2, p0, Lcom/android/tools/r8/internal/de;->f:Lcom/android/tools/r8/graph/y;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/de;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/util/Set;Ljava/util/function/Function;Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/graph/M2;Ljava/lang/Boolean;)V
    .locals 0

    .line 109
    invoke-interface {p1, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 110
    :cond_0
    invoke-interface {p2, p5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    if-eq p5, p1, :cond_3

    .line 111
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/U6;->e()V

    .line 112
    iget-object p2, p0, Lcom/android/tools/r8/internal/de;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p2

    if-nez p2, :cond_3

    .line 114
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 115
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 116
    :cond_1
    new-instance p2, Lcom/android/tools/r8/internal/If;

    .line 117
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "More than one interface has changed to a class: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " and "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p2

    .line 118
    :cond_2
    :goto_0
    invoke-virtual {p4, p1}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Z
    .locals 2

    .line 75
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/j;->h(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/de;->F()Lcom/android/tools/r8/internal/wI;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/T81;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/T81;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 77
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/wI;->a(Ljava/util/function/BiPredicate;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Ljava/util/function/Predicate;)Z
    .locals 0

    .line 79
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic b(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/ae0;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/de;->d(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lcom/android/tools/r8/internal/de;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/de;
    .locals 2

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/internal/de;->i:Z

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/de;->e:Lcom/android/tools/r8/internal/wI;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/de;->e:Lcom/android/tools/r8/internal/wI;

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/internal/wI;->a:Lcom/android/tools/r8/internal/u1;

    .line 8
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    if-ne v0, p1, :cond_6

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    goto :goto_3

    :cond_6
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 11
    :goto_3
    iget-object p3, p0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    .line 12
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/p10;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/p10;

    move-result-object p2

    .line 13
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/de;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/de;->g:Lcom/android/tools/r8/internal/q10;

    new-instance v1, Lcom/android/tools/r8/internal/U81;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/U81;-><init>(Lcom/android/tools/r8/internal/de;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/q10;->a(Lcom/android/tools/r8/internal/p10;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/ae0;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/de;

    return-object p1
.end method

.method public final d(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/p10;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/p10;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/de;->c(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/internal/de;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/de;

    iget-object v0, p0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    iget-object v2, p1, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/de;->h:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p1, Lcom/android/tools/r8/internal/de;->h:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/de;->F()Lcom/android/tools/r8/internal/wI;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/de;->F()Lcom/android/tools/r8/internal/wI;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/wI;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    iget-object v1, p0, Lcom/android/tools/r8/internal/de;->h:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final s()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/de;->h:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/de;->F()Lcom/android/tools/r8/internal/wI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/wI;->b()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/M81;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/M81;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/N81;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/N81;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
