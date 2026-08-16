.class public final Lcom/android/tools/r8/internal/bc0;
.super Lcom/android/tools/r8/internal/mr0;
.source "SourceFile"


# instance fields
.field public final c:[Lcom/android/tools/r8/graph/l1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/mr0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)V

    iput-object p3, p0, Lcom/android/tools/r8/internal/bc0;->c:[Lcom/android/tools/r8/graph/l1;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/l1;Ljava/util/List;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 19
    iget-object p0, p0, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    if-ne p3, p0, :cond_0

    .line 20
    new-instance p0, Lcom/android/tools/r8/internal/ga;

    filled-new-array {p3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 21
    invoke-virtual {p2, p4, p3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p3

    iget-object v0, p2, Lcom/android/tools/r8/graph/u1;->k0:Lcom/android/tools/r8/graph/L2;

    .line 22
    invoke-virtual {p2, p4, p3, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    const/16 p3, 0xb8

    const/4 p4, 0x0

    invoke-direct {p0, p3, p2, p4}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 23
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;)V
    .locals 2

    .line 1
    const-string v0, "[Ljava/lang/Object;"

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->d(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;)V

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/graph/u1;->s6:Lcom/android/tools/r8/internal/eA;

    new-instance v1, Lcom/android/tools/r8/internal/K51;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/K51;-><init>(Lcom/android/tools/r8/graph/u1;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eA;->forEach(Ljava/util/function/BiConsumer;)V

    return-void

    :catchall_0
    move-exception v0

    .line 6
    monitor-exit p0

    throw v0
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p1

    monitor-enter p0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/u1;->d(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;)V

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/u1;->c(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/bc0;->c:[Lcom/android/tools/r8/graph/l1;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final a(Ljava/util/ArrayList;Lcom/android/tools/r8/graph/l1;)V
    .locals 4

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/mr0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 15
    new-instance v1, Lcom/android/tools/r8/internal/pa;

    sget-object v2, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v1, Lcom/android/tools/r8/internal/T9;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/internal/T9;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v1, p2, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->s6:Lcom/android/tools/r8/internal/eA;

    new-instance v2, Lcom/android/tools/r8/internal/L51;

    invoke-direct {v2, p2, p1, v0}, Lcom/android/tools/r8/internal/L51;-><init>(Lcom/android/tools/r8/graph/l1;Ljava/util/List;Lcom/android/tools/r8/graph/u1;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/eA;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_0
    return-void
.end method

.method public final b()Lcom/android/tools/r8/graph/G;
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/internal/mr0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/tools/r8/internal/bc0;->c:[Lcom/android/tools/r8/graph/l1;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {p0, v0, v4}, Lcom/android/tools/r8/internal/bc0;->a(Ljava/util/ArrayList;Lcom/android/tools/r8/graph/l1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/Wa;

    iget-object v2, p0, Lcom/android/tools/r8/internal/bc0;->c:[Lcom/android/tools/r8/graph/l1;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Wa;-><init>([Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/tools/r8/internal/ab;

    sget-object v2, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/mr0;->a(Ljava/util/ArrayList;)Lcom/android/tools/r8/graph/G;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/mr0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/z9;

    iget-object v4, p0, Lcom/android/tools/r8/internal/bc0;->c:[Lcom/android/tools/r8/graph/l1;

    array-length v4, v4

    int-to-long v4, v4

    sget-object v6, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v3, v4, v5, v6}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/tools/r8/internal/xa;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/xa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/tools/r8/internal/yb;

    sget-object v3, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4}, Lcom/android/tools/r8/internal/yb;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/bc0;->c:[Lcom/android/tools/r8/graph/l1;

    array-length v3, v0

    if-ge v1, v3, :cond_2

    aget-object v0, v0, v1

    new-instance v3, Lcom/android/tools/r8/internal/pa;

    sget-object v5, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v3, v5, v4}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/tools/r8/internal/z9;

    int-to-long v5, v1

    sget-object v7, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v3, v5, v6, v7}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2, v0}, Lcom/android/tools/r8/internal/bc0;->a(Ljava/util/ArrayList;Lcom/android/tools/r8/graph/l1;)V

    new-instance v0, Lcom/android/tools/r8/internal/Z8;

    sget-object v3, Lcom/android/tools/r8/internal/YV;->b:Lcom/android/tools/r8/internal/YV;

    invoke-direct {v0, v3}, Lcom/android/tools/r8/internal/Z8;-><init>(Lcom/android/tools/r8/internal/YV;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/pa;

    sget-object v1, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v0, v1, v4}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/tools/r8/internal/ab;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/mr0;->a(Ljava/util/ArrayList;)Lcom/android/tools/r8/graph/G;

    move-result-object v0

    return-object v0
.end method
