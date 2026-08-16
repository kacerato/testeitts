.class public final Lcom/android/tools/r8/internal/cS;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/internal/dS;

.field public final d:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/dS;->d:Lcom/android/tools/r8/internal/dS;

    iput-object v0, p0, Lcom/android/tools/r8/internal/cS;->c:Lcom/android/tools/r8/internal/dS;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/cS;->d:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/internal/cS;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/cS;->b:Lcom/android/tools/r8/graph/u1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/cS;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->x6:Lcom/android/tools/r8/internal/nC;

    new-instance v1, Lcom/android/tools/r8/internal/m71;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/m71;-><init>(Lcom/android/tools/r8/internal/cS;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/cS;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/cS;->c:Lcom/android/tools/r8/internal/dS;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 24
    iget v0, p1, Lcom/android/tools/r8/internal/WY;->u:I

    and-int/lit8 v0, v0, -0x9

    .line 25
    iput v0, p1, Lcom/android/tools/r8/internal/WY;->u:I

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;[I)V
    .locals 6

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/cS;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/cS;->e:Z

    if-nez v0, :cond_1

    array-length v0, p2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget v0, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 5
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 6
    array-length v2, p2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget v4, p2, v3

    .line 7
    sget-boolean v5, Lcom/android/tools/r8/internal/cS;->e:Z

    if-nez v5, :cond_3

    if-ge v4, v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_3
    :goto_2
    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 9
    :cond_4
    iget-object p2, p0, Lcom/android/tools/r8/internal/cS;->c:Lcom/android/tools/r8/internal/dS;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p2

    .line 11
    iput-object v1, p2, Lcom/android/tools/r8/internal/WY;->n:Ljava/util/BitSet;

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 13
    iget-object p2, p1, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 14
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/TW;->r()Ljava/util/BitSet;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 16
    iget-object p1, p1, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/TW;->r()Ljava/util/BitSet;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    return-void

    .line 18
    :cond_5
    iget-object p2, p0, Lcom/android/tools/r8/internal/cS;->c:Lcom/android/tools/r8/internal/dS;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 20
    iput-object v0, p1, Lcom/android/tools/r8/internal/WY;->o:Ljava/util/BitSet;

    :cond_6
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/em0;)V
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/h10;->b:Lcom/android/tools/r8/internal/h10;

    .line 26
    iget-object v1, p0, Lcom/android/tools/r8/internal/cS;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    iget-object v2, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v1, v2}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    .line 28
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/l1;->c(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/g1;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 29
    iget-object v2, p0, Lcom/android/tools/r8/internal/cS;->d:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 30
    iget-object p1, p0, Lcom/android/tools/r8/internal/cS;->c:Lcom/android/tools/r8/internal/dS;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    monitor-enter v1

    .line 32
    :try_start_0
    iget-object p1, v1, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/KV;->a()Lcom/android/tools/r8/internal/KV;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/VY;

    .line 33
    iput-object p1, v1, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 34
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-virtual {p1, p2, v1}, Lcom/android/tools/r8/internal/VY;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/internal/VY;

    .line 36
    iget-object p1, p0, Lcom/android/tools/r8/internal/cS;->c:Lcom/android/tools/r8/internal/dS;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/o40;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/internal/xt;)V

    return-void

    :catchall_0
    move-exception p1

    .line 37
    monitor-exit v1

    throw p1

    :cond_1
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/cS;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v1}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/internal/cS;->d:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/cS;->a:Lcom/android/tools/r8/graph/y;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->z:Lcom/android/tools/r8/internal/bS;

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/n71;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/n71;-><init>(Lcom/android/tools/r8/internal/cS;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/bS;->a(Ljava/util/function/Consumer;)V

    return-void
.end method
