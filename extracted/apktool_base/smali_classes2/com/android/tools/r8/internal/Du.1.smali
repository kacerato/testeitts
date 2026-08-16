.class public abstract Lcom/android/tools/r8/internal/Du;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/internal/qZ;Lcom/android/tools/r8/graph/u1;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->C()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->Z()Lcom/android/tools/r8/internal/zE;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->i0()Lcom/android/tools/r8/internal/gK;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->k5:Lcom/android/tools/r8/graph/W1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/W1;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->E4:Lcom/android/tools/r8/graph/j2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/j2;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v0
.end method
