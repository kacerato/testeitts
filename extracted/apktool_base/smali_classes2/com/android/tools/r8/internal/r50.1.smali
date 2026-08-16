.class public abstract Lcom/android/tools/r8/internal/r50;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/I1;->i(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object p0

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/I1;->g(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-boolean p0, p0, Lcom/android/tools/r8/shaking/I1;->y:Z

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/f7;->a()Z

    move-result p0

    return p0

    :cond_1
    return v2
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;I)Z
    .locals 1

    .line 10
    sget-boolean v0, Lcom/android/tools/r8/internal/r50;->a:Z

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/r50;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez p2, :cond_5

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    return v0

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    .line 13
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result p2

    if-nez p2, :cond_5

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/L4;->L()Z

    move-result p2

    if-eqz p2, :cond_3

    return v0

    .line 15
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object p1

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    .line 17
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/I1;->g(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 18
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 19
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->c()Lcom/android/tools/r8/internal/nJ$b;

    move-result-object p0

    .line 21
    iget-boolean p0, p0, Lcom/android/tools/r8/internal/nJ$b;->c:Z

    if-eqz p0, :cond_4

    .line 22
    iget-boolean p0, p1, Lcom/android/tools/r8/shaking/I1;->r:Z

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    return v0

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0
.end method
