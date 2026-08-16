.class public interface abstract Lcom/android/tools/r8/internal/ZC;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public B()Lcom/android/tools/r8/internal/FB;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public C()Lcom/android/tools/r8/internal/aX;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public D()Lcom/android/tools/r8/internal/Pw;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public E()Lcom/android/tools/r8/internal/K8;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public F()Lcom/android/tools/r8/internal/XD;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(Lcom/android/tools/r8/internal/ZC;Lcom/android/tools/r8/internal/bD;)I
.end method

.method public abstract a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;
.end method

.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/android/tools/r8/internal/ZC;Lcom/android/tools/r8/internal/bD;)I
    .locals 2

    .line 2
    invoke-interface {p0}, Lcom/android/tools/r8/internal/ZC;->getKind()I

    move-result v0

    invoke-interface {p1}, Lcom/android/tools/r8/internal/ZC;->getKind()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/ZC;->a(Lcom/android/tools/r8/internal/ZC;Lcom/android/tools/r8/internal/bD;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-interface {p0}, Lcom/android/tools/r8/internal/ZC;->getKind()I

    move-result p2

    invoke-static {p2}, Lcom/android/tools/r8/c;->b(I)I

    move-result p2

    invoke-interface {p1}, Lcom/android/tools/r8/internal/ZC;->getKind()I

    move-result p1

    invoke-static {p1}, Lcom/android/tools/r8/c;->b(I)I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public b()Lcom/android/tools/r8/internal/Q5;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lcom/android/tools/r8/internal/Vf;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract f()Lcom/android/tools/r8/internal/r;
.end method

.method public abstract getKind()I
.end method

.method public isUnknown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public x()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
