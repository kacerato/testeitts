.class public final Lcom/android/tools/r8/naming/e0;
.super Lcom/android/tools/r8/naming/c0;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/naming/e0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/naming/e0;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/tools/r8/naming/c0;-><init>(Ljava/util/function/Function;)V

    iput-object p1, p0, Lcom/android/tools/r8/naming/e0;->c:Lcom/android/tools/r8/naming/e0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)Ljava/lang/Object;
    .locals 0

    .line 8
    new-instance p1, Lcom/android/tools/r8/naming/d0;

    invoke-direct {p1}, Lcom/android/tools/r8/naming/d0;-><init>()V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/L2;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/c0;->c(Lcom/android/tools/r8/graph/A2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/d0;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/naming/d0;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/L2;)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 3
    const-string p2, "Assertion error when trying to reserve name \'%s\' for method \'%s\'"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/A2;)Z
    .locals 1

    .line 4
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/naming/c0;->b(Lcom/android/tools/r8/graph/A2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/d0;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/naming/d0;->b:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/e0;->c:Lcom/android/tools/r8/naming/e0;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/naming/e0;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final d(Lcom/android/tools/r8/graph/A2;)Ljava/util/Set;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/naming/c0;->b(Lcom/android/tools/r8/graph/A2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/d0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/tools/r8/naming/d0;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/tools/r8/internal/vX;->a:Lcom/android/tools/r8/internal/vX;

    new-instance v2, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v2, v1, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Set;

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/naming/e0;->c:Lcom/android/tools/r8/naming/e0;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/e0;->d(Lcom/android/tools/r8/graph/A2;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method
