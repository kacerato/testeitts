.class public final Lcom/android/tools/r8/internal/Lp0;
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
    .locals 7

    iget-object v0, p3, Lcom/android/tools/r8/internal/Mp0;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    iget-object v0, p3, Lcom/android/tools/r8/internal/Mp0;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Hp0;->o()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    instance-of v0, p2, Lcom/android/tools/r8/internal/Gp0;

    if-nez v0, :cond_1

    instance-of v2, p2, Lcom/android/tools/r8/internal/wp0;

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p3, Lcom/android/tools/r8/internal/Mp0;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Cp0;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Hp0;->p()Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Hp0;->n()Lcom/android/tools/r8/internal/Hp0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Hp0;->i()Lcom/android/tools/r8/internal/xp0;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Hp0;->p()Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_6

    :cond_3
    iget-object v3, p3, Lcom/android/tools/r8/internal/Mp0;->b:Lcom/android/tools/r8/internal/Pp0;

    iget-object v4, v2, Lcom/android/tools/r8/internal/xp0;->e:Lcom/android/tools/r8/internal/QJ;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/Pp0;->b(Lcom/android/tools/r8/internal/WJ;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, ""

    iget-object v4, v2, Lcom/android/tools/r8/internal/xp0;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Hp0;->p()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Hp0;->n()Lcom/android/tools/r8/internal/Hp0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Hp0;->g()Lcom/android/tools/r8/internal/up0;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Hp0;->o()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Hp0;->p()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    return v1

    :cond_5
    invoke-interface {v2}, Lcom/android/tools/r8/internal/yp0;->d()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v2}, Lcom/android/tools/r8/internal/yp0;->e()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_0
    const/4 v3, 0x1

    new-array v4, v3, [Lcom/android/tools/r8/internal/yp0;

    aput-object v2, v4, v1

    invoke-static {v3}, Lcom/android/tools/r8/internal/CT;->a(I)I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v6, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Hp0;->m()Lcom/android/tools/r8/internal/Hp0;

    move-result-object v4

    if-eq v4, v2, :cond_a

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Hp0;->n()Lcom/android/tools/r8/internal/Hp0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Hp0;->g()Lcom/android/tools/r8/internal/up0;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Hp0;->m()Lcom/android/tools/r8/internal/Hp0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Hp0;->g()Lcom/android/tools/r8/internal/up0;

    move-result-object v4

    if-eqz v2, :cond_9

    if-ne v2, v4, :cond_9

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/up0;->d()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/up0;->e()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    return v1

    :cond_a
    :goto_1
    new-instance v2, Lcom/android/tools/r8/internal/dM0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/dM0;-><init>()V

    invoke-static {v6, v2}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result v2

    if-eqz v2, :cond_b

    return v1

    :cond_b
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/yp0;

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    move-object v0, p2

    check-cast v0, Lcom/android/tools/r8/internal/Gp0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Gp0;->e:Lcom/android/tools/r8/internal/VJ;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_c

    iget-object v2, p3, Lcom/android/tools/r8/internal/Mp0;->a:Ljava/util/IdentityHashMap;

    new-instance v4, Lcom/android/tools/r8/internal/hp0;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/yp0;->b()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/android/tools/r8/internal/hp0;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {v2, v0, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_c
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/yp0;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/yp0;->d()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v1}, Lcom/android/tools/r8/internal/yp0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4}, Lcom/android/tools/r8/internal/yp0;->b()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/ip0;

    invoke-direct {v5, v2, v4, v1}, Lcom/android/tools/r8/internal/ip0;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    invoke-interface {v4}, Lcom/android/tools/r8/internal/yp0;->d()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v1}, Lcom/android/tools/r8/internal/yp0;->b()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-interface {v4}, Lcom/android/tools/r8/internal/yp0;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/ip0;

    invoke-direct {v5, v1, v2, v4}, Lcom/android/tools/r8/internal/ip0;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    invoke-interface {v1}, Lcom/android/tools/r8/internal/yp0;->b()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-interface {v4}, Lcom/android/tools/r8/internal/yp0;->b()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/ip0;

    invoke-direct {v5, v1, v4, v2}, Lcom/android/tools/r8/internal/ip0;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Ljava/lang/String;)V

    :goto_2
    iget-object v1, p3, Lcom/android/tools/r8/internal/Mp0;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_f
    sget-boolean v0, Lcom/android/tools/r8/internal/Lp0;->a:Z

    if-nez v0, :cond_11

    instance-of v0, p2, Lcom/android/tools/r8/internal/wp0;

    if-eqz v0, :cond_10

    goto :goto_3

    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_11
    :goto_3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Hp0;->h()Lcom/android/tools/r8/internal/wp0;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/wp0;->e:Lcom/android/tools/r8/internal/Hp0;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_12

    invoke-interface {v1}, Lcom/android/tools/r8/internal/yp0;->b()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/tools/r8/internal/yp0;->a(Lcom/android/tools/r8/internal/xw0;)V

    iget-object v2, p3, Lcom/android/tools/r8/internal/Mp0;->a:Ljava/util/IdentityHashMap;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/Fp0;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    new-instance v4, Lcom/android/tools/r8/internal/ep0;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/yp0;->b()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/android/tools/r8/internal/ep0;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {v2, v0, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_12
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/yp0;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Mp0;->a()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/android/tools/r8/internal/yp0;->a(Lcom/android/tools/r8/internal/xw0;)V

    invoke-interface {v1}, Lcom/android/tools/r8/internal/yp0;->d()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v1}, Lcom/android/tools/r8/internal/yp0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4}, Lcom/android/tools/r8/internal/yp0;->b()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    new-instance v6, Lcom/android/tools/r8/internal/fp0;

    invoke-direct {v6, v2, v4, v1, v5}, Lcom/android/tools/r8/internal/fp0;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Ljava/lang/String;Lcom/android/tools/r8/internal/xw0;)V

    goto :goto_4

    :cond_13
    invoke-interface {v4}, Lcom/android/tools/r8/internal/yp0;->d()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v1}, Lcom/android/tools/r8/internal/yp0;->b()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-interface {v4}, Lcom/android/tools/r8/internal/yp0;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/android/tools/r8/internal/fp0;

    invoke-direct {v6, v1, v2, v4, v5}, Lcom/android/tools/r8/internal/fp0;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Ljava/lang/String;Lcom/android/tools/r8/internal/xw0;)V

    goto :goto_4

    :cond_14
    invoke-interface {v1}, Lcom/android/tools/r8/internal/yp0;->b()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-interface {v4}, Lcom/android/tools/r8/internal/yp0;->b()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    new-instance v6, Lcom/android/tools/r8/internal/fp0;

    invoke-direct {v6, v1, v4, v2, v5}, Lcom/android/tools/r8/internal/fp0;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Ljava/lang/String;Lcom/android/tools/r8/internal/xw0;)V

    :goto_4
    iget-object v1, p3, Lcom/android/tools/r8/internal/Mp0;->a:Ljava/util/IdentityHashMap;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/Fp0;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    iget-object p3, p3, Lcom/android/tools/r8/internal/Mp0;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {p3, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Hp0;->s()V

    return v3

    :cond_15
    :goto_6
    return v1
.end method
