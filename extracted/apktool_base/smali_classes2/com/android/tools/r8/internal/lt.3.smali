.class public abstract Lcom/android/tools/r8/internal/lt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/W9;
    .locals 2

    .line 2
    new-instance p0, Lcom/android/tools/r8/internal/ga;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->h5:Lcom/android/tools/r8/graph/q1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/q1;->a:Lcom/android/tools/r8/graph/A2;

    const/16 v0, 0xb6

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    return-object p0
.end method

.method public static a()Lcom/android/tools/r8/internal/w5;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/lj1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/lj1;-><init>()V

    return-object v0
.end method
