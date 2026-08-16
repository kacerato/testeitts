.class public interface abstract Lcom/android/tools/r8/graph/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public H()Lcom/android/tools/r8/graph/H5;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public I()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public J()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public L()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/graph/F5;

    return v0
.end method

.method public M()Lcom/android/tools/r8/graph/e0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public N()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/graph/H5;

    return v0
.end method

.method public O()Lcom/android/tools/r8/graph/G5;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract S()Lcom/android/tools/r8/graph/M2;
.end method

.method public W()Lcom/android/tools/r8/graph/F5;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public Z()Lcom/android/tools/r8/graph/A4;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a()Lcom/android/tools/r8/graph/E0;
.end method

.method public abstract a(Lcom/android/tools/r8/graph/E5;)Lcom/android/tools/r8/graph/E5;
.end method

.method public a(Lcom/android/tools/r8/graph/J2;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/J2;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public a0()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/graph/F5;

    return v0
.end method

.method public asClass()Lcom/android/tools/r8/graph/E0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Lcom/android/tools/r8/graph/H0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lcom/android/tools/r8/graph/F0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract d()Lcom/android/tools/r8/graph/b1;
.end method

.method public d0()Lcom/android/tools/r8/graph/H2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Lcom/android/tools/r8/graph/D5;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g0()Lcom/android/tools/r8/graph/G0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getAccessFlags()Lcom/android/tools/r8/graph/g;
.end method

.method public abstract getOrigin()Lcom/android/tools/r8/origin/Origin;
.end method

.method public abstract getReference()Lcom/android/tools/r8/graph/J2;
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()Lcom/android/tools/r8/graph/h0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isClass()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()Lcom/android/tools/r8/graph/z4;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Z
    .locals 1

    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->isClass()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public z()Lcom/android/tools/r8/graph/f0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
