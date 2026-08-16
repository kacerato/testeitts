.class public final Lcom/android/tools/r8/ir/optimize/c0;
.super Lcom/android/tools/r8/internal/te;
.source "SourceFile"


# instance fields
.field public final e:Lcom/android/tools/r8/graph/L2;

.field public final f:Lcom/android/tools/r8/graph/I2;

.field public final g:Lcom/android/tools/r8/graph/M2;

.field public final h:Lcom/android/tools/r8/graph/M2;

.field public final i:Lcom/android/tools/r8/graph/M2;

.field public final j:Lcom/android/tools/r8/graph/L2;

.field public final k:Lcom/android/tools/r8/graph/I2;

.field public final l:Lcom/android/tools/r8/graph/L2;

.field public final m:Lcom/android/tools/r8/graph/A2;

.field public final n:Lcom/android/tools/r8/graph/A2;

.field public final o:Lcom/android/tools/r8/graph/M2;

.field public final p:Lcom/android/tools/r8/graph/M2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/te;-><init>(Lcom/android/tools/r8/graph/y;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->q0:Lcom/android/tools/r8/graph/L2;

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/c0;->e:Lcom/android/tools/r8/graph/L2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->N3:Lcom/android/tools/r8/graph/I2;

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/c0;->f:Lcom/android/tools/r8/graph/I2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->r0:Lcom/android/tools/r8/graph/L2;

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/c0;->j:Lcom/android/tools/r8/graph/L2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->p6:Lcom/android/tools/r8/graph/O1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O1;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/c0;->k:Lcom/android/tools/r8/graph/I2;

    iget-object p1, p0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->s0:Lcom/android/tools/r8/graph/L2;

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/c0;->l:Lcom/android/tools/r8/graph/L2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->R3:Lcom/android/tools/r8/graph/M2;

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/c0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->X3:Lcom/android/tools/r8/graph/M2;

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/c0;->h:Lcom/android/tools/r8/graph/M2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->V3:Lcom/android/tools/r8/graph/M2;

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/c0;->i:Lcom/android/tools/r8/graph/M2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->m5:Lcom/android/tools/r8/graph/Z1;

    iget-object v1, v0, Lcom/android/tools/r8/graph/Z1;->a:Lcom/android/tools/r8/graph/A2;

    iput-object v1, p0, Lcom/android/tools/r8/ir/optimize/c0;->m:Lcom/android/tools/r8/graph/A2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/Z1;->b:Lcom/android/tools/r8/graph/A2;

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/c0;->n:Lcom/android/tools/r8/graph/A2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->U3:Lcom/android/tools/r8/graph/M2;

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/c0;->o:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->W3:Lcom/android/tools/r8/graph/M2;

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/c0;->p:Lcom/android/tools/r8/graph/M2;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/WJ;)Lcom/android/tools/r8/ir/optimize/b0;
    .locals 3

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->Y0()Lcom/android/tools/r8/internal/zE;

    move-result-object p0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-eqz p0, :cond_4

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->U()Lcom/android/tools/r8/internal/Bz;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object p0

    .line 17
    iget-object p0, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object p0

    goto :goto_0

    .line 19
    :cond_0
    instance-of v2, p0, Lcom/android/tools/r8/internal/C4;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    return-object v0

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->B()Lcom/android/tools/r8/internal/C4;

    move-result-object v1

    goto :goto_1

    .line 21
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v2

    if-nez v2, :cond_3

    .line 22
    new-instance v0, Lcom/android/tools/r8/ir/optimize/b0;

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/ir/optimize/b0;-><init>(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/C4;)V

    return-object v0

    .line 23
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->Y0()Lcom/android/tools/r8/internal/zE;

    move-result-object p0

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/Z1;Lcom/android/tools/r8/graph/j1;)Z
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/graph/Z1;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/Z1;->b:Lcom/android/tools/r8/graph/A2;

    .line 9
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/tools/r8/graph/Z1;->a:Lcom/android/tools/r8/graph/A2;

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/Y5;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->i1:Z

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->U3:Lcom/android/tools/r8/graph/M2;

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->m5:Lcom/android/tools/r8/graph/Z1;

    .line 6
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/Y5;->g(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lv/k0;

    invoke-direct {v0, p0, v1}, Lv/k0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/Z1;)V

    .line 7
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/Z1;Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 25
    invoke-interface {v0, p2}, Lcom/android/tools/r8/graph/d1;->e(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {p0, p2}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 27
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p0

    new-instance p2, Lv/l0;

    invoke-direct {p2, p1}, Lv/l0;-><init>(Lcom/android/tools/r8/graph/Z1;)V

    .line 29
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/N4;->b(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 11
    const-string v0, "ListIterationRewriter"

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 0

    .line 12
    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 p2, 0x19

    .line 13
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/internal/we;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->q()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object v8

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    iget-object v7, v0, Lcom/android/tools/r8/ir/optimize/c0;->f:Lcom/android/tools/r8/graph/I2;

    iget-object v9, v0, Lcom/android/tools/r8/ir/optimize/c0;->e:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v4, v7, v9}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v4

    iget-object v7, v0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v4, v7}, Lcom/android/tools/r8/internal/de;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    iget-object v7, v0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object v7, v7, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v7, v7, Lcom/android/tools/r8/internal/nJ$p;->h1:Z

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/shaking/i;

    iget-object v9, v0, Lcom/android/tools/r8/ir/optimize/c0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v7, v4, v9}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v0, Lcom/android/tools/r8/ir/optimize/c0;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4, v7}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v0, Lcom/android/tools/r8/ir/optimize/c0;->h:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4, v7}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_4
    iget-object v7, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/shaking/i;

    iget-object v9, v0, Lcom/android/tools/r8/ir/optimize/c0;->o:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v7, v4, v9}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, v0, Lcom/android/tools/r8/ir/optimize/c0;->p:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4, v7}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_5
    :goto_1
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v7

    if-nez v7, :cond_15

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result v7

    if-eqz v7, :cond_6

    goto/16 :goto_5

    :cond_6
    invoke-static {v8}, Lcom/android/tools/r8/ir/optimize/c0;->a(Lcom/android/tools/r8/internal/WJ;)Lcom/android/tools/r8/ir/optimize/b0;

    move-result-object v7

    if-nez v7, :cond_7

    goto/16 :goto_5

    :cond_7
    iget-object v9, v7, Lcom/android/tools/r8/ir/optimize/b0;->a:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object v9

    if-eqz v9, :cond_15

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    if-ne v10, v4, :cond_15

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v10

    iget-object v11, v0, Lcom/android/tools/r8/ir/optimize/c0;->k:Lcom/android/tools/r8/graph/I2;

    iget-object v12, v0, Lcom/android/tools/r8/ir/optimize/c0;->j:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v10, v11, v12}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Z

    move-result v10

    if-nez v10, :cond_8

    goto/16 :goto_5

    :cond_8
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->B()Z

    move-result v10

    if-eqz v10, :cond_9

    goto/16 :goto_5

    :cond_9
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v10

    iget-object v10, v10, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v10

    if-eq v10, v9, :cond_a

    goto/16 :goto_5

    :cond_a
    iget-object v10, v7, Lcom/android/tools/r8/ir/optimize/b0;->b:Lcom/android/tools/r8/internal/C4;

    if-eqz v10, :cond_b

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object v11

    if-ne v10, v11, :cond_b

    iget-object v7, v7, Lcom/android/tools/r8/ir/optimize/b0;->b:Lcom/android/tools/r8/internal/C4;

    move-object v12, v7

    goto :goto_2

    :cond_b
    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v10

    if-nez v10, :cond_15

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->C()Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result v10

    if-eqz v10, :cond_c

    goto/16 :goto_5

    :cond_c
    invoke-static {v9}, Lcom/android/tools/r8/ir/optimize/c0;->a(Lcom/android/tools/r8/internal/WJ;)Lcom/android/tools/r8/ir/optimize/b0;

    move-result-object v10

    if-nez v10, :cond_d

    goto/16 :goto_5

    :cond_d
    iget-object v11, v10, Lcom/android/tools/r8/ir/optimize/b0;->a:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v11

    if-eqz v11, :cond_15

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->Z()Lcom/android/tools/r8/internal/zE;

    move-result-object v7

    if-ne v7, v11, :cond_15

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v7

    if-nez v7, :cond_e

    goto/16 :goto_5

    :cond_e
    iget-object v7, v10, Lcom/android/tools/r8/ir/optimize/b0;->b:Lcom/android/tools/r8/internal/C4;

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object v13

    if-ne v7, v13, :cond_f

    iget-object v7, v10, Lcom/android/tools/r8/ir/optimize/b0;->b:Lcom/android/tools/r8/internal/C4;

    move-object v13, v7

    goto :goto_3

    :cond_f
    const/4 v13, 0x0

    :goto_3
    iget-object v7, v11, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    sget-object v10, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    if-ne v7, v10, :cond_10

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v7

    goto :goto_4

    :cond_10
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v7

    :goto_4
    iget-object v10, v7, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object v14

    if-eqz v14, :cond_15

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    if-ne v10, v4, :cond_15

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v15

    iget-object v6, v0, Lcom/android/tools/r8/ir/optimize/c0;->l:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v15, v6}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v10}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/I2;->n0()Lcom/android/tools/r8/graph/O2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/O2;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v10}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->B()Z

    move-result v6

    if-nez v6, :cond_11

    goto :goto_5

    :cond_11
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->W()I

    move-result v4

    if-eqz v13, :cond_13

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_5

    :cond_12
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->W()I

    move-result v6

    sub-int/2addr v6, v5

    add-int/2addr v4, v6

    :cond_13
    const/4 v5, 0x2

    if-eq v4, v5, :cond_14

    goto :goto_5

    :cond_14
    new-instance v6, Lcom/android/tools/r8/ir/optimize/a0;

    move-object v7, v6

    move-object v10, v11

    move-object v11, v14

    invoke-direct/range {v7 .. v13}, Lcom/android/tools/r8/ir/optimize/a0;-><init>(Lcom/android/tools/r8/internal/WJ;Lcom/android/tools/r8/internal/WJ;Lcom/android/tools/r8/internal/EB;Lcom/android/tools/r8/internal/WJ;Lcom/android/tools/r8/internal/C4;Lcom/android/tools/r8/internal/C4;)V

    goto :goto_6

    :cond_15
    :goto_5
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_16
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v6, v4

    :goto_7
    if-ge v6, v3, :cond_2a

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/tools/r8/ir/optimize/a0;

    iget-object v8, v7, Lcom/android/tools/r8/ir/optimize/a0;->a:Lcom/android/tools/r8/internal/WJ;

    iget-object v9, v7, Lcom/android/tools/r8/ir/optimize/a0;->b:Lcom/android/tools/r8/internal/WJ;

    iget-object v10, v7, Lcom/android/tools/r8/ir/optimize/a0;->c:Lcom/android/tools/r8/internal/EB;

    iget-object v11, v7, Lcom/android/tools/r8/ir/optimize/a0;->d:Lcom/android/tools/r8/internal/WJ;

    iget-object v12, v7, Lcom/android/tools/r8/ir/optimize/a0;->e:Lcom/android/tools/r8/internal/C4;

    iget-object v7, v7, Lcom/android/tools/r8/ir/optimize/a0;->f:Lcom/android/tools/r8/internal/C4;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v15

    const/4 v13, 0x0

    invoke-virtual {v1, v4, v13}, Lcom/android/tools/r8/internal/fB;->a(ILcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v14

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v13

    invoke-virtual {v14, v13}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v13

    invoke-virtual {v13, v14, v8}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)V

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v13

    iget-object v4, v0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v13, v4}, Lcom/android/tools/r8/internal/de;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    iget-object v13, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v13, v4}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v4

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v13

    const/4 v5, 0x0

    invoke-interface {v1, v13, v5}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v13

    invoke-static {v15}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    if-eqz v4, :cond_17

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v16

    if-eqz v16, :cond_18

    :cond_17
    move-object/from16 v19, v2

    move/from16 v20, v3

    goto :goto_8

    :cond_18
    move-object/from16 v19, v2

    iget-object v2, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    move/from16 v20, v3

    iget-object v3, v0, Lcom/android/tools/r8/ir/optimize/c0;->m:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2, v4, v3}, Lcom/android/tools/r8/graph/j;->e(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v2

    goto :goto_9

    :goto_8
    const/4 v2, 0x0

    :goto_9
    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/Z4;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_a

    :cond_19
    new-instance v3, Lcom/android/tools/r8/internal/mK;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/Z4;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-direct {v3, v2, v13, v5}, Lcom/android/tools/r8/internal/mK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    goto :goto_b

    :cond_1a
    :goto_a
    new-instance v3, Lcom/android/tools/r8/internal/TJ;

    iget-object v2, v0, Lcom/android/tools/r8/ir/optimize/c0;->m:Lcom/android/tools/r8/graph/A2;

    invoke-direct {v3, v2, v13, v5}, Lcom/android/tools/r8/internal/TJ;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    :goto_b
    invoke-virtual {v8, v3}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/zE;)V

    if-eqz v12, :cond_1b

    sget-boolean v2, Lcom/android/tools/r8/internal/xt;->a:Z

    sget-object v2, Lcom/android/tools/r8/internal/h10;->b:Lcom/android/tools/r8/internal/h10;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    iget-object v8, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v18

    move/from16 v21, v6

    move-object v6, v13

    move-object v13, v2

    move-object v2, v14

    move-object v14, v5

    move-object/from16 v16, v3

    move-object/from16 v17, v8

    invoke-static/range {v13 .. v18}, Lcom/android/tools/r8/internal/C4;->a(Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/C4;

    move-result-object v5

    invoke-virtual {v12, v5}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/zE;)V

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v15

    goto :goto_c

    :cond_1b
    move/from16 v21, v6

    move-object v6, v13

    move-object v2, v14

    :goto_c
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    :goto_d
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->w()Lcom/android/tools/r8/internal/W5;

    move-result-object v8

    if-ne v8, v5, :cond_29

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v25

    new-instance v8, Lcom/android/tools/r8/internal/f60;

    iget-object v12, v1, Lcom/android/tools/r8/internal/fB;->e:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v23

    sget-object v27, Lcom/android/tools/r8/internal/f60$a;->b:Lcom/android/tools/r8/internal/f60$a;

    const/16 v26, 0x0

    move-object/from16 v22, v8

    move-object/from16 v24, v5

    invoke-direct/range {v22 .. v27}, Lcom/android/tools/r8/internal/f60;-><init>(ILcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/internal/f60$a;)V

    iget-object v12, v10, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    sget-object v13, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    if-ne v12, v13, :cond_1c

    sget-object v12, Lcom/android/tools/r8/internal/NB;->c:Lcom/android/tools/r8/internal/NB;

    goto :goto_e

    :cond_1c
    sget-object v12, Lcom/android/tools/r8/internal/NB;->f:Lcom/android/tools/r8/internal/NB;

    :goto_e
    new-instance v13, Lcom/android/tools/r8/internal/EB;

    invoke-static {v8, v6}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v6

    invoke-direct {v13, v12, v6}, Lcom/android/tools/r8/internal/EB;-><init>(Lcom/android/tools/r8/internal/NB;Ljava/util/List;)V

    invoke-virtual {v10, v13}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/zE;)V

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-static {v15, v8}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v10

    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v12

    if-eqz v12, :cond_1d

    goto :goto_f

    :cond_1d
    iget-object v12, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/shaking/i;

    iget-object v13, v0, Lcom/android/tools/r8/ir/optimize/c0;->n:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v12, v4, v13}, Lcom/android/tools/r8/graph/j;->e(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v13

    goto :goto_10

    :cond_1e
    :goto_f
    const/4 v13, 0x0

    :goto_10
    if-eqz v13, :cond_20

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/Z4;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_1f

    goto :goto_11

    :cond_1f
    new-instance v4, Lcom/android/tools/r8/internal/mK;

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/Z4;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/graph/A2;

    invoke-direct {v4, v12, v6, v10}, Lcom/android/tools/r8/internal/mK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    goto :goto_12

    :cond_20
    :goto_11
    new-instance v4, Lcom/android/tools/r8/internal/TJ;

    iget-object v12, v0, Lcom/android/tools/r8/ir/optimize/c0;->n:Lcom/android/tools/r8/graph/A2;

    invoke-direct {v4, v12, v6, v10}, Lcom/android/tools/r8/internal/TJ;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    :goto_12
    invoke-virtual {v11, v4}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/zE;)V

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->Y0()Lcom/android/tools/r8/internal/zE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    sget-boolean v12, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v12, :cond_22

    invoke-interface {v10, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_21

    goto :goto_13

    :cond_21
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_22
    :goto_13
    if-nez v12, :cond_24

    iget-object v12, v4, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    if-ne v12, v6, :cond_23

    goto :goto_14

    :cond_23
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_24
    :goto_14
    iget-object v12, v1, Lcom/android/tools/r8/internal/fB;->f:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v12

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13, v4}, Lcom/android/tools/r8/internal/W5;->a(IZLcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/W5;

    move-result-object v12

    invoke-interface {v10, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v6, v13

    invoke-interface {v10, v6, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_15
    const/4 v12, 0x0

    goto :goto_16

    :cond_25
    const/4 v13, 0x1

    goto :goto_15

    :goto_16
    invoke-virtual {v1, v13, v12}, Lcom/android/tools/r8/internal/fB;->a(ILcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v6

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v10

    invoke-virtual {v10, v6, v4}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)V

    sget-object v10, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v14

    invoke-interface {v1, v14, v12}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v14

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    new-instance v15, Lcom/android/tools/r8/internal/d2;

    invoke-direct {v15, v10, v14, v8, v6}, Lcom/android/tools/r8/internal/d2;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v6

    invoke-virtual {v15, v6}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v6

    invoke-virtual {v6, v15, v4}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)V

    if-eqz v7, :cond_26

    iget-object v4, v7, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/tools/r8/internal/CE;->c(Lcom/android/tools/r8/internal/zE;)V

    :cond_26
    iget-object v4, v9, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/tools/r8/internal/CE;->c(Lcom/android/tools/r8/internal/zE;)V

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    if-ne v5, v3, :cond_27

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/android/tools/r8/internal/f60;->g(Lcom/android/tools/r8/internal/xw0;)V

    goto :goto_17

    :cond_27
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/android/tools/r8/internal/f60;->g(Lcom/android/tools/r8/internal/xw0;)V

    goto :goto_17

    :cond_28
    move v5, v13

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v6, v21

    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_29
    move-object v3, v8

    goto/16 :goto_d

    :cond_2a
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->x()V

    sget-object v1, Lcom/android/tools/r8/internal/we;->b:Lcom/android/tools/r8/internal/ve;

    return-object v1

    :cond_2b
    sget-object v1, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    return-object v1
.end method
