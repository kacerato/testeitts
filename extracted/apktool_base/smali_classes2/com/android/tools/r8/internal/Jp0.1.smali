.class public final Lcom/android/tools/r8/internal/Jp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Np0;


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Hp0;Lcom/android/tools/r8/internal/Hp0;Lcom/android/tools/r8/internal/Mp0;)Z
    .locals 10

    iget-object v0, p3, Lcom/android/tools/r8/internal/Mp0;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-eqz p2, :cond_15

    instance-of v2, p2, Lcom/android/tools/r8/internal/Ep0;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p3, Lcom/android/tools/r8/internal/Mp0;->e:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p2, Lcom/android/tools/r8/internal/Hp0;->a:Ljava/util/LinkedHashSet;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Hp0;->o()Z

    move-result v2

    if-eqz v2, :cond_14

    goto/16 :goto_a

    :cond_0
    instance-of v2, p2, Lcom/android/tools/r8/internal/up0;

    if-eqz v2, :cond_d

    if-nez v0, :cond_d

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Hp0;->g()Lcom/android/tools/r8/internal/up0;

    move-result-object v2

    iget-object v4, p3, Lcom/android/tools/r8/internal/Mp0;->d:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p3, Lcom/android/tools/r8/internal/Mp0;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    iget-object v5, p3, Lcom/android/tools/r8/internal/Mp0;->e:Ljava/util/Set;

    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    new-instance v5, Lcom/android/tools/r8/internal/Yx0;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    invoke-virtual {v5, p2}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    move v6, v1

    :goto_2
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/Hp0;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v8, v7, Lcom/android/tools/r8/internal/Cp0;

    if-eqz v8, :cond_3

    move v6, v3

    :cond_3
    instance-of v8, v7, Lcom/android/tools/r8/internal/Ap0;

    if-eqz v8, :cond_4

    if-eqz v6, :cond_6

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Hp0;->p()Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_4

    :cond_4
    iget-object v7, v7, Lcom/android/tools/r8/internal/Hp0;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    goto :goto_2

    :cond_5
    :goto_3
    iget-object v5, p2, Lcom/android/tools/r8/internal/Hp0;->a:Ljava/util/LinkedHashSet;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v3

    goto :goto_5

    :cond_6
    :goto_4
    move v5, v1

    :goto_5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Hp0;->g()Lcom/android/tools/r8/internal/up0;

    move-result-object v6

    iget-object v6, v6, Lcom/android/tools/r8/internal/up0;->e:Lcom/android/tools/r8/internal/mK;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/up0;->d()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/up0;->e()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    iget-object v2, p3, Lcom/android/tools/r8/internal/Mp0;->b:Lcom/android/tools/r8/internal/Pp0;

    invoke-virtual {v2, v6}, Lcom/android/tools/r8/internal/Pp0;->a(Lcom/android/tools/r8/internal/WJ;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_6

    :cond_8
    move v2, v1

    goto :goto_7

    :cond_9
    :goto_6
    move v2, v3

    :goto_7
    iget-object v7, p3, Lcom/android/tools/r8/internal/Mp0;->b:Lcom/android/tools/r8/internal/Pp0;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/WJ;->Q1()Z

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/VJ;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    iget-object v7, v7, Lcom/android/tools/r8/internal/Pp0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v8, v7, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    iget-object v9, v8, Lcom/android/tools/r8/graph/q2;->d:Lcom/android/tools/r8/graph/A2;

    if-eq v9, v6, :cond_c

    iget-object v8, v8, Lcom/android/tools/r8/graph/q2;->f:Lcom/android/tools/r8/graph/A2;

    if-ne v8, v6, :cond_a

    goto :goto_8

    :cond_a
    iget-object v7, v7, Lcom/android/tools/r8/graph/u1;->w4:Lcom/android/tools/r8/graph/q2;

    iget-object v8, v7, Lcom/android/tools/r8/graph/q2;->d:Lcom/android/tools/r8/graph/A2;

    if-eq v8, v6, :cond_c

    iget-object v7, v7, Lcom/android/tools/r8/graph/q2;->f:Lcom/android/tools/r8/graph/A2;

    if-ne v7, v6, :cond_b

    goto :goto_8

    :cond_b
    move v6, v1

    goto :goto_9

    :cond_c
    :goto_8
    move v6, v3

    :goto_9
    if-eqz v4, :cond_14

    if-eqz v5, :cond_14

    if-eqz v2, :cond_14

    if-nez v6, :cond_14

    goto :goto_a

    :cond_d
    instance-of v2, p2, Lcom/android/tools/r8/internal/xp0;

    if-eqz v2, :cond_14

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Hp0;->o()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Hp0;->m()Lcom/android/tools/r8/internal/Hp0;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v2, Lcom/android/tools/r8/internal/Cp0;

    if-eqz v2, :cond_14

    iget-object v2, p2, Lcom/android/tools/r8/internal/Hp0;->a:Ljava/util/LinkedHashSet;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    if-nez v0, :cond_14

    iget-object v2, p3, Lcom/android/tools/r8/internal/Mp0;->b:Lcom/android/tools/r8/internal/Pp0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Hp0;->i()Lcom/android/tools/r8/internal/xp0;

    move-result-object v4

    iget-object v4, v4, Lcom/android/tools/r8/internal/xp0;->e:Lcom/android/tools/r8/internal/QJ;

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/Pp0;->a(Lcom/android/tools/r8/internal/WJ;)Z

    move-result v2

    if-nez v2, :cond_14

    :cond_e
    :goto_a
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Hp0;->s()V

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Hp0;->r()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Hp0;->l()Lcom/android/tools/r8/internal/Fp0;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/tools/r8/internal/Fp0;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v2

    iget-object v4, p3, Lcom/android/tools/r8/internal/Mp0;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/jp0;

    if-eqz v4, :cond_11

    invoke-interface {v4}, Lcom/android/tools/r8/internal/jp0;->b()Z

    move-result v5

    if-nez v5, :cond_11

    sget-boolean v2, Lcom/android/tools/r8/internal/Jp0;->a:Z

    if-nez v2, :cond_10

    invoke-interface {v4}, Lcom/android/tools/r8/internal/jp0;->a()Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_b

    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    :goto_b
    invoke-interface {v4}, Lcom/android/tools/r8/internal/jp0;->c()Lcom/android/tools/r8/internal/fp0;

    move-result-object v2

    iput-boolean v3, v2, Lcom/android/tools/r8/internal/fp0;->e:Z

    goto :goto_c

    :cond_11
    iget-object v4, p3, Lcom/android/tools/r8/internal/Mp0;->a:Ljava/util/IdentityHashMap;

    sget-object v5, Lcom/android/tools/r8/internal/dp0;->a:Lcom/android/tools/r8/internal/dp0;

    invoke-virtual {v4, v2, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    :goto_c
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Hp0;->o()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Hp0;->m()Lcom/android/tools/r8/internal/Hp0;

    move-result-object p2

    :goto_d
    move v2, v3

    goto/16 :goto_0

    :cond_13
    const/4 p2, 0x0

    goto :goto_d

    :cond_14
    return v1

    :cond_15
    return v2
.end method
