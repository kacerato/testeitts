.class public interface abstract Lcom/android/tools/r8/internal/Qx;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/Iw0;
.end method

.method public a(Lcom/android/tools/r8/internal/Q5;Ljava/util/function/Supplier;)Lcom/android/tools/r8/internal/Iw0;
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/android/tools/r8/internal/ZC;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/android/tools/r8/internal/ZC;->D()Lcom/android/tools/r8/internal/Pw;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/internal/Pw;->a:Lcom/android/tools/r8/graph/l1;

    .line 4
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/Qx;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/Px;->a:Z

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/android/tools/r8/internal/ZC;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_2
    :goto_0
    invoke-interface {p1}, Lcom/android/tools/r8/internal/ZC;->C()Lcom/android/tools/r8/internal/aX;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/Qx;->a(Lcom/android/tools/r8/internal/aX;Ljava/util/function/Supplier;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Lcom/android/tools/r8/internal/aX;Ljava/util/function/Supplier;)Lcom/android/tools/r8/internal/Iw0;
.end method
