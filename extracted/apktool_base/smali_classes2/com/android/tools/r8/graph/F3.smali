.class public final Lcom/android/tools/r8/graph/F3;
.super Lcom/android/tools/r8/graph/D3$a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/g1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/graph/D3$a;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final m()Lcom/android/tools/r8/graph/F3;
    .locals 0

    return-object p0
.end method

.method public final o()Lcom/android/tools/r8/graph/F5;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/F3;->r()Lcom/android/tools/r8/graph/F5;

    move-result-object v0

    return-object v0
.end method

.method public final r()Lcom/android/tools/r8/graph/F5;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/graph/F5;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/D3$a;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    iget-object v2, p0, Lcom/android/tools/r8/graph/D3$a;->d:Lcom/android/tools/r8/graph/g1;

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/graph/F5;-><init>(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H2;)V

    return-object v0
.end method

.method public final t()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final u()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
