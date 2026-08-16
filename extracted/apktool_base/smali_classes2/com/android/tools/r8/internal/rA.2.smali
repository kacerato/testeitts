.class public abstract Lcom/android/tools/r8/internal/rA;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)V
    .locals 3

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->m()Lcom/android/tools/r8/internal/Nq0;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/android/tools/r8/internal/tA;

    .line 7
    new-instance v2, Lcom/android/tools/r8/internal/sA;

    invoke-direct {v2, p1, v1}, Lcom/android/tools/r8/internal/sA;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/tA;)V

    invoke-interface {v0, v2}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/J2;)V
    .locals 3

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/wr1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/wr1;-><init>(Lcom/android/tools/r8/internal/rA;)V

    new-instance v1, Lcom/android/tools/r8/internal/xr1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/xr1;-><init>(Lcom/android/tools/r8/internal/rA;)V

    new-instance v2, Lcom/android/tools/r8/internal/yr1;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/yr1;-><init>(Lcom/android/tools/r8/internal/rA;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/J2;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public abstract a(Lcom/android/tools/r8/graph/M2;)V
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)V
    .locals 3

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->m()Lcom/android/tools/r8/internal/Nq0;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/android/tools/r8/internal/tA;

    .line 5
    new-instance v2, Lcom/android/tools/r8/internal/sA;

    invoke-direct {v2, p1, v1}, Lcom/android/tools/r8/internal/sA;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/tA;)V

    invoke-interface {v0, v2}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public final a(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/WM0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/WM0;-><init>()V

    move-object v1, p0

    check-cast v1, Lcom/android/tools/r8/internal/tA;

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/android/tools/r8/internal/Lq0;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/rA;)V

    goto :goto_0

    :cond_0
    return-void
.end method
