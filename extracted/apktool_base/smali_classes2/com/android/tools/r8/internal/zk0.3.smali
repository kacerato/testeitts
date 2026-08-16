.class public final Lcom/android/tools/r8/internal/zk0;
.super Lcom/android/tools/r8/internal/te;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/internal/xw0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/te;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->p()Lcom/android/tools/r8/internal/xs0;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/xw0;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v2, p1, v1}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/zk0;->e:Lcom/android/tools/r8/internal/xw0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ReturnBlockCanonicalizerRewriter"

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 0

    .line 2
    sget-boolean p1, Lcom/android/tools/r8/internal/zk0;->f:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    .line 3
    iget-boolean p1, p1, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->F()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/nJ$p;->Z:Z

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/we;
    .locals 11

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iget-object v1, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    iget-object v3, v2, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->G0()Lcom/android/tools/r8/internal/yk0;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->A()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/tools/r8/internal/zk0;->e:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/yk0;->v2()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    :cond_2
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    iget-object v5, v4, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->G0()Lcom/android/tools/r8/internal/yk0;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->A()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/android/tools/r8/internal/zk0;->e:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/yk0;->v2()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    :cond_6
    invoke-interface {v0, v6, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    if-ne v5, v4, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v6, v4, v5}, Lcom/android/tools/r8/internal/W5;->b(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->l2()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->Q0()Lcom/android/tools/r8/internal/ar0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/ar0;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v7

    if-ne v7, v5, :cond_8

    new-instance v7, Lcom/android/tools/r8/internal/cr0;

    invoke-direct {v7, v6}, Lcom/android/tools/r8/internal/cr0;-><init>(Lcom/android/tools/r8/internal/ar0;)V

    move v8, v2

    :goto_3
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/ar0;->v2()I

    move-result v9

    if-ge v8, v9, :cond_c

    iget-object v9, v6, Lcom/android/tools/r8/internal/ar0;->l:[I

    aget v9, v9, v8

    iget v10, v6, Lcom/android/tools/r8/internal/ar0;->m:I

    if-ne v9, v10, :cond_b

    iget-object v9, v7, Lcom/android/tools/r8/internal/cr0;->g:Lcom/android/tools/r8/internal/dI;

    if-nez v9, :cond_a

    new-instance v9, Lcom/android/tools/r8/internal/dI;

    const/16 v10, 0x10

    invoke-direct {v9, v10}, Lcom/android/tools/r8/internal/dI;-><init>(I)V

    iput-object v9, v7, Lcom/android/tools/r8/internal/cr0;->g:Lcom/android/tools/r8/internal/dI;

    :cond_a
    iget-object v9, v7, Lcom/android/tools/r8/internal/cr0;->g:Lcom/android/tools/r8/internal/dI;

    invoke-virtual {v9, v8}, Lcom/android/tools/r8/internal/dI;->add(I)Z

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_c
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/cr0;->b()V

    goto :goto_2

    :cond_d
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_e
    if-eqz v3, :cond_f

    new-instance v0, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->z()V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->x()V

    :cond_f
    if-eqz v3, :cond_10

    sget-object p1, Lcom/android/tools/r8/internal/we;->b:Lcom/android/tools/r8/internal/ve;

    return-object p1

    :cond_10
    sget-object p1, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    return-object p1
.end method
