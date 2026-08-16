.class public abstract Lcom/android/tools/r8/internal/Y70;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/vg;Lcom/android/tools/r8/internal/s4;)V
    .locals 0

    .line 4
    iget-boolean p3, p3, Lcom/android/tools/r8/internal/s4;->b:Z

    if-eqz p3, :cond_3

    .line 5
    new-instance p3, Lcom/android/tools/r8/internal/n31;

    invoke-direct {p3, p0}, Lcom/android/tools/r8/internal/n31;-><init>(Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->e0()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 7
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Lcom/android/tools/r8/internal/vg;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V

    return-void

    .line 8
    :cond_0
    sget-boolean p0, Lcom/android/tools/r8/internal/vg;->d:Z

    if-nez p0, :cond_2

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->N()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 9
    :cond_2
    :goto_0
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, p0, p3}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    :cond_3
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/K70;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/xS0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/xS0;-><init>(Lcom/android/tools/r8/internal/K70;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    return-void
.end method
