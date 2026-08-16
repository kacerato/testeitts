.class public final Lcom/android/tools/r8/internal/Mu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/u1;

.field public final b:Lcom/android/tools/r8/internal/G1;

.field public final c:Lcom/android/tools/r8/internal/n6;

.field public final d:Lcom/android/tools/r8/internal/r6;

.field public final e:Lcom/android/tools/r8/internal/q6;

.field public final f:Ljava/util/IdentityHashMap;

.field public final g:Ljava/util/IdentityHashMap;

.field public final h:Lcom/android/tools/r8/internal/nu;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/nu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/n6;->a()Lcom/android/tools/r8/internal/n6;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Mu;->c:Lcom/android/tools/r8/internal/n6;

    new-instance v0, Lcom/android/tools/r8/internal/r6;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/r6;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Mu;->d:Lcom/android/tools/r8/internal/r6;

    new-instance v0, Lcom/android/tools/r8/internal/q6;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/q6;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Mu;->e:Lcom/android/tools/r8/internal/q6;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Mu;->f:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Mu;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Mu;->a:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Mu;->b:Lcom/android/tools/r8/internal/G1;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Mu;->h:Lcom/android/tools/r8/internal/nu;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;ZZLjava/util/List;)Lcom/android/tools/r8/graph/proto/j;
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 11
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/Mu;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;ZZZLjava/util/List;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p3

    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iget-object p4, p0, Lcom/android/tools/r8/internal/Mu;->e:Lcom/android/tools/r8/internal/q6;

    invoke-virtual {p4, p1, p2}, Lcom/android/tools/r8/internal/p6;->b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    .line 14
    iget-object p4, p0, Lcom/android/tools/r8/internal/Mu;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {p4, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p1, p0, Lcom/android/tools/r8/internal/Mu;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {p1, p2, p3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    monitor-exit p0

    return-object p3

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;ZZZLjava/util/List;)Lcom/android/tools/r8/graph/proto/j;
    .locals 8

    .line 17
    sget-boolean v0, Lcom/android/tools/r8/internal/Mu;->i:Z

    if-nez v0, :cond_1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    xor-int/lit8 v1, p4, 0x1

    .line 18
    invoke-static {v1}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v1

    .line 19
    invoke-static {}, Lcom/android/tools/r8/graph/proto/c;->a()Lcom/android/tools/r8/graph/proto/c$a;

    move-result-object v2

    .line 20
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/A2;->a(Z)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/proto/c$a;->a(I)Lcom/android/tools/r8/graph/proto/c$a;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq p3, p4, :cond_12

    if-nez v0, :cond_3

    if-eqz p4, :cond_2

    goto :goto_1

    .line 21
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    const/4 v5, 0x1

    if-nez p5, :cond_a

    .line 22
    invoke-static {}, Lcom/android/tools/r8/graph/proto/k;->d()Lcom/android/tools/r8/graph/proto/k$a;

    move-result-object p3

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/android/tools/r8/graph/proto/k$a;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/proto/k$a;

    move-result-object p3

    .line 24
    invoke-virtual {p2, v4}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/android/tools/r8/graph/proto/k$a;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/proto/k$a;

    move-result-object p3

    .line 25
    iget-object p4, p0, Lcom/android/tools/r8/internal/Mu;->h:Lcom/android/tools/r8/internal/nu;

    iget-object p5, p0, Lcom/android/tools/r8/internal/Mu;->b:Lcom/android/tools/r8/internal/G1;

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 27
    sget-boolean v6, Lcom/android/tools/r8/internal/nu;->c:Z

    if-nez v6, :cond_5

    .line 28
    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/nu;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    .line 29
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 30
    :cond_5
    :goto_2
    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/nu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/mu;

    move-result-object v6

    .line 31
    iget-object p4, p4, Lcom/android/tools/r8/internal/nu;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    .line 32
    iget p4, v6, Lcom/android/tools/r8/internal/mu;->e:I

    const/4 v0, -0x1

    if-eq p4, v0, :cond_6

    if-ne p4, v5, :cond_7

    int-to-long v6, v5

    .line 33
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object p4

    invoke-virtual {p5, v6, v7, p4}, Lcom/android/tools/r8/internal/G1;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Im0;

    move-result-object p4

    goto :goto_3

    .line 34
    :cond_6
    iget-object p4, v6, Lcom/android/tools/r8/internal/mu;->c:Lcom/android/tools/r8/internal/nC;

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p4

    if-ne p4, v5, :cond_7

    .line 35
    iget-object p4, v6, Lcom/android/tools/r8/internal/mu;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/nC;->q()Lcom/android/tools/r8/internal/XB;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/XB;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    .line 36
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    int-to-long v6, p4

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object p4

    invoke-virtual {p5, v6, v7, p4}, Lcom/android/tools/r8/internal/G1;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Im0;

    move-result-object p4

    goto :goto_3

    :cond_7
    move-object p4, v3

    goto :goto_3

    .line 37
    :cond_8
    invoke-virtual {v6, p5, v0}, Lcom/android/tools/r8/internal/mu;->a(Lcom/android/tools/r8/internal/G1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Im0;

    move-result-object p4

    :goto_3
    if-eqz p4, :cond_9

    .line 38
    iput-object p4, p3, Lcom/android/tools/r8/graph/proto/k$a;->d:Lcom/android/tools/r8/internal/Pm0;

    .line 39
    :cond_9
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/proto/k$a;->a()Lcom/android/tools/r8/graph/proto/k;

    move-result-object p3

    invoke-virtual {v2, v4, p3}, Lcom/android/tools/r8/graph/proto/c$a;->a(ILcom/android/tools/r8/graph/proto/b;)Lcom/android/tools/r8/graph/proto/c$a;

    move-result-object p3

    .line 40
    iput-boolean v5, p3, Lcom/android/tools/r8/graph/proto/c$a;->d:Z

    goto :goto_7

    :cond_a
    if-nez v0, :cond_c

    .line 41
    invoke-virtual {p2, v4}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result p5

    if-eqz p5, :cond_b

    goto :goto_4

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_c
    :goto_4
    if-nez v0, :cond_e

    if-nez p3, :cond_d

    goto :goto_5

    .line 42
    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_e
    :goto_5
    if-nez v0, :cond_10

    if-eqz p4, :cond_f

    goto :goto_6

    .line 43
    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    :goto_6
    if-nez v0, :cond_13

    .line 44
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result p3

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result p4

    sub-int/2addr p4, v5

    if-ne p3, p4, :cond_11

    goto :goto_7

    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_12
    move v5, v4

    .line 45
    :cond_13
    :goto_7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result p3

    if-ge v4, p3, :cond_15

    .line 46
    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    add-int p4, v4, v5

    .line 47
    invoke-virtual {p2, p4}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object p5

    if-eq p3, p5, :cond_14

    add-int/2addr p4, v1

    .line 48
    invoke-static {}, Lcom/android/tools/r8/graph/proto/k;->d()Lcom/android/tools/r8/graph/proto/k$a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/graph/proto/k$a;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/proto/k$a;

    move-result-object p3

    invoke-virtual {p3, p5}, Lcom/android/tools/r8/graph/proto/k$a;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/proto/k$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/proto/k$a;->a()Lcom/android/tools/r8/graph/proto/k;

    move-result-object p3

    .line 49
    invoke-virtual {v2, p4, p3}, Lcom/android/tools/r8/graph/proto/c$a;->a(ILcom/android/tools/r8/graph/proto/b;)Lcom/android/tools/r8/graph/proto/c$a;

    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 50
    :cond_15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    if-ne p3, p4, :cond_16

    goto :goto_8

    .line 51
    :cond_16
    invoke-static {}, Lcom/android/tools/r8/graph/proto/k;->d()Lcom/android/tools/r8/graph/proto/k$a;

    move-result-object p3

    .line 52
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/proto/k$a;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/proto/k$a;

    move-result-object p1

    .line 53
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/proto/k$a;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/proto/k$a;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/k$a;->a()Lcom/android/tools/r8/graph/proto/k;

    move-result-object v3

    .line 55
    :goto_8
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/proto/c$a;->a()Lcom/android/tools/r8/graph/proto/c;

    move-result-object p1

    sget-object p2, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    .line 56
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p2, v3, p1}, Lcom/android/tools/r8/graph/proto/j;->a(Ljava/util/List;Lcom/android/tools/r8/graph/proto/k;Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    .line 57
    invoke-virtual {p1, p6}, Lcom/android/tools/r8/graph/proto/j;->a(Ljava/util/List;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V
    .locals 7

    .line 6
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/Mu;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;ZZZLjava/util/List;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object v0

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Mu;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lcom/android/tools/r8/internal/Mu;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)V
    .locals 2

    if-ne p1, p2, :cond_0

    return-void

    .line 1
    :cond_0
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Mu;->d:Lcom/android/tools/r8/internal/r6;

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
