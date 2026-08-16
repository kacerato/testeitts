.class public final Lcom/android/tools/r8/internal/SZ;
.super Lcom/android/tools/r8/internal/zm0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/zm0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v0, v0, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/TW;->f()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/tools/r8/graph/H2;->x:Lcom/android/tools/r8/kotlin/p;

    invoke-interface {v0}, Lcom/android/tools/r8/kotlin/p;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/android/tools/r8/graph/H2;->x:Lcom/android/tools/r8/kotlin/p;

    invoke-interface {p1}, Lcom/android/tools/r8/kotlin/p;->g()Lcom/android/tools/r8/kotlin/n0;

    move-result-object p1

    iget-object v0, p1, Lcom/android/tools/r8/kotlin/n0;->b:Lcom/android/tools/r8/kotlin/O;

    if-eqz v0, :cond_1

    iget p1, p1, Lcom/android/tools/r8/kotlin/n0;->d:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "NoClassInitializerWithObservableSideEffects"

    return-object v0
.end method
