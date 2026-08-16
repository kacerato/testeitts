.class public Lcom/android/tools/r8/internal/Sv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/Xv;

.field public final c:Lcom/android/tools/r8/internal/Zv;

.field public final d:Lcom/android/tools/r8/internal/Ew;

.field public final e:Lcom/android/tools/r8/internal/Fw;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/internal/Sv;->a:Lcom/android/tools/r8/graph/y;

    .line 4
    iget-boolean v1, v0, Lcom/android/tools/r8/internal/nJ;->C:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/tools/r8/internal/Zv;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Zv;-><init>()V

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/android/tools/r8/internal/Sv;->c:Lcom/android/tools/r8/internal/Zv;

    .line 5
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->D:Z

    if-eqz v0, :cond_1

    new-instance v2, Lcom/android/tools/r8/internal/Xv;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/Xv;-><init>(Lcom/android/tools/r8/graph/y;)V

    :cond_1
    iput-object v2, p0, Lcom/android/tools/r8/internal/Sv;->b:Lcom/android/tools/r8/internal/Xv;

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/Ew;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Ew;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Sv;->d:Lcom/android/tools/r8/internal/Ew;

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/Fw;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Fw;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Sv;->e:Lcom/android/tools/r8/internal/Fw;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Xv;Lcom/android/tools/r8/internal/Zv;Lcom/android/tools/r8/internal/Ew;Lcom/android/tools/r8/internal/Fw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "+",
            "Lcom/android/tools/r8/graph/j;",
            ">;",
            "Lcom/android/tools/r8/internal/Xv;",
            "Lcom/android/tools/r8/internal/Zv;",
            "Lcom/android/tools/r8/internal/Ew;",
            "Lcom/android/tools/r8/internal/Fw;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/tools/r8/internal/Sv;->a:Lcom/android/tools/r8/graph/y;

    .line 10
    iput-object p2, p0, Lcom/android/tools/r8/internal/Sv;->b:Lcom/android/tools/r8/internal/Xv;

    .line 11
    iput-object p3, p0, Lcom/android/tools/r8/internal/Sv;->c:Lcom/android/tools/r8/internal/Zv;

    .line 12
    iput-object p4, p0, Lcom/android/tools/r8/internal/Sv;->d:Lcom/android/tools/r8/internal/Ew;

    .line 13
    iput-object p5, p0, Lcom/android/tools/r8/internal/Sv;->e:Lcom/android/tools/r8/internal/Fw;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/v8$a;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/dX;)V
    .locals 9

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/dX;->f()Z

    move-result p4

    if-nez p4, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object p4, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/mB;->b()Z

    move-result p4

    if-nez p4, :cond_1

    iget-object p4, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v0, 0x31

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result p4

    if-nez p4, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->q()Ljava/lang/Iterable;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_2
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->E1()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->S()Lcom/android/tools/r8/internal/hw;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sv;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/D3;->o()Lcom/android/tools/r8/graph/F5;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/Sv;->b:Lcom/android/tools/r8/internal/Xv;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->F1()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hw;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/tools/r8/internal/Xv;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/xw0;)V

    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/Sv;->c:Lcom/android/tools/r8/internal/Zv;

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_3

    :cond_4
    iget-object v3, v2, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/vw;->h()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->D1()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->V()I

    move-result v5

    if-lez v5, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/zE;

    invoke-static {v7, v2}, Lcom/android/tools/r8/internal/Zv;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/graph/g1;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_1

    :cond_7
    instance-of v8, v7, Lcom/android/tools/r8/internal/t2;

    if-eqz v8, :cond_a

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->u()Lcom/android/tools/r8/internal/t2;

    move-result-object v7

    iget-object v7, v7, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v8

    if-nez v8, :cond_a

    iget-object v8, v7, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_2

    :cond_8
    iget-object v7, v7, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v7

    or-int/2addr v6, v7

    goto :goto_1

    :cond_9
    move v4, v6

    :cond_a
    :goto_2
    invoke-interface {p3, v2, v4}, Lcom/android/tools/r8/internal/uw;->a(Lcom/android/tools/r8/graph/g1;I)V

    :cond_b
    :goto_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/Sv;->d:Lcom/android/tools/r8/internal/Ew;

    if-eqz v2, :cond_c

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    invoke-virtual {v2, v0, p2, v3}, Lcom/android/tools/r8/internal/Ew;->a(Lcom/android/tools/r8/internal/hw;Lcom/android/tools/r8/internal/v8$a;Lcom/android/tools/r8/graph/H5;)V

    :cond_c
    iget-object v2, p0, Lcom/android/tools/r8/internal/Sv;->e:Lcom/android/tools/r8/internal/Fw;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0, v1, p2}, Lcom/android/tools/r8/internal/Fw;->a(Lcom/android/tools/r8/internal/hw;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/v8$a;)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sv;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, v0, Lcom/android/tools/r8/internal/tZ;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/Sv;->b:Lcom/android/tools/r8/internal/Xv;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/tools/r8/internal/Xv;->a(Lcom/android/tools/r8/internal/tZ;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V

    goto/16 :goto_0

    :cond_e
    :goto_4
    return-void
.end method
