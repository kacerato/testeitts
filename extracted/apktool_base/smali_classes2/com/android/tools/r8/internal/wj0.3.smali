.class public final Lcom/android/tools/r8/internal/wj0;
.super Lcom/android/tools/r8/internal/Do0;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public c:Ljava/util/Optional;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Do0;-><init>()V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/wj0;->c:Ljava/util/Optional;

    iput-object p1, p0, Lcom/android/tools/r8/internal/wj0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/wj0;->b:Lcom/android/tools/r8/graph/u1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/Set;)Lcom/android/tools/r8/internal/EE;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wj0;->b()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 17
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    iget-object p5, p0, Lcom/android/tools/r8/internal/wj0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p5, p5, Lcom/android/tools/r8/graph/u1;->u4:Lcom/android/tools/r8/graph/A2;

    .line 18
    invoke-virtual {p2, p5}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 19
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 20
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object p2

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 22
    sget-boolean p5, Lcom/android/tools/r8/internal/wj0;->d:Z

    if-nez p5, :cond_1

    iget-object p7, p0, Lcom/android/tools/r8/internal/wj0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p7, p7, Lcom/android/tools/r8/graph/u1;->u4:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, p7}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p5, :cond_3

    .line 23
    iget-object p2, p4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p5, 0x2

    if-ne p2, p5, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 25
    :cond_3
    :goto_1
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/NJ;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 26
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    instance-of p4, p2, Lcom/android/tools/r8/internal/Pf0;

    if-eqz p4, :cond_4

    .line 28
    iget-object p4, p0, Lcom/android/tools/r8/internal/wj0;->a:Lcom/android/tools/r8/graph/y;

    .line 29
    iget-object p4, p4, Lcom/android/tools/r8/graph/y;->O:Lcom/android/tools/r8/internal/yb0;

    .line 30
    iget-object p4, p4, Lcom/android/tools/r8/internal/yb0;->b:Lcom/android/tools/r8/internal/xb0;

    .line 31
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->F0()Lcom/android/tools/r8/internal/Pf0;

    move-result-object p2

    .line 32
    iget p2, p2, Lcom/android/tools/r8/internal/Pf0;->l:I

    .line 33
    iget-object p4, p4, Lcom/android/tools/r8/internal/xb0;->g:Ljava/util/HashMap;

    .line 34
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 35
    iget-object p4, p0, Lcom/android/tools/r8/internal/wj0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p4, p2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    .line 36
    iget-object p4, p0, Lcom/android/tools/r8/internal/wj0;->a:Lcom/android/tools/r8/graph/y;

    invoke-interface {p3, p4, p1, p2, p6}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/ir/optimize/a;)V

    :cond_4
    return-object p3
.end method

.method public final a(Ljava/util/Map;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/wj0;->a(Ljava/util/Map;Lcom/android/tools/r8/graph/E0;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/tools/r8/internal/wj0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->t4:Lcom/android/tools/r8/graph/I2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->s4:Lcom/android/tools/r8/graph/L2;

    .line 3
    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 4
    iget-object p2, p2, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 5
    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/wj0;->c:Ljava/util/Optional;

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Map;Lcom/android/tools/r8/graph/E0;)Z
    .locals 3

    .line 7
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 9
    :cond_0
    iget-object v0, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wj0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->r4:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v2, :cond_1

    const/4 p1, 0x1

    return p1

    .line 10
    :cond_1
    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    return v2

    .line 11
    :cond_2
    iget-object v0, p2, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_3

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/wj0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/wj0;->a(Ljava/util/Map;Lcom/android/tools/r8/graph/E0;)Z

    move-result v0

    .line 14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 15
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method public final declared-synchronized b()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/wj0;->c:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/wj0;->c:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/wj0;->c:Ljava/util/Optional;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/wj0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/graph/d6;

    const/4 v3, 0x4

    invoke-direct {v2, v1, v3}, Lcom/android/tools/r8/graph/d6;-><init>(Lcom/android/tools/r8/graph/y;I)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/wj0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    new-instance v3, Lcom/android/tools/r8/internal/Sx1;

    invoke-direct {v3, p0, v0}, Lcom/android/tools/r8/internal/Sx1;-><init>(Lcom/android/tools/r8/internal/wj0;Ljava/util/Map;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/tools/r8/graph/T;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Wr0;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/wj0;->c:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final getType()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wj0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->r4:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method
