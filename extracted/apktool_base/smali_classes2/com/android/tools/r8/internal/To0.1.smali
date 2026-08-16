.class public final Lcom/android/tools/r8/internal/To0;
.super Lcom/android/tools/r8/internal/te;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/te;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "StoreStoreFenceToInvokeRewriter"

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 0

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 p2, 0x49

    .line 3
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/we;
    .locals 4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->p()Lcom/android/tools/r8/internal/hB;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lcom/android/tools/r8/internal/So0;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->N0()Lcom/android/tools/r8/internal/So0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    iget-object v2, v1, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    sget-boolean v1, Lcom/android/tools/r8/internal/gK;->o:Z

    new-instance v1, Lcom/android/tools/r8/internal/fK;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/fK;-><init>()V

    iget-object v3, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->U4:Lcom/android/tools/r8/graph/R1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/R1;->a:Lcom/android/tools/r8/graph/A2;

    iput-object v3, v1, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    iput-object v0, v1, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fK;->c()Lcom/android/tools/r8/internal/gK;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    sget-object p1, Lcom/android/tools/r8/internal/we;->b:Lcom/android/tools/r8/internal/ve;

    return-object p1

    :cond_2
    sget-object p1, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    return-object p1
.end method
