.class public abstract Lcom/android/tools/r8/shaking/F1;
.super Lcom/android/tools/r8/shaking/t1;
.source "SourceFile"


# instance fields
.field public final k:Z


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/shaking/D1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/shaking/t1;-><init>(Lcom/android/tools/r8/shaking/r1;)V

    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/D1;->k:Z

    iput-boolean p1, p0, Lcom/android/tools/r8/shaking/F1;->k:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/G5;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/F1;->k:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->I()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/t1;->a()Lcom/android/tools/r8/shaking/I1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/shaking/I1;->h(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    if-nez v1, :cond_1

    return v3

    .line 4
    :cond_1
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->J()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Lcom/android/tools/r8/graph/D5;->c()Lcom/android/tools/r8/graph/F5;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    .line 6
    check-cast p2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {p2}, Lcom/android/tools/r8/graph/D5;->b()Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 8
    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p2

    if-nez p2, :cond_4

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v3
.end method

.method public final a(Lcom/android/tools/r8/shaking/F1;)Z
    .locals 1

    .line 10
    invoke-super {p0, p1}, Lcom/android/tools/r8/shaking/t1;->a(Lcom/android/tools/r8/shaking/t1;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/F1;->k:Z

    .line 11
    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/F1;->k:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()I
    .locals 3

    invoke-super {p0}, Lcom/android/tools/r8/shaking/t1;->b()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/F1;->k:Z

    const/16 v2, 0x9

    invoke-static {v2, v1}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
