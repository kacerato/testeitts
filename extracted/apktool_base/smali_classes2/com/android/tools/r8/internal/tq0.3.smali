.class public Lcom/android/tools/r8/internal/tq0;
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
.field public static final synthetic e:I


# direct methods
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

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 3

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 8
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object p1

    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->J4:Lcom/android/tools/r8/graph/u1$d;

    iget-object p0, p0, Lcom/android/tools/r8/graph/u1$d;->x:Lcom/android/tools/r8/graph/A2;

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 2
    const-string v0, "StringSwitchConverter"

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;ZLjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 0

    .line 3
    iget-object p2, p0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 4
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/nJ;->a0:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/internal/we;
    .locals 12

    iget-object p2, p0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->y()I

    move-result p3

    iget-object v0, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3, p3}, Lcom/android/tools/r8/internal/W5;->a(I)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, p3}, Lcom/android/tools/r8/internal/W5;->c(I)V

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v5

    sget-boolean v6, Lcom/android/tools/r8/internal/sq0;->a:Z

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v5

    iget-object v6, v5, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    invoke-static {p2, v6}, Lcom/android/tools/r8/internal/tq0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/EB;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-static {p2, v6}, Lcom/android/tools/r8/internal/tq0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->M1()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->Z()Lcom/android/tools/r8/internal/tI;

    move-result-object v5

    iget-object v5, v5, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    invoke-static {p2, v6}, Lcom/android/tools/r8/internal/tq0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move-object v6, v1

    :goto_1
    if-eqz v6, :cond_0

    :goto_2
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v5

    invoke-static {v5}, Lcom/android/tools/r8/internal/sq0;->a(Lcom/android/tools/r8/internal/sL;)Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/tools/r8/internal/W5;->a(I)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v3, v1

    goto :goto_4

    :cond_5
    invoke-virtual {v5, p3}, Lcom/android/tools/r8/internal/W5;->c(I)V

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v6

    iget-object v7, v6, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/xw0;

    invoke-static {p2, v7}, Lcom/android/tools/r8/internal/tq0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/EB;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-static {p2, v7}, Lcom/android/tools/r8/internal/tq0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_3

    :cond_7
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->M1()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->Z()Lcom/android/tools/r8/internal/tI;

    move-result-object v6

    iget-object v6, v6, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/tools/r8/internal/xw0;

    invoke-static {p2, v7}, Lcom/android/tools/r8/internal/tq0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_3

    :cond_8
    move-object v7, v1

    :goto_3
    if-eqz v7, :cond_9

    move-object v3, v5

    goto :goto_2

    :cond_9
    :goto_4
    if-nez v3, :cond_a

    goto/16 :goto_0

    :cond_a
    if-nez v2, :cond_b

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_b
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/fB;->a(I)V

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    move p3, v4

    move v0, p3

    :cond_d
    :goto_5
    if-ge p3, p2, :cond_1f

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 p3, p3, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    iget-object v5, p0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    new-instance v6, Lcom/android/tools/r8/internal/oq0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v6

    invoke-static {v6}, Lcom/android/tools/r8/internal/sq0;->a(Lcom/android/tools/r8/internal/sL;)Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->g()Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    sget-boolean v7, Lcom/android/tools/r8/internal/nq0;->d:Z

    new-instance v7, Lcom/android/tools/r8/internal/mq0;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/mq0;-><init>()V

    invoke-virtual {v7, v1, v6}, Lcom/android/tools/r8/internal/mq0;->a(Lcom/android/tools/r8/internal/nq0;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/nq0;

    move-result-object v7

    if-nez v7, :cond_e

    goto/16 :goto_9

    :cond_e
    iget-object v8, v7, Lcom/android/tools/r8/internal/nq0;->a:Lcom/android/tools/r8/internal/W5;

    if-nez v8, :cond_10

    sget-boolean v3, Lcom/android/tools/r8/internal/oq0;->a:Z

    if-eqz v3, :cond_f

    goto/16 :goto_9

    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Expected to find a fallthrough block"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_10
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v8

    iget-object v9, v8, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/xw0;

    invoke-static {v5, v9}, Lcom/android/tools/r8/internal/tq0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v10

    if-eqz v10, :cond_11

    goto :goto_6

    :cond_11
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v9

    if-nez v9, :cond_13

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/EB;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/android/tools/r8/internal/tq0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v8

    if-eqz v8, :cond_13

    goto :goto_6

    :cond_12
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->M1()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->Z()Lcom/android/tools/r8/internal/tI;

    move-result-object v8

    iget-object v8, v8, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/android/tools/r8/internal/xw0;

    invoke-static {v5, v9}, Lcom/android/tools/r8/internal/tq0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v8

    if-eqz v8, :cond_13

    goto :goto_6

    :cond_13
    move-object v9, v1

    :goto_6
    sget-boolean v8, Lcom/android/tools/r8/internal/sq0;->a:Z

    if-nez v8, :cond_15

    invoke-static {v5, v9}, Lcom/android/tools/r8/internal/tq0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v8

    if-eqz v8, :cond_14

    goto :goto_7

    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_15
    :goto_7
    iget-object v8, v9, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    iget-object v9, v7, Lcom/android/tools/r8/internal/nq0;->b:Lcom/android/tools/r8/internal/f60;

    sget-boolean v10, Lcom/android/tools/r8/internal/rq0;->d:Z

    new-instance v10, Lcom/android/tools/r8/internal/qq0;

    invoke-direct {v10, v6, v5, v9, v8}, Lcom/android/tools/r8/internal/qq0;-><init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/f60;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {v10, v1, v3}, Lcom/android/tools/r8/internal/qq0;->a(Lcom/android/tools/r8/internal/rq0;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/rq0;

    move-result-object v3

    if-nez v3, :cond_16

    goto :goto_9

    :cond_16
    iget-object v5, v3, Lcom/android/tools/r8/internal/rq0;->a:Lcom/android/tools/r8/internal/W5;

    if-nez v5, :cond_18

    sget-boolean v3, Lcom/android/tools/r8/internal/oq0;->a:Z

    if-eqz v3, :cond_17

    goto :goto_9

    :cond_17
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Expected to find an insertion block"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_18
    iget-object v5, v3, Lcom/android/tools/r8/internal/rq0;->c:Lcom/android/tools/r8/internal/gd0;

    iget v5, v5, Lcom/android/tools/r8/internal/gd0;->l:I

    iget-object v6, v7, Lcom/android/tools/r8/internal/nq0;->c:Lcom/android/tools/r8/internal/dH;

    iget v6, v6, Lcom/android/tools/r8/internal/dH;->h:I

    if-eq v5, v6, :cond_19

    goto :goto_9

    :cond_19
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v6, v3, Lcom/android/tools/r8/internal/rq0;->c:Lcom/android/tools/r8/internal/gd0;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/bd0;

    new-instance v9, Lcom/android/tools/r8/internal/ad0;

    iget-object v6, v6, Lcom/android/tools/r8/internal/bd0;->b:Lcom/android/tools/r8/internal/gd0;

    invoke-direct {v9, v6}, Lcom/android/tools/r8/internal/ad0;-><init>(Lcom/android/tools/r8/internal/gd0;)V

    :goto_8
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/ed0;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    iget-object v6, v9, Lcom/android/tools/r8/internal/ad0;->g:Lcom/android/tools/r8/internal/gd0;

    iget-object v6, v6, Lcom/android/tools/r8/internal/gd0;->c:[Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/ed0;->b()I

    move-result v10

    aget-object v6, v6, v10

    check-cast v6, Lcom/android/tools/r8/graph/L2;

    iget-object v10, v3, Lcom/android/tools/r8/internal/rq0;->c:Lcom/android/tools/r8/internal/gd0;

    invoke-virtual {v10, v6}, Lcom/android/tools/r8/internal/gd0;->b(Ljava/lang/Object;)I

    move-result v10

    iget-object v11, v7, Lcom/android/tools/r8/internal/nq0;->c:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v11, v10}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/W5;

    if-nez v10, :cond_1a

    :goto_9
    move-object v6, v1

    goto :goto_a

    :cond_1a
    invoke-interface {v5, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_1b
    new-instance v6, Lcom/android/tools/r8/internal/pq0;

    iget-object v7, v7, Lcom/android/tools/r8/internal/nq0;->a:Lcom/android/tools/r8/internal/W5;

    iget-object v3, v3, Lcom/android/tools/r8/internal/rq0;->a:Lcom/android/tools/r8/internal/W5;

    invoke-direct {v6, v7, v3, v5, v8}, Lcom/android/tools/r8/internal/pq0;-><init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;Ljava/util/LinkedHashMap;Lcom/android/tools/r8/internal/xw0;)V

    :goto_a
    if-eqz v6, :cond_d

    iget-object v0, v6, Lcom/android/tools/r8/internal/pq0;->b:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    iget-object v5, v6, Lcom/android/tools/r8/internal/pq0;->b:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v7

    sget-object v8, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {v3, v5, v1, v7, v8}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    goto :goto_b

    :cond_1c
    iget-object v0, v6, Lcom/android/tools/r8/internal/pq0;->b:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->O()V

    iget-object v0, v6, Lcom/android/tools/r8/internal/pq0;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/tools/r8/graph/L2;

    iget-object v3, v6, Lcom/android/tools/r8/internal/pq0;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [I

    new-instance v5, Lcom/android/tools/r8/internal/qd0;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/qd0;-><init>()V

    iget-object v7, v6, Lcom/android/tools/r8/internal/pq0;->b:Lcom/android/tools/r8/internal/W5;

    iget-object v7, v7, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/N8;->size()I

    move-result v7

    iget-object v8, v6, Lcom/android/tools/r8/internal/pq0;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v4

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/graph/L2;

    aput-object v11, v0, v9

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v5, v10}, Lcom/android/tools/r8/internal/qd0;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    invoke-virtual {v5, v10}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v10

    aput v10, v3, v9

    goto :goto_d

    :cond_1d
    aput v7, v3, v9

    invoke-virtual {v5, v7, v10}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    iget-object v11, v6, Lcom/android/tools/r8/internal/pq0;->b:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v11, v10}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    add-int/lit8 v7, v7, 0x1

    :goto_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_1e
    iget-object v5, v6, Lcom/android/tools/r8/internal/pq0;->b:Lcom/android/tools/r8/internal/W5;

    iget-object v8, v6, Lcom/android/tools/r8/internal/pq0;->a:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v5, v8}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    iget-object v5, v6, Lcom/android/tools/r8/internal/pq0;->b:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v5

    new-instance v8, Lcom/android/tools/r8/internal/lq0;

    iget-object v6, v6, Lcom/android/tools/r8/internal/pq0;->d:Lcom/android/tools/r8/internal/xw0;

    invoke-direct {v8, v6, v0, v3, v7}, Lcom/android/tools/r8/internal/lq0;-><init>(Lcom/android/tools/r8/internal/xw0;[Lcom/android/tools/r8/graph/L2;[II)V

    invoke-virtual {v5, v8}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/zE;)V

    const/4 v0, 0x1

    goto/16 :goto_5

    :cond_1f
    if-eqz v0, :cond_20

    invoke-virtual {p1, v1, v1}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;)Z

    new-instance p2, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {p2}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;)V

    :cond_20
    if-eqz v0, :cond_21

    sget-object p1, Lcom/android/tools/r8/internal/we;->b:Lcom/android/tools/r8/internal/ve;

    return-object p1

    :cond_21
    sget-object p1, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    return-object p1

    :cond_22
    sget-object p1, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    return-object p1
.end method
