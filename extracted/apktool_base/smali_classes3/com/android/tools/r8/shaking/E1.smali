.class public abstract Lcom/android/tools/r8/shaking/E1;
.super Lcom/android/tools/r8/shaking/s1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/shaking/D1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/shaking/s1;-><init>(Lcom/android/tools/r8/shaking/r1;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/E1;)Lcom/android/tools/r8/shaking/E1;
    .locals 2

    invoke-super {p0, p1}, Lcom/android/tools/r8/shaking/s1;->a(Lcom/android/tools/r8/shaking/s1;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/E1;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast p1, Lcom/android/tools/r8/shaking/D1;

    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/D1;->k:Z

    xor-int/lit8 p1, p1, 0x1

    new-instance v1, Lcom/android/tools/r8/shaking/N5;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/N5;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/shaking/s1;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/E1;

    return-object p1
.end method

.method public final c()Lcom/android/tools/r8/shaking/E1;
    .locals 0

    return-object p0
.end method

.method public final p()Lcom/android/tools/r8/shaking/E1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    check-cast v0, Lcom/android/tools/r8/shaking/D1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/D1;->k:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/D1;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s1;->m()Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/E1;

    return-object v0
.end method
