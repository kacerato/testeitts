.class public final Lcom/android/tools/r8/graph/j5;
.super Lcom/android/tools/r8/graph/Z4$c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I0;Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/graph/Z4$c;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/Z4$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/Z4$c;->b:Lcom/android/tools/r8/graph/E0;

    if-eq p1, v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/j5;

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/I0;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/tools/r8/graph/j5;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/I0;Lcom/android/tools/r8/graph/j1;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    .line 4
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final m()Lcom/android/tools/r8/graph/j5;
    .locals 0

    return-object p0
.end method
