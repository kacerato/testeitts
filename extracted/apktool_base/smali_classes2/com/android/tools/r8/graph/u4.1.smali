.class public final Lcom/android/tools/r8/graph/u4;
.super Lcom/android/tools/r8/graph/i0;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/origin/Origin;

.field public f:Lcom/android/tools/r8/graph/h4;

.field public g:Lcom/android/tools/r8/graph/G;

.field public h:Lcom/android/tools/r8/graph/n4;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/n4;Lcom/android/tools/r8/graph/h4;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/i0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/u4;->e:Lcom/android/tools/r8/origin/Origin;

    iput-object p2, p0, Lcom/android/tools/r8/graph/u4;->h:Lcom/android/tools/r8/graph/n4;

    iput-object p3, p0, Lcom/android/tools/r8/graph/u4;->f:Lcom/android/tools/r8/graph/h4;

    iget-object p1, p2, Lcom/android/tools/r8/graph/n4;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final D0()V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/u4;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/u4;->h:Lcom/android/tools/r8/graph/n4;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/u4;->f:Lcom/android/tools/r8/graph/h4;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final E0()V
    .locals 14

    iget-object v0, p0, Lcom/android/tools/r8/graph/u4;->h:Lcom/android/tools/r8/graph/n4;

    iget-object v8, p0, Lcom/android/tools/r8/graph/u4;->f:Lcom/android/tools/r8/graph/h4;

    sget-boolean v1, Lcom/android/tools/r8/graph/u4;->i:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    iget-object v1, v8, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, v1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ$p;->S0:Z

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    instance-of v2, v1, Lcom/android/tools/r8/ClassFileConsumer;

    :goto_2
    if-eqz v2, :cond_5

    const/16 v1, 0x8

    :goto_3
    move v9, v1

    goto :goto_4

    :cond_5
    const/4 v1, 0x4

    goto :goto_3

    :goto_4
    new-instance v10, Lcom/android/tools/r8/graph/q4;

    invoke-direct {v10, v9}, Lcom/android/tools/r8/graph/q4;-><init>(I)V

    const/4 v11, 0x0

    const/4 v12, 0x1

    :try_start_0
    new-instance v13, Lcom/android/tools/r8/graph/p4;

    iget-object v2, v0, Lcom/android/tools/r8/graph/n4;->b:Lcom/android/tools/r8/graph/E0;

    new-instance v3, Lcom/android/tools/r8/graph/r4;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/graph/r4;-><init>(Lcom/android/tools/r8/graph/n4;)V

    iget-object v6, p0, Lcom/android/tools/r8/graph/u4;->e:Lcom/android/tools/r8/origin/Origin;

    const/4 v5, 0x0

    move-object v1, v13

    move-object v4, v8

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/graph/p4;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/r4;Lcom/android/tools/r8/graph/h4;ZLcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/q4;)V

    new-instance v1, Lcom/android/tools/r8/internal/Vd;

    iget-object v2, v0, Lcom/android/tools/r8/graph/n4;->a:[B

    array-length v3, v2

    invoke-direct {v1, v2, v12}, Lcom/android/tools/r8/internal/Vd;-><init>([BZ)V

    new-array v2, v11, [Lcom/android/tools/r8/internal/K4;

    invoke-virtual {v1, v13, v2, v9}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/ge;[Lcom/android/tools/r8/internal/K4;I)V
    :try_end_0
    .catch Lcom/android/tools/r8/graph/s4; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/tools/r8/internal/If;

    iget-object v2, p0, Lcom/android/tools/r8/graph/u4;->e:Lcom/android/tools/r8/origin/Origin;

    const-string v3, "Could not parse code"

    invoke-direct {v1, v2, v3, v0}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    iget-object v1, v0, Lcom/android/tools/r8/graph/n4;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v11

    :goto_5
    if-ge v3, v2, :cond_6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/graph/i0;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/i0;->n0()Lcom/android/tools/r8/graph/u4;

    move-result-object v5

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/tools/r8/graph/u4;->g:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/i0;->n0()Lcom/android/tools/r8/graph/u4;

    move-result-object v5

    iput-object v0, v5, Lcom/android/tools/r8/graph/u4;->h:Lcom/android/tools/r8/graph/n4;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/i0;->n0()Lcom/android/tools/r8/graph/u4;

    move-result-object v4

    iput-object v8, v4, Lcom/android/tools/r8/graph/u4;->f:Lcom/android/tools/r8/graph/h4;

    goto :goto_5

    :cond_6
    :try_start_1
    new-instance v8, Lcom/android/tools/r8/graph/p4;

    iget-object v2, v0, Lcom/android/tools/r8/graph/n4;->b:Lcom/android/tools/r8/graph/E0;

    new-instance v3, Lcom/android/tools/r8/graph/r4;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/graph/r4;-><init>(Lcom/android/tools/r8/graph/n4;)V

    iget-object v4, p0, Lcom/android/tools/r8/graph/u4;->f:Lcom/android/tools/r8/graph/h4;

    iget-object v6, p0, Lcom/android/tools/r8/graph/u4;->e:Lcom/android/tools/r8/origin/Origin;

    const/4 v5, 0x1

    move-object v1, v8

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/graph/p4;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/r4;Lcom/android/tools/r8/graph/h4;ZLcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/q4;)V

    new-instance v1, Lcom/android/tools/r8/internal/Vd;

    iget-object v2, v0, Lcom/android/tools/r8/graph/n4;->a:[B

    array-length v3, v2

    invoke-direct {v1, v2, v12}, Lcom/android/tools/r8/internal/Vd;-><init>([BZ)V

    iget v2, v10, Lcom/android/tools/r8/graph/q4;->a:I

    new-array v3, v11, [Lcom/android/tools/r8/internal/K4;

    invoke-virtual {v1, v8, v3, v2}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/ge;[Lcom/android/tools/r8/internal/K4;I)V
    :try_end_1
    .catch Lcom/android/tools/r8/graph/s4; {:try_start_1 .. :try_end_1} :catch_2

    :goto_6
    sget-boolean v1, Lcom/android/tools/r8/graph/u4;->i:Z

    if-nez v1, :cond_a

    iget-object v0, v0, Lcom/android/tools/r8/graph/n4;->b:Lcom/android/tools/r8/graph/E0;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v2

    sget-boolean v3, Lcom/android/tools/r8/graph/u4;->i:Z

    if-nez v3, :cond_7

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/i0;->D0()V

    goto :goto_7

    :cond_8
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->H0()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    sget-boolean v2, Lcom/android/tools/r8/graph/u4;->i:Z

    if-nez v2, :cond_9

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/i0;->D0()V

    goto :goto_8

    :cond_a
    return-void

    :catch_2
    move-exception v0

    new-instance v1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public final V()Lcom/android/tools/r8/graph/G;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/u4;->g:Lcom/android/tools/r8/graph/G;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/u4;->e:Lcom/android/tools/r8/origin/Origin;

    new-instance v1, Lcom/android/tools/r8/graph/Og;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/Og;-><init>(Lcom/android/tools/r8/graph/u4;)V

    sget-object v2, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    invoke-static {v0, v2, v1}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/Runnable;)V

    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/graph/u4;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/graph/u4;->g:Lcom/android/tools/r8/graph/G;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/u4;->g:Lcom/android/tools/r8/graph/G;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/i0;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/u4;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/graph/G;->b(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/G;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/SG;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/u4;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/G;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/SG;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/internal/fB;
    .locals 8

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/u4;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 5
    invoke-virtual/range {v0 .. v7}, Lcom/android/tools/r8/graph/G;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/internal/fB;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/u4;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/graph/G;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 2

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/u4;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    new-instance v1, Lcom/android/tools/r8/internal/Va;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/tools/r8/internal/Va;-><init>(Lcom/android/tools/r8/graph/G;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/vk0;)V

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Va;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/f6;)V
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/u4;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/G;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/f6;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/e0;Lcom/android/tools/r8/internal/Mi;)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/u4;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/G;->a(Lcom/android/tools/r8/graph/e0;Lcom/android/tools/r8/internal/Mi;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 0

    new-instance p1, Lcom/android/tools/r8/internal/av0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/av0;-><init>()V

    throw p1
.end method

.method public final k(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/u4;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/G;->k(I)I

    move-result p1

    return p1
.end method

.method public final k0()I
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/av0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/av0;-><init>()V

    throw v0
.end method

.method public final l0()Lcom/android/tools/r8/graph/P;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/u4;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v0

    return-object v0
.end method

.method public final n0()Lcom/android/tools/r8/graph/u4;
    .locals 0

    return-object p0
.end method

.method public final q0()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/u4;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->q0()I

    move-result v0

    return v0
.end method

.method public final s0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/u4;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->s0()Z

    move-result v0

    return v0
.end method

.method public final t0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/u4;->g:Lcom/android/tools/r8/graph/G;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "<lazy-code>"

    return-object v0
.end method

.method public final u0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final x0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/u4;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->x0()Z

    move-result v0

    return v0
.end method
