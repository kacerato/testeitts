.class public Lcom/android/tools/r8/internal/K3;
.super Lcom/android/tools/r8/internal/te;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/te<",
        "Lcom/android/tools/r8/graph/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/internal/nJ$o;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/te;-><init>(Lcom/android/tools/r8/graph/y;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->b0()Lcom/android/tools/r8/internal/nJ$o;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/K3;->e:Lcom/android/tools/r8/internal/nJ$o;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ArrayConstructionSimplifier"

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 0

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 p2, 0x2f

    .line 3
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/we;
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->q()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->t0()Lcom/android/tools/r8/internal/oZ;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v7

    if-eqz v7, :cond_1

    goto/16 :goto_d

    :cond_1
    iget-object v7, v0, Lcom/android/tools/r8/internal/K3;->e:Lcom/android/tools/r8/internal/nJ$o;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/oZ;->u2()I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-gt v6, v8, :cond_23

    const/16 v7, 0x2000

    if-gt v8, v7, :cond_23

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/oZ;->u2()I

    move-result v7

    if-ltz v7, :cond_9

    const v8, 0x186a0

    if-le v7, v8, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->A()Lcom/android/tools/r8/internal/T3;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v12

    if-ne v12, v8, :cond_3

    const v12, 0x7fffffff

    invoke-virtual {v11, v12}, Lcom/android/tools/r8/internal/J3;->b(I)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_4

    move v12, v13

    :cond_4
    if-ne v12, v9, :cond_3

    goto :goto_1

    :cond_5
    move-object v11, v4

    :goto_1
    if-nez v11, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v3, v7, v11, v6}, Lcom/android/tools/r8/internal/Ow0;->a(Lcom/android/tools/r8/internal/oZ;ILcom/android/tools/r8/internal/zE;Z)Lcom/android/tools/r8/internal/Nw0;

    move-result-object v7

    if-nez v7, :cond_7

    goto :goto_2

    :cond_7
    iget-object v8, v7, Lcom/android/tools/r8/internal/Nw0;->b:[Lcom/android/tools/r8/internal/T3;

    aget-object v10, v8, v9

    if-eqz v10, :cond_8

    goto :goto_2

    :cond_8
    aput-object v11, v8, v9

    goto :goto_3

    :cond_9
    :goto_2
    move-object v7, v4

    :goto_3
    if-eqz v7, :cond_23

    iget-object v8, v7, Lcom/android/tools/r8/internal/Nw0;->b:[Lcom/android/tools/r8/internal/T3;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v9, :cond_b

    aget-object v11, v8, v10

    if-nez v11, :cond_a

    goto/16 :goto_d

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_b
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Nw0;->a()[Lcom/android/tools/r8/internal/T3;

    move-result-object v8

    invoke-static {v8}, Lcom/android/tools/r8/internal/X3;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/T3;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/tools/r8/internal/W5;->c(Lcom/android/tools/r8/internal/W5;)Z

    move-result v3

    if-nez v3, :cond_c

    goto/16 :goto_d

    :cond_c
    iget-object v3, v7, Lcom/android/tools/r8/internal/Nw0;->c:Lcom/android/tools/r8/internal/xw0;

    iget-object v3, v3, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->t0()Lcom/android/tools/r8/internal/oZ;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/internal/oZ;->k:Lcom/android/tools/r8/graph/M2;

    iget-object v8, v0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v3, v6, v8}, Lcom/android/tools/r8/graph/M2;->a(ILcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v8

    if-nez v8, :cond_13

    iget-object v8, v0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v8, v8, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v3, v8}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v8

    if-nez v8, :cond_13

    iget-object v8, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    iget-object v9, v0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v3, v9}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/tools/r8/graph/P2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)Z

    move-result v8

    if-nez v8, :cond_d

    goto/16 :goto_d

    :cond_d
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Nw0;->a()[Lcom/android/tools/r8/internal/T3;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v9, :cond_13

    aget-object v11, v8, v10

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/T3;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v11

    iget-object v12, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v11, v12}, Lcom/android/tools/r8/internal/xw0;->c(Lcom/android/tools/r8/graph/y;)Z

    move-result v12

    if-eqz v12, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/pu0;->d()Lcom/android/tools/r8/internal/ae0;

    move-result-object v11

    iget-object v12, v0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v11, v12}, Lcom/android/tools/r8/internal/ae0;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-virtual {v3, v11}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v11

    if-nez v11, :cond_12

    goto/16 :goto_d

    :cond_f
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v12

    if-eqz v12, :cond_10

    goto/16 :goto_d

    :cond_10
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/M2;->N0()Z

    move-result v12

    if-eqz v12, :cond_11

    goto :goto_6

    :cond_11
    iget-object v12, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v12, v11, v3}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/t40;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result v11

    if-eqz v11, :cond_12

    goto/16 :goto_d

    :cond_12
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_13
    iget-object v3, v7, Lcom/android/tools/r8/internal/Nw0;->c:Lcom/android/tools/r8/internal/xw0;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_14
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->A()Lcom/android/tools/r8/internal/T3;

    move-result-object v12

    if-eqz v12, :cond_15

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v12

    if-eq v12, v3, :cond_14

    :cond_15
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_16
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Nw0;->a()[Lcom/android/tools/r8/internal/T3;

    move-result-object v10

    invoke-static {v10}, Lcom/android/tools/r8/internal/X3;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/T3;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v11

    iget-object v12, v3, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v12

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_17
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const/4 v14, 0x2

    if-eqz v13, :cond_1a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/W5;

    sget-object v15, Lcom/android/tools/r8/internal/at;->a:Lcom/android/tools/r8/internal/at;

    if-ne v11, v13, :cond_18

    move v13, v6

    goto :goto_8

    :cond_18
    if-ne v12, v13, :cond_19

    const/4 v13, 0x0

    goto :goto_8

    :cond_19
    new-instance v15, Lcom/android/tools/r8/internal/Yx0;

    invoke-direct {v15, v14}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    invoke-static {v12, v13, v11, v15}, Lcom/android/tools/r8/internal/Zs;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/Yx0;)Z

    move-result v13

    :goto_8
    if-nez v13, :cond_17

    goto/16 :goto_d

    :cond_1a
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v5

    :cond_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    if-ne v6, v10, :cond_1c

    goto :goto_9

    :cond_1c
    invoke-interface {v9, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->A()Lcom/android/tools/r8/internal/T3;

    move-result-object v6

    if-eqz v6, :cond_23

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    if-eq v6, v3, :cond_1b

    goto/16 :goto_d

    :cond_1d
    :goto_9
    iget-object v3, v7, Lcom/android/tools/r8/internal/Nw0;->c:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v5

    if-nez v5, :cond_1e

    goto/16 :goto_c

    :cond_1e
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v5

    iget-object v6, v3, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/f60;

    iget-object v8, v8, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_1f
    new-instance v6, Lcom/android/tools/r8/internal/Yx0;

    invoke-direct {v6, v14}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Nw0;->a()[Lcom/android/tools/r8/internal/T3;

    move-result-object v8

    invoke-static {v8}, Lcom/android/tools/r8/internal/X3;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/T3;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v8

    iget-object v9, v6, Lcom/android/tools/r8/internal/Yx0;->b:Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v8, v3, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->p()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    :goto_b
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v8

    if-eqz v8, :cond_22

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Yx0;->d()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/W5;

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    goto :goto_d

    :cond_20
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v9

    if-eqz v9, :cond_21

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v9

    if-eqz v9, :cond_21

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->A()Lcom/android/tools/r8/internal/T3;

    move-result-object v9

    if-eqz v9, :cond_21

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    if-ne v9, v3, :cond_21

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->p()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    goto :goto_b

    :cond_21
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    goto :goto_b

    :cond_22
    :goto_c
    move-object v4, v7

    :cond_23
    :goto_d
    if-eqz v4, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_24
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_25

    sget-object v1, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    return-object v1

    :cond_25
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-direct {v3}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :cond_26
    :goto_e
    if-ge v8, v7, :cond_29

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v8, v8, 0x1

    check-cast v10, Lcom/android/tools/r8/internal/Nw0;

    iget-object v11, v10, Lcom/android/tools/r8/internal/Nw0;->c:Lcom/android/tools/r8/internal/xw0;

    iget-object v11, v11, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->t0()Lcom/android/tools/r8/internal/oZ;

    move-result-object v11

    invoke-virtual {v3, v11, v11}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/Nw0;->a()[Lcom/android/tools/r8/internal/T3;

    move-result-object v13

    array-length v14, v13

    sub-int/2addr v14, v6

    const/4 v15, 0x0

    :goto_f
    if-ge v15, v14, :cond_27

    aget-object v5, v13, v15

    invoke-virtual {v3, v5, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    :cond_27
    aget-object v5, v13, v14

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11, v4}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v14

    new-instance v15, Lcom/android/tools/r8/internal/qZ;

    iget-object v11, v11, Lcom/android/tools/r8/internal/oZ;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/Nw0;->b()Ljava/util/List;

    move-result-object v10

    invoke-direct {v15, v11, v14, v10}, Lcom/android/tools/r8/internal/qZ;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v10

    invoke-virtual {v15, v10}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    invoke-virtual {v3, v5, v15}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/W5;->N()V

    invoke-virtual {v13, v12}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/W5;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_10
    if-ge v10, v9, :cond_28

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v13

    sget-object v14, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {v11, v12, v4, v13, v14}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    goto :goto_10

    :cond_28
    sget-object v5, Lcom/android/tools/r8/internal/N8;->e:Lcom/android/tools/r8/internal/N8;

    iput-object v5, v12, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    move v9, v6

    goto/16 :goto_e

    :cond_29
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v5

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v7

    :cond_2b
    :goto_11
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2a

    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/zE;

    if-eqz v8, :cond_2b

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->a2()Z

    move-result v10

    if-eqz v10, :cond_2c

    invoke-interface {v7, v8, v4}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    goto :goto_11

    :cond_2c
    invoke-interface {v7}, Lcom/android/tools/r8/internal/EE;->i()V

    if-eqz v5, :cond_2b

    sget-boolean v8, Lcom/android/tools/r8/internal/K3;->f:Z

    if-nez v8, :cond_2e

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->a()Z

    move-result v8

    if-nez v8, :cond_2d

    goto :goto_12

    :cond_2d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2e
    :goto_12
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->N()V

    move v9, v6

    goto :goto_11

    :cond_2f
    if-eqz v9, :cond_30

    new-instance v1, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v1}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;)V

    goto :goto_13

    :cond_30
    move-object/from16 v3, p1

    :goto_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->x()V

    sget-object v1, Lcom/android/tools/r8/internal/we;->b:Lcom/android/tools/r8/internal/ve;

    return-object v1
.end method
