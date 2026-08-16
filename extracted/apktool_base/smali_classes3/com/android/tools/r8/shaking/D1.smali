.class public abstract Lcom/android/tools/r8/shaking/D1;
.super Lcom/android/tools/r8/shaking/r1;
.source "SourceFile"


# instance fields
.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/shaking/r1;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/F1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/shaking/r1;-><init>(Lcom/android/tools/r8/shaking/t1;)V

    .line 3
    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/F1;->k:Z

    .line 4
    iput-boolean p1, p0, Lcom/android/tools/r8/shaking/D1;->k:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/F1;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/android/tools/r8/shaking/r1;->a(Lcom/android/tools/r8/shaking/t1;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/D1;->k:Z

    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/F1;->k:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final k()Lcom/android/tools/r8/shaking/D1;
    .locals 2

    invoke-super {p0}, Lcom/android/tools/r8/shaking/r1;->i()Lcom/android/tools/r8/shaking/r1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/D1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/D1;->k:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r1;->j()Lcom/android/tools/r8/shaking/r1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/D1;

    return-object v0
.end method
