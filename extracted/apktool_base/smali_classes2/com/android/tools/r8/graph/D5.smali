.class public interface abstract Lcom/android/tools/r8/graph/D5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/o0;
.implements Lcom/android/tools/r8/graph/E5;
.implements Lcom/android/tools/r8/graph/J5;


# virtual methods
.method public bridge synthetic a()Lcom/android/tools/r8/graph/E0;
    .locals 1

    .line 2
    invoke-interface {p0}, Lcom/android/tools/r8/graph/D5;->a()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/android/tools/r8/graph/E5;)Lcom/android/tools/r8/graph/E5;
    .locals 0

    .line 1
    return-object p0
.end method

.method public abstract a()Lcom/android/tools/r8/graph/H2;
.end method

.method public a(Ljava/util/function/BiFunction;)V
    .locals 1

    .line 3
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->d()Lcom/android/tools/r8/graph/b1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/b1;->a(Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public bridge synthetic asClass()Lcom/android/tools/r8/graph/E0;
    .locals 1

    .line 2
    invoke-interface {p0}, Lcom/android/tools/r8/graph/D5;->asClass()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    return-object v0
.end method

.method public asClass()Lcom/android/tools/r8/graph/H2;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic b()Lcom/android/tools/r8/graph/H0;
    .locals 1

    .line 2
    invoke-interface {p0}, Lcom/android/tools/r8/graph/D5;->b()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/android/tools/r8/graph/H5;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic c()Lcom/android/tools/r8/graph/F0;
    .locals 1

    .line 2
    invoke-interface {p0}, Lcom/android/tools/r8/graph/D5;->c()Lcom/android/tools/r8/graph/F5;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/android/tools/r8/graph/F5;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lcom/android/tools/r8/graph/D5;
    .locals 0

    return-object p0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public y()V
    .locals 1

    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->d()Lcom/android/tools/r8/graph/b1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->y()V

    return-void
.end method
