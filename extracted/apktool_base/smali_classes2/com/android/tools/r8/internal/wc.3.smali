.class public final Lcom/android/tools/r8/internal/wc;
.super Lcom/android/tools/r8/graph/i0;
.source "SourceFile"


# instance fields
.field public final e:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/i0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/wc;->e:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;
    .locals 22

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lcom/android/tools/r8/internal/B60$c;->t()Lcom/android/tools/r8/internal/B60$c$a;

    move-result-object v1

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/B60$c$a;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/B60$c$a;

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v3

    .line 5
    iput-boolean v3, v1, Lcom/android/tools/r8/internal/B60$a;->e:Z

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/B60$c$a;->d()Lcom/android/tools/r8/internal/B60$c;

    move-result-object v10

    .line 7
    new-instance v9, Lcom/android/tools/r8/internal/z10;

    invoke-direct {v9}, Lcom/android/tools/r8/internal/z10;-><init>()V

    .line 8
    iget-object v1, v0, Lcom/android/tools/r8/internal/wc;->e:Lcom/android/tools/r8/graph/H5;

    .line 9
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 10
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v4

    iget-object v6, v0, Lcom/android/tools/r8/internal/wc;->e:Lcom/android/tools/r8/graph/H5;

    .line 11
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v8

    .line 12
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    iget-object v3, v0, Lcom/android/tools/r8/internal/wc;->e:Lcom/android/tools/r8/graph/H5;

    .line 13
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    const/4 v12, 0x0

    .line 14
    invoke-virtual {v1, v12, v3}, Lcom/android/tools/r8/internal/Hz;->f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object v11

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    .line 15
    invoke-virtual/range {v4 .. v11}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/internal/fB;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fB;->p()Lcom/android/tools/r8/internal/hB;

    move-result-object v3

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v4

    .line 18
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/TW;->o()Lcom/android/tools/r8/internal/Au;

    move-result-object v4

    .line 19
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Au;->a()Lcom/android/tools/r8/internal/vc;

    move-result-object v4

    .line 20
    iget v4, v4, Lcom/android/tools/r8/internal/vc;->a:I

    .line 21
    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/xK;->a(Lcom/android/tools/r8/internal/EE;I)V

    .line 22
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v4

    .line 23
    sget-boolean v5, Lcom/android/tools/r8/internal/k3;->m:Z

    .line 24
    new-instance v5, Lcom/android/tools/r8/internal/j3;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/j3;-><init>()V

    .line 25
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v6

    .line 26
    invoke-interface {v1, v6, v12}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    .line 27
    iput-object v6, v5, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    const/4 v6, 0x1

    .line 28
    invoke-virtual {v4, v6}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result v4

    .line 29
    iput v4, v5, Lcom/android/tools/r8/internal/j3;->d:I

    .line 30
    new-instance v4, Lcom/android/tools/r8/internal/k3;

    iget-object v6, v5, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    iget v7, v5, Lcom/android/tools/r8/internal/j3;->d:I

    invoke-direct {v4, v6, v7, v2}, Lcom/android/tools/r8/internal/k3;-><init>(Lcom/android/tools/r8/internal/xw0;IZ)V

    .line 31
    iget-object v2, v5, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    if-eqz v2, :cond_0

    .line 32
    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 33
    :cond_0
    invoke-interface {v3, v4, v12}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 34
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 35
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    instance-of v4, v2, Lcom/android/tools/r8/internal/C4;

    if-eqz v4, :cond_2

    .line 38
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 39
    invoke-interface {v3}, Lcom/android/tools/r8/internal/EE;->i()V

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->G0()Lcom/android/tools/r8/internal/yk0;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/yk0;->v2()Z

    move-result v2

    if-nez v2, :cond_1

    .line 42
    new-instance v2, Lcom/android/tools/r8/internal/yk0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/yk0;-><init>()V

    .line 43
    invoke-interface {v3, v2, v12}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    goto :goto_0

    .line 44
    :cond_3
    new-instance v2, Lcom/android/tools/r8/internal/fB;

    .line 45
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v14

    .line 46
    iget-object v3, v1, Lcom/android/tools/r8/internal/fB;->c:Lcom/android/tools/r8/internal/B60;

    .line 47
    iget-object v4, v1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    .line 48
    iget-object v5, v1, Lcom/android/tools/r8/internal/fB;->e:Lcom/android/tools/r8/internal/z10;

    iget-object v6, v1, Lcom/android/tools/r8/internal/fB;->f:Lcom/android/tools/r8/internal/z10;

    .line 49
    iget-object v1, v1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    move-object v13, v2

    move-object/from16 v15, p1

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v1

    move-object/from16 v21, p3

    .line 50
    invoke-direct/range {v13 .. v21}, Lcom/android/tools/r8/internal/fB;-><init>(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/B60;Ljava/util/LinkedList;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/mB;Lcom/android/tools/r8/internal/EW$a;)V

    return-object v2
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wc;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/f6;)V
    .locals 0

    .line 51
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/e0;Lcom/android/tools/r8/internal/Mi;)V
    .locals 0

    .line 52
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 0

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final k0()I
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final q0()I
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/wc;->e:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckNotZeroCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x0()Z
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method
