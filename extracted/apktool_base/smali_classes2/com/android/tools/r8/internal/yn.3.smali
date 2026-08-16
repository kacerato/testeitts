.class public final Lcom/android/tools/r8/internal/yn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/cB;


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/internal/B60;

.field public b:Lcom/android/tools/r8/internal/hj;

.field public c:Lcom/android/tools/r8/internal/dH;

.field public final synthetic d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/yn;->d:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/B60;->s()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/yn;->a:Lcom/android/tools/r8/internal/B60;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/tools/r8/internal/yn;->b:Lcom/android/tools/r8/internal/hj;

    iput-object p1, p0, Lcom/android/tools/r8/internal/yn;->c:Lcom/android/tools/r8/internal/dH;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    if-ne v3, p2, :cond_3

    iget-object v3, p0, Lcom/android/tools/r8/internal/yn;->b:Lcom/android/tools/r8/internal/hj;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v3

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/yn;->a:Lcom/android/tools/r8/internal/B60;

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v3

    :goto_1
    if-nez v2, :cond_4

    move-object v2, v3

    goto :goto_0

    :cond_4
    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/tools/r8/internal/B60;->s()Lcom/android/tools/r8/internal/B60;

    move-result-object v2

    :cond_5
    iput-object v0, p0, Lcom/android/tools/r8/internal/yn;->b:Lcom/android/tools/r8/internal/hj;

    iput-object v2, p0, Lcom/android/tools/r8/internal/yn;->a:Lcom/android/tools/r8/internal/B60;

    :cond_6
    :goto_2
    iget-object p2, p1, Lcom/android/tools/r8/internal/W5;->a:Lcom/android/tools/r8/internal/dH;

    if-eqz p2, :cond_7

    new-instance v1, Lcom/android/tools/r8/internal/dH;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/dH;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    invoke-virtual {v1, p2}, Lcom/android/tools/r8/internal/dH;->putAll(Ljava/util/Map;)V

    goto :goto_3

    :cond_7
    new-instance v1, Lcom/android/tools/r8/internal/dH;

    const/16 p2, 0x10

    invoke-direct {v1, p2}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    :goto_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object p2

    :cond_8
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v2, Lcom/android/tools/r8/internal/hj;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/tools/r8/internal/yn;->b:Lcom/android/tools/r8/internal/hj;

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/tools/r8/internal/yn;->a:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v4

    if-ne v3, v4, :cond_a

    iget-object v3, p0, Lcom/android/tools/r8/internal/yn;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->N()Lcom/android/tools/r8/internal/hj;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v2, Lcom/android/tools/r8/internal/yn;->e:Z

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/yn;->a:Lcom/android/tools/r8/internal/B60;

    if-ne v2, v3, :cond_8

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1}, Lcom/android/tools/r8/internal/R5;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    if-eq v2, p3, :cond_9

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Unexpected trivial fallthrough block. This should be removed already."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_a
    iget-object v3, p0, Lcom/android/tools/r8/internal/yn;->b:Lcom/android/tools/r8/internal/hj;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v4

    if-ne v3, v4, :cond_b

    iget-object v3, p0, Lcom/android/tools/r8/internal/yn;->c:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/T;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/tools/r8/internal/yn;->d:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/tools/r8/internal/yn;->b:Lcom/android/tools/r8/internal/hj;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->N()Lcom/android/tools/r8/internal/hj;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/yn;->b:Lcom/android/tools/r8/internal/hj;

    goto :goto_4

    :cond_b
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->N()Lcom/android/tools/r8/internal/hj;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/yn;->b:Lcom/android/tools/r8/internal/hj;

    new-instance v2, Lcom/android/tools/r8/internal/dH;

    iget v3, v1, Lcom/android/tools/r8/internal/dH;->h:I

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/dH;->putAll(Ljava/util/Map;)V

    iput-object v2, p0, Lcom/android/tools/r8/internal/yn;->c:Lcom/android/tools/r8/internal/dH;

    goto/16 :goto_4

    :cond_c
    sget-boolean v3, Lcom/android/tools/r8/internal/yn;->e:Z

    if-nez v3, :cond_e

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_5

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_e
    :goto_5
    instance-of v3, v2, Lcom/android/tools/r8/internal/fj;

    if-eqz v3, :cond_f

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->M()Lcom/android/tools/r8/internal/fj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/fj;->a(Lcom/android/tools/r8/internal/SG;)Z

    goto/16 :goto_4

    :cond_f
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v4

    if-nez v4, :cond_8

    if-nez v3, :cond_8

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->Q()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->T()Z

    move-result v3

    if-nez v3, :cond_10

    goto/16 :goto_4

    :cond_10
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->U()Lcom/android/tools/r8/internal/Bz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    if-ne v3, p3, :cond_11

    goto/16 :goto_4

    :cond_11
    iget-object v3, p0, Lcom/android/tools/r8/internal/yn;->b:Lcom/android/tools/r8/internal/hj;

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v4

    if-ne v3, v4, :cond_12

    iget-object v3, p0, Lcom/android/tools/r8/internal/yn;->c:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/T;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/tools/r8/internal/yn;->d:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/tools/r8/internal/yn;->b:Lcom/android/tools/r8/internal/hj;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    iput-object v0, p0, Lcom/android/tools/r8/internal/yn;->b:Lcom/android/tools/r8/internal/hj;

    iput-object v0, p0, Lcom/android/tools/r8/internal/yn;->c:Lcom/android/tools/r8/internal/dH;

    :cond_13
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/internal/yn;->a:Lcom/android/tools/r8/internal/B60;

    goto/16 :goto_4

    :cond_14
    return-void
.end method
