.class public interface abstract Lcom/android/tools/r8/internal/K70;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/K70;
.end method

.method public a(Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/internal/K70;
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/internal/K70;
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    instance-of v0, p1, Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/K70;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/I70;->a:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->r0()Z

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
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->n0()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/K70;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/K70;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/K70;
.end method

.method public abstract a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V
.end method
