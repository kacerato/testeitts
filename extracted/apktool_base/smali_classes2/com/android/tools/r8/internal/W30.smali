.class public final Lcom/android/tools/r8/internal/W30;
.super Lcom/android/tools/r8/internal/Do0;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/graph/j2;

.field public final d:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Do0;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iput-object p1, p0, Lcom/android/tools/r8/internal/W30;->a:Lcom/android/tools/r8/graph/y;

    iput-object v0, p0, Lcom/android/tools/r8/internal/W30;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->E4:Lcom/android/tools/r8/graph/j2;

    iput-object v0, p0, Lcom/android/tools/r8/internal/W30;->c:Lcom/android/tools/r8/graph/j2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/W30;->d:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/Set;)Lcom/android/tools/r8/internal/EE;
    .locals 6

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/L2;->f:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    const/16 v3, 0x65

    if-eq v1, v3, :cond_17

    const/16 v3, 0x6e

    if-eq v1, v3, :cond_15

    const/16 v3, 0x72

    if-eq v1, v3, :cond_c

    const/16 p2, 0x74

    if-eq v1, p2, :cond_4

    const/16 p2, 0x68

    if-eq v1, p2, :cond_2

    const/16 p2, 0x69

    if-eq v1, p2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/W30;->c:Lcom/android/tools/r8/graph/j2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/j2;->d:Lcom/android/tools/r8/graph/A2;

    if-ne v0, p2, :cond_1b

    invoke-virtual {p4, v2}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    iget-object p4, p0, Lcom/android/tools/r8/internal/W30;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, p4}, Lcom/android/tools/r8/internal/xw0;->c(Lcom/android/tools/r8/graph/y;)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3, p1}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;)V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->O()Z

    move-result p2

    if-eqz p2, :cond_1b

    invoke-interface {p3, p1}, Lcom/android/tools/r8/internal/EE;->c(Lcom/android/tools/r8/internal/fB;)V

    goto/16 :goto_2

    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/W30;->c:Lcom/android/tools/r8/graph/j2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/j2;->c:Lcom/android/tools/r8/graph/A2;

    if-ne v0, p2, :cond_1b

    invoke-virtual {p4, v2}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    iget-object p5, p0, Lcom/android/tools/r8/internal/W30;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, p5}, Lcom/android/tools/r8/internal/xw0;->c(Lcom/android/tools/r8/graph/y;)Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p3, p1, v2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;I)V

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->O()Z

    move-result p1

    if-eqz p1, :cond_1b

    sget-boolean p1, Lcom/android/tools/r8/internal/mK;->o:Z

    new-instance p1, Lcom/android/tools/r8/internal/lK;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/lK;-><init>()V

    iget-object p5, p0, Lcom/android/tools/r8/internal/W30;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p5, p5, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object p5, p5, Lcom/android/tools/r8/graph/u1$c;->e:Lcom/android/tools/r8/graph/A2;

    iput-object p5, p1, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    iput-object p4, p1, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/UJ;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/UJ;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/lK;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lK;->c()Lcom/android/tools/r8/internal/mK;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/zE;)V

    goto/16 :goto_2

    :cond_4
    iget-object p2, p0, Lcom/android/tools/r8/internal/W30;->c:Lcom/android/tools/r8/graph/j2;

    iget-object p7, p2, Lcom/android/tools/r8/graph/j2;->k:Lcom/android/tools/r8/graph/A2;

    if-eq v0, p7, :cond_5

    iget-object p2, p2, Lcom/android/tools/r8/graph/j2;->l:Lcom/android/tools/r8/graph/A2;

    if-ne v0, p2, :cond_1b

    :cond_5
    invoke-virtual {p4, v2}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p7

    invoke-virtual {p7}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    iget-object p7, p0, Lcom/android/tools/r8/internal/W30;->c:Lcom/android/tools/r8/graph/j2;

    iget-object p7, p7, Lcom/android/tools/r8/graph/j2;->k:Lcom/android/tools/r8/graph/A2;

    if-ne p2, p7, :cond_6

    iget-object p2, p0, Lcom/android/tools/r8/internal/W30;->b:Lcom/android/tools/r8/graph/u1;

    const-string p4, "null"

    invoke-virtual {p2, p4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    iget-object p4, p0, Lcom/android/tools/r8/internal/W30;->a:Lcom/android/tools/r8/graph/y;

    invoke-interface {p3, p4, p1, p2, p6}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/ir/optimize/a;)V

    goto/16 :goto_2

    :cond_6
    sget-boolean p1, Lcom/android/tools/r8/internal/W30;->e:Z

    if-nez p1, :cond_8

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/W30;->c:Lcom/android/tools/r8/graph/j2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/j2;->l:Lcom/android/tools/r8/graph/A2;

    if-ne p1, p2, :cond_7

    goto :goto_0

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_0
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/NJ;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p1, p2, p6}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    :cond_9
    invoke-interface {p3}, Lcom/android/tools/r8/internal/EE;->i()V

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p7}, Lcom/android/tools/r8/internal/pu0;->t()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/android/tools/r8/internal/W30;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p7, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->a()Lcom/android/tools/r8/ir/optimize/a;

    move-result-object p1

    iget-object p5, p6, Lcom/android/tools/r8/ir/optimize/a;->b:Ljava/util/Set;

    invoke-interface {p5, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    :cond_b
    invoke-interface {p3}, Lcom/android/tools/r8/internal/EE;->i()V

    goto/16 :goto_2

    :cond_c
    iget-object v1, p0, Lcom/android/tools/r8/internal/W30;->c:Lcom/android/tools/r8/graph/j2;

    iget-object v3, v1, Lcom/android/tools/r8/graph/j2;->f:Lcom/android/tools/r8/graph/A2;

    if-eq v0, v3, :cond_e

    iget-object v3, v1, Lcom/android/tools/r8/graph/j2;->g:Lcom/android/tools/r8/graph/A2;

    if-eq v0, v3, :cond_e

    iget-object v3, v1, Lcom/android/tools/r8/graph/j2;->h:Lcom/android/tools/r8/graph/A2;

    if-eq v0, v3, :cond_e

    iget-object v3, v1, Lcom/android/tools/r8/graph/j2;->i:Lcom/android/tools/r8/graph/A2;

    if-eq v0, v3, :cond_e

    iget-object v1, v1, Lcom/android/tools/r8/graph/j2;->j:Lcom/android/tools/r8/graph/A2;

    if-ne v0, v1, :cond_d

    goto :goto_1

    :cond_d
    return-object p3

    :cond_e
    :goto_1
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_2

    :cond_f
    invoke-virtual {p4, v2}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->O()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p1, v0, p6}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    :cond_10
    invoke-interface {p3}, Lcom/android/tools/r8/internal/EE;->i()V

    goto/16 :goto_2

    :cond_11
    iget-object v1, p0, Lcom/android/tools/r8/internal/W30;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/xw0;->c(Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/W30;->c:Lcom/android/tools/r8/graph/j2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/j2;->f:Lcom/android/tools/r8/graph/A2;

    if-ne v0, v1, :cond_12

    iget-object p4, p0, Lcom/android/tools/r8/internal/W30;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result p4

    if-eqz p4, :cond_1b

    iget-object p4, p0, Lcom/android/tools/r8/internal/W30;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v1

    move-object v0, p3

    move-object v2, p1

    move-object v3, p2

    move-object v4, p7

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Ljava/util/Set;Lcom/android/tools/r8/ir/optimize/a;)V

    goto/16 :goto_2

    :cond_12
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/W30;->c:Lcom/android/tools/r8/graph/j2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/j2;->i:Lcom/android/tools/r8/graph/A2;

    if-ne p1, p2, :cond_14

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/NJ;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->O()Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/NJ;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p1, p2, p6}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    :cond_13
    invoke-interface {p3}, Lcom/android/tools/r8/internal/EE;->i()V

    goto/16 :goto_2

    :cond_14
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    iget-object p1, p0, Lcom/android/tools/r8/internal/W30;->c:Lcom/android/tools/r8/graph/j2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/j2;->j:Lcom/android/tools/r8/graph/A2;

    goto/16 :goto_2

    :cond_15
    iget-object p2, p0, Lcom/android/tools/r8/internal/W30;->c:Lcom/android/tools/r8/graph/j2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/j2;->e:Lcom/android/tools/r8/graph/A2;

    if-ne v0, p2, :cond_1b

    invoke-virtual {p4, v2}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    iget-object p4, p0, Lcom/android/tools/r8/internal/W30;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, p4}, Lcom/android/tools/r8/internal/xw0;->c(Lcom/android/tools/r8/graph/y;)Z

    move-result p4

    if-eqz p4, :cond_16

    invoke-interface {p3, p1}, Lcom/android/tools/r8/internal/EE;->c(Lcom/android/tools/r8/internal/fB;)V

    goto/16 :goto_2

    :cond_16
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->O()Z

    move-result p2

    if-eqz p2, :cond_1b

    invoke-interface {p3, p1}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;)V

    goto/16 :goto_2

    :cond_17
    iget-object p2, p0, Lcom/android/tools/r8/internal/W30;->c:Lcom/android/tools/r8/graph/j2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/j2;->a:Lcom/android/tools/r8/graph/A2;

    if-ne v0, p2, :cond_1b

    invoke-virtual {p4, v2}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/NJ;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p5

    iget-object p6, p0, Lcom/android/tools/r8/internal/W30;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, p6}, Lcom/android/tools/r8/internal/xw0;->c(Lcom/android/tools/r8/graph/y;)Z

    move-result p6

    if-eqz p6, :cond_1a

    iget-object p2, p0, Lcom/android/tools/r8/internal/W30;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p5, p2}, Lcom/android/tools/r8/internal/xw0;->c(Lcom/android/tools/r8/graph/y;)Z

    move-result p2

    if-eqz p2, :cond_18

    invoke-interface {p3, p1}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;)V

    goto :goto_2

    :cond_18
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/xw0;->O()Z

    move-result p2

    if-eqz p2, :cond_19

    invoke-interface {p3, p1}, Lcom/android/tools/r8/internal/EE;->c(Lcom/android/tools/r8/internal/fB;)V

    goto :goto_2

    :cond_19
    iget-object p1, p0, Lcom/android/tools/r8/internal/W30;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/tools/r8/internal/C2;->z:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result p1

    if-eqz p1, :cond_1b

    sget-boolean p1, Lcom/android/tools/r8/internal/gK;->o:Z

    new-instance p1, Lcom/android/tools/r8/internal/fK;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/fK;-><init>()V

    iget-object p2, p0, Lcom/android/tools/r8/internal/W30;->c:Lcom/android/tools/r8/graph/j2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/j2;->d:Lcom/android/tools/r8/graph/A2;

    iput-object p2, p1, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    iput-object p2, p1, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p1, p5}, Lcom/android/tools/r8/internal/UJ;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/UJ;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/fK;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fK;->c()Lcom/android/tools/r8/internal/gK;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_2

    :cond_1a
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->O()Z

    move-result p1

    if-eqz p1, :cond_1b

    sget-boolean p1, Lcom/android/tools/r8/internal/mK;->o:Z

    new-instance p1, Lcom/android/tools/r8/internal/lK;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/lK;-><init>()V

    iget-object p6, p0, Lcom/android/tools/r8/internal/W30;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p6, p6, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object p6, p6, Lcom/android/tools/r8/graph/u1$c;->c:Lcom/android/tools/r8/graph/A2;

    iput-object p6, p1, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    iput-object p4, p1, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    invoke-static {p2, p5}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/UJ;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/UJ;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/lK;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lK;->c()Lcom/android/tools/r8/internal/mK;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/zE;)V

    :cond_1b
    :goto_2
    return-object p3
.end method

.method public final getType()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/W30;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->q2:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method
