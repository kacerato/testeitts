.class public final Lcom/android/tools/r8/shaking/O4;
.super Lcom/android/tools/r8/shaking/j1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/shaking/j1;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/Q4;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/shaking/j1;-><init>(Lcom/android/tools/r8/shaking/l1;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/shaking/t1;
    .locals 1

    invoke-super {p0}, Lcom/android/tools/r8/shaking/r1;->a()Lcom/android/tools/r8/shaking/t1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/Q4;

    return-object v0
.end method

.method public final b()Lcom/android/tools/r8/shaking/t1;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/shaking/Q4;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/Q4;-><init>(Lcom/android/tools/r8/shaking/O4;)V

    return-object v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j()Lcom/android/tools/r8/shaking/r1;
    .locals 0

    return-object p0
.end method

.method public final k()Lcom/android/tools/r8/shaking/l1;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/shaking/Q4;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/Q4;-><init>(Lcom/android/tools/r8/shaking/O4;)V

    return-object v0
.end method

.method public final l()Lcom/android/tools/r8/shaking/j1;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final n()Lcom/android/tools/r8/shaking/j1;
    .locals 0

    return-object p0
.end method

.method public final o()Lcom/android/tools/r8/shaking/Q4;
    .locals 1

    invoke-super {p0}, Lcom/android/tools/r8/shaking/r1;->a()Lcom/android/tools/r8/shaking/t1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/Q4;

    return-object v0
.end method

.method public final p()Lcom/android/tools/r8/shaking/O4;
    .locals 0

    invoke-super {p0}, Lcom/android/tools/r8/shaking/j1;->l()Lcom/android/tools/r8/shaking/j1;

    return-object p0
.end method
