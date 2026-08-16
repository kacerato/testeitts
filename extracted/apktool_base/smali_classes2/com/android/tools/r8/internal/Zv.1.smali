.class public Lcom/android/tools/r8/internal/Zv;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/graph/g1;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->W1()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->n0()Lcom/android/tools/r8/internal/VT;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->V()I

    move-result v0

    if-lez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/Zv;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/graph/g1;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_2
    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->F1()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->S()Lcom/android/tools/r8/internal/hw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    if-ne p0, p1, :cond_4

    return v1

    :cond_4
    return v2
.end method
