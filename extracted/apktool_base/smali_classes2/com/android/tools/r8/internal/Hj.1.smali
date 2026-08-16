.class public abstract Lcom/android/tools/r8/internal/Hj;
.super Lcom/android/tools/r8/internal/R00;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/internal/R00;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/R00;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/internal/NW;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;
    .locals 0

    .line 3
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NW;->a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/internal/Hz;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/internal/Hz;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;
    .locals 0

    .line 1
    return-object p1
.end method

.method public b(Lcom/android/tools/r8/internal/iw;)Lcom/android/tools/r8/internal/iw;
    .locals 0

    .line 2
    return-object p1
.end method

.method public b(Lcom/android/tools/r8/graph/M2;)Ljava/lang/Iterable;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/graph/M2;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 0

    .line 1
    return-object p1
.end method

.method public c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;
    .locals 0

    .line 2
    return-object p1
.end method

.method public d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 0

    .line 1
    return-object p1
.end method

.method public d(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 2
    return-object p1
.end method

.method public f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    return-object p1
.end method

.method public f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;
    .locals 1

    if-ne p0, p1, :cond_0

    .line 2
    sget-object p1, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Hj;->d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/Hz;->f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    return-object p1
.end method
