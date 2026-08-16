.class public final Lcom/android/tools/r8/internal/KQ;
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


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "KnownArrayLengthRewriter"

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 0

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/4 p2, 0x7

    .line 3
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/we;
    .locals 9

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->p()Lcom/android/tools/r8/internal/hB;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v3, Lcom/android/tools/r8/internal/P3;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->z()Lcom/android/tools/r8/internal/P3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->O()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v6

    sget-object v7, Lcom/android/tools/r8/internal/M1;->a:Lcom/android/tools/r8/internal/L1;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/F1;->W()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->O()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v4

    sget-boolean v6, Lcom/android/tools/r8/internal/KQ;->e:Z

    if-nez v6, :cond_6

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_1
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v4, Lcom/android/tools/r8/internal/oZ;

    if-eqz v7, :cond_7

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->t0()Lcom/android/tools/r8/internal/oZ;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    invoke-interface {v0}, Lcom/android/tools/r8/internal/EE;->i()V

    goto :goto_2

    :cond_7
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->b2()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->v0()Lcom/android/tools/r8/internal/rZ;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/tools/r8/internal/rZ;->l:J

    const-wide/32 v7, 0x7fffffff

    cmp-long v5, v3, v7

    if-lez v5, :cond_8

    goto/16 :goto_0

    :cond_8
    long-to-int v2, v3

    invoke-interface {v0, p1, v2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;I)V

    goto :goto_2

    :cond_9
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/F1;->W()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/F1;->T()I

    move-result v2

    invoke-interface {v0, p1, v2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;I)V

    :goto_2
    new-instance v2, Lcom/android/tools/r8/internal/tK0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/tK0;-><init>()V

    invoke-interface {v6, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->x()V

    :cond_b
    if-eqz v2, :cond_c

    sget-object p1, Lcom/android/tools/r8/internal/we;->b:Lcom/android/tools/r8/internal/ve;

    return-object p1

    :cond_c
    sget-object p1, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    return-object p1
.end method
