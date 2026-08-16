.class public final Lcom/android/tools/r8/internal/Kp0;
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
    .locals 5

    iget-object v0, p3, Lcom/android/tools/r8/internal/Mp0;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    iget-object v0, p3, Lcom/android/tools/r8/internal/Mp0;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

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

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Hp0;->p()Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Hp0;->n()Lcom/android/tools/r8/internal/Hp0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Hp0;->i()Lcom/android/tools/r8/internal/xp0;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Hp0;->p()Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Hp0;->o()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Hp0;->m()Lcom/android/tools/r8/internal/Hp0;

    move-result-object v3

    if-eq v3, v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v2, p3}, Lcom/android/tools/r8/internal/Op0;->a(Lcom/android/tools/r8/internal/yp0;Lcom/android/tools/r8/internal/Mp0;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    if-eqz v0, :cond_7

    move-object v0, p2

    check-cast v0, Lcom/android/tools/r8/internal/Gp0;

    iget-object v1, p3, Lcom/android/tools/r8/internal/Mp0;->a:Ljava/util/IdentityHashMap;

    iget-object v3, v0, Lcom/android/tools/r8/internal/Gp0;->e:Lcom/android/tools/r8/internal/VJ;

    new-instance v4, Lcom/android/tools/r8/internal/gp0;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/internal/gp0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p3, Lcom/android/tools/r8/internal/Mp0;->h:Ljava/util/IdentityHashMap;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Gp0;->e:Lcom/android/tools/r8/internal/VJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-boolean v1, Lcom/android/tools/r8/internal/Kp0;->a:Z

    if-nez v1, :cond_a

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    sget-boolean v0, Lcom/android/tools/r8/internal/Kp0;->a:Z

    if-nez v0, :cond_9

    instance-of v0, p2, Lcom/android/tools/r8/internal/wp0;

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Hp0;->h()Lcom/android/tools/r8/internal/wp0;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/wp0;->e:Lcom/android/tools/r8/internal/Hp0;

    invoke-interface {v0, v2}, Lcom/android/tools/r8/internal/yp0;->a(Ljava/lang/String;)V

    iget-object v1, p3, Lcom/android/tools/r8/internal/Mp0;->a:Ljava/util/IdentityHashMap;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/Fp0;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    new-instance v3, Lcom/android/tools/r8/internal/cp0;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/cp0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_1
    iget-object p3, p3, Lcom/android/tools/r8/internal/Mp0;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {p3, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Hp0;->s()V

    const/4 p1, 0x1

    return p1

    :cond_b
    :goto_2
    return v1
.end method
