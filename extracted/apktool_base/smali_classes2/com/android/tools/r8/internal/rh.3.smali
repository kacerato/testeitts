.class public final Lcom/android/tools/r8/internal/rh;
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
    const-string v0, "ConstResourceNumberRemover"

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 0

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 p2, 0x47

    .line 3
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/we;
    .locals 5

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

    instance-of v2, v1, Lcom/android/tools/r8/internal/Pf0;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->F0()Lcom/android/tools/r8/internal/Pf0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/qh;

    iget-object v2, v0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    iget v0, v0, Lcom/android/tools/r8/internal/Pf0;->l:I

    int-to-long v3, v0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/tools/r8/internal/qh;-><init>(Lcom/android/tools/r8/internal/xw0;J)V

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

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
