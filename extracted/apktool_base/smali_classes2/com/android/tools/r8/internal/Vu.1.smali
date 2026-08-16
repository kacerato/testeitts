.class public final Lcom/android/tools/r8/internal/Vu;
.super Lcom/android/tools/r8/internal/te;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/te;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 21
    iget-object v0, p1, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    .line 22
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 23
    iput-object p0, p1, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    return-void
.end method

.method public static a(ILcom/android/tools/r8/internal/nI;Lcom/android/tools/r8/internal/tI;I)Z
    .locals 0

    add-int/2addr p3, p0

    .line 8
    invoke-interface {p1, p3}, Lcom/android/tools/r8/internal/JH;->h(I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 9
    iget p0, p2, Lcom/android/tools/r8/internal/ar0;->m:I

    if-eq p3, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/graph/l1;Z)Lcom/android/tools/r8/internal/F1;
    .locals 2

    if-eqz p4, :cond_0

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    instance-of p4, p2, Lcom/android/tools/r8/internal/n10;

    if-eqz p4, :cond_0

    .line 12
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->I()Lcom/android/tools/r8/internal/n10;

    move-result-object p2

    .line 13
    iget-object p2, p2, Lcom/android/tools/r8/internal/n10;->b:Lcom/android/tools/r8/internal/F1;

    .line 14
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->f0()Z

    move-result p4

    const/4 v0, 0x0

    if-nez p4, :cond_1

    return-object v0

    .line 15
    :cond_1
    iget-object p4, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 16
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iget-object v1, p3, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p4, v1, p3, p1}, Lcom/android/tools/r8/graph/h;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D3;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->q()Lcom/android/tools/r8/graph/g1;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    .line 19
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->N()Lcom/android/tools/r8/internal/Fm0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Fm0;->U()Lcom/android/tools/r8/internal/Q30;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Q30;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "EnumValueOptimizer"

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 0

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    iget-boolean p2, p2, Lcom/android/tools/r8/internal/nJ;->c0:Z

    if-eqz p2, :cond_0

    .line 6
    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/mB;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/we;
    .locals 13

    sget-boolean v0, Lcom/android/tools/r8/internal/Vu;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->p()Lcom/android/tools/r8/internal/hB;

    move-result-object v1

    const/4 v2, 0x0

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    iget-object v7, p0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v7, v7, Lcom/android/tools/r8/graph/u1;->n2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v5, v6, v7}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    iget-object v6, p0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v6, v6, Lcom/android/tools/r8/graph/J1;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v6

    iget-object v7, p0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v7, v7, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v7, v7, Lcom/android/tools/r8/graph/J1;->e:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v7

    iget-object v8, p0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v8, v8, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v8, v8, Lcom/android/tools/r8/graph/J1;->f:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v5, v8}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v5

    if-nez v6, :cond_4

    if-nez v7, :cond_4

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v4}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object v4

    if-nez v4, :cond_6

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v4

    iget-object v8, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v4, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v8, v9}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/tools/r8/graph/l1;->c(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/g1;

    move-result-object v8

    if-nez v8, :cond_7

    goto/16 :goto_1

    :cond_7
    iget-object v8, v8, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/vw;->f()Lcom/android/tools/r8/internal/F1;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->f1()Z

    move-result v10

    const/4 v11, 0x1

    if-nez v10, :cond_a

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/pu0;->t()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v5, :cond_2

    sget-boolean v2, Lcom/android/tools/r8/internal/Vu;->e:Z

    if-nez v2, :cond_9

    if-nez v7, :cond_9

    if-eqz v6, :cond_8

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_2
    invoke-interface {v1}, Lcom/android/tools/r8/internal/EE;->i()V

    :goto_3
    move v2, v11

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    const/4 v12, 0x0

    if-eqz v6, :cond_c

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->O()Z

    move-result v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/J1;->b:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p0, p1, v9, v4, v3}, Lcom/android/tools/r8/internal/Vu;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/graph/l1;Z)Lcom/android/tools/r8/internal/F1;

    move-result-object v3

    if-nez v3, :cond_b

    move-object v3, v12

    goto :goto_4

    :cond_b
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object v3

    :goto_4
    if-eqz v3, :cond_2

    new-instance v2, Lcom/android/tools/r8/internal/qh;

    iget-wide v3, v3, Lcom/android/tools/r8/internal/Im0;->c:J

    invoke-direct {v2, v10, v3, v4}, Lcom/android/tools/r8/internal/qh;-><init>(Lcom/android/tools/r8/internal/xw0;J)V

    invoke-interface {v1, v2, v12}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    goto :goto_3

    :cond_c
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->O()Z

    move-result v3

    iget-object v6, p0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v6, v6, Lcom/android/tools/r8/graph/J1;->a:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p0, p1, v9, v6, v3}, Lcom/android/tools/r8/internal/Vu;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/graph/l1;Z)Lcom/android/tools/r8/internal/F1;

    move-result-object v3

    if-nez v3, :cond_d

    move-object v3, v12

    goto :goto_5

    :cond_d
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/F1;->P()Lcom/android/tools/r8/internal/Om0;

    move-result-object v3

    :goto_5
    if-nez v3, :cond_e

    goto/16 :goto_1

    :cond_e
    if-eqz v7, :cond_f

    iget-object v2, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object v2

    invoke-interface {p1, v2, v12}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    new-instance v4, Lcom/android/tools/r8/internal/vh;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Om0;->j0()Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    invoke-direct {v4, v2, v3}, Lcom/android/tools/r8/internal/vh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/L2;)V

    invoke-interface {v1, v4, v12}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/ir/optimize/a;)V

    goto :goto_3

    :cond_f
    sget-boolean v6, Lcom/android/tools/r8/internal/Vu;->e:Z

    if-nez v6, :cond_11

    if-eqz v5, :cond_10

    goto :goto_6

    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_11
    :goto_6
    iget-object v5, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    iget-object v7, v4, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/E0;->p1()Z

    move-result v5

    if-nez v5, :cond_12

    goto/16 :goto_1

    :cond_12
    if-nez v6, :cond_14

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/F1;->f0()Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_7

    :cond_13
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_14
    :goto_7
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/vw;->g()Lcom/android/tools/r8/internal/xt;

    move-result-object v5

    iget-object v7, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/xt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xt;->c()Lcom/android/tools/r8/internal/de;

    move-result-object v4

    if-nez v4, :cond_16

    if-eqz v6, :cond_15

    goto/16 :goto_1

    :cond_15
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Expected to have an exact dynamic type for enum instance"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_16
    iget-object v5, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    iget-object v6, p0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1$c;->h:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v5, v4, v6}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/Z4;->s()Lcom/android/tools/r8/graph/j1;

    move-result-object v4

    if-eqz v4, :cond_17

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v5, v5, Lcom/android/tools/r8/graph/J1;->f:Lcom/android/tools/r8/graph/A2;

    if-eq v4, v5, :cond_17

    goto/16 :goto_1

    :cond_17
    iget-object v2, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object v2

    invoke-interface {p1, v2, v12}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    new-instance v4, Lcom/android/tools/r8/internal/vh;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Om0;->j0()Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    invoke-direct {v4, v2, v3}, Lcom/android/tools/r8/internal/vh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/L2;)V

    invoke-interface {v1, v4, v12}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/ir/optimize/a;)V

    goto/16 :goto_3

    :cond_18
    iget-object v1, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v3}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    if-eqz v2, :cond_19

    sget-object p1, Lcom/android/tools/r8/internal/we;->b:Lcom/android/tools/r8/internal/ve;

    return-object p1

    :cond_19
    sget-object p1, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/internal/fB;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ;->c0:Z

    if-eqz v2, :cond_2e

    iget-object v2, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_17

    :cond_0
    sget-boolean v2, Lcom/android/tools/r8/internal/Vu;->e:Z

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2
    :goto_0
    new-instance v2, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v2}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    iget-object v3, v1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->Z()Lcom/android/tools/r8/internal/tI;

    move-result-object v7

    if-nez v7, :cond_3

    :goto_2
    move-object/from16 v18, v3

    goto/16 :goto_f

    :cond_3
    iget-object v8, v7, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/xw0;

    iget-object v8, v8, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    const/4 v10, 0x1

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->n1()Z

    move-result v11

    if-nez v11, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->y()Lcom/android/tools/r8/internal/N3;

    move-result-object v15

    iget-object v8, v15, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/xw0;

    iget-object v8, v8, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result v11

    if-nez v11, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    iget-object v11, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    iget-object v12, v8, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v11, v12}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v11

    iget-object v12, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v12

    if-eqz v11, :cond_d

    iget-object v13, v11, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/Q;->I()Z

    move-result v13

    if-nez v13, :cond_6

    iget-object v11, v11, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v13, v12, Lcom/android/tools/r8/graph/u1;->n2:Lcom/android/tools/r8/graph/M2;

    if-ne v11, v13, :cond_d

    :cond_6
    iget-object v11, v8, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object v13, v12, Lcom/android/tools/r8/graph/u1;->v0:Lcom/android/tools/r8/graph/L2;

    if-ne v11, v13, :cond_d

    iget-object v8, v8, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v11, v8, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v12, v12, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    if-ne v11, v12, :cond_d

    iget-object v8, v8, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/O2;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    iget-object v8, v8, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v8, :cond_d

    instance-of v11, v8, Lcom/android/tools/r8/internal/Mo0;

    if-nez v11, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object v16

    iget-object v8, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/shaking/i;

    invoke-virtual/range {v16 .. v16}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v11

    sget-boolean v12, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v12, :cond_9

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_9
    iget-object v8, v8, Lcom/android/tools/r8/shaking/i;->G:Ljava/util/Map;

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/SG;

    if-eqz v8, :cond_d

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/tI;->x2()[I

    move-result-object v11

    array-length v12, v11

    move v13, v4

    :goto_3
    if-ge v13, v12, :cond_c

    aget v4, v11, v13

    invoke-interface {v8, v4}, Lcom/android/tools/r8/internal/HG;->a(I)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_4

    :cond_b
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    goto :goto_3

    :cond_c
    invoke-interface {v8}, Lcom/android/tools/r8/internal/SG;->values()Lcom/android/tools/r8/internal/Od0;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/tools/r8/internal/Od0;->iterator()Lcom/android/tools/r8/internal/A30;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/l1;

    iget-object v13, v4, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance v4, Lcom/android/tools/r8/internal/Uu;

    move-object v12, v4

    move-object/from16 v17, v8

    invoke-direct/range {v12 .. v17}, Lcom/android/tools/r8/internal/Uu;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/mK;Lcom/android/tools/r8/internal/N3;Lcom/android/tools/r8/internal/Mo0;Lcom/android/tools/r8/internal/SG;)V

    goto :goto_5

    :cond_d
    :goto_4
    const/4 v4, 0x0

    :goto_5
    if-nez v4, :cond_e

    goto/16 :goto_2

    :cond_e
    new-instance v8, Lcom/android/tools/r8/internal/ME;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/ar0;->v2()I

    move-result v11

    invoke-direct {v8, v11}, Lcom/android/tools/r8/internal/ME;-><init>(I)V

    const/4 v11, 0x0

    :goto_6
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/ar0;->v2()I

    move-result v12

    if-ge v11, v12, :cond_1c

    sget-boolean v12, Lcom/android/tools/r8/internal/Vu;->e:Z

    if-nez v12, :cond_10

    iget-object v12, v7, Lcom/android/tools/r8/internal/ar0;->l:[I

    aget v12, v12, v11

    iget v13, v7, Lcom/android/tools/r8/internal/ar0;->m:I

    if-eq v12, v13, :cond_f

    goto :goto_7

    :cond_f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_10
    :goto_7
    iget-object v12, v4, Lcom/android/tools/r8/internal/Uu;->e:Lcom/android/tools/r8/internal/SG;

    iget-object v13, v7, Lcom/android/tools/r8/internal/tI;->o:[I

    aget v13, v13, v11

    invoke-interface {v12, v13}, Lcom/android/tools/r8/internal/HG;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/graph/l1;

    iget-object v13, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v14

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v12, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v13, v15, v12, v14}, Lcom/android/tools/r8/graph/h;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D3;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/D3;->q()Lcom/android/tools/r8/graph/g1;

    move-result-object v12

    if-nez v12, :cond_11

    move-object/from16 v18, v3

    goto/16 :goto_d

    :cond_11
    iget-object v13, v12, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/vw;->f()Lcom/android/tools/r8/internal/F1;

    move-result-object v13

    iget-object v14, v0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v14, v14, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v14, v14, Lcom/android/tools/r8/graph/J1;->b:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, v1, v13, v14, v10}, Lcom/android/tools/r8/internal/Vu;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/graph/l1;Z)Lcom/android/tools/r8/internal/F1;

    move-result-object v13

    if-nez v13, :cond_12

    const/4 v13, 0x0

    goto :goto_8

    :cond_12
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object v13

    :goto_8
    if-nez v13, :cond_1a

    iget-object v14, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v14}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/nJ;->a0()Lcom/android/tools/r8/internal/nJ$n;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/nJ$n;->a()Z

    move-result v14

    if-eqz v14, :cond_1a

    iget-object v13, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    iget-object v14, v13, Lcom/android/tools/r8/graph/y;->C:Lcom/android/tools/r8/internal/Oa0;

    iget-object v14, v14, Lcom/android/tools/r8/internal/Oa0;->g:Lcom/android/tools/r8/internal/ma0;

    iget-object v15, v4, Lcom/android/tools/r8/internal/Uu;->a:Lcom/android/tools/r8/graph/M2;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v9

    invoke-interface {v13, v9, v15}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v9

    invoke-static {v9}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v9

    iget-object v13, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v13

    iget-object v15, v0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v15, v15, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v15, v15, Lcom/android/tools/r8/graph/J1;->b:Lcom/android/tools/r8/graph/l1;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v10

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v18, v3

    iget-object v3, v15, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v13, v3, v15, v10}, Lcom/android/tools/r8/graph/h;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/D3;->q()Lcom/android/tools/r8/graph/g1;

    move-result-object v3

    if-eqz v9, :cond_19

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v10, Lcom/android/tools/r8/internal/ma0;->d:Z

    if-nez v10, :cond_14

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/E0;->o1()Z

    move-result v10

    if-eqz v10, :cond_13

    goto :goto_9

    :cond_13
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_14
    :goto_9
    iget-object v10, v9, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v13, v14, Lcom/android/tools/r8/internal/ma0;->a:Lcom/android/tools/r8/internal/La0;

    iget-object v13, v13, Lcom/android/tools/r8/internal/La0;->o:Lcom/android/tools/r8/graph/M2;

    if-ne v10, v13, :cond_15

    const/4 v10, 0x1

    goto :goto_a

    :cond_15
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v10

    iget-object v13, v14, Lcom/android/tools/r8/internal/ma0;->a:Lcom/android/tools/r8/internal/La0;

    iget-object v13, v13, Lcom/android/tools/r8/internal/La0;->c:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v10, v13}, Lcom/android/tools/r8/graph/O2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v10

    :goto_a
    if-nez v10, :cond_16

    goto :goto_b

    :cond_16
    iget-object v10, v14, Lcom/android/tools/r8/internal/ma0;->b:Ljava/util/IdentityHashMap;

    iget-object v9, v9, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v10, v9}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/Jo0;

    if-nez v9, :cond_17

    goto :goto_b

    :cond_17
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/graph/l1;

    iget-object v9, v9, Lcom/android/tools/r8/internal/Jo0;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v9, v10}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/Q30;

    if-nez v9, :cond_18

    goto :goto_b

    :cond_18
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v9, v3}, Lcom/android/tools/r8/internal/Q30;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object v13

    goto :goto_c

    :cond_19
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_b
    const/4 v13, 0x0

    goto :goto_c

    :cond_1a
    move-object/from16 v18, v3

    :goto_c
    if-nez v13, :cond_1b

    const/4 v8, 0x0

    goto :goto_e

    :cond_1b
    iget-wide v9, v13, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int v3, v9

    iget-object v9, v7, Lcom/android/tools/r8/internal/ar0;->l:[I

    aget v9, v9, v11

    invoke-virtual {v8, v3, v9}, Lcom/android/tools/r8/internal/ME;->b(II)I

    :goto_d
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v18

    const/4 v10, 0x1

    goto/16 :goto_6

    :cond_1c
    move-object/from16 v18, v3

    :goto_e
    if-nez v8, :cond_1d

    goto :goto_f

    :cond_1d
    iget v3, v7, Lcom/android/tools/r8/internal/ar0;->m:I

    iget v9, v8, Lcom/android/tools/r8/internal/ME;->e:I

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/ar0;->v2()I

    move-result v10

    if-ge v9, v10, :cond_25

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->M()I

    move-result v9

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/ar0;->v2()I

    move-result v10

    const/4 v11, 0x1

    add-int/2addr v10, v11

    if-eq v9, v10, :cond_1f

    :cond_1e
    :goto_f
    move-object/from16 v3, v18

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_1f
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/ar0;->v2()I

    move-result v5

    add-int/2addr v5, v11

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->L()I

    move-result v9

    new-instance v10, Lcom/android/tools/r8/internal/dI;

    new-instance v11, Lcom/android/tools/r8/internal/FH;

    iget-object v12, v8, Lcom/android/tools/r8/internal/ME;->d:[I

    iget v13, v8, Lcom/android/tools/r8/internal/ME;->e:I

    invoke-direct {v11, v12, v13}, Lcom/android/tools/r8/internal/FH;-><init>([II)V

    new-instance v12, Lcom/android/tools/r8/internal/LH;

    invoke-direct {v12, v11}, Lcom/android/tools/r8/internal/LH;-><init>(Lcom/android/tools/r8/internal/FH;)V

    iget v11, v11, Lcom/android/tools/r8/internal/FH;->c:I

    invoke-direct {v10, v11}, Lcom/android/tools/r8/internal/dI;-><init>(I)V

    invoke-virtual {v10, v12}, Lcom/android/tools/r8/internal/dI;->a(Lcom/android/tools/r8/internal/JH;)Z

    new-instance v11, Lcom/android/tools/r8/internal/MZ0;

    invoke-direct {v11, v9, v10, v7}, Lcom/android/tools/r8/internal/MZ0;-><init>(ILcom/android/tools/r8/internal/nI;Lcom/android/tools/r8/internal/tI;)V

    sget-boolean v10, Lcom/android/tools/r8/internal/X3;->a:Z

    new-array v10, v5, [I

    const/4 v12, 0x0

    :goto_10
    if-ge v12, v5, :cond_20

    invoke-interface {v11, v12}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v13

    invoke-static {v13}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v13

    aput v13, v10, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_10

    :cond_20
    new-instance v11, Lcom/android/tools/r8/internal/CH;

    invoke-direct {v11, v5}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    const/4 v12, 0x0

    :goto_11
    if-ge v12, v5, :cond_22

    aget v13, v10, v12

    const/4 v14, 0x1

    if-ne v13, v14, :cond_21

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v13

    add-int v15, v12, v9

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v15

    sget-object v14, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {v13, v6, v2, v15, v14}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    invoke-virtual {v11, v12}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    :cond_21
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    :cond_22
    invoke-virtual {v6, v11}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/CH;)V

    const/4 v11, 0x1

    :goto_12
    if-ge v11, v5, :cond_23

    aget v6, v10, v11

    add-int/lit8 v9, v11, -0x1

    aget v9, v10, v9

    add-int/2addr v6, v9

    aput v6, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    :cond_23
    new-instance v5, Lcom/android/tools/r8/internal/LE;

    invoke-direct {v5, v8}, Lcom/android/tools/r8/internal/LE;-><init>(Lcom/android/tools/r8/internal/ME;)V

    new-instance v6, Lcom/android/tools/r8/internal/KE;

    invoke-direct {v6, v5}, Lcom/android/tools/r8/internal/KE;-><init>(Lcom/android/tools/r8/internal/LE;)V

    :goto_13
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/KE;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/KE;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/XE;

    invoke-interface {v5}, Lcom/android/tools/r8/internal/XE;->a()I

    move-result v9

    invoke-interface {v5}, Lcom/android/tools/r8/internal/XE;->getIntValue()I

    move-result v11

    invoke-interface {v5}, Lcom/android/tools/r8/internal/XE;->getIntValue()I

    move-result v5

    aget v5, v10, v5

    sub-int/2addr v11, v5

    invoke-virtual {v8, v9, v11}, Lcom/android/tools/r8/internal/ME;->b(II)I

    goto :goto_13

    :cond_24
    aget v5, v10, v3

    sub-int/2addr v3, v5

    const/4 v5, 0x1

    :cond_25
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/ME;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_26

    new-instance v3, Lcom/android/tools/r8/internal/Bz;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Bz;-><init>()V

    invoke-virtual {v7, v3}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_15

    :cond_26
    new-instance v6, Lcom/android/tools/r8/internal/FH;

    iget-object v9, v8, Lcom/android/tools/r8/internal/ME;->c:[I

    iget v10, v8, Lcom/android/tools/r8/internal/ME;->e:I

    invoke-direct {v6, v9, v10}, Lcom/android/tools/r8/internal/FH;-><init>([II)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/android/tools/r8/internal/W;->a([I)[I

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->sort([I)V

    array-length v9, v6

    new-array v9, v9, [I

    const/4 v10, 0x0

    :goto_14
    array-length v11, v6

    if-ge v10, v11, :cond_27

    aget v11, v6, v10

    invoke-virtual {v8, v11}, Lcom/android/tools/r8/internal/ME;->get(I)I

    move-result v11

    aput v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    :cond_27
    new-instance v8, Lcom/android/tools/r8/internal/tI;

    iget-object v10, v4, Lcom/android/tools/r8/internal/Uu;->b:Lcom/android/tools/r8/internal/mK;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    invoke-direct {v8, v10, v6, v9, v3}, Lcom/android/tools/r8/internal/tI;-><init>(Lcom/android/tools/r8/internal/xw0;[I[II)V

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/zE;)V

    :goto_15
    iget-object v3, v4, Lcom/android/tools/r8/internal/Uu;->c:Lcom/android/tools/r8/internal/N3;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->D()Z

    move-result v6

    if-nez v6, :cond_28

    iget-object v6, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/tools/r8/internal/NZ0;

    invoke-direct {v7, v3}, Lcom/android/tools/r8/internal/NZ0;-><init>(Lcom/android/tools/r8/internal/zE;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    iget-object v6, v6, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v6, v3}, Lcom/android/tools/r8/internal/CE;->b(Lcom/android/tools/r8/internal/zE;)V

    :cond_28
    iget-object v3, v4, Lcom/android/tools/r8/internal/Uu;->d:Lcom/android/tools/r8/internal/Mo0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->D()Z

    move-result v4

    if-nez v4, :cond_1e

    sget-boolean v4, Lcom/android/tools/r8/internal/Vu;->e:Z

    if-nez v4, :cond_2a

    iget-object v4, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_29

    goto :goto_16

    :cond_29
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2a
    :goto_16
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    iget-object v4, v4, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/CE;->b(Lcom/android/tools/r8/internal/zE;)V

    goto/16 :goto_f

    :cond_2b
    if-eqz v5, :cond_2c

    new-instance v3, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v3}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;)V

    iget-object v4, v2, Lcom/android/tools/r8/ir/optimize/a;->b:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2c
    iget-object v3, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    sget-boolean v2, Lcom/android/tools/r8/internal/Vu;->e:Z

    if-nez v2, :cond_2e

    iget-object v2, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_17

    :cond_2d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2e
    :goto_17
    return-void
.end method
